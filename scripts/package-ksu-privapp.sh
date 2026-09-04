#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT_DIR="$ROOT_DIR/dist"
WORK_DIR="$(mktemp -d "$ROOT_DIR/build/ksu-privapp.XXXXXX")"
APK_PATH="$ROOT_DIR/app/build/outputs/apk/debug/app-debug.apk"
ZYGISK_LIB_DIR="$ROOT_DIR/zygisk/build/libs"
ZYGISK_RUNTIME_DIR="$ROOT_DIR/app/build/zygisk-hook-runtime"
STATUS_BAR_OVERLAY="$ROOT_DIR/app/build/statusbar-overlay/OneStepStatusBarZeroOverlay.apk"
SMARTISAN_HOME_APK="$ROOT_DIR/packaging/ksu/smartisan-home/VanStepSmartisanHome.apk"
APP_GRADLE="$ROOT_DIR/app/build.gradle.kts"
APP_VERSION_NAME="$(awk -F'"' '/^[[:space:]]*versionName[[:space:]]*=/ { print $2; exit }' "$APP_GRADLE")"
APP_VERSION_CODE="$(awk -F'=' '/^[[:space:]]*versionCode[[:space:]]*=/ { gsub(/[[:space:]]/, "", $2); print $2; exit }' "$APP_GRADLE")"

sha256_file() {
    local file_path="$1"
    if command -v sha256sum >/dev/null 2>&1; then
        sha256sum "$file_path" | awk '{ print $1 }'
        return
    fi
    if command -v shasum >/dev/null 2>&1; then
        shasum -a 256 "$file_path" | awk '{ print $1 }'
        return
    fi
    echo "找不到 SHA-256 校验工具" >&2
    exit 1
}

if [[ -z "$APP_VERSION_NAME" || ! "$APP_VERSION_CODE" =~ ^[0-9]+$ ]]; then
    echo "无法从 $APP_GRADLE 读取应用版本" >&2
    exit 1
fi

SYSTEM_APP_DIR="VanStep"
APK_ENTRY="system/product/app/$SYSTEM_APP_DIR/VanStep.apk"
SMARTISAN_APP_ENTRY="system/app/SmartisanHome/SmartisanHome.apk"

mkdir -p "$OUT_DIR"

echo "清理旧 APK 和应用构建产物..."
"$ROOT_DIR/gradlew" -p "$ROOT_DIR" :app:clean

echo "强制重新编译最新 APK..."
"$ROOT_DIR/gradlew" -p "$ROOT_DIR" --no-build-cache --rerun-tasks \
    :app:assembleDebug :app:prepareZygiskHookRuntime

"$ROOT_DIR/scripts/build-zygisk-hook.sh"
"$ROOT_DIR/scripts/build-statusbar-overlay.sh"

if [[ ! -f "$APK_PATH" ]]; then
    echo "APK 构建完成后不存在：$APK_PATH" >&2
    exit 1
fi
for required_file in \
    "$ZYGISK_LIB_DIR/arm64-v8a/libonestep_zygisk.so" \
    "$ZYGISK_LIB_DIR/armeabi-v7a/libonestep_zygisk.so" \
    "$ZYGISK_RUNTIME_DIR/classes.dex" \
    "$ZYGISK_RUNTIME_DIR/jni/arm64-v8a/libaliuhook.so" \
    "$ZYGISK_RUNTIME_DIR/jni/arm64-v8a/liblsplant.so" \
    "$ZYGISK_RUNTIME_DIR/jni/arm64-v8a/libc++_shared.so" \
    "$ZYGISK_RUNTIME_DIR/jni/armeabi-v7a/libaliuhook.so" \
    "$ZYGISK_RUNTIME_DIR/jni/armeabi-v7a/liblsplant.so" \
    "$ZYGISK_RUNTIME_DIR/jni/armeabi-v7a/libc++_shared.so" \
    "$STATUS_BAR_OVERLAY"; do
    if [[ ! -f "$required_file" ]]; then
        echo "Zygisk Hook 构建产物不存在：$required_file" >&2
        exit 1
    fi
done

for zygisk_library in \
    "$ZYGISK_LIB_DIR/arm64-v8a/libonestep_zygisk.so" \
    "$ZYGISK_LIB_DIR/armeabi-v7a/libonestep_zygisk.so"; do
    if strings "$zygisk_library" | grep -q 'OneStepImageDragTargetHook'; then
        echo "Zygisk 构建产物仍包含已移除的 QQ 目标 Hook：$zygisk_library" >&2
        exit 1
    fi
    if ! strings "$zygisk_library" | grep 'OneStepNativeStatusBarHook' >/dev/null; then
        echo "Zygisk 构建产物缺少原生多显示器状态栏 Hook：$zygisk_library" >&2
        exit 1
    fi
