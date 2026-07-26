#!/system/bin/sh
# KernelSU late_start service: launches the OneStep touch daemon each boot.
MODDIR=${0%/*}
export ONESTEP_TOUCHD_LOG=/data/local/tmp/onestep-touchd.log

# Wait for userspace boot to complete.
until [ "$(getprop sys.boot_completed)" = "1" ]; do
    sleep 2
done

# Wait for the touch HAL to map its algorithm library (the uprobe target).
tries=0
while [ $tries -lt 30 ]; do
    pid=$(pgrep -f touchfeature-service | head -1)
    if [ -n "$pid" ] && grep -q touchreport_alg /proc/$pid/maps 2>/dev/null; then
        break
    fi
    tries=$((tries + 1))
    sleep 2
done

setsid sh "$MODDIR/onestep-touchd.sh" </dev/null >/data/local/tmp/onestep-touchd.out 2>&1 &
