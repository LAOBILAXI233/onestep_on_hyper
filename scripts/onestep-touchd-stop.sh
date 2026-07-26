#!/system/bin/sh
# Stops the touch daemon, including the awk child that holds trace_pipe open.
for p in $(ls /proc 2>/dev/null | grep -E '^[0-9]+$'); do
    if ls -l /proc/$p/fd 2>/dev/null | grep -q 'instances/onestep/trace_pipe'; then
        echo "onestep-touchd-stop: killing $p ($(tr '\0' ' ' < /proc/$p/cmdline 2>/dev/null))"
        kill -9 $p 2>/dev/null
    fi
done
pkill -f onestep-touchd.sh 2>/dev/null
setprop sys.onestep.large_area 0
echo "onestep-touchd-stop: done"
