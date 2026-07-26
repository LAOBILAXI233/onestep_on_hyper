#!/system/bin/sh
# Detaches the touch daemon into its own session so it survives the adb shell that
# launches it. Without setsid, "nohup ... &" under `su -c` dies when adb disconnects.
DIR=${ONESTEP_TOUCHD_DIR:-/data/local/tmp}
export ONESTEP_TOUCHD_LOG=${ONESTEP_TOUCHD_LOG:-/sdcard/touchd.log}

sh $DIR/onestep-touchd-stop.sh >/dev/null 2>&1
sleep 1

setsid sh $DIR/onestep-touchd.sh </dev/null >/sdcard/touchd.out 2>&1 &
sleep 2

if pgrep -f 'prop=sys.onestep' >/dev/null 2>&1; then
    echo "onestep-touchd-start: daemon detached, awk consuming trace_pipe"
    cat /sdcard/touchd.out
else
    echo "onestep-touchd-start: FAILED to stay alive"
    cat /sdcard/touchd.out
fi
