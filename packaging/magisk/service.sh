#!/system/bin/sh

MODDIR="${0%/*}"
PACKAGE_NAME="com.hyper.onestep"
VIRTUAL_DISPLAY_ROLE="android.app.role.COMPANION_DEVICE_APP_STREAMING"
LOG_FILE="$MODDIR/service.log"
STATE_HELPER="$MODDIR/module-state.sh"
DATA_APP_CLEANUP_HELPER="$MODDIR/remove-data-app-update.sh"
DATA_APP_CLEANUP_MARKER="$MODDIR/remove-data-app-update-pending"

write_log() {
  message="$1"
  echo "$(date '+%Y-%m-%d %H:%M:%S') $message" >>"$LOG_FILE"
  log -t VanStep "$message" >/dev/null 2>&1 || true
}

run_and_log() {
  logged_output="$("$@" 2>&1)"
  logged_status=$?
  if [ -n "$logged_output" ]; then
    echo "$logged_output" >>"$LOG_FILE"
  fi
  return "$logged_status"
}

cleanup_data_app_update_if_pending() {
  if [ ! -e "$DATA_APP_CLEANUP_MARKER" ]; then
    return 0
  fi
  if [ ! -x "$DATA_APP_CLEANUP_HELPER" ]; then
    write_log "无法清理旧 /data/app 更新包：缺少清理脚本"
    return 1
  fi

  write_log "模块已挂载且系统已启动，正在检查旧 /data/app 更新包"
  if run_and_log "$DATA_APP_CLEANUP_HELPER"; then
    rm -f "$DATA_APP_CLEANUP_MARKER"
    write_log "旧 /data/app 更新包检查完成"
    return 0
  fi
  write_log "旧 /data/app 更新包暂未清理，保留标记供下次启动重试"
  return 1
}

BUILTIN_SMARTISAN_PACKAGE="com.smartisanos.home"
BUILTIN_SMARTISAN_SYSTEM_APK="/system/app/SmartisanHome/SmartisanHome.apk"