done

if [[ ! -f "$SMARTISAN_HOME_APK" ]]; then
    echo "缺少内置锤子桌面 APK：$SMARTISAN_HOME_APK" >&2
    exit 1
fi
APK_SHA256="$(sha256_file "$APK_PATH")"
SMARTISAN_HOME_SHA256="$(sha256_file "$SMARTISAN_HOME_APK")"

smartisan_manifest_ok() {
    local aapt2
    for aapt2 in "$(command -v aapt2 2>/dev/null)" \
        "$ANDROID_HOME/build-tools/36.1.0/aapt2.exe" \
        "$ANDROID_HOME/build-tools/36.0.0/aapt2.exe" \
        "$ANDROID_HOME/build-tools/36.1.0/aapt2" \
        "$ANDROID_HOME/build-tools/36.0.0/aapt2"; do
        [ -n "$aapt2" ] && [ -x "$aapt2" ] || continue
        if "$aapt2" dump xmltree --file AndroidManifest.xml "$1" 2>/dev/null \
            | grep -q 'configChanges(0x0101001f)=0x40003fff'; then
            return 0
        fi
    done
    return 1
}
if ! smartisan_manifest_ok "$SMARTISAN_HOME_APK"; then
    echo "内置锤子桌面 APK 的 configChanges 缺少 density|smallestScreenSize 位" >&2
    echo "（期望 0x40003fff，缺失会导致虚拟显示 resize 时桌面重载）：" >&2
    echo "  $SMARTISAN_HOME_APK" >&2
    exit 1
fi
OUT_ZIP="$OUT_DIR/VanStep-$APP_VERSION_NAME-ksu-$(date +%Y%m%d-%H%M%S).zip"

mkdir -p "$WORK_DIR/system/product/app/$SYSTEM_APP_DIR"
mkdir -p "$WORK_DIR/system/app/SmartisanHome"
mkdir -p "$WORK_DIR/system/etc/permissions"
mkdir -p "$WORK_DIR/system/etc/onestep"
mkdir -p "$WORK_DIR/zygisk-payload"
mkdir -p "$WORK_DIR/zygisk-runtime/arm64-v8a"
mkdir -p "$WORK_DIR/zygisk-runtime/armeabi-v7a"

cp "$ROOT_DIR/packaging/ksu/customize.sh" "$WORK_DIR/customize.sh"
cp "$ROOT_DIR/packaging/ksu/post-fs-data.sh" "$WORK_DIR/post-fs-data.sh"
cp "$ROOT_DIR/packaging/ksu/uninstall.sh" "$WORK_DIR/uninstall.sh"
cp "$ROOT_DIR/packaging/root/disable.sh" "$WORK_DIR/disable.sh"
cp "$ROOT_DIR/packaging/magisk/service.sh" "$WORK_DIR/boot-completed.sh"
cp "$ROOT_DIR/packaging/root/action.sh" "$WORK_DIR/action.sh"
cp "$ROOT_DIR/packaging/root/module-state.sh" "$WORK_DIR/module-state.sh"
cp "$ROOT_DIR/packaging/root/remove-data-app-update.sh" \
    "$WORK_DIR/remove-data-app-update.sh"
cp "$ROOT_DIR/packaging/root/post-fs-data.sh" \
    "$WORK_DIR/statusbar-post-fs-data.sh"
cp "$ROOT_DIR/packaging/ksu/sepolicy.rule" "$WORK_DIR/sepolicy.rule"
cp "$APK_PATH" "$WORK_DIR/$APK_ENTRY"

cp "$APK_PATH" "$WORK_DIR/VanStep.apk"

cp "$SMARTISAN_HOME_APK" "$WORK_DIR/$SMARTISAN_APP_ENTRY"
cp "$STATUS_BAR_OVERLAY" \
    "$WORK_DIR/system/etc/onestep/OneStepStatusBarZeroOverlay.apk"
cp "$ZYGISK_LIB_DIR/arm64-v8a/libonestep_zygisk.so" \
    "$WORK_DIR/zygisk-payload/arm64-v8a.so"
cp "$ZYGISK_LIB_DIR/armeabi-v7a/libonestep_zygisk.so" \
    "$WORK_DIR/zygisk-payload/armeabi-v7a.so"
cp "$ZYGISK_RUNTIME_DIR/classes.dex" "$WORK_DIR/zygisk-runtime/aliuhook.dex"
for abi in arm64-v8a armeabi-v7a; do
    cp "$ZYGISK_RUNTIME_DIR/jni/$abi/libaliuhook.so" \
        "$WORK_DIR/zygisk-runtime/$abi/libaliuhook.so"
    cp "$ZYGISK_RUNTIME_DIR/jni/$abi/liblsplant.so" \
        "$WORK_DIR/zygisk-runtime/$abi/liblsplant.so"
    cp "$ZYGISK_RUNTIME_DIR/jni/$abi/libc++_shared.so" \
        "$WORK_DIR/zygisk-runtime/$abi/libc++_shared.so"
