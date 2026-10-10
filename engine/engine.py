# -*- coding: utf-8 -*-
"""高德车机版(BYD定制) 一键修复引擎（命令行核心）

补丁逻辑与已真机验证的 amapfix_gui.py 完全一致，仅供 GUI 壳调用。

用法:
  engine.exe <原版APK> --tools <工具根目录> [--out <输出APK>] [--mode auto|std|coexist] [--debug-log]

工具根目录布局:
  jre/bin/java.exe, apktool.jar, baksmali.jar, amapfix.keystore,
  tools/zipalign.exe, tools/apksigner.jar, patches/...
"""

import argparse
import glob
import hashlib
import os
import queue
import re
import shutil
import subprocess
import sys
import threading
import zipfile

try:
    sys.stdout.reconfigure(encoding="utf-8")
    sys.stderr.reconfigure(encoding="utf-8")
except Exception:
    pass

TOOLS = None
PATCH_DIR = None
APKTOOL_JAR = None
BAKSMALI_JAR = None
KEYSTORE = None

MC_METHOD_NAME = "main/mcFixDisplay_method.smali"

RES_REPLACE = {
    "res/drawable/icon_setting_img_other_unselected_land_day.xml":
        "res/icon_setting_img_other_unselected_land_day.xml",
    "res/drawable/icon_setting_img_other_unselected_land_night.xml":
        "res/icon_setting_img_other_unselected_land_night.xml",
}

# 共存版：manifest 里 authority 被改成 <新包名>_com.byd.*，但代码里是写死的旧值，需同步重写
COEXIST_AUTHS = ("com.byd.naviauto.mapprovider", "com.byd.automap.fenceprovider")

# 小团团语音包：包内 com.wzw.voice.VoiceXtt 启动时会找这个资产，
# 找到后用它替换用户已下载的任意 Mind 格式语音字体 → 导航发音变为小团团
VOICE_ASSET = "assets/wzw_voice/xiaotuantuan"


def detect_coexist_package(apk_path):
    """共存版返回其包名（如 com.autonavi.amapautolite），标准版返回 None。"""
    with zipfile.ZipFile(apk_path) as z:
        m = z.read("AndroidManifest.xml")
    # 二进制 manifest 里字符串前有 uleb128 长度字节，不能用回溯法，用正则提取合法包名
    r = re.search(rb"([a-zA-Z][0-9a-zA-Z_]*(?:\.[a-zA-Z_][0-9a-zA-Z_]*)+)_com\.byd\.naviauto\.mapprovider", m)
    if not r:
        return None
    return r.group(1).decode("ascii", "ignore")


# ----------------------------- 补丁引擎 -----------------------------

class Report:
    def __init__(self, log):
        self.log = log
        self.items = []

    def ok(self, name, msg=""):
        self.items.append((name, True, msg))
        self.log("[成功] %s %s" % (name, msg))

    def fail(self, name, msg):
        self.items.append((name, False, msg))
        self.log("[失败] %s %s" % (name, msg))

    def all_ok(self):
        return all(o for _, o, _ in self.items)


def read(path):
    with open(path, "r", encoding="utf-8") as f:
        return f.read()


def write(path, text):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w", encoding="utf-8", newline="\n") as f:
        f.write(text)


def bump_registers(method_header_region):
    """把 '.registers N' 改成 N+1，返回 (新文本, 旧N)。"""
    m = re.search(r"\.registers (\d+)", method_header_region)
    n = int(m.group(1))
    return method_header_region[:m.start()] + ".registers %d" % (n + 1) + method_header_region[m.end():], n


def param_registers(descriptor):
    """方法参数占用的寄存器数（J/D 占 2，其余占 1）。不含 this。"""
    args = descriptor[descriptor.index("(") + 1: descriptor.index(")")]
    n, i = 0, 0
    while i < len(args):
        c = args[i]
        if c == "L":
            i = args.index(";", i) + 1
            n += 1
        elif c == "[":
            while i < len(args) and args[i] == "[":
                i += 1
            if i < len(args) and args[i] == "L":
                i = args.index(";", i) + 1
            else:
                i += 1
            n += 1
        elif c in "JD":
            n += 2
            i += 1
        else:
            n += 1
            i += 1
    return n


