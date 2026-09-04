package com.leaf.hyperdragshare.codex;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

final class DragShareDiagnostics {
    private static final String TAG = "DragShare/Diagnostics";
    private static final int MAX_COMMAND_OUTPUT_CHARS = 48 * 1024;
    private static final long COMMAND_TIMEOUT_MS = 5_000L;
    private static final ExecutorService EXECUTOR = Executors.newSingleThreadExecutor(runnable -> {
        Thread thread = new Thread(runnable, "drag-share-diagnostics");
        thread.setDaemon(true);
        return thread;
    });
    private static final AtomicInteger RUNTIME_CAPTURED_DESTINATION =
            new AtomicInteger(Integer.MIN_VALUE);
    private static final AtomicInteger INPUT_INVENTORY_CAPTURED_DESTINATION =
            new AtomicInteger(Integer.MIN_VALUE);

    private DragShareDiagnostics() {}

    static void captureRuntimeOnce(Context context, String reason, String xposedBridgeVersion) {
        if (context == null || !DragShareLog.isDebugEnabled()
                || !markRuntimeDestinationCaptured()) {
            return;
        }
        Context applicationContext = context.getApplicationContext() == null
                ? context
                : context.getApplicationContext();
        EXECUTOR.execute(() -> captureRuntime(applicationContext, reason, xposedBridgeVersion));
    }

    static void captureInputInventory(
            Context context,
            String reason,
            String discoveredDevices,
            String selectedDeviceInfo) {
        if (context == null || !DragShareLog.isDebugEnabled()
                || !markInputInventoryDestinationCaptured()) {
            return;
        }
        String devices = trimForLog(discoveredDevices);
        String selected = trimForLog(selectedDeviceInfo);
        EXECUTOR.execute(() -> {
            DragShareLog.d(TAG, "input inventory begin reason=" + safe(reason));
            if (!devices.isEmpty()) {
                DragShareLog.d(TAG, "input devices discovered by caller:\n" + devices);
            }
            if (!selected.isEmpty()) {
                DragShareLog.d(TAG, "selected input capability dump:\n" + selected);
            }
            DragShareLog.d(TAG, "root ls -l /dev/input:\n"
                    + runRootCommand("ls -ld /dev/input; ls -l /dev/input"));
            DragShareLog.d(TAG, "root /proc/bus/input/devices:\n"
                    + runRootCommand("cat /proc/bus/input/devices"));
            if (selected.isEmpty()) {
                DragShareLog.d(TAG, "root getevent -lp:\n"
                        + runRootCommand("getevent -lp"));
            }
            DragShareLog.d(TAG, "input inventory end");
        });
    }

    static void captureInputFailure(
            Context context,
            String reason,
            String discoveredDevices,
            String selectedDeviceInfo) {
        if (context == null || !DragShareLog.isDebugEnabled()) {
            return;
        }
        String devices = trimForLog(discoveredDevices);
        String selected = trimForLog(selectedDeviceInfo);
        EXECUTOR.execute(() -> {
            DragShareLog.d(TAG, "input failure reason=" + safe(reason));
            if (!devices.isEmpty()) {
                DragShareLog.d(TAG, "input devices at failure:\n" + devices);
            }
            if (!selected.isEmpty()) {
                DragShareLog.d(TAG, "selected device at failure:\n" + selected);
            }
            DragShareLog.d(TAG, "root input capabilities at failure:\n"
                    + runRootCommand("getevent -lp"));
        });
    }

    private static void captureRuntime(Context context, String reason, String xposedBridgeVersion) {
        DragShareLog.d(TAG, "runtime diagnostic begin reason=" + safe(reason));
        DragShareLog.d(TAG, "module=" + com.hyper.onestep.BuildConfig.VERSION_NAME + " ("
                + com.hyper.onestep.BuildConfig.VERSION_CODE + ") package=" + context.getPackageName()
                + " process=" + Application.getProcessName()
                + " uid=" + android.os.Process.myUid());
        DragShareLog.d(TAG, "device manufacturer=" + safe(Build.MANUFACTURER)
                + " brand=" + safe(Build.BRAND)
                + " model=" + safe(Build.MODEL)
                + " device=" + safe(Build.DEVICE)
                + " product=" + safe(Build.PRODUCT));
        DragShareLog.d(TAG, "system release=" + safe(Build.VERSION.RELEASE)
                + " sdk=" + Build.VERSION.SDK_INT
                + " incremental=" + safe(Build.VERSION.INCREMENTAL)
                + " fingerprint=" + safe(Build.FINGERPRINT)
                + " abis=" + Arrays.toString(Build.SUPPORTED_ABIS));
        DragShareLog.d(TAG, "target portal=" + MainHook.TAPLUS_PACKAGE
                + " version=" + packageVersion(context, MainHook.TAPLUS_PACKAGE));
        DragShareLog.d(TAG, "LSPosed Manager package="
                + packageVersion(context, "org.lsposed.manager"));
        if (xposedBridgeVersion != null && !xposedBridgeVersion.trim().isEmpty()) {
            DragShareLog.d(TAG, "Xposed Bridge API=" + xposedBridgeVersion);
        }
        DragShareLog.d(TAG, "root environment:\n"
                + runRootCommand("id; command -v su; su -v; getprop ro.mi.os.version.name"));
        DragShareLog.d(TAG, "runtime diagnostic end");
    }