done
cp "$ROOT_DIR/packaging/root/privapp-permissions-com.hyper.onestep.xml" \
    "$WORK_DIR/system/etc/permissions/privapp-permissions-onestep.xml"
cp "$ROOT_DIR/packaging/root/privapp-permissions-smartisanos-home.xml" \
    "$WORK_DIR/system/etc/permissions/privapp-permissions-smartisanos-home.xml"
awk -v version="$APP_VERSION_NAME" -v version_code="$APP_VERSION_CODE" '
    /^version=/ { print "version=" version; next }
    /^versionCode=/ { print "versionCode=" version_code; next }
    { print }
' "$ROOT_DIR/packaging/ksu/module.prop" > "$WORK_DIR/module.prop"

COPIED_APK_SHA256="$(sha256_file "$WORK_DIR/$APK_ENTRY")"
if [[ "$COPIED_APK_SHA256" != "$APK_SHA256" ]]; then
    echo "复制到 KernelSU 工作目录的 APK 校验失败" >&2
    exit 1
fi

chmod 0755 "$WORK_DIR/customize.sh"
chmod 0755 "$WORK_DIR/post-fs-data.sh"
chmod 0755 "$WORK_DIR/uninstall.sh"
chmod 0755 "$WORK_DIR/disable.sh"
chmod 0755 "$WORK_DIR/boot-completed.sh"
chmod 0755 "$WORK_DIR/action.sh"
chmod 0755 "$WORK_DIR/module-state.sh"
chmod 0755 "$WORK_DIR/remove-data-app-update.sh"
chmod 0755 "$WORK_DIR/statusbar-post-fs-data.sh"
chmod 0644 "$WORK_DIR/sepolicy.rule"
chmod 0644 "$WORK_DIR/$APK_ENTRY"
chmod 0644 "$WORK_DIR/VanStep.apk"
chmod 0644 "$WORK_DIR/$SMARTISAN_APP_ENTRY"
chmod 0644 "$WORK_DIR/system/etc/permissions/privapp-permissions-onestep.xml"
chmod 0644 "$WORK_DIR/system/etc/permissions/privapp-permissions-smartisanos-home.xml"
chmod 0644 "$WORK_DIR/system/etc/onestep/OneStepStatusBarZeroOverlay.apk"
chmod 0644 "$WORK_DIR/module.prop"
chmod 0755 "$WORK_DIR/zygisk-payload"
chmod 0644 "$WORK_DIR/zygisk-payload/arm64-v8a.so" \
    "$WORK_DIR/zygisk-payload/armeabi-v7a.so"
chmod 0755 "$WORK_DIR/zygisk-runtime"
chmod 0755 "$WORK_DIR/zygisk-runtime/arm64-v8a"
chmod 0755 "$WORK_DIR/zygisk-runtime/armeabi-v7a"
chmod 0644 "$WORK_DIR/zygisk-runtime/aliuhook.dex"
chmod 0644 "$WORK_DIR/zygisk-runtime/arm64-v8a/"*.so
chmod 0644 "$WORK_DIR/zygisk-runtime/armeabi-v7a/"*.so

(
    cd "$WORK_DIR"
    if command -v zip >/dev/null 2>&1; then
        zip -qr "$OUT_ZIP" .
    elif [[ -x /c/WINDOWS/system32/tar.exe ]]; then

        /c/WINDOWS/system32/tar.exe -a -cf "$OUT_ZIP" *
    else
        echo "找不到打包工具（需要 zip 或 Windows 内置 tar）" >&2
        exit 1
    fi
)

VERIFY_DIR="$WORK_DIR/verify"
mkdir -p "$VERIFY_DIR"
unzip -qq "$OUT_ZIP" \
    "$APK_ENTRY" \
    "$SMARTISAN_APP_ENTRY" \
    "VanStep.apk" \
    "zygisk-payload/arm64-v8a.so" \
    "zygisk-payload/armeabi-v7a.so" \
    "zygisk-runtime/aliuhook.dex" \
    "post-fs-data.sh" \
    "boot-completed.sh" \
    "uninstall.sh" \
    "disable.sh" \
    "action.sh" \
    "module-state.sh" \
    "remove-data-app-update.sh" \
    "statusbar-post-fs-data.sh" \
    "system/etc/onestep/OneStepStatusBarZeroOverlay.apk" \
    "system/etc/permissions/privapp-permissions-smartisanos-home.xml" \
    -d "$VERIFY_DIR"