def free_register(method_sig, old_reg_count):
    """.registers N 提升到 N+1 后真正空出来的寄存器：
    参数（含 this 的实例方法）占最高位，v(N-参数数) 原来是旧 p0，提升后无人引用。
    """
    k = param_registers(method_sig)
    if " static " not in method_sig + " ":
        k += 1
    return old_reg_count - k


def patch_main_activity(src_text, rep, debug_log):
    t = src_text

    # 1) 新增静态字段
    anchor = ".method public onCreate(Landroid/os/Bundle;)V"
    if anchor not in t:
        rep.fail("MainActivity/字段mcDispFixTries", "找不到 onCreate 方法头")
        return None
    t = t.replace(anchor, ".field public static mcDispFixTries:I\n\n" + anchor, 1)
    rep.ok("MainActivity/字段mcDispFixTries")

    # 2) onCreate 分发（跳转到屏0，或继续正常启动）
    m = re.search(
        r"(\.method public onCreate\(Landroid/os/Bundle;\)V\n\s*\.registers (\d+)\n)"
        r"(.*?)(invoke-super \{p0, p1\}, Lcom/autosdk/framework/activity/BaseActivity;->onCreate\(Landroid/os/Bundle;\)V\n)",
        t, re.S)
    if not m:
        rep.fail("MainActivity/onCreate屏5转发", "找不到 onCreate super 调用")
        return None
    head, n, _, supercall = m.groups()
    n = int(n)
    vr = free_register("onCreate(Landroid/os/Bundle;)V", n)
    new_head, _ = bump_registers(head)
    t = t.replace(m.group(0), new_head + m.group(3) + supercall, 1)
    block = (
        "\n    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->mcFixDisplay()Z\n\n"
        "    move-result v%d\n\n" % vr +
        "    if-eqz v%d, :cond_mc_oncreate_ok\n\n" % vr +
        "    return-void\n\n"
        "    :cond_mc_oncreate_ok\n"
    )
    if debug_log:
        block += (
            "    const/4 v%d, 0x1\n\n" % vr +
            "    invoke-static {v%d}, Lcom/autosdk/bussiness/common/utils/Logger;->setLog(Z)V\n" % vr
        )
    t = t.replace(supercall, supercall + block, 1)
    rep.ok("MainActivity/onCreate屏5转发", "(调试日志:%s)" % ("开" if debug_log else "关"))

    # 3) onResume 分发
    m = re.search(
        r"(\.method public onResume\(\)V\n\s*\.registers (\d+)\n)"
        r"(.*?)(invoke-super \{p0\}, Landroidx/fragment/app/FragmentActivity;->onResume\(\)V\n)",
        t, re.S)
    if not m:
        rep.fail("MainActivity/onResume屏5转发", "找不到 onResume super 调用")
        return None
    head, n, _, supercall = m.groups()
    n = int(n)
    vr = free_register("onResume()V", n)
    new_head, _ = bump_registers(head)
    t = t.replace(m.group(0), new_head + m.group(3) + supercall, 1)
    block = (
        "\n    invoke-direct {p0}, Lcom/byd/automap/activity/MainActivity;->mcFixDisplay()Z\n\n"
        "    move-result v%d\n\n" % vr +
        "    if-eqz v%d, :cond_mc_resume_ok\n\n" % vr +
        "    return-void\n\n"
        "    :cond_mc_resume_ok\n"
    )
    t = t.replace(supercall, supercall + block, 1)
    rep.ok("MainActivity/onResume屏5转发")

    # 4) unInitForBack：fragment 管理器单例保护（热启动后设置/搜索无响应的根因）
    m = re.search(
        r"check-cast (v\d+), Lk/e/j/b/i;\n\n    invoke-virtual \{\1\}, Lk/e/j/b/i;->r\(\)V", t)
    if not m:
        rep.fail("MainActivity/fragment管理器保护", "找不到 i.r() 调用")
        return None
    vx = m.group(1)
    mm = re.search(r"\.method public unInitForBack\(\)V\n\s*\.registers (\d+)", t)
    if not mm:
        rep.fail("MainActivity/fragment管理器保护", "找不到 unInitForBack 方法头")
        return None
    old_n = int(mm.group(1))
    t = t.replace(mm.group(0),
                  ".method public unInitForBack()V\n    .registers %d" % (old_n + 1), 1)
    vs = "v%d" % free_register("unInitForBack()V", old_n)
    guard = (
        "check-cast {vx}, Lk/e/j/b/i;\n\n"
        "    iget-object {vs}, {vx}, Lk/e/j/b/i;->c:Landroidx/fragment/app/FragmentActivity;\n\n"
        "    if-eqz {vs}, :cond_mc_do_reset\n\n"
        "    if-eq {vs}, p0, :cond_mc_do_reset\n\n"
        "    goto/16 :cond_mc_after_reset\n\n"
        "    :cond_mc_do_reset\n\n"
        "    invoke-virtual {{{vx}}}, Lk/e/j/b/i;->r()V\n\n"
        "    :cond_mc_after_reset"
    ).format(vx=vx, vs=vs)
    t = t.replace(m.group(0), guard, 1)
    rep.ok("MainActivity/fragment管理器保护", "(寄存器 %s→%s)" % (vx, vs))

    # 5) 追加 mcFixDisplay 方法
    method = read(os.path.join(PATCH_DIR, MC_METHOD_NAME))
    t = t.rstrip("\n") + "\n\n" + method
    rep.ok("MainActivity/mcFixDisplay方法")
    return t


