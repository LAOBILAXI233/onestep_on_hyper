#!/system/bin/sh
# Publishes Xiaomi's per-frame contact-density signal as a system property so the
# OneStep input hook can arm a large-contact gesture.
#
# The touch driver declares ABS_MT_TOUCH_MAJOR but never emits it, so MotionEvent
# carries no contact footprint. The footprint only exists inside the vendor touch
# HAL: libtouchreport_alg.so's density routine holds the active-cell count in x12.
# A uprobe on that instruction is the only way to observe it from outside the HAL.
#
# Thresholds come from measured sessions (finger baseline / thumb press / palm):
# a thumb press and ordinary scrolling occupy the same area range, so area alone
# cannot separate them. Only dwell does -- ordinary use never sustains active>=13
# past 11 frames, while a deliberate thumb press holds it for 20-59.

TRACE=/sys/kernel/tracing
INSTANCE=$TRACE/instances/onestep
ALG_LIB=/odm/lib64/libtouchreport_alg.so
DENSITY_OFFSET=0x3b338
PROP=sys.onestep.large_area

ACTIVE_CELLS=13   # measured: ordinary use peaks here, palm/thumb press exceeds it
ARM_FRAMES=12     # ~90ms at 135Hz; zero false positives over the finger baseline
RELEASE_FRAMES=5  # debounces the jitter around lift-off

if [ "$(id -u)" != "0" ]; then
    echo "onestep-touchd: must run as root" >&2
    exit 1
fi

mkdir $INSTANCE 2>/dev/null

if ! grep -q 'uprobes/ld' $TRACE/uprobe_events 2>/dev/null; then
    echo "p:ld $ALG_LIB:$DENSITY_OFFSET active=%x12:u32 total=%x13:u32 peaks=%x8:u32" \
        >> $TRACE/uprobe_events || {
        echo "onestep-touchd: cannot register uprobe" >&2
        exit 1
    }
fi

echo 1 > $INSTANCE/events/uprobes/ld/enable || {
    echo "onestep-touchd: cannot enable probe" >&2
    exit 1
}
# Each instance owns its tracing_on; the global one is held at 0 by traced_probes.
echo 1 > $INSTANCE/tracing_on
echo > $INSTANCE/trace
setprop $PROP 0

# Arm/release decisions are printed to stdout; the launcher redirects them to a log.
# The awk program does NO in-program file redirection on purpose: toybox awk mishandles
# `print >> var`, which previously crashed the daemon mid-stream ("can't open file").
LOG=${ONESTEP_TOUCHD_LOG:-/data/local/tmp/onestep-touchd.log}
: > "$LOG" 2>/dev/null

echo "onestep-touchd: watching active>=$ACTIVE_CELLS for $ARM_FRAMES frames -> $PROP"

awk -v prop="$PROP" -v cells="$ACTIVE_CELLS" -v arm="$ARM_FRAMES" -v rel="$RELEASE_FRAMES" '
/ ld:/ {
    field = $0
    sub(/.*active=/, "", field)
    sub(/[^0-9].*/, "", field)
    active = field + 0
    frames++

    if (active >= cells) { hold++; idle = 0 } else { hold = 0; idle++ }
    if (hold > peakHold) peakHold = hold
    if (active > maxActive) maxActive = active

    if (!armed && hold >= arm) {
        armed = 1
        system("setprop " prop " 1")
        print "ARM   frame=" frames " active=" active " hold=" hold
        fflush()
    } else if (armed && idle >= rel) {
        armed = 0
        system("setprop " prop " 0")
        print "REL   frame=" frames
        fflush()
    }

    if (frames % 500 == 0) {
        print "STAT  frame=" frames " maxActive=" maxActive " peakHold=" peakHold
        maxActive = 0; peakHold = 0
        fflush()
    }
}' < $INSTANCE/trace_pipe >> "$LOG" 2>&1
