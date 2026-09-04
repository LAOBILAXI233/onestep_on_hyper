#!/system/bin/sh

MODDIR="${0%/*}"
PACKAGE_NAME="com.hyper.onestep"
SMARTISAN_PACKAGE_NAME="com.smartisanos.home"
SMARTISAN_MODULE_VERSION_CODE=2026071501
HOME_ROLE="android.app.role.HOME"
VIRTUAL_DISPLAY_ROLE="android.app.role.COMPANION_DEVICE_APP_STREAMING"
IDMAP_PATH="/data/resource-cache/system@etc@onestep@OneStepStatusBarZeroOverlay.apk@idmap"

smartisan_installed_version_code() {
  dumpsys package "$SMARTISAN_PACKAGE_NAME" 2>/dev/null \
    | sed -n 's/.*versionCode=\([0-9]*\).*/\1/p' | head -n 1
}

remove_module_smartisan_update() {
  if [ -z "$(pm path "$SMARTISAN_PACKAGE_NAME" 2>/dev/null \
      | grep -E '^package:/data/app/|^package:/mnt/expand/.*/app/')" ]; then
    return 0
  fi
  smartisan_code="$(smartisan_installed_version_code)"
  case "$smartisan_code" in
    ''|*[!0-9]*) smartisan_code=0 ;;
  esac
  if [ "$smartisan_code" -gt "$SMARTISAN_MODULE_VERSION_CODE" ]; then
    return 0
  fi
  cmd package uninstall-system-updates "$SMARTISAN_PACKAGE_NAME" \
      >/dev/null 2>&1 || true
}

list_android_users() {
  cmd user list 2>/dev/null \
      | sed -n 's/.*UserInfo{\([0-9][0-9]*\):.*/\1/p'
}

remove_role_holder() {
  user_id="$1"
  role_name="$2"
  if cmd role get-role-holders --user "$user_id" "$role_name" 2>/dev/null \
      | grep -qx "$PACKAGE_NAME"; then
    cmd role remove-role-holder --user "$user_id" "$role_name" \
        "$PACKAGE_NAME" 0 >/dev/null 2>&1 || true
  fi
}

set_hook_property() {
  property_name="$1"
  property_value="$2"
  if command -v resetprop >/dev/null 2>&1; then
    resetprop -n "$property_name" "$property_value" >/dev/null 2>&1 || true
  elif [ -x /data/adb/ksu/bin/resetprop ]; then
    /data/adb/ksu/bin/resetprop -n "$property_name" "$property_value" \
        >/dev/null 2>&1 || true
  fi
}

set_hook_property onestep.hook.secure 0
set_hook_property onestep.hook.statusbar 0
set_hook_property onestep.hook.primaryhome_enhancement 0
set_hook_property onestep.hook.image_drag 0
set_hook_property onestep.hook.backend disabled

android_users="$(list_android_users)"
[ -n "$android_users" ] || android_users=0
for user_id in $android_users; do
  remove_role_holder "$user_id" "$HOME_ROLE"
  remove_role_holder "$user_id" "$VIRTUAL_DISPLAY_ROLE"
done
cmd package clear-package-preferred-activities "$PACKAGE_NAME" \
    >/dev/null 2>&1 || true

if [ -x "$MODDIR/module-state.sh" ]; then
  "$MODDIR/module-state.sh" restore-all >/dev/null 2>&1 || true
fi

cmd package uninstall-system-updates "$PACKAGE_NAME" >/dev/null 2>&1 || true
for user_id in $android_users; do
  pm uninstall --user "$user_id" "$PACKAGE_NAME" >/dev/null 2>&1 || true
done
pm uninstall "$PACKAGE_NAME" >/dev/null 2>&1 || true
for user_id in $android_users; do
  pm uninstall --user "$user_id" "$SMARTISAN_PACKAGE_NAME" >/dev/null 2>&1 || true
done
pm uninstall "$SMARTISAN_PACKAGE_NAME" >/dev/null 2>&1 || true

remove_module_smartisan_update

for user_id in $android_users; do
  cmd activity start-activity --user "$user_id" \
      -a android.intent.action.MAIN \
      -c android.intent.category.HOME >/dev/null 2>&1 || true
done

rm -f "$IDMAP_PATH"
rm -f /data/adb/post-fs-data.d/vanstep-zygisk-toggle.sh
rm -rf /data/system/onestep-module-state
rm -f /data/system/onestep-lsposed-backend-active \
    /data/system/onestep-standalone-backend-active \
    /data/system/onestep-primary-home-hook-active \
    /data/system/onestep-root-display-compat-hook-active \
    /data/system/onestep-status-hook.log
