#!/system/bin/sh

MODDIR="${0%/*}"
PAYLOAD_DIR="$MODDIR/zygisk-payload"
ARM64_PAYLOAD="$PAYLOAD_DIR/arm64-v8a.so"
ARM32_PAYLOAD="$PAYLOAD_DIR/armeabi-v7a.so"
LSPOSED_ACTIVE_MARKER="/data/system/onestep-lsposed-backend-active"
STANDALONE_ACTIVE_MARKER="/data/system/onestep-standalone-backend-active"
PRIMARY_HOME_ACTIVE_MARKER="/data/system/onestep-primary-home-hook-active"
ROOT_DISPLAY_COMPAT_ACTIVE_MARKER="/data/system/onestep-root-display-compat-hook-active"

lsposed_active() {
  for module_prop in /data/adb/modules/*/module.prop; do
    [ -f "$module_prop" ] || continue
    module_dir="${module_prop%/*}"
    [ ! -e "$module_dir/disable" ] || continue
    [ ! -e "$module_dir/remove" ] || continue
    if grep -Eiq '^(id|name)=.*(lsposed|lspd|vector)' "$module_prop"; then
      [ -f /data/system/onestep-lsposed-backend-active ] && return 0
      [ -f /data/system/onestep-primary-home-hook-active ] && return 0
      [ -f /data/system/onestep-root-display-compat-hook-active ] && return 0
      return 1
    fi
  done
  return 1
}

set_hook_property() {
  property_name="$1"
  property_value="$2"
  if command -v resetprop >/dev/null 2>&1; then
    resetprop -n "$property_name" "$property_value"
  elif [ -x /data/adb/ksu/bin/resetprop ]; then
    /data/adb/ksu/bin/resetprop -n "$property_name" "$property_value"
  fi
}

apply_root_bridge_sepolicy() {
  ksud_bin=$(command -v ksud 2>/dev/null)
  [ -n "$ksud_bin" ] || ksud_bin=/data/adb/ksu/bin/ksud
  [ -x "$ksud_bin" ] || ksud_bin=/data/adb/ksud

  root_context=$(id -Z 2>/dev/null)
  root_domain=${root_context#u:r:}
  root_domain=${root_domain%%:*}
  case "$root_domain" in
    ''|*[!a-zA-Z0-9_]*)

      if [ -x /data/adb/ksu/bin/ksud ] || [ -x /data/adb/ksud ]; then
        root_domain=ksu
      else
        root_domain=su
      fi
      ;;
  esac

  if command -v magiskpolicy >/dev/null 2>&1; then
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
    return 0
  fi

  [ -x "$ksud_bin" ] || return 0
  for policy_rule in \
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
      "allow surfaceflinger $root_domain binder transfer"; do
    "$ksud_bin" sepolicy patch "$policy_rule" >/dev/null 2>&1 || true
  done
  return 0
}

apply_root_bridge_sepolicy

lsposed_detected=0
if lsposed_active; then
  lsposed_detected=1
  rm -f "$STANDALONE_ACTIVE_MARKER"
else
  rm -f "$LSPOSED_ACTIVE_MARKER" "$PRIMARY_HOME_ACTIVE_MARKER" \
    "$ROOT_DISPLAY_COMPAT_ACTIVE_MARKER"
fi
set_hook_property onestep.hook.primaryhome_enhancement 0
if [ -e "$MODDIR/hook-config/disable-secure-window" ]; then
  set_hook_property onestep.hook.secure 0
else
  set_hook_property onestep.hook.secure 1
fi
if [ -e "$MODDIR/hook-config/disable-status-bar-overlay" ]; then
  set_hook_property onestep.hook.statusbar 0
else
  set_hook_property onestep.hook.statusbar 1
fi
if [ -e "$MODDIR/hook-config/disable-primary-home-enhancement" ]; then
  primary_home_enhancement=0
else
  primary_home_enhancement=1
fi
if [ -e "$MODDIR/hook-config/enable-image-drag-sharing" ]; then
  set_hook_property onestep.hook.image_drag 1
else
  set_hook_property onestep.hook.image_drag 0
fi

zygisk_next_active() {
  for module_prop in /data/adb/modules/*/module.prop; do
    [ -f "$module_prop" ] || continue
    module_dir="${module_prop%/*}"
    [ "$module_dir" != "$MODDIR" ] || continue
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

if [ "$lsposed_detected" = "1" ]; then
  set_hook_property onestep.hook.backend lsposed
  set_hook_property onestep.hook.primaryhome_enhancement \
    "$primary_home_enhancement"
  rm -rf "$MODDIR/zygisk"
  exit 0
fi
set_hook_property onestep.hook.backend standalone

if [ ! -f "$ARM64_PAYLOAD" ] \
    || [ ! -f "$ARM32_PAYLOAD" ]; then
  rm -rf "$MODDIR/zygisk"
  exit 0
fi

STAGING_DIR="$MODDIR/.zygisk-staging"
rm -rf "$STAGING_DIR"
mkdir -p "$STAGING_DIR" || exit 0
cp -f "$ARM64_PAYLOAD" "$STAGING_DIR/arm64-v8a.so" || exit 0
cp -f "$ARM32_PAYLOAD" "$STAGING_DIR/armeabi-v7a.so" || exit 0
chown 0:0 "$STAGING_DIR" "$STAGING_DIR/arm64-v8a.so" \
  "$STAGING_DIR/armeabi-v7a.so" 2>/dev/null
chmod 0755 "$STAGING_DIR"
chmod 0644 "$STAGING_DIR/arm64-v8a.so" "$STAGING_DIR/armeabi-v7a.so"
rm -rf "$MODDIR/zygisk"
mv "$STAGING_DIR" "$MODDIR/zygisk"
set_hook_property onestep.hook.primaryhome_enhancement \
  "$primary_home_enhancement"