ensure_builtin_smartisan_home() {
  if [ ! -f "$BUILTIN_SMARTISAN_SYSTEM_APK" ]; then
    write_log "内置锤子桌面：system/app 挂载缺失（$BUILTIN_SMARTISAN_SYSTEM_APK）"
    return 1
  fi

  installed_path="$(pm path "$BUILTIN_SMARTISAN_PACKAGE" 2>/dev/null \
    | sed -n 's/^package:\(.*\)$/\1/p' | head -n 1)"
  case "$installed_path" in
    "$BUILTIN_SMARTISAN_SYSTEM_APK")
      write_log "内置锤子桌面：system/app 已注册（$installed_path）"
      return 0
      ;;
    /data/*|/mnt/expand/*)
      write_log "内置锤子桌面：仍指向数据分区副本（$installed_path），等待清理脚本处理"
      return 0
      ;;
    "")
      write_log "内置锤子桌面：system/app 文件在位但未注册（等待 PackageManager 扫描）"
      return 0
      ;;
  esac
  write_log "内置锤子桌面：注册路径异常（$installed_path）"
  return 0
}

VANSTEP_TMP_APK="/data/local/tmp/vanstep-refresh.apk"

ensure_vanstep_data_refresh() {
  if [ ! -f "$MODDIR/VanStep.apk" ]; then
    write_log "VanStep 数据刷新：模块内未找到 APK，跳过"
    return 0
  fi
  module_code="$(sed -n 's/^versionCode=//p' "$MODDIR/module.prop" | head -n 1)"
  case "$module_code" in
    ''|*[!0-9]*)
      write_log "VanStep 数据刷新：module.prop 版本号异常，跳过"
      return 0
      ;;
  esac
  installed_path="$(pm path com.hyper.onestep 2>/dev/null | head -n 1 | sed 's/^package://')"
  installed_code="$(dumpsys package com.hyper.onestep 2>/dev/null \
    | sed -n 's/.*versionCode=\([0-9]*\).*/\1/p' | head -n 1)"
  case "$installed_code" in
    ''|*[!0-9]*)
      installed_code=0
      ;;
  esac
  case "$installed_path" in
    /data/*)
      if [ "$installed_code" -ge "$module_code" ]; then
        write_log "VanStep 数据刷新：数据分区副本已在位（versionCode=$installed_code）"
        return 0
      fi
      write_log "VanStep 数据刷新：数据分区版本落后（$installed_code < $module_code），准备更新"
      ;;
    *)
      write_log "VanStep 数据刷新：当前为系统分区记录（$installed_path），准备覆盖安装数据副本"
      ;;
  esac
  if run_and_log cp "$MODDIR/VanStep.apk" "$VANSTEP_TMP_APK" \
      && chmod 0644 "$VANSTEP_TMP_APK"; then
    if run_and_log pm install -r "$VANSTEP_TMP_APK"; then
      write_log "VanStep 数据刷新：pm install 成功"
    else
      write_log "VanStep 数据刷新：pm install 失败（签名冲突时保留现有安装）"
    fi
  else
    write_log "VanStep 数据刷新：复制 APK 到临时目录失败"
  fi
  rm -f "$VANSTEP_TMP_APK"
}

restore_installed_for_user() {
  restore_user_id="$1"
  restore_package="$2"
  if pm list packages --user "$restore_user_id" 2>/dev/null \
      | grep -qx "package:$restore_package"; then
    return 0
  fi
  if run_and_log cmd package install-existing --user "$restore_user_id" \
      "$restore_package"; then
    write_log "已通过 cmd package 为用户 $restore_user_id 恢复 $restore_package"
  elif run_and_log pm install-existing --user "$restore_user_id" \
      "$restore_package"; then
    write_log "已通过 pm 为用户 $restore_user_id 恢复 $restore_package"
  else
    write_log "无法为用户 $restore_user_id 恢复 $restore_package"
    return 1
  fi
  return 0
}

restore_for_user() {
  user_id="$1"
  if pm list packages --user "$user_id" 2>/dev/null \
      | grep -qx "package:$PACKAGE_NAME"; then
    write_log "用户 $user_id 已安装应用"
  elif restore_installed_for_user "$user_id" "$PACKAGE_NAME"; then
    :
  else
    write_log "无法为用户 $user_id 恢复应用"
    return
  fi

  if cmd role get-role-holders --user "$user_id" "$VIRTUAL_DISPLAY_ROLE" \
      2>/dev/null | grep -qx "$PACKAGE_NAME"; then
    write_log "用户 $user_id 已获得可信虚拟显示角色"
  elif run_and_log cmd role add-role-holder --user "$user_id" \
      "$VIRTUAL_DISPLAY_ROLE" "$PACKAGE_NAME" 0; then
    write_log "已为用户 $user_id 授予可信虚拟显示角色"
  else
    write_log "无法为用户 $user_id 授予可信虚拟显示角色"
  fi
}

resolve_home_component() {
  user_id="$1"
  home_component="$(cmd package resolve-activity --brief --user "$user_id" \
      -a android.intent.action.MAIN \
      -c android.intent.category.HOME 2>/dev/null \
      | grep '^[^[:space:]][^[:space:]]*/[^[:space:]]*$' | tail -n 1)"
  if [ -z "$home_component" ]; then
    home_component="$(pm resolve-activity --brief --user "$user_id" \
        -a android.intent.action.MAIN \
        -c android.intent.category.HOME 2>/dev/null \
        | grep '^[^[:space:]][^[:space:]]*/[^[:space:]]*$' | tail -n 1)"
  fi
  printf '%s\n' "$home_component"
}

