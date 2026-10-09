#![cfg_attr(not(debug_assertions), windows_subsystem = "windows")]

use std::io::{BufRead, BufReader};
use std::path::PathBuf;
use std::process::{Command, Stdio};
use std::sync::Mutex;
use tauri::{AppHandle, Emitter, Manager, State};

struct Running(Mutex<bool>);

#[derive(Clone, serde::Serialize)]
struct LineEvent {
    line: String,
}

fn resources_dir(app: &AppHandle) -> Result<PathBuf, String> {
    app.path()
        .resource_dir()
        .map_err(|e| format!("定位内置资源失败: {e}"))
        .map(|p| p.join("resources"))
}

#[tauri::command]
fn run_fix(
    app: AppHandle,
    apk_path: String,
    mode: String,
    debug_log: bool,
    running: State<'_, Running>,
) -> Result<(), String> {
    {
        let mut flag = running.0.lock().unwrap();
        if *flag {
            return Err("已有任务正在运行，请等待完成".into());
        }
        *flag = true;
    }

    let res = resources_dir(&app)?;
    let engine = res.join("engine").join("engine.exe");
    if !engine.is_file() {
        *running.0.lock().unwrap() = false;
        return Err(format!(
            "未找到修复引擎: {}\n如果是便携版，请保证 resources 文件夹和 jtgd.exe 在同一目录（或改用安装版）",
            engine.display()
        ));
    }

    let mut cmd = Command::new(&engine);
    cmd.arg(&apk_path).arg("--mode").arg(&mode);
    if debug_log {
        cmd.arg("--debug-log");
    }
    #[cfg(windows)]
    {
        use std::os::windows::process::CommandExt;
        const CREATE_NO_WINDOW: u32 = 0x0800_0000;
        cmd.creation_flags(CREATE_NO_WINDOW);
    }
    cmd.stdout(Stdio::piped()).stderr(Stdio::piped());

    let mut child = match cmd.spawn() {
        Ok(c) => c,
        Err(e) => {
            *running.0.lock().unwrap() = false;
            return Err(format!("启动修复引擎失败: {e}"));
        }
    };

    let stdout = child.stdout.take().unwrap();
    let stderr = child.stderr.take().unwrap();

    let h_out = app.clone();
    let out_thread = std::thread::spawn(move || {
        for line in BufReader::new(stdout).lines().map_while(Result::ok) {
            let _ = h_out.emit("engine-line", LineEvent { line });
        }
    });

    let h_err = app.clone();
    let err_thread = std::thread::spawn(move || {
        for line in BufReader::new(stderr).lines().map_while(Result::ok) {
            let _ = h_err.emit("engine-line", LineEvent { line });
        }
    });

    let h_done = app.clone();
    std::thread::spawn(move || {
        let status = child.wait();
        let _ = out_thread.join();
        let _ = err_thread.join();
        let ok = matches!(status, Ok(s) if s.success());
        let _ = h_done.emit("engine-done", ok);
        *h_done.state::<Running>().0.lock().unwrap() = false;
    });

    Ok(())
}

#[tauri::command]
fn reveal(path: String) -> Result<(), String> {
    #[cfg(windows)]
    {
        Command::new("explorer")
            .args(["/select,", &path])
            .spawn()
            .map_err(|e| format!("打开文件夹失败: {e}"))?;
        return Ok(());
    }
    #[cfg(not(windows))]
    {
        let _ = path;
        Ok(())
    }
}

fn main() {
    tauri::Builder::default()
        .plugin(tauri_plugin_dialog::init())
        .manage(Running(Mutex::new(false)))
        .invoke_handler(tauri::generate_handler![run_fix, reveal])
        .run(tauri::generate_context!())
        .expect("error while running tauri application");
}
