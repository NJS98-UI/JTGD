# JTGD — 高德车机版一键修复

Tauri 桌面应用：为高德车机版 APK（BYD 变体）自动应用全部已验证补丁。

## 功能
- 标准 / 共存版自动识别，也可手动指定
- 修复引擎单文件自带全部工具（JRE、baksmali、apktool、zipalign、apksigner、补丁、签名证书），离线可用，换设备直接用
- 修复项：classes5 冥城修复 5 项 + NPE 保护、classes8 o.smali、classes9 MainActivity 4 项锚点补丁 + mcFixDisplay、2 个图标资源、共存版 authority 改写
- 输出：与原 APK 同目录 `<原名>_修复版.apk`（zipalign + apksigner 签名）

## 使用
下载 `JTGD-portable.zip` 解压后运行，或安装 `JTGD_1.0.0_x64-setup.exe`。打开后拖入 APK → 一键修复。

## 构建
推送到 GitHub 后由 `.github/workflows/build.yml` 在 windows-latest 上自动构建：CI 组装 tools_root（补丁 + jlink 精简 JRE + build-tools），用 PyInstaller 打成**自包含 engine.exe**（约 80MB），再 `tauri build`。产物：
- `JTGD_1.0.0_x64-setup.exe` — 安装版
- `JTGD-portable.zip` — 便携版，解压即用（jtgd.exe + resources/engine/engine.exe）

打 `v*` tag 会自动发布 Release。

## 结构
- `engine/engine.py` — 修复引擎（补丁逻辑与人工验证过的管线逐字节一致；未指定 --tools 时从 PyInstaller 内置的 tools_root 取工具）
- `payload/` — 补丁与 jar、签名证书（提交到仓库）
- `ui/` — HTML 界面
- `src-tauri/` — Tauri 外壳；`resources/engine/engine.exe` 由 CI 生成
