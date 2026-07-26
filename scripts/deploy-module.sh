#!/system/bin/sh
# Installs the OneStep touch daemon as a KernelSU module. Run under `su -M`.
# Sources are expected in /data/local/tmp (pushed by adb).
SRC=/data/local/tmp
MOD=/data/adb/modules/onestep_touchd

mkdir -p $MOD || { echo "cannot create $MOD (need su -M)"; exit 1; }
cp $SRC/module.prop            $MOD/module.prop
cp $SRC/service.sh             $MOD/service.sh
cp $SRC/onestep-touchd.sh      $MOD/onestep-touchd.sh
cp $SRC/onestep-touchd-stop.sh $MOD/onestep-touchd-stop.sh
chmod 0644 $MOD/module.prop
chmod 0755 $MOD/service.sh $MOD/onestep-touchd.sh $MOD/onestep-touchd-stop.sh
# Clear any disable/remove flags a prior attempt may have left.
rm -f $MOD/disable $MOD/remove 2>/dev/null

echo "=== installed module ==="
ls -la $MOD
echo "MODULE_READY id=onestep_touchd"
