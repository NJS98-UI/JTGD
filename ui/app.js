/* 高德车机版一键修复 — renderer (Tauri withGlobalTauri) */
(function () {
  "use strict";

  const $ = (id) => document.getElementById(id);
  const dropzone = $("dropzone");
  const fileChip = $("fileChip");
  const fileNameEl = $("fileName");
  const runBtn = $("runBtn");
  const modeSeg = $("modeSeg");
  const debugLog = $("debugLog");
  const progressWrap = $("progressWrap");
  const progressFill = $("progressFill");
  const progressText = $("progressText");
  const okBanner = $("okBanner");
  const okPath = $("okPath");
  const errBanner = $("errBanner");
  const terminal = $("terminal");

  let apkPath = null;
  let outPath = null;
  let running = false;

  const TA = window.__TAURI__;

  // ---------- terminal ----------
  function logLine(text, cls) {
    const div = document.createElement("div");
    div.className = "t-line" + (cls ? " " + cls : "");
    div.textContent = text;
    terminal.appendChild(div);
    terminal.scrollTop = terminal.scrollHeight;
  }
  function classify(line) {
    if (line.startsWith("[失败]")) return "t-err";
    if (line.startsWith("[成功]")) return "t-ok";
    if (line.startsWith("DONE_OK")) return "t-ok";
    if (line.startsWith("DONE_FAIL")) return "t-err";
    if (line.startsWith("OUT_PATH:")) return "t-out";
    if (line.startsWith("ENGINE_VERSION:")) return "t-dim";
    return "";
  }

  function setProgress(pct, text) {
    progressWrap.hidden = false;
    progressFill.style.width = pct + "%";
    if (text) progressText.textContent = text;
  }

  function setRunning(v) {
    running = v;
    runBtn.classList.toggle("running", v);
    runBtn.innerHTML = v
      ? "修复中…"
      : '<svg viewBox="0 0 24 24" width="18" height="18" fill="currentColor"><path d="M8 5v14l11-7z"/></svg> 一键修复';
    updateRunState();
  }

  function updateRunState() {
    runBtn.disabled = !apkPath || running;
  }

  function setApk(p) {
    apkPath = p;
    if (p) {
      fileNameEl.textContent = p;
      fileNameEl.title = p;
      fileChip.hidden = false;
      dropzone.style.display = "none";
    } else {
      fileChip.hidden = true;
      dropzone.style.display = "";
    }
    okBanner.hidden = true;
    errBanner.hidden = true;
    updateRunState();
  }

  function basename(p) {
    const i = Math.max(p.lastIndexOf("\\"), p.lastIndexOf("/"));
    return i >= 0 ? p.slice(i + 1) : p;
  }

  // ---------- file picking ----------
  async function pickFile() {
    try {
      const p = await TA.dialog.open({
        multiple: false,
        directory: false,
        filters: [{ name: "Android 安装包", extensions: ["apk"] }],
      });
      if (p) setApk(p);
    } catch (e) {
      logLine("选择文件失败: " + e, "t-err");
    }
  }
  $("pickBtn").addEventListener("click", (e) => { e.preventDefault(); pickFile(); });
  dropzone.addEventListener("click", pickFile);
  $("clearFile").addEventListener("click", () => setApk(null));

  // ---------- drag & drop ----------
  if (TA && TA.webview && TA.webview.getCurrentWebview().onDragDropEvent) {
    TA.webview.getCurrentWebview().onDragDropEvent((ev) => {
      const payload = ev.payload;
      if (payload.type === "over") {
        dropzone.classList.add("drag");
      } else if (payload.type === "leave") {
        dropzone.classList.remove("drag");
      } else if (payload.type === "drop") {
        dropzone.classList.remove("drag");
        const paths = (payload.paths || []).filter((x) => x.toLowerCase().endsWith(".apk"));
        if (paths.length > 0) {
          setApk(paths[0]);
          if (paths.length > 1) logLine("已选择第一个 APK（共拖入 " + paths.length + " 个文件）", "t-dim");
        } else {
          logLine("请拖入 .apk 文件", "t-err");
        }
      }
    });
  }

  // ---------- mode segment ----------
  let mode = "auto";
  modeSeg.addEventListener("click", (e) => {
    const btn = e.target.closest(".seg-item");
    if (!btn) return;
    mode = btn.dataset.mode;
    modeSeg.querySelectorAll(".seg-item").forEach((b) => b.classList.toggle("active", b === btn));
  });

  // ---------- run ----------
  runBtn.addEventListener("click", async () => {
    if (!apkPath || running) return;
    running = true;
    setRunning(true);
    okBanner.hidden = true;
    errBanner.hidden = true;
    outPath = null;
    terminal.innerHTML = "";
    setProgress(4, "启动修复引擎…");
    logLine("$ 修复 " + basename(apkPath) + "（模式: " +
      { auto: "自动检测", std: "标准版", coexist: "共存版" }[mode] + "）", "t-dim");
    try {
      await TA.core.invoke("run_fix", {
        apkPath: apkPath,
        mode: mode,
        debugLog: debugLog.checked,
      });
    } catch (e) {
      logLine(String(e), "t-err");
      errBanner.hidden = false;
      setRunning(false);
      setProgress(100, "已中止");
      progressWrap.hidden = true;
    }
  });

  // ---------- engine events ----------
  if (TA) {
    TA.event.listen("engine-line", (ev) => {
      const line = ev.payload.line || "";
      logLine(line, classify(line));
      if (line.startsWith("OUT_PATH:")) {
        outPath = line.slice("OUT_PATH:".length).trim();
      }
      // progress heuristics based on step lines
      if (line.startsWith("[成功]")) {
        const done = Number(terminal.querySelectorAll(".t-ok").length);
        const pct = Math.min(90, 8 + done * 6);
        setProgress(pct, line.replace("[成功] ", ""));
      } else if (line.startsWith("[失败]")) {
        setProgress(100, "出现失败项");
      }
    });

    TA.event.listen("engine-done", (ev) => {
      const ok = ev.payload === true;
      setRunning(false);
      if (ok) {
        errBanner.hidden = true;
        setProgress(100, "完成");
        setTimeout(() => { progressWrap.hidden = true; }, 800);
        okPath.textContent = outPath || "";
        okBanner.hidden = !okPath.textContent;
        logLine("✔ 全部完成", "t-ok");
      } else {
        okBanner.hidden = true;
        errBanner.hidden = false;
        setProgress(100, "失败");
        logLine("✘ 修复失败，请检查日志", "t-err");
      }
    });
  }

  // ---------- reveal ----------
  $("revealBtn").addEventListener("click", async () => {
    if (outPath) {
      try { await TA.core.invoke("reveal", { path: outPath }); } catch (e) { logLine(String(e), "t-err"); }
    }
  });

  $("clearLog").addEventListener("click", () => { terminal.innerHTML = ""; });
})();