PACKAGED_APK_SHA256="$(sha256_file "$VERIFY_DIR/$APK_ENTRY")"
PACKAGED_ROOT_APK_SHA256="$(sha256_file "$VERIFY_DIR/VanStep.apk")"
PACKAGED_SMARTISAN_HOME_SHA256="$(sha256_file "$VERIFY_DIR/$SMARTISAN_APP_ENTRY")"
if [[ "$PACKAGED_APK_SHA256" != "$APK_SHA256" \
    || "$PACKAGED_ROOT_APK_SHA256" != "$APK_SHA256" ]]; then
    echo "KernelSU ZIP 内 VanStep APK 与最新构建 APK 不一致" >&2
    exit 1
fi
if [[ "$PACKAGED_SMARTISAN_HOME_SHA256" != "$SMARTISAN_HOME_SHA256" ]]; then
    echo "KernelSU ZIP 内锤子桌面 APK 与源文件不一致" >&2
    exit 1
fi
for required_entry in \
    "$APK_ENTRY" \
    "$SMARTISAN_APP_ENTRY" \
    "VanStep.apk" \
    "zygisk-payload/arm64-v8a.so" \
    "zygisk-payload/armeabi-v7a.so" \
    "zygisk-runtime/aliuhook.dex" \
    "post-fs-data.sh" \
    "boot-completed.sh" \
    "uninstall.sh" \
    "disable.sh" \
    "action.sh" \
    "module-state.sh" \
    "remove-data-app-update.sh" \
    "statusbar-post-fs-data.sh" \
    "system/etc/onestep/OneStepStatusBarZeroOverlay.apk" \
    "system/etc/permissions/privapp-permissions-smartisanos-home.xml"; do
    if [[ ! -s "$VERIFY_DIR/$required_entry" ]]; then
        echo "KernelSU ZIP 内缺少 Zygisk Hook：$required_entry" >&2
        exit 1
    fi
done
if unzip -Z1 "$OUT_ZIP" | grep -q 'install-module-apk\.sh$'; then
    echo "KernelSU ZIP 不得包含 /data/app 覆盖安装脚本" >&2
    exit 1
fi

if unzip -Z1 "$OUT_ZIP" | grep -Eq '^(VanStepSmartisanHome\.apk|smartisan-home/)'; then
    echo "KernelSU ZIP 不得包含旧锤子桌面 data-app 安装入口" >&2
    exit 1
fi
for packaged_script in customize.sh; do

    if unzip -p "$OUT_ZIP" "$packaged_script" \
        | grep -Eq 'pm[[:space:]]+install[[:space:]]+-r([[:space:]]|$)'; then
        echo "KernelSU ZIP 不得在安装或开机阶段执行 pm install -r：$packaged_script" >&2
        exit 1
    fi
done
for packaged_script in customize.sh boot-completed.sh post-fs-data.sh uninstall.sh disable.sh; do
    if unzip -p "$OUT_ZIP" "$packaged_script" \
        | grep -Eq 'set-home-activity'; then
        echo "KernelSU ZIP 不得修改系统默认桌面：$packaged_script" >&2
        exit 1
    fi
    if unzip -p "$OUT_ZIP" "$packaged_script" \
        | grep -Eiq 'onestep4|onestep40'; then
        echo "KernelSU ZIP 脚本不得包含旧品牌痕迹：$packaged_script" >&2
        exit 1
    fi
done
if unzip -p "$OUT_ZIP" customize.sh \
    | grep -Eq 'uninstall-system-updates|pm[[:space:]]+uninstall'; then
    echo "KernelSU ZIP 不得在安装阶段卸载 VanStep" >&2
    exit 1
fi
for packaged_zygisk_library in \
    "$VERIFY_DIR/zygisk-payload/arm64-v8a.so" \
    "$VERIFY_DIR/zygisk-payload/armeabi-v7a.so"; do
    if strings "$packaged_zygisk_library" | grep -q 'OneStepImageDragTargetHook'; then
        echo "KernelSU ZIP 仍包含已移除的 QQ 目标 Hook：$packaged_zygisk_library" >&2
        exit 1
    fi
    if ! strings "$packaged_zygisk_library" \
        | grep 'OneStepNativeStatusBarHook' >/dev/null; then
        echo "KernelSU ZIP 缺少原生多显示器状态栏 Hook：$packaged_zygisk_library" >&2
        exit 1
    fi
done
if unzip -Z1 "$OUT_ZIP" | grep -q '^zygisk/'; then
    echo "KernelSU ZIP 不得静态包含顶层 zygisk/，避免无 ZygiskNext 时混淆基础模式" >&2
    exit 1
fi

echo "APK SHA-256 校验值：$APK_SHA256"
echo "KernelSU 模块输出路径：$OUT_ZIP"
