#!/system/bin/sh

PACKAGE_NAME="com.hyper.onestep"
SYSTEM_APK_PATH="/system/product/app/VanStep/VanStep.apk"
SMARTISAN_PACKAGE_NAME="com.smartisanos.home"
SMARTISAN_SYSTEM_APK_PATH="/system/app/SmartisanHome/SmartisanHome.apk"
SMARTISAN_MODULE_VERSION_CODE=2026071501

print_message() {
  if command -v ui_print >/dev/null 2>&1; then
    ui_print "$1"
  else
    echo "$1"
  fi
}

active_data_app_paths() {
  package_name="$1"
  pm path "$package_name" 2>/dev/null | sed -n \
      -e 's|^package:\(/data/app/.*\)$|\1|p' \
      -e 's|^package:\(/mnt/expand/.*/app/.*\)$|\1|p'
}

system_package_is_ready() {
  [ -f "$SYSTEM_APK_PATH" ] || return 1
  pm list packages -s 2>/dev/null | grep -qx "package:$PACKAGE_NAME"
}

wait_for_data_app_removal() {
  removal_package="$1"
  removal_attempt=0
  while [ "$removal_attempt" -lt 20 ]; do
    if [ -z "$(active_data_app_paths "$removal_package")" ]; then
      return 0
    fi
    cmd package wait-for-handler --timeout 1000 >/dev/null 2>&1 || true
    sleep 0.2
    removal_attempt=$((removal_attempt + 1))
  done
  [ -z "$(active_data_app_paths "$removal_package")" ]
}

remove_system_update() {
  package_name="$1"
  label="$2"
  if [ -z "$(pm path "$package_name" 2>/dev/null | grep -E '^package:/data/app/|^package:/mnt/expand/.*/app/')" ]; then
    return 0
  fi
  print_message "- 正在移除 $label 的旧 /data/app 更新包"
  uninstall_output="$(cmd package uninstall-system-updates "$package_name" 2>&1)"
  uninstall_status=$?
  [ -z "$uninstall_output" ] || printf '%s\n' "$uninstall_output"
  if [ "$uninstall_status" -ne 0 ]; then
    print_message "! PackageManager 无法回退 $label 系统应用更新，保留待处理标记"
    return 1
  fi
  return 0
}

installed_version_code() {
  dumpsys package "$1" 2>/dev/null \
    | sed -n 's/.*versionCode=\([0-9]*\).*/\1/p' | head -n 1
}

clean_vanstep_data_update() {
  vanstep_data_paths="$(active_data_app_paths "$PACKAGE_NAME")"
  if [ -z "$vanstep_data_paths" ]; then
    print_message "- 未发现 VanStep 的 /data/app 更新包"
    return 0
  fi
  if ! system_package_is_ready; then
    print_message "! 系统版 VanStep 尚未挂载或未被 PackageManager 识别，跳过清理"
    return 1
  fi
  remove_system_update "$PACKAGE_NAME" "VanStep" || return 1
  if [ -n "$(active_data_app_paths "$PACKAGE_NAME")" ]; then
    print_message "! PackageManager 仍指向旧 /data/app 包，保留待处理标记"
    return 1
  fi
  print_message "- 已移除旧系统应用更新包，应用数据保持不变"
  return 0
}

clean_smartisan_data_update() {
  smartisan_data_paths="$(active_data_app_paths "$SMARTISAN_PACKAGE_NAME")"
  if [ -z "$smartisan_data_paths" ]; then
    print_message "- 未发现内置锤子桌面的 /data/app 副本"
    return 0
  fi
  if [ ! -f "$SMARTISAN_SYSTEM_APK_PATH" ]; then
    print_message "! 内置锤子桌面尚未挂载到 system/app，暂不清理 /data/app 副本"
    return 1
  fi
  smartisan_installed_code="$(installed_version_code "$SMARTISAN_PACKAGE_NAME")"
  case "$smartisan_installed_code" in
    ''|*[!0-9]*) smartisan_installed_code=0 ;;
  esac
  if [ "$smartisan_installed_code" -gt "$SMARTISAN_MODULE_VERSION_CODE" ]; then
    print_message "- 检测到更新的锤子桌面版本（$smartisan_installed_code），视为用户自行更新，保留"
    return 0
  fi
  remove_system_update "$SMARTISAN_PACKAGE_NAME" "内置锤子桌面" || return 1
  if ! wait_for_data_app_removal "$SMARTISAN_PACKAGE_NAME"; then
    print_message "! 内置锤子桌面仍指向旧 /data/app 包，保留待处理标记"
    return 1
  fi
  print_message "- 内置锤子桌面已回退到 system/app 挂载版本"
  return 0
}

clean_vanstep_data_update || exit 1
clean_smartisan_data_update || exit 1
exit 0