def patch_setting_navi_view(src_text, rep):
    """原版代码在 view 为 null 时仍调用 setOnClickListener → 空指针闪退。加空判断。"""
    idx = src_text.find("Lcom/wzw/headlight/HeadlightLinkManager;->bindButton")
    if idx < 0:
        rep.fail("classes5/SettingNaviView空指针保护", "找不到 bindButton 锚点")
        return None
    before = src_text[:idx]
    after = src_text[idx:]
    lbls_before = re.findall(r"^(    :cond_\w+)\s*$", before, re.M)
    m_after = re.search(r"^(    :cond_\w+)\s*$", after, re.M)
    if not lbls_before or not m_after:
        rep.fail("classes5/SettingNaviView空指针保护", "找不到前后标签")
        return None
    prev_lbl = lbls_before[-1]
    next_lbl = m_after.group(1)
    seg = src_text[src_text.find(prev_lbl): src_text.find("\n", idx) + 1]
    mreg = re.search(r"invoke-virtual \{(v\d+), p0\}, Landroid/view/View;->setOnClickListener", seg)
    if not mreg:
        rep.fail("classes5/SettingNaviView空指针保护", "标签块结构与预期不符（上游可能已变化）")
        return None
    vreg = mreg.group(1)
    body = seg.split("\n")
    # 去掉首尾空行后校验中间只有两行调用
    lines = [l for l in body if l.strip()]
    if lines[0].strip() != prev_lbl.strip() or len(lines) != 3:
        rep.fail("classes5/SettingNaviView空指针保护", "标签块内容与预期不符，为安全起见跳过")
        return None
    pos = src_text.find("\n", src_text.find(prev_lbl)) + 1
    guard = "    if-eqz %s, %s\n\n" % (vreg, next_lbl.strip())
    t = src_text[:pos] + guard + src_text[pos:]
    rep.ok("classes5/SettingNaviView空指针保护", "(%s 为空时跳到 %s)" % (vreg, next_lbl.strip()))
    return t


def patch_xtt_list(src_text, rep):
    """语音设置列表首位注入"小团团"条目（cacheAndShowSku 仅在整表刷新时调用 inject）。"""
    anchor = ("    const-string v5, \"[cacheAndShowSku] type: {?}, categoryId: {?}, "
              "pageNum: {?}, total: {?}, isFullRefresh: {?}\"\n\n"
              "    invoke-static {v1, v5, v0}, "
              "Lcom/autosdk/bussiness/common/utils/Logger;"
              "->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V\n")
    if src_text.count(anchor) != 1:
        rep.fail("classes5/语音列表小团团条目", "cacheAndShowSku 结构与预期不符")
        return None
    inject = ("\n\n    invoke-static {p1, p6, p5}, "
              "Lcom/wzw/voice/XttList;->inject(IZLjava/util/ArrayList;)V")
    rep.ok("classes5/语音列表小团团条目")
    return src_text.replace(anchor, anchor + inject, 1)


def _xtt_align_insert(label, reg):
    return ("\n    invoke-static {p1}, "
            "Lcom/wzw/voice/XttList;->alignItem(Lcom/autosdk/bussiness/common/AssetSkuItem;)Z"
            "\n\n    move-result %s"
            "\n\n    if-eqz %s, %s"
            "\n\n    return-void"
            "\n\n    %s\n" % (reg, reg, label, label))


