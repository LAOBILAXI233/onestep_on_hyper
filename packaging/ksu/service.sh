#!/system/bin/sh
MODDIR=${0%/*}

(
  until [ "$(getprop sys.boot_completed)" = "1" ]; do
    sleep 2
  done
  if [ -f "$MODDIR/boot-completed.sh" ]; then
    "$MODDIR/boot-completed.sh"
  fi
) &
