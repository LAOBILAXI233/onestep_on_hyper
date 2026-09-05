#!/system/bin/sh

if [ "$KSU" != "true" ]; then
  abort "! 此安装包仅适用于 KernelSU"
fi

if [ "$BOOTMODE" != "true" ]; then
  abort "! KernelSU 模块必须通过 KernelSU 管理器安装"
fi

ui_print "- Van Step 普通页面无需 ZygiskNext 即可使用"
ui_print "- 可选：安装并启用 ZygiskNext 后支持 FLAG_SECURE 页面正常显示"

ksu_version_code="${KSU_VER_CODE:-0}"
case "$ksu_version_code" in
  ''|*[!0-9]*)
    ksu_version_code=0
    ;;
esac

SDK_INT="$(getprop ro.build.version.sdk)"
case "$SDK_INT" in
  ''|*[!0-9]*) SDK_INT=0 ;;
esac

if [ "$SDK_INT" -ge 37 ]; then
  if ! printf '%s\n' \
      'allow priv_app_36 default_android_service service_manager find' \
      'allow priv_app_36 ksu binder { call transfer }' \
      'allow ksu priv_app_36 binder { call transfer }' \
      'allow priv_app_36 ksu unix_stream_socket connectto' \
      'allow ksu priv_app_36 fd use' \
      'allow priv_app_36 su binder { call transfer }' \
      'allow su priv_app_36 binder { call transfer }' \
      'allow priv_app_36 su unix_stream_socket connectto' \
      'allow su priv_app_36 fd use' \
      >>"$MODPATH/sepolicy.rule"; then
    abort "! 无法写入 Android 17 ROOT 兼容策略"
  fi
  ui_print "- 已启用 Android 17 特权应用 ROOT 兼容策略"
fi

if [ "$ksu_version_code" -ge 30000 ] && [ ! -d /data/adb/metamodule ]; then
  ui_print "! KernelSU 3.x 不会自行挂载模块中的系统文件"
  ui_print "! 请安装并启用 meta-overlayfs（或兼容的元模块），然后重启"
  abort "! 重启后请重新安装 VanStep KernelSU 模块"
fi

APK_PATH="$MODPATH/system/priv-app/com.hyper.onestep/com.hyper.onestep.apk"
SMARTISAN_HOME_APK_PATH="$MODPATH/system/priv-app/com.smartisanos.home/com.smartisanos.home.apk"
ZYGISK_PAYLOAD_DIR="$MODPATH/zygisk-payload"
HOOK_CONFIG_DIR="$MODPATH/hook-config"

rm -rf "$MODPATH/smartisan-home"
rm -f "$MODPATH/VanStepSmartisanHome.apk"
rm -f "$MODPATH/onestep_gallery_injector" \
  "$MODPATH/onestep_gallery_hook.so" \
  "$MODPATH/system/bin/onestep_gallery_injector" \
  "$MODPATH/system/lib64/libonestep_gallery_hook.so"
PREVIOUS_HOOK_CONFIG_DIR="/data/adb/modules/vanstep_ksu_privapp/hook-config"
PREVIOUS_HOOK_CONFIG_EXISTS=false
if [ -d "$PREVIOUS_HOOK_CONFIG_DIR" ]; then
  PREVIOUS_HOOK_CONFIG_EXISTS=true
fi

lsposed_active() {
  for module_prop in /data/adb/modules/*/module.prop; do
    [ -f "$module_prop" ] || continue
    module_dir="${module_prop%/*}"
    [ ! -e "$module_dir/disable" ] || continue
    [ ! -e "$module_dir/remove" ] || continue
    if grep -Eiq '^(id|name)=.*(lsposed|lspd|vector)' "$module_prop"; then
      now_s=$(date +%s)
      up_s=$(cut -d. -f1 /proc/uptime 2>/dev/null)
      case "$up_s" in ''|*[!0-9]*) up_s=0 ;; esac
      boot_start=$((now_s - up_s))
      for guard_marker in /data/system/onestep-lsposed-backend-active \
          /data/system/onestep-primary-home-hook-active \
          /data/system/onestep-root-display-compat-hook-active; do
        marker_mtime=$(stat -c %Y "$guard_marker" 2>/dev/null || echo 0)
        if [ "$marker_mtime" -gt "$boot_start" ]; then
          return 0
        fi
      done
      return 1
    fi
  done
  return 1
}

zygisk_next_active() {
  for module_prop in /data/adb/modules/*/module.prop; do
    [ -f "$module_prop" ] || continue
    module_dir="${module_prop%/*}"
    [ "$module_dir" != "$MODPATH" ] || continue
    [ ! -e "$module_dir/disable" ] || continue
    [ ! -e "$module_dir/remove" ] || continue
    if grep -Eiq '^(id|name)=.*(zygisk.?next|zygisksu)' "$module_prop"; then
      return 0
    fi
    if [ -d "$module_dir/zygisk" ] \
        && grep -Eiq '^(id|name)=.*zygisk' "$module_prop"; then
      return 0
    fi
  done
  return 1
}