def patch_xtt_click(src_text, rep):
    """onStateClick：点"小团团"时先对齐载体包 id；无载体包则提示并拦截后续流程。
    锚点必须包含 move-result v2（move-result 不能与其 invoke 之间插入指令），
    插入块用 v7（此时 v3..v8 尚未使用，原方法写前必写）。"""
    anchor = ("    :cond_d\n    invoke-virtual {p1}, "
              "Lcom/autosdk/bussiness/common/AssetSkuItem;"
              "->getEffectiveDownloadStatus()I\n\n    move-result v2\n")
    if src_text.count(anchor) != 1:
        rep.fail("classes5/小团团点击切换", "onStateClick 结构与预期不符")
        return None
    rep.ok("classes5/小团团点击切换")
    return src_text.replace(anchor, anchor + _xtt_align_insert(":wzxtc1", "v7"), 1)


def patch_xtt_preview(src_text, rep):
    """onAvatarClick：点"小团团"头像试听时先对齐载体包 id（试听是服务端按 id 下发）。"""
    anchor = "    :cond_21\n    const/4 v2, 0x3\n"
    if src_text.count(anchor) != 1:
        rep.fail("classes5/小团团试听", "onAvatarClick 结构与预期不符")
        return None
    rep.ok("classes5/小团团试听")
    return src_text.replace(anchor, "    :cond_21\n" + _xtt_align_insert(":wzxtp1", "v2") +
                            "    const/4 v2, 0x3\n", 1)


def patch_xtt_switchvoice(src_text, rep):
    """switchToUseAsset 语音分支：setVoice 的 id 改由 XttList.xttVoiceId 决定
    （系统语音→-1，小团团→载体包 id，其他→原 id），其余行为不变。"""
    old = ("    :cond_86\n    if-nez v0, :cond_a5\n\n"
           "    invoke-virtual {p1}, Lcom/autosdk/bussiness/common/AssetSkuItem;"
           "->isSystemAsset()Z\n\n"
           "    move-result v2\n\n"
           "    if-eqz v2, :cond_8f\n\n"
           "    goto :goto_93\n\n"
           "    :cond_8f\n"
           "    invoke-virtual {p1}, Lcom/autosdk/bussiness/common/AssetSkuItem;"
           "->getId()J\n\n"
           "    move-result-wide v4\n\n"
           "    :goto_93\n")
    new = ("    :cond_86\n    if-nez v0, :cond_a5\n\n"
           "    invoke-static {p1}, Lcom/wzw/voice/XttList;"
           "->xttVoiceId(Lcom/autosdk/bussiness/common/AssetSkuItem;)J\n\n"
           "    move-result-wide v4\n\n"
           "    :goto_93\n")
    if src_text.count(old) != 1:
        rep.fail("classes5/小团团切换语音", "switchToUseAsset 结构与预期不符")
        return None
    rep.ok("classes5/小团团切换语音")
    return src_text.replace(old, new, 1)


def patch_coexist_authorities(apk_path, workdir, pkg, java, rep, log):
    """共存版：把代码里写死的旧 provider authority 重写为 <新包名>_旧authority。"""
    targets = []
    with zipfile.ZipFile(apk_path) as z:
        for n in z.namelist():
            if n.endswith(".dex"):
                d = z.read(n)
                if any(s.encode() in d for s in COEXIST_AUTHS):
                    z.extract(n, workdir)
                    targets.append(n)
    if not targets:
        rep.fail("共存版authority重写", "未找到包含旧 authority 的 dex")
        return None
    out = []
    cp = APKTOOL_JAR + ";" + os.path.join(PATCH_DIR, "main")
    for n in targets:
        sdir = os.path.join(workdir, "ca_" + n[:-4])
        r = subprocess.run([java, "-jar", BAKSMALI_JAR, "d", os.path.join(workdir, n),
                            "-o", sdir], capture_output=True, text=True)
        if r.returncode != 0:
            rep.fail("baksmali " + n, (r.stderr or r.stdout)[-400:])
            return None
        cnt = 0
        for root, _, files in os.walk(sdir):
            for f in files:
                if not f.endswith(".smali"):
                    continue
                p = os.path.join(root, f)
                t = read(p)
                t2 = t
                for s in COEXIST_AUTHS:
                    t2 = t2.replace(s, pkg + "_" + s)
                if t2 != t:
                    write(p, t2)
                    cnt += 1
        r = subprocess.run([java, "-Xmx4g", "-cp", cp, "SmaliAsm", sdir,
                            os.path.join(workdir, n), "28"], capture_output=True, text=True)
        if r.returncode != 0:
            rep.fail("smali 回编 " + n, (r.stderr or r.stdout)[-500:])
            return None
        rep.ok("共存版authority重写 " + n, "(%d 个smali文件)" % cnt)
        out.append(n)
    return out


