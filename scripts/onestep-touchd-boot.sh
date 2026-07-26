#!/system/bin/sh
# Boot launcher for the OneStep touch daemon.
#
# Install as a KernelSU/Magisk module service.sh, or drop into /data/adb/service.d/.
# It waits for boot completion and for the vendor touch HAL to map its algorithm
# library (the uprobe target), then starts the daemon under setsid.
#
# The daemon scripts are expected alongside this file; override with ONESTEP_TOUCHD_DIR.

DIR=${ONESTEP_TOUCHD_DIR:-/data/local/tmp}
export ONESTEP_TOUCHD_LOG=${ONESTEP_TOUCHD_LOG:-/data/local/tmp/onestep-touchd.log}

# Wait for userspace to finish booting.
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 2
done

# Wait for the touch HAL to be up and the algorithm library to be mapped, so the
# uprobe attaches to a live target. Give up after ~60s rather than spin forever.
tries=0
while [ $tries -lt 30 ]; do
    pid=$(pgrep -f touchfeature-service | head -1)
    if [ -n "$pid" ] && grep -q touchreport_alg /proc/$pid/maps 2>/dev/null; then
        break
    fi
    tries=$((tries + 1))
    sleep 2
done

setsid sh "$DIR/onestep-touchd.sh" </dev/null >/data/local/tmp/onestep-touchd.out 2>&1 &