mkdir -p "$HOOK_CONFIG_DIR"
for hook_marker in disable-secure-window disable-status-bar-overlay \
    disable-primary-home-enhancement disable-ime-guard \
    enable-hyperos-third-party-gesture \
    enable-image-drag-sharing; do
  if [ -f "$PREVIOUS_HOOK_CONFIG_DIR/$hook_marker" ]; then
    : >"$HOOK_CONFIG_DIR/$hook_marker"
  fi
done
if [ "$PREVIOUS_HOOK_CONFIG_EXISTS" != "true" ]; then
  : >"$HOOK_CONFIG_DIR/disable-status-bar-overlay"
fi
if [ -f "$PREVIOUS_HOOK_CONFIG_DIR/disable-primary-home" ]; then
  : >"$HOOK_CONFIG_DIR/disable-primary-home-enhancement"
fi
set_perm_recursive "$HOOK_CONFIG_DIR" 0 0 0700 0600

if [ ! -f "$APK_PATH" ]; then
  abort "! 模块中缺少 VanStep APK"
fi
if [ ! -f "$SMARTISAN_HOME_APK_PATH" ]; then
  abort "! 模块中缺少内置锤子桌面 APK"
fi
if [ ! -f "$ZYGISK_PAYLOAD_DIR/arm64-v8a.so" ] \
    || [ ! -f "$ZYGISK_PAYLOAD_DIR/armeabi-v7a.so" ]; then
  abort "! 模块中的可选 Zygisk 组件不完整"
fi

rm -rf "$MODPATH/zygisk"
set_perm "$APK_PATH" 0 0 0644
set_perm "$SMARTISAN_HOME_APK_PATH" 0 0 0644
set_perm "$MODPATH/boot-completed.sh" 0 0 0755
set_perm "$MODPATH/post-fs-data.sh" 0 0 0755
set_perm "$MODPATH/disable.sh" 0 0 0755
set_perm "$MODPATH/statusbar-post-fs-data.sh" 0 0 0755
set_perm "$MODPATH/action.sh" 0 0 0755
set_perm "$MODPATH/module-state.sh" 0 0 0755
set_perm "$MODPATH/system/etc/onestep/OneStepStatusBarZeroOverlay.apk" 0 0 0644

if [ -f "$MODPATH/system/etc/permissions/privapp-permissions-smartisanos-home.xml" ]; then
  set_perm "$MODPATH/system/etc/permissions/privapp-permissions-smartisanos-home.xml" 0 0 0644
fi
set_perm_recursive "$ZYGISK_PAYLOAD_DIR" 0 0 0755 0644

if lsposed_active; then
  rm -rf "$MODPATH/zygisk"
  ui_print "- 已检测到 VanStep 在 LSPosed 中激活：仅使用框架 Hook，禁用独立 Zygisk payload"
elif [ -f "$ZYGISK_PAYLOAD_DIR/arm64-v8a.so" ] \
    && [ -f "$ZYGISK_PAYLOAD_DIR/armeabi-v7a.so" ]; then
  mkdir -p "$MODPATH/zygisk"
  cp -f "$ZYGISK_PAYLOAD_DIR/arm64-v8a.so" "$MODPATH/zygisk/arm64-v8a.so"
  cp -f "$ZYGISK_PAYLOAD_DIR/armeabi-v7a.so" "$MODPATH/zygisk/armeabi-v7a.so"
  set_perm_recursive "$MODPATH/zygisk" 0 0 0755 0644
  ui_print "- Zygisk payload 已准备：重启后由 ZygiskNext 加载"
else
  ui_print "- ZygiskNext 未启用：以普通页面兼容模式运行"
fi

if ! "$MODPATH/module-state.sh" snapshot-installation >/dev/null 2>&1; then
  ui_print "! 暂时无法记录持久设置原值，开机修改前将再次尝试"
fi

install_out="$(pm install -r -d "$APK_PATH" 2>&1)"
if [ $? -eq 0 ]; then
  ui_print "- VanStep 安装阶段注册成功"
else
  ui_print "! VanStep 安装阶段注册失败（开机后将自动重试）：$install_out"
fi
install_out="$(pm install -r -d "$SMARTISAN_HOME_APK_PATH" 2>&1)"
if [ $? -eq 0 ]; then
  ui_print "- 内置锤子桌面安装阶段注册成功"
else
  ui_print "! 内置锤子桌面安装阶段注册失败（开机后将自动重试）：$install_out"
fi




ui_print "- KernelSU 版本：${KSU_VER:-未知}（版本代码：${KSU_VER_CODE:-未知}）"
ui_print "- VanStep 与内置锤子桌面已以 priv-app 形态挂载，并在开机后注册"
ui_print "- 卸载本模块时会自动卸载这两个应用"