def apply_all(apk_path, workdir, out_apk, java, zipalign_exe, apksigner_cmd, debug_log, log, mode="auto", voice_pack=True):
    rep = Report(log)
    os.makedirs(workdir, exist_ok=True)

    # 0) 共存版检测
    pkg = detect_coexist_package(apk_path)
    if mode == "coexist" and not pkg:
        rep.fail("共存版检测", "该 APK 的 manifest 未发现改写的 authority，不是共存版")
        return rep, None
    extra_dexes = []
    if pkg and mode != "std":
        log("检测到共存版（包名 %s），将同步重写代码里的 provider authority" % pkg)
        r = patch_coexist_authorities(apk_path, workdir, pkg, java, rep, log)
        if r is None:
            return rep, None
        extra_dexes = r

    # 1) 解出 dex
    log("== 解压 APK ==")
    with zipfile.ZipFile(apk_path) as z:
        names = z.namelist()
        for dex in ("classes5.dex", "classes8.dex", "classes9.dex"):
            if dex not in names:
                rep.fail("APK检查", "缺少 " + dex)
                return rep, None
            z.extract(dex, workdir)
        for res in RES_REPLACE:
            if res not in names:
                rep.fail("APK检查", "缺少资源 " + res)
                return rep, None
    log("dex 提取完成")

    # 2) baksmali
    log("== 反编译 dex ==")
    for dex, out in (("classes5.dex", "s5"), ("classes8.dex", "s8"), ("classes9.dex", "s9")):
        r = subprocess.run([java, "-jar", BAKSMALI_JAR, "d", os.path.join(workdir, dex),
                            "-o", os.path.join(workdir, out)],
                           capture_output=True, text=True)
        if r.returncode != 0:
            rep.fail("baksmali " + dex, (r.stderr or r.stdout)[-400:])
            return rep, None
    log("baksmali 完成")

    # 3) classes5：新增文件 + 整文件替换
    log("== 应用补丁: classes5 ==")
    adds = [
        "com/autosdk/settings/view/SettingFixTabFitter.smali",
        "com/autosdk/settings/view/SettingFixView.smali",
        "com/autosdk/settings/view/fragments/SettingFixFragment.smali",
        "com/wzw/voice/XttList.smali",
    ]
    for a in adds:
        write(os.path.join(workdir, "s5", a), read(os.path.join(PATCH_DIR, "classes5", a)))
        rep.ok("classes5/新增 " + os.path.basename(a))
    wholes5 = [
        "com/autosdk/settings/view/SettingViewR.smali",
        "k/e/s/c/i.smali",
    ]
    for w in wholes5:
        dstp = os.path.join(workdir, "s5", w)
        if not os.path.isfile(dstp):
            rep.fail("classes5/替换 " + w, "新版本中不存在该文件")
            return rep, None
        write(dstp, read(os.path.join(PATCH_DIR, "classes5", w)))
        rep.ok("classes5/替换 " + os.path.basename(w))

    # 4) classes5: SettingNaviView 空指针保护
    log("== 应用补丁: SettingNaviView ==")
    navi = os.path.join(workdir, "s5", "com/autosdk/settings/view/SettingNaviView.smali")
    t = read(navi)
    t2 = patch_setting_navi_view(t, rep)
    if t2 is None:
        return rep, None
    write(navi, t2)

    # 4b) classes5: 语音列表注入"小团团"条目 + 点击/试听/切换三处钩子
    log("== 应用补丁: 语音列表小团团 ==")
    pres = os.path.join(workdir, "s5",
                        "com/autosdk/settings/presenter/SettingAssetPresenter.smali")
    t = read(pres)
    t2 = patch_xtt_list(t, rep)
    if t2 is None:
        return rep, None
    t3 = patch_xtt_click(t2, rep)
    if t3 is None:
        return rep, None
    t4 = patch_xtt_preview(t3, rep)
    if t4 is None:
        return rep, None
    write(pres, t4)
    ctl = os.path.join(workdir, "s5",
                       "com/autosdk/settings/controller/AssetDownloadController.smali")
    t = read(ctl)
    t2 = patch_xtt_switchvoice(t, rep)
    if t2 is None:
        return rep, None
    write(ctl, t2)

    # 5) classes8 整文件替换
    log("== 应用补丁: classes8 ==")
    dstp = os.path.join(workdir, "s8", "k/e/v/j/h/o.smali")
    if not os.path.isfile(dstp):
        rep.fail("classes8/替换 o.smali", "新版本中不存在该文件")
        return rep, None
    write(dstp, read(os.path.join(PATCH_DIR, "classes8", "k/e/v/j/h/o.smali")))
    rep.ok("classes8/替换 o.smali (互联帮助页闪退修复)")

    # 6) classes9 MainActivity 锚点补丁
    log("== 应用补丁: MainActivity ==")
    ma = os.path.join(workdir, "s9", "com/byd/automap/activity/MainActivity.smali")
    t = read(ma)
    t2 = patch_main_activity(t, rep, debug_log)
    if t2 is None:
        return rep, None
    write(ma, t2)

    if not rep.all_ok():
        return rep, None

    # 7) 回编 dex
    log("== 回编 dex ==")
    main_cp = os.path.join(PATCH_DIR, "main")
    cp = APKTOOL_JAR + ";" + main_cp
    for src, out in (("s5", "classes5.dex"), ("s8", "classes8.dex"), ("s9", "classes9.dex")):
        r = subprocess.run([java, "-Xmx4g", "-cp", cp, "SmaliAsm",
                            os.path.join(workdir, src), os.path.join(workdir, out), "28"],
                           capture_output=True, text=True)
        if r.returncode != 0:
            rep.fail("smali 回编 " + out, (r.stderr or r.stdout)[-500:])
            return rep, None
        log(out + " 回编完成")
    rep.ok("dex回编 x3")

    # 8) 重打包
    log("== 重打包 ==")
    replacements = {}
    for dex in ("classes5.dex", "classes8.dex", "classes9.dex") + tuple(extra_dexes):
        with open(os.path.join(workdir, dex), "rb") as f:
            replacements[dex] = f.read()
    for res, rel in RES_REPLACE.items():
        with open(os.path.join(PATCH_DIR, rel), "rb") as f:
            replacements[res] = f.read()
    voice_src = os.path.join(PATCH_DIR, "assets", "wzw_voice", "xiaotuantuan")
    if voice_pack:
        if not os.path.isfile(voice_src):
            rep.fail("语音包(小团团)", "缺少内置音库文件 " + voice_src)
            return rep, None
        with open(voice_src, "rb") as f:
            replacements[VOICE_ASSET] = f.read()

    unsigned = os.path.join(workdir, "unsigned.apk")
    with zipfile.ZipFile(apk_path) as src, \
            zipfile.ZipFile(unsigned, "w", zipfile.ZIP_DEFLATED, allowZip64=True) as dst:
        written = set()
        for info in src.infolist():
            name = info.filename
            written.add(name)
            if name == "META-INF/MANIFEST.MF" or \
                    (name.startswith("META-INF/") and name.endswith((".SF", ".RSA", ".DSA", ".EC"))):
                continue
            zi = zipfile.ZipInfo(name, date_time=info.date_time)
            zi.compress_type = info.compress_type
            zi.external_attr = info.external_attr
            zi.internal_attr = info.internal_attr
            zi.create_system = info.create_system
            zi.comment = info.comment
            if name in replacements:
                data = replacements[name]
                zi.compress_type = zipfile.ZIP_DEFLATED
            else:
                data = src.read(name)
            dst.writestr(zi, data)
        # 语音包音库是新增条目（原包没有），追加写入
        for name, data in replacements.items():
            if name in written:
                continue
            zi = zipfile.ZipInfo(name, date_time=(2026, 1, 1, 0, 0, 0))
            zi.compress_type = zipfile.ZIP_DEFLATED
            zi.external_attr = 0o600 << 16
            dst.writestr(zi, data)
    if voice_pack:
        rep.ok("语音包(小团团)", "(+assets/wzw_voice/xiaotuantuan)")
    rep.ok("重打包(资源.arsc保持STORED)")

    # 9) 对齐 + 签名
    log("== 对齐 ==")
    aligned = os.path.join(workdir, "aligned.apk")
    r = subprocess.run([zipalign_exe, "-p", "-f", "4", unsigned, aligned], capture_output=True, text=True)
    if r.returncode != 0:
        rep.fail("zipalign", (r.stderr or r.stdout)[-400:])
        return rep, None
    rep.ok("zipalign")

    log("== 签名 ==")
    sign_cmd = list(apksigner_cmd) + [
        "sign", "--ks", KEYSTORE, "--ks-pass", "pass:android",
        "--key-pass", "pass:android", "--ks-key-alias", "amapfix",
        "--v1-signing-enabled", "true", "--v2-signing-enabled", "true",
        "--v3-signing-enabled", "true", "--out", out_apk, aligned]
    r = subprocess.run(sign_cmd, capture_output=True, text=True)
    if r.returncode != 0:
        rep.fail("apksigner", (r.stderr or r.stdout)[-400:])
        return rep, None
    r = subprocess.run(list(apksigner_cmd) + ["verify", out_apk], capture_output=True, text=True)
    log((r.stdout or "").strip() or "签名校验通过")
    rep.ok("签名+校验", os.path.basename(out_apk))
    return rep, out_apk


