package com.leaf.hyperdragshare.codex;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Process;
import android.util.Log;

import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class DragShareLog {
    static final String LOG_DIRECTORY = "/data/local/tmp/HyperDragShare";
    static final String LOG_FILE_PATH = LOG_DIRECTORY + "/hyperdragshare.log";

    private static final String LOG_BACKUP_FILE_PATH = LOG_DIRECTORY + "/hyperdragshare.1.log";
    private static final String TAG = "DragShare/Log";
    private static final int MAX_FILE_BYTES = 4 * 1024 * 1024;
    private static final int MAX_PENDING_FILE_LINES = 1_024;
    private static final long ROOT_COMMAND_TIMEOUT_MS = 8_000L;
    private static final long STREAM_CLOSE_TIMEOUT_MS = 1_000L;
    private static final Object FILE_LOCK = new Object();
    private static final ArrayDeque<String> PENDING_FILE_LINES = new ArrayDeque<>();
    private static final ExecutorService FILE_EXECUTOR = Executors.newSingleThreadExecutor(runnable -> {
        Thread thread = new Thread(runnable, "drag-share-log-file");
        thread.setDaemon(true);
        return thread;
    });
    private static final ThreadLocal<SimpleDateFormat> TIMESTAMP_FORMAT =
            ThreadLocal.withInitial(() -> new SimpleDateFormat(
                    "yyyy-MM-dd HH:mm:ss.SSS",
                    Locale.US));

    private static volatile int configuredLevel = DragShareSettings.DEFAULT_LOG_LEVEL;
    private static volatile int configuredDestination = DragShareSettings.DEFAULT_LOG_DESTINATION;
    private static boolean fileDrainScheduled;
    private static boolean rotateOnNextOpen;
    private static int droppedFileLines;
    private static RootFileSink fileSink;

    private DragShareLog() {}

    public static void configure(DragShareSettings settings) {
        if (settings == null) {
            return;
        }
        int nextLevel = settings.logLevel;
        int nextDestination = settings.logDestination;
        boolean closeFileSink = configuredDestination == DragShareSettings.LOG_DESTINATION_FILE
                && nextDestination != DragShareSettings.LOG_DESTINATION_FILE;
        configuredLevel = nextLevel;
        configuredDestination = nextDestination;
        if (closeFileSink) {
            synchronized (FILE_LOCK) {
                PENDING_FILE_LINES.clear();
                rotateOnNextOpen = false;
            }
            FILE_EXECUTOR.execute(DragShareLog::closeFileSink);
        }
    }

    static boolean isDebugEnabled() {
        return configuredLevel == DragShareSettings.LOG_LEVEL_DEBUG;
    }

    static boolean isFileDestination() {
        return configuredDestination == DragShareSettings.LOG_DESTINATION_FILE;
    }

    static int configuredDestination() {
        return configuredDestination;
    }

    static void d(String tag, String message) {
        emit(DragShareSettings.LOG_LEVEL_DEBUG, Log.DEBUG, tag, message, null);
    }

    static void i(String tag, String message) {
        emit(DragShareSettings.LOG_LEVEL_INFO, Log.INFO, tag, message, null);
    }

    static void w(String tag, String message) {
        emit(DragShareSettings.LOG_LEVEL_INFO, Log.WARN, tag, message, null);
    }

    static void w(String tag, String message, Throwable error) {
        emit(DragShareSettings.LOG_LEVEL_INFO, Log.WARN, tag, message, error);
    }

    static void e(String tag, String message) {
        emit(DragShareSettings.LOG_LEVEL_INFO, Log.ERROR, tag, message, null);
    }

    static void e(String tag, String message, Throwable error) {
        emit(DragShareSettings.LOG_LEVEL_INFO, Log.ERROR, tag, message, error);
    }

    static String exportFileName() {
        return "HyperDragShare-" + new SimpleDateFormat(
                "yyyyMMdd-HHmmss",
                Locale.US).format(new Date()) + ".log";
    }

    static void exportTo(Context context, Uri destination) throws IOException {
        if (context == null || destination == null) {
            throw new IOException("Missing export destination");
        }
        awaitQueuedFileWrites();
        java.lang.Process process = null;
        OutputStream output = null;
        Thread copyThread = null;
        AtomicReference<Throwable> copyFailure = new AtomicReference<>();
        try {
            process = new ProcessBuilder(
                    "su",
                    "-c",
                    "if [ -r " + LOG_FILE_PATH + " ]; then cat " + LOG_FILE_PATH
                            + "; else exit 3; fi")
                    .redirectErrorStream(true)
                    .start();
            final java.lang.Process exportProcess = process;
            output = openExportOutput(context.getContentResolver(), destination);
            final OutputStream exportOutput = output;
            output = null;
            copyThread = new Thread(() -> {
                try (InputStream input = exportProcess.getInputStream();
                     OutputStream stream = exportOutput) {
                    copy(input, stream);
                    stream.flush();
                } catch (Throwable error) {
                    copyFailure.compareAndSet(null, error);
                }
            }, "drag-share-log-export");
            copyThread.setDaemon(true);
            copyThread.start();

            boolean completed;
            try {
                completed = process.waitFor(ROOT_COMMAND_TIMEOUT_MS, TimeUnit.MILLISECONDS);
            } catch (InterruptedException interrupted) {
                Thread.currentThread().interrupt();
                throw new IOException("Interrupted while exporting diagnostic log", interrupted);
            }
            if (!completed) {
                process.destroyForcibly();
                awaitExportCopy(copyThread, STREAM_CLOSE_TIMEOUT_MS);
                throw new IOException("Timed out while reading the diagnostic log");
            }
            awaitExportCopy(copyThread, ROOT_COMMAND_TIMEOUT_MS);
            Throwable failure = copyFailure.get();
            if (failure != null) {
                throw new IOException("Unable to write exported diagnostic log", failure);
            }
            if (process.exitValue() != 0) {
                throw new IOException("Diagnostic log is unavailable or root could not read it");
            }
        } finally {
            if (copyThread == null && output != null) {
                try {
                    output.close();
                } catch (IOException ignored) {
                    
                }
            }
            if (process != null) {
                process.destroy();
            }
        }
    }

    private static void awaitExportCopy(Thread copyThread, long timeoutMillis) throws IOException {
        try {
            copyThread.join(timeoutMillis);
        } catch (InterruptedException interrupted) {
            Thread.currentThread().interrupt();
            throw new IOException("Interrupted while exporting diagnostic log", interrupted);
        }
        if (copyThread.isAlive()) {
            copyThread.interrupt();
            throw new IOException("Timed out while copying the diagnostic log");
        }
    }

    private static OutputStream openExportOutput(ContentResolver resolver, Uri destination)
            throws FileNotFoundException {
        OutputStream output = resolver.openOutputStream(destination, "w");
        if (output == null) {
            throw new FileNotFoundException(destination.toString());
        }
        return output;
    }

    private static void emit(
            int minimumLevel,
            int priority,
            String tag,
            String message,
            Throwable error) {
        if (!shouldEmit(minimumLevel)) {
            return;
        }
        String safeTag = tag == null || tag.trim().isEmpty() ? TAG : tag;
        String safeMessage = message == null ? "" : message;
        if (configuredDestination == DragShareSettings.LOG_DESTINATION_FILE) {
            enqueueFileLine(formatFileLine(priority, safeTag, safeMessage, error));
        } else {
            emitToLogcat(priority, safeTag, safeMessage, error);
        }
    }

    private static boolean shouldEmit(int level) {
        int configured = configuredLevel;
        return configured == DragShareSettings.LOG_LEVEL_DEBUG
                || (configured == DragShareSettings.LOG_LEVEL_INFO
                && level >= DragShareSettings.LOG_LEVEL_INFO);
    }

    private static void emitToLogcat(int priority, String tag, String message, Throwable error) {
        if (priority == Log.DEBUG) {
            Log.d(tag, message);
        } else if (priority == Log.ERROR && error != null) {
            Log.e(tag, message, error);
        } else if (priority == Log.ERROR) {
            Log.e(tag, message);
        } else if (priority == Log.WARN && error != null) {
            Log.w(tag, message, error);
        } else if (priority == Log.WARN) {
            Log.w(tag, message);
        } else {
            Log.i(tag, message);
        }
    }

    private static String formatFileLine(int priority, String tag, String message, Throwable error) {
        StringBuilder line = new StringBuilder();
        line.append(TIMESTAMP_FORMAT.get().format(new Date()))
                .append(' ')
                .append(priorityLabel(priority))
                .append(" pid=").append(Process.myPid())
                .append(" uid=").append(Process.myUid())
                .append(" thread=").append(Thread.currentThread().getName())
                .append(" ").append(tag)
                .append(": ").append(message);
        if (error != null) {
            line.append('\n').append(Log.getStackTraceString(error));
        }
        if (line.length() == 0 || line.charAt(line.length() - 1) != '\n') {
            line.append('\n');
        }
        return line.toString();
    }

    private static char priorityLabel(int priority) {
        if (priority == Log.DEBUG) {
            return 'D';
        }
        if (priority == Log.WARN) {
            return 'W';
        }
        if (priority == Log.ERROR) {
            return 'E';
        }
        return 'I';
    }

    private static void enqueueFileLine(String line) {
        synchronized (FILE_LOCK) {
            if (PENDING_FILE_LINES.size() >= MAX_PENDING_FILE_LINES) {
                droppedFileLines++;
                if (droppedFileLines == 1) {
                    Log.w(TAG, "diagnostic file queue is full; dropping further log lines");
                }
                return;
            }
            PENDING_FILE_LINES.addLast(line);
            if (fileDrainScheduled) {
                return;
            }
            fileDrainScheduled = true;
            FILE_EXECUTOR.execute(DragShareLog::drainFileQueue);
        }
    }

    private static void drainFileQueue() {
        while (true) {
            String line;
            synchronized (FILE_LOCK) {
                line = PENDING_FILE_LINES.pollFirst();
                if (line == null) {
                    fileDrainScheduled = false;
                    return;
                }
            }
            try {
                appendToFile(line);
            } catch (IOException error) {
                Log.w(TAG, "unable to append diagnostic log file", error);
                synchronized (FILE_LOCK) {
                    PENDING_FILE_LINES.clear();
                    fileDrainScheduled = false;
                }
                closeFileSink();
                return;
            }
        }
    }

    private static void appendToFile(String line) throws IOException {
        byte[] bytes = line.getBytes(StandardCharsets.UTF_8);
        if (fileSink == null || fileSink.bytesWritten + bytes.length > MAX_FILE_BYTES) {
            if (fileSink != null) {
                closeFileSink();
                rotateOnNextOpen = true;
            }
            fileSink = RootFileSink.open(rotateOnNextOpen);
            rotateOnNextOpen = false;
        }
        fileSink.append(bytes);
    }

    private static void closeFileSink() {
        RootFileSink sink = fileSink;
        fileSink = null;
        if (sink != null) {
            sink.close();
        }
    }

    private static void awaitQueuedFileWrites() throws IOException {
        try {
            Future<?> barrier = FILE_EXECUTOR.submit(() -> { });
            barrier.get(ROOT_COMMAND_TIMEOUT_MS, TimeUnit.MILLISECONDS);
        } catch (Throwable error) {
            throw new IOException("Unable to flush diagnostic log", error);
        }
    }

    private static void copy(InputStream input, OutputStream output) throws IOException {
        byte[] buffer = new byte[16 * 1024];
        int count;
        while ((count = input.read(buffer)) >= 0) {
            output.write(buffer, 0, count);
        }
    }

    private static String readText(InputStream input, int maximumChars) throws IOException {
        try (InputStream stream = input;
             ByteArrayOutputStream output = new ByteArrayOutputStream()) {
            byte[] buffer = new byte[1024];
            int count;
            while ((count = stream.read(buffer)) >= 0) {
                int remaining = maximumChars - output.size();
                if (remaining > 0) {
                    output.write(buffer, 0, Math.min(remaining, count));
                }
            }
            return output.toString(StandardCharsets.UTF_8.name());
        }
    }

    private static final class RootFileSink {
        final java.lang.Process process;
        final OutputStream output;
        int bytesWritten;

        private RootFileSink(java.lang.Process process) {
            this.process = process;
            this.output = process.getOutputStream();
        }

        static RootFileSink open(boolean rotate) throws IOException {
            String command = "mkdir -p " + LOG_DIRECTORY
                    + " && chmod 700 " + LOG_DIRECTORY
                    + (rotate
                    ? " && if [ -f " + LOG_FILE_PATH + " ]; then mv -f "
                    + LOG_FILE_PATH + " " + LOG_BACKUP_FILE_PATH + "; fi"
                    : "")
                    + " && touch " + LOG_FILE_PATH
                    + " && chmod 600 " + LOG_FILE_PATH
                    + " && exec sh -c 'cat >> " + LOG_FILE_PATH + "'";
            return new RootFileSink(new ProcessBuilder("su", "-c", command)
                    .redirectErrorStream(true)
                    .start());
        }

        void append(byte[] bytes) throws IOException {
            output.write(bytes);
            output.flush();
            bytesWritten += bytes.length;
        }

        void close() {
            try {
                output.close();
            } catch (IOException ignored) {
                
            }
            process.destroy();
        }
    }
}