    private static String packageVersion(Context context, String packageName) {
        try {
            PackageInfo info = context.getPackageManager().getPackageInfo(packageName, 0);
            return safe(info.versionName) + " (" + info.getLongVersionCode() + ")";
        } catch (Throwable error) {
            return "unavailable:" + error.getClass().getSimpleName();
        }
    }

    private static String runRootCommand(String command) {
        java.lang.Process process = null;
        try {
            process = new ProcessBuilder("su", "-c", command)
                    .redirectErrorStream(true)
                    .start();
            final java.lang.Process commandProcess = process;
            AtomicReference<String> output = new AtomicReference<>("");
            AtomicReference<Throwable> readFailure = new AtomicReference<>();
            Thread reader = new Thread(() -> {
                try (InputStream input = commandProcess.getInputStream()) {
                    output.set(readBounded(input, MAX_COMMAND_OUTPUT_CHARS));
                } catch (Throwable error) {
                    readFailure.compareAndSet(null, error);
                }
            }, "drag-share-diagnostic-command");
            reader.setDaemon(true);
            reader.start();
            if (!process.waitFor(COMMAND_TIMEOUT_MS, TimeUnit.MILLISECONDS)) {
                process.destroyForcibly();
                awaitCommandReader(reader, 1_000L);
                return "timeout after " + COMMAND_TIMEOUT_MS + "ms";
            }
            if (!awaitCommandReader(reader, COMMAND_TIMEOUT_MS)) {
                return "output drain timeout";
            }
            Throwable failure = readFailure.get();
            if (failure != null) {
                return "output read failed:" + failure.getClass().getSimpleName()
                        + ':' + safe(failure.getMessage());
            }
            return "exit=" + process.exitValue() + '\n' + output.get();
        } catch (Throwable error) {
            return "failed:" + error.getClass().getSimpleName() + ':' + safe(error.getMessage());
        } finally {
            if (process != null) {
                process.destroy();
            }
        }
    }

    private static boolean markRuntimeDestinationCaptured() {
        int destination = DragShareLog.configuredDestination();
        while (true) {
            int previous = RUNTIME_CAPTURED_DESTINATION.get();
            if (previous == destination) {
                return false;
            }
            if (RUNTIME_CAPTURED_DESTINATION.compareAndSet(previous, destination)) {
                return true;
            }
        }
    }

    private static boolean markInputInventoryDestinationCaptured() {
        int destination = DragShareLog.configuredDestination();
        while (true) {
            int previous = INPUT_INVENTORY_CAPTURED_DESTINATION.get();
            if (previous == destination) {
                return false;
            }
            if (INPUT_INVENTORY_CAPTURED_DESTINATION.compareAndSet(previous, destination)) {
                return true;
            }
        }
    }

    private static boolean awaitCommandReader(Thread reader, long timeoutMillis) {
        try {
            reader.join(timeoutMillis);
            if (!reader.isAlive()) {
                return true;
            }
            reader.interrupt();
            return false;
        } catch (InterruptedException interrupted) {
            Thread.currentThread().interrupt();
            return false;
        }
    }

    private static String readBounded(InputStream input, int maximumChars) throws IOException {
        try (ByteArrayOutputStream output = new ByteArrayOutputStream()) {
            byte[] buffer = new byte[2 * 1024];
            int count;
            while ((count = input.read(buffer)) >= 0) {
                int remaining = maximumChars - output.size();
                if (remaining > 0) {
                    output.write(buffer, 0, Math.min(remaining, count));
                }
            }
            String text = output.toString("UTF-8");
            return text.length() >= maximumChars ? text + "\n[truncated]" : text;
        }
    }

    private static String trimForLog(String value) {
        if (value == null || value.isEmpty()) {
            return "";
        }
        return value.length() > MAX_COMMAND_OUTPUT_CHARS
                ? value.substring(0, MAX_COMMAND_OUTPUT_CHARS) + "\n[truncated]"
                : value;
    }

    private static String safe(String value) {
        return value == null ? "" : value.replace('\u0000', '?');
    }
}