def resolve_tools(explicit):
    if explicit:
        return os.path.abspath(explicit)
    base = getattr(sys, "_MEIPASS", os.path.dirname(os.path.abspath(__file__)))
    return os.path.join(base, "tools_root")


def main():
    ap = argparse.ArgumentParser(description="高德车机版(BYD定制) 一键修复引擎")
    ap.add_argument("apk", help="原版 APK 路径")
    ap.add_argument("--tools", help="内置工具根目录（默认取 PyInstaller 内置的 tools_root）")
    ap.add_argument("--out", help="输出 APK 路径（默认与输入同目录 <原名>_修复版.apk）")
    ap.add_argument("--mode", choices=("auto", "std", "coexist"), default="auto")
    ap.add_argument("--debug-log", action="store_true", help="开启应用调试日志")
    ap.add_argument("--no-voice-pack", action="store_true", help="不集成小团团语音包")
    a = ap.parse_args()

    global TOOLS, PATCH_DIR, APKTOOL_JAR, BAKSMALI_JAR, KEYSTORE
    TOOLS = resolve_tools(a.tools)
    PATCH_DIR = os.path.join(TOOLS, "patches")
    APKTOOL_JAR = os.path.join(TOOLS, "apktool.jar")
    BAKSMALI_JAR = os.path.join(TOOLS, "baksmali.jar")
    KEYSTORE = os.path.join(TOOLS, "amapfix.keystore")

    for p in (APKTOOL_JAR, BAKSMALI_JAR, KEYSTORE,
              os.path.join(PATCH_DIR, MC_METHOD_NAME),
              os.path.join(TOOLS, "jre", "bin", "java.exe"),
              os.path.join(TOOLS, "tools", "zipalign.exe"),
              os.path.join(TOOLS, "tools", "apksigner.jar")):
        if not os.path.isfile(p):
            print("[失败] 工具完整性 缺少 %s" % p)
            return 2

    if not os.path.isfile(a.apk):
        print("[失败] 输入 文件不存在: %s" % a.apk)
        return 2

    java = os.path.join(TOOLS, "jre", "bin", "java.exe")
    zipalign_exe = os.path.join(TOOLS, "tools", "zipalign.exe")
    apksigner_cmd = [java, "-cp", os.path.join(TOOLS, "tools", "apksigner.jar"),
                     "com.android.apksigner.ApkSignerTool"]

    workdir = os.path.join(os.environ.get("TEMP", "."), "amapfix_gui_engine")
    shutil.rmtree(workdir, ignore_errors=True)
    out_apk = a.out or os.path.splitext(a.apk)[0] + "_修复版.apk"

    print("ENGINE_VERSION: 1.0")
    print("OUT_PATH: " + out_apk)
    log = print
    try:
        rep, out = apply_all(a.apk, workdir, out_apk, java, zipalign_exe,
                             apksigner_cmd, a.debug_log, log, a.mode,
                             voice_pack=not a.no_voice_pack)
    except Exception:
        import traceback
        log("[失败] 引擎异常")
        traceback.print_exc()
        return 1
    if out and rep.all_ok():
        log("DONE_OK")
        return 0
    log("DONE_FAIL")
    return 1


if __name__ == "__main__":
    sys.exit(main())
