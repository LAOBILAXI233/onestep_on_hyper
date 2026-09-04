package com.leaf.hyperdragshare.codex;

import android.content.Context;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.WindowManager;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class RootTouchSource {
    interface Listener {
        void onPointerEvent(int action, float x, float y, long eventTime);
    }

    private static final String TAG = "DragShare/RootInput";
    private static final Pattern EVENT_HANDLER = Pattern.compile("\\b(event\\d+)\\b");
    private static final Pattern MAX_X = Pattern.compile(
            "ABS_MT_POSITION_X\\s*:.*?max\\s+(\\d+)");
    private static final Pattern MAX_Y = Pattern.compile(
            "ABS_MT_POSITION_Y\\s*:.*?max\\s+(\\d+)");

    private final Context context;
    private final Listener listener;
    private final EvdevTouchParser parser;

    private volatile boolean running;
    private volatile boolean ready;
    private volatile java.lang.Process process;
    private volatile InputStream inputStream;
    private Thread thread;

    private int rawMaxX;
    private int rawMaxY;
    private boolean firstEventLogged;
    private String discoveredDevices = "";
    private int rawEventsInFrame;
    private long rawFrameCount;

    RootTouchSource(Context context, Listener listener) {
        this.context = context;
        this.listener = listener;
        this.parser = new EvdevTouchParser(this::onRawFrame);
    }

    synchronized void start() {
        if (running) {
            return;
        }
        ready = false;
        running = true;
        firstEventLogged = false;
        discoveredDevices = "";
        rawEventsInFrame = 0;
        rawFrameCount = 0L;
        DragShareLog.d(TAG, "root input start requested");
        thread = new Thread(this::runLoop, "drag-share-root-input");
        thread.setDaemon(true);
        thread.start();
    }

    synchronized void stop() {
        running = false;
        ready = false;
        parser.cancel();
        closeQuietly(inputStream);
        inputStream = null;
        java.lang.Process currentProcess = process;
        process = null;
        if (currentProcess != null) {
            currentProcess.destroy();
        }
        Thread currentThread = thread;
        thread = null;
        if (currentThread != null) {
            currentThread.interrupt();
        }
    }

    boolean isReady() {
        return ready;
    }

    private void runLoop() {
        try {
            DragShareLog.d(TAG, "starting touchscreen discovery");
            String devicePath = findTouchDevice();
            if (devicePath == null) {
                log("no direct touchscreen device found");
                DragShareDiagnostics.captureInputFailure(
                        context,
                        "no touchscreen candidate",
                        discoveredDevices,
                        null);
                return;
            }
            int[] ranges = readCoordinateRanges(devicePath);
            rawMaxX = ranges[0];
            rawMaxY = ranges[1];
            if (rawMaxX <= 0 || rawMaxY <= 0) {
                log("invalid coordinate range for " + devicePath);
                DragShareDiagnostics.captureInputFailure(
                        context,
                        "invalid coordinate range for " + devicePath,
                        discoveredDevices,
                        null);
                return;
            }

            InputStream stream = openDevice(devicePath);
            inputStream = stream;
            ready = true;
            DisplayMetrics metrics = currentDisplayMetrics();
            log("ready device=" + devicePath
                    + " raw=" + rawMaxX + "x" + rawMaxY
                    + " screen=" + metrics.widthPixels + "x" + metrics.heightPixels
                    + " eventSize=" + inputEventSize());
            DragShareLog.d(TAG, "starting evdev read loop path=" + devicePath);
            readEvents(stream);
        } catch (Throwable error) {
            if (running) {
                log("input loop failed", error);
                DragShareDiagnostics.captureInputFailure(
                        context,
                        "input loop failed:" + error.getClass().getSimpleName(),
                        discoveredDevices,
                        null);
            }
        } finally {
            if (running && !firstEventLogged) {
                DragShareLog.d(TAG, "input stream ended before a decoded pointer action");
                DragShareDiagnostics.captureInputFailure(
                        context,
                        "stream ended without decoded pointer action",
                        discoveredDevices,
                        null);
            }
            parser.cancel();
            ready = false;
            closeQuietly(inputStream);
            inputStream = null;
            java.lang.Process currentProcess = process;
            process = null;
            if (currentProcess != null) {
                currentProcess.destroy();
            }
            running = false;
        }
    }

    private String findTouchDevice() throws IOException {
        String devices = "";
        try (InputStream stream = new FileInputStream("/proc/bus/input/devices")) {
            devices = readText(stream);
        } catch (IOException ignored) {
            
        }
        discoveredDevices = devices;
        DragShareLog.d(TAG, "host /proc/bus/input/devices:\n" + devices);

        String devicePath = findTouchDevicePath(devices);
        if (devicePath != null) {
            return devicePath;
        }

        log("touchscreen hidden from host process; retrying device discovery as root");
        try {
            devices = runRootTextCommand("cat /proc/bus/input/devices");
        } catch (InterruptedException interrupted) {
            Thread.currentThread().interrupt();
            throw new IOException("Interrupted while finding touchscreen", interrupted);
        }
        discoveredDevices = devices;
        DragShareLog.d(TAG, "root /proc/bus/input/devices:\n" + devices);
        return findTouchDevicePath(devices);
    }

    static String findTouchDevicePath(CharSequence devices) {
        if (devices == null) {
            return null;
        }
        for (String block : devices.toString().split("(?:\\r?\\n){2,}")) {
            String event = eventFromBlock(block);
            if (event != null) {
                return "/dev/input/" + event;
            }
        }
        return null;
    }

    private static String eventFromBlock(String block) {
        boolean direct = block.contains("B: PROP=2") || block.contains("INPUT_PROP_DIRECT");
        boolean touchNamed = block.toLowerCase(Locale.ROOT).contains("touch");
        boolean hasAbsoluteAxes = block.contains("B: ABS=");
        if (!hasAbsoluteAxes || (!direct && !touchNamed)) {
            return null;
        }
        for (String line : block.split("\\n")) {
            if (!line.startsWith("H: Handlers=")) {
                continue;
            }
            Matcher matcher = EVENT_HANDLER.matcher(line);
            if (matcher.find()) {
                return matcher.group(1);
            }
        }
        return null;
    }

    private int[] readCoordinateRanges(String devicePath) throws IOException, InterruptedException {
        String output = runRootTextCommand("getevent -lp " + devicePath);
        DragShareLog.d(TAG, "input capability path=" + devicePath + ":\n" + output);
        DragShareDiagnostics.captureInputInventory(
                context,
                "root input range probe " + devicePath,
                discoveredDevices,
                output);
        return new int[]{parseMaximum(MAX_X, output), parseMaximum(MAX_Y, output)};
    }

    private int parseMaximum(Pattern pattern, CharSequence value) {
        Matcher matcher = pattern.matcher(value);
        return matcher.find() ? Integer.parseInt(matcher.group(1)) : -1;
    }

    private InputStream openDevice(String devicePath) throws IOException {
        try {
            InputStream stream = new FileInputStream(devicePath);
            DragShareLog.d(TAG, "opened input device directly path=" + devicePath);
            return stream;
        } catch (IOException directFailure) {
            DragShareLog.d(TAG, "direct input open failed path=" + devicePath
                    + " error=" + directFailure.getClass().getSimpleName()
                    + ':' + String.valueOf(directFailure.getMessage())
                    + "; retrying through root");
            java.lang.Process rootProcess = new ProcessBuilder(
                    "su", "-c", "exec cat " + devicePath)
                    .start();
            process = rootProcess;
            DragShareLog.d(TAG, "opened input device through root cat path=" + devicePath);
            return rootProcess.getInputStream();
        }
    }

    private void readEvents(InputStream stream) throws IOException {
        int eventSize = inputEventSize();
        byte[] event = new byte[eventSize];
        while (running && readFully(stream, event)) {
            ByteBuffer buffer = ByteBuffer.wrap(event).order(ByteOrder.LITTLE_ENDIAN);
            if (eventSize == 24) {
                buffer.position(16);
            } else {
                buffer.position(8);
            }
            int type = buffer.getShort() & 0xffff;
            int code = buffer.getShort() & 0xffff;
            int value = buffer.getInt();
            consumeEvent(type, code, value);
        }
    }

    private int inputEventSize() {
        return android.os.Process.is64Bit() ? 24 : 16;
    }

    private boolean readFully(InputStream stream, byte[] buffer) throws IOException {
        int offset = 0;
        while (running && offset < buffer.length) {
            int count = stream.read(buffer, offset, buffer.length - offset);
            if (count < 0) {
                return false;
            }
            offset += count;
        }
        return offset == buffer.length;
    }

    private void consumeEvent(int type, int code, int value) {
        if (DragShareLog.isDebugEnabled()) {
            rawEventsInFrame++;
            if (rawFrameCount < 12L) {
                DragShareLog.d(TAG, "raw evdev event type=" + type
                        + " code=" + code + " value=" + value);
            }
            if (type == EvdevTouchParser.EV_SYN && code == EvdevTouchParser.SYN_REPORT) {
                rawFrameCount++;
                DragShareLog.d(TAG, "raw evdev frame=" + rawFrameCount
                        + " events=" + rawEventsInFrame);
                rawEventsInFrame = 0;
            }
        }
        parser.consume(type, code, value);
    }

    private void onRawFrame(int action, float rawX, float rawY) {
        if (rawMaxX <= 0 || rawMaxY <= 0) {
            return;
        }
        float[] screenPoint = toScreenCoordinates(rawX, rawY);
        DragShareLog.d(TAG, "decoded " + MotionEvent.actionToString(action)
                + " raw=" + Math.round(rawX) + ',' + Math.round(rawY)
                + " mapped=" + Math.round(screenPoint[0]) + ',' + Math.round(screenPoint[1]));
        emit(action, screenPoint[0], screenPoint[1]);
    }

    private void emit(int action, float x, float y) {
        if (!firstEventLogged) {
            firstEventLogged = true;
            log("first event action=" + MotionEvent.actionToString(action)
                    + " point=" + Math.round(x) + "," + Math.round(y));
        }
        listener.onPointerEvent(action, x, y, SystemClock.uptimeMillis());
    }

    private float[] toScreenCoordinates(float rawX, float rawY) {
        WindowManager windowManager = (WindowManager)
                context.getSystemService(Context.WINDOW_SERVICE);
        DisplayMetrics metrics = currentDisplayMetrics();
        int rotation = windowManager.getDefaultDisplay().getRotation();
        return GestureMath.mapRawPoint(
                rawX,
                rawY,
                rawMaxX,
                rawMaxY,
                metrics.widthPixels,
                metrics.heightPixels,
                rotation);
    }

    private DisplayMetrics currentDisplayMetrics() {
        WindowManager windowManager = (WindowManager)
                context.getSystemService(Context.WINDOW_SERVICE);
        DisplayMetrics metrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(metrics);
        return metrics;
    }

    private String runRootTextCommand(String command) throws IOException, InterruptedException {
        java.lang.Process commandProcess = new ProcessBuilder("su", "-c", command)
                .redirectErrorStream(true)
                .start();
        String output;
        try (InputStream stream = commandProcess.getInputStream()) {
            output = readText(stream);
        }
        int exitCode = commandProcess.waitFor();
        if (exitCode != 0) {
            throw new IOException("Command failed (" + exitCode + "): " + output);
        }
        return output;
    }

    private String readText(InputStream stream) throws IOException {
        StringBuilder output = new StringBuilder();
        try (BufferedReader reader = new BufferedReader(new InputStreamReader(stream))) {
            String line;
            while ((line = reader.readLine()) != null) {
                output.append(line).append('\n');
            }
        }
        return output.toString();
    }

    private void closeQuietly(InputStream stream) {
        if (stream == null) {
            return;
        }
        try {
            stream.close();
        } catch (IOException ignored) {
            
        }
    }

    private static void log(String message) {
        DragShareLog.i(TAG, message);
    }

    private static void log(String message, Throwable error) {
        DragShareLog.w(TAG, message, error);
    }
}