vanstep_is_selected_home() {
  user_id="$1"
  resolved_home="$(resolve_home_component "$user_id")"
  case "$resolved_home" in
    "$PACKAGE_NAME"/*)
      return 0
      ;;
  esac

  cmd role get-role-holders --user "$user_id" android.app.role.HOME \
      2>/dev/null | grep -qx "$PACKAGE_NAME"
}

hyperos_third_party_home_selected() {
  user_id="$1"
  hyperos_version="$(getprop ro.mi.os.version.name 2>/dev/null)"
  case "$hyperos_version" in
    OS*) ;;
    *) return 1 ;;
  esac

  resolved_home="$(resolve_home_component "$user_id")"
  case "$resolved_home" in
    com.miui.home/*|com.mi.android.globallauncher/*)
      return 1
      ;;
  esac
  vanstep_is_selected_home "$user_id"
}

restore_hyperos_gesture_navigation() {
  user_id="$1"
  marker="$MODDIR/hook-config/enable-hyperos-third-party-gesture"
  if [ ! -e "$marker" ]; then
    write_log "已跳过 HyperOS 手势恢复：功能标记不存在"
    return 0
  fi
  if ! hyperos_third_party_home_selected "$user_id"; then
    write_log "已跳过 HyperOS 手势恢复：VanStep 不是已选择的第三方桌面"
    return 0
  fi

  if [ -x "$STATE_HELPER" ]; then
    "$STATE_HELPER" snapshot-navigation >/dev/null 2>&1 || true
  fi
  settings put global force_fsg_nav_bar 1 >/dev/null 2>&1
  fsg_mode="$(settings get global force_fsg_nav_bar 2>/dev/null)"
  if [ "$fsg_mode" = "1" ]; then
    write_log "已为用户 $user_id 恢复 HyperOS 手势导航"
    return 0
  fi
  write_log "HyperOS 手势导航恢复失败：force=$fsg_mode"
  return 1
}

prepare_qq_original_media_storage() {
  user_id="$1"
  qq_package="com.tencent.mobileqq"
  if ! pm list packages --user "$user_id" 2>/dev/null \
      | grep -qx "package:$qq_package"; then
    write_log "已跳过 QQ 原图目录初始化：用户 $user_id 未安装 QQ"
    return 0
  fi

  if [ -x "$STATE_HELPER" ]; then
    "$STATE_HELPER" snapshot-qq-appops "$user_id" >/dev/null 2>&1 || true
  fi
  run_and_log cmd appops set --user "$user_id" --uid "$qq_package" \
      MANAGE_EXTERNAL_STORAGE allow || true
  run_and_log cmd appops set --user "$user_id" "$qq_package" \
      WRITE_EXTERNAL_STORAGE allow || true
  qq_media_dir="/storage/emulated/$user_id/Tencent/MobileQQ/chatpic/Temp"
  if mkdir -p "$qq_media_dir" 2>/dev/null; then
    write_log "已初始化 QQ 原图媒体目录：$qq_media_dir"
  else
    write_log "无法初始化 QQ 原图媒体目录：$qq_media_dir"
  fi
}

write_log "正在等待 Android 启动完成"
if [ -x "$MODDIR/statusbar-post-fs-data.sh" ]; then
  write_log "正在检查可选的 Zygisk 状态栏覆盖层"
  "$MODDIR/statusbar-post-fs-data.sh"
fi

apply_root_bridge_sepolicy() {
  command -v magiskpolicy >/dev/null 2>&1 || return 0
  root_context=$(id -Z 2>/dev/null)
  root_domain=${root_context#u:r:}
  root_domain=${root_domain%%:*}
  case "$root_domain" in
    ''|*[!a-zA-Z0-9_]*) root_domain=magisk ;;
  esac
  magiskpolicy --live \
    "allow $root_domain default_android_service service_manager add" \
    "allow untrusted_app default_android_service service_manager find" \
    "allow priv_app default_android_service service_manager find" \
    "allow untrusted_app $root_domain binder { call transfer }" \
    "allow $root_domain untrusted_app binder { call transfer }" \
    "allow untrusted_app $root_domain unix_stream_socket connectto" \
    "allow $root_domain untrusted_app fd use" \
    "allow priv_app $root_domain binder { call transfer }" \
    "allow $root_domain priv_app binder { call transfer }" \
    "allow priv_app $root_domain unix_stream_socket connectto" \
    "allow $root_domain priv_app fd use" \
    "allow $root_domain surfaceflinger_service service_manager find" \
    "allow $root_domain surfaceflinger binder { call transfer }" \
    "allow surfaceflinger $root_domain binder transfer" \
    >/dev/null 2>&1 || true
}
apply_root_bridge_sepolicy

boot_wait=0
while [ "$(getprop sys.boot_completed)" != "1" ] && [ "$boot_wait" -lt 180 ]; do
  sleep 2
  boot_wait=$((boot_wait + 2))
done

current_user="$(cmd activity get-current-user 2>/dev/null)"
case "$current_user" in
  ''|*[!0-9]*)
    current_user=0
    ;;
esac
cleanup_data_app_update_if_pending || true
ensure_builtin_smartisan_home
ensure_vanstep_data_refresh
restore_for_user 0
restore_installed_for_user 0 "$BUILTIN_SMARTISAN_PACKAGE" || true
prepare_qq_original_media_storage 0

if [ "$current_user" != "0" ]; then
  restore_for_user "$current_user"
  restore_installed_for_user "$current_user" "$BUILTIN_SMARTISAN_PACKAGE" || true
  prepare_qq_original_media_storage "$current_user"
fi

write_log "VanStep 应用恢复完成"

rm -f "$MODDIR/restore-home-selection"
restore_hyperos_gesture_navigation "$current_user"
