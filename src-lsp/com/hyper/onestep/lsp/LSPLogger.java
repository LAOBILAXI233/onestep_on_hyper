package com.hyper.onestep.lsp;

import android.app.ActivityManager;
import android.content.Context;
import android.content.ComponentName;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.provider.Settings;
import android.graphics.Rect;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.StringWriter;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

/**
 * LSP 模块统一日志工具。
 *
 * 同时输出到：
 *   1. Logcat（TAG = "OneStepLSP"）
 *   2. /sdcard/OneStep/onestep.log（主路径）
 *   3. /data/local/tmp/onestep.log（兜底，主路径写入失败时启用）
 *
 * 使用场景：
 *   - SystemUI 进程内 hook 执行流程追踪
 *   - SidebarController 状态机变化
 *   - 兼容层（OneStepCompat/DragHelper）调用与异常
 *   - 模块配置 Activity 用户操作
 *
 * 文件策略：
 *   - 单文件最大 5MB，超过后轮转为 onestep.log.old
 *   - 同步写入 + ReentrantLock，保证多线程顺序一致
 *   - 进程启动时打印分隔线便于区分多次运行
 */
public final class LSPLogger {
    public static final String TAG = "OneStepLSP";

    private static final String PRIMARY_DIR = "/sdcard/OneStep";
    private static final String PRIMARY_LOG = PRIMARY_DIR + "/onestep.log";
    private static final String PRIMARY_LOG_OLD = PRIMARY_DIR + "/onestep.log.old";
    /** Shared across the GUI APK, SystemUI, Launcher and system_server. */
    private static final String ENABLE_SETTING =
            "smartisanos_onestep_logging_enabled";

    private static final String FALLBACK_DIR = "/data/local/tmp";
    private static final String FALLBACK_LOG = FALLBACK_DIR + "/onestep.log";
    private static final String FALLBACK_LOG_OLD = FALLBACK_DIR + "/onestep.log.old";

    // SystemUI 进程是 uid=1000 (system)，可以写 /data/system
    private static final String SYSTEM_DIR = "/data/system/onestep";
    private static final String SYSTEM_LOG = SYSTEM_DIR + "/onestep.log";
    private static final String SYSTEM_LOG_OLD = SYSTEM_DIR + "/onestep.log.old";

    // 本模块 APK 数据目录，SystemUI 进程(uid=1000) 可访问
    private static final String APPDATA_DIR = "/data/data/com.hyper.onestep/files/onestep";
    private static final String APPDATA_LOG = APPDATA_DIR + "/onestep.log";
    private static final String APPDATA_LOG_OLD = APPDATA_DIR + "/onestep.log.old";

    /** 单文件最大 5MB */
    private static final long MAX_FILE_SIZE = 5 * 1024 * 1024;

    private static final ReentrantLock sLock = new ReentrantLock();
    private static volatile boolean sPrimaryAvailable = true;
    private static volatile boolean sFallbackAvailable = true;
    private static volatile boolean sSystemAvailable = true;
    private static volatile boolean sAppDataAvailable = true;
    private static volatile String sActiveLogPath = null;
    private static volatile boolean sBootLogged = false;
    private static volatile boolean sEnabled = true;
    private static volatile boolean sConfigLoaded;
    private static volatile long sNextConfigCheck;
    private static final long CONFIG_REFRESH_MS = 1000L;
    private static final long CONFIG_FAILURE_BACKOFF_MS = 60_000L;
    private static long sLastConfigWarnUptime;
    private static final AtomicLong sSequence = new AtomicLong();
    private static volatile Context sContext;

    private static final SimpleDateFormat sDateFormat =
            new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);

    private LSPLogger() {}

    // ==================== Public API ====================

    /**
     * Stores a usable Context for Settings.Global reads. This is deliberately optional:
     * early Xposed callbacks can happen before ActivityThread exposes an application.
     */
    public static void initialize(Context context) {
        if (context == null) return;
        try {
            Context application = context.getApplicationContext();
            sContext = application == null ? context : application;
        } catch (Throwable ignored) {
            sContext = context;
        }
    }

    public static void d(String msg) {
        if (!isEnabled()) return;
        Log.d(TAG, msg);
        write("D", msg, null);
    }

    public static void i(String msg) {
        if (!isEnabled()) return;
        Log.i(TAG, msg);
        write("I", msg, null);
    }

    public static void w(String msg) {
        Log.w(TAG, msg);
        if (isEnabled()) write("W", msg, null);
    }

    public static void w(String msg, Throwable t) {
        Log.w(TAG, msg, t);
        if (isEnabled()) write("W", msg, t);
    }

    public static void e(String msg) {
        Log.e(TAG, msg);
        if (isEnabled()) write("E", msg, null);
    }

    public static void e(String msg, Throwable t) {
        Log.e(TAG, msg, t);
        if (isEnabled()) write("E", msg, t);
    }

    /** Cross-process switch backed by Settings.Global. Defaults to enabled. */
    public static boolean isEnabled() {
        long now = SystemClock.uptimeMillis();
        if (sConfigLoaded && now < sNextConfigCheck) return sEnabled;
        synchronized (LSPLogger.class) {
            now = SystemClock.uptimeMillis();
            if (sConfigLoaded && now < sNextConfigCheck) return sEnabled;
            Context context = resolveContext();
            if (context != null) {
                try {
                    sEnabled = Settings.Global.getInt(context.getContentResolver(),
                            ENABLE_SETTING, 1) != 0;
                    sNextConfigCheck = now + CONFIG_REFRESH_MS;
                } catch (Throwable t) {
                    // Hooked third-party processes often cannot read this key
                    // (SecurityException: Package android does not belong to <uid>).
                    // Previously this retried every second and dumped a full stack
                    // trace on the app's main thread — right in the middle of its
                    // configuration-change handling. Back off for a minute instead.
                    sNextConfigCheck = now + CONFIG_FAILURE_BACKOFF_MS;
                    if (now - sLastConfigWarnUptime >= CONFIG_FAILURE_BACKOFF_MS) {
                        sLastConfigWarnUptime = now;
                        Log.w(TAG, "Cannot read logging setting: " + t);
                    }
                }
            } else {
                sNextConfigCheck = now + CONFIG_REFRESH_MS;
            }
            sConfigLoaded = true;
            return sEnabled;
        }
    }

    /** Persists the diagnostic switch for every hooked process. */
    public static boolean setEnabled(boolean enabled) {
        synchronized (LSPLogger.class) {
            Context context = resolveContext();
            boolean written = false;
            if (context != null) {
                try {
                    written = Settings.Global.putInt(context.getContentResolver(),
                            ENABLE_SETTING, enabled ? 1 : 0);
                } catch (Throwable t) {
                    Log.w(TAG, "Direct Settings.Global write denied; trying root", t);
                }
            }
            if (!written) {
                written = writeSettingAsRoot(enabled);
            }
            if (!written || !readSetting(enabled)) {
                Log.e(TAG, "Cannot persist logging setting enabled=" + enabled);
                return false;
            }
            sEnabled = enabled;
            sConfigLoaded = true;
            sNextConfigCheck = SystemClock.uptimeMillis() + CONFIG_REFRESH_MS;
            Log.i(TAG, "Persistent diagnostics " + (enabled ? "enabled" : "disabled"));
            if (enabled) {
                sBootLogged = false;
                logBoot();
            }
            return true;
        }
    }

    private static boolean writeSettingAsRoot(boolean enabled) {
        java.lang.Process process = null;
        try {
            String command = "settings put global " + ENABLE_SETTING + " "
                    + (enabled ? "1" : "0");
            process = new ProcessBuilder("su", "-c", command)
                    .redirectErrorStream(true).start();
            process.getInputStream().close();
            if (!process.waitFor(3, TimeUnit.SECONDS)) {
                process.destroyForcibly();
                return false;
            }
            Log.i(TAG, "Root settings write exit=" + process.exitValue());
            return process.exitValue() == 0;
        } catch (Throwable t) {
            Log.e(TAG, "Root settings write failed", t);
            if (process != null) process.destroy();
            return false;
        }
    }

    private static boolean readSetting(boolean expected) {
        Context context = resolveContext();
        if (context == null) return false;
        try {
            return (Settings.Global.getInt(context.getContentResolver(),
                    ENABLE_SETTING, expected ? 1 : 0) != 0) == expected;
        } catch (Throwable t) {
            Log.w(TAG, "Cannot verify logging setting", t);
            return false;
        }
    }

    /** 进程启动时打印一条醒目分隔线，便于在日志中区分多次运行 */
    public static void logBoot() {
        if (!isEnabled()) return;
        if (sBootLogged) {
            return;
        }
        sBootLogged = true;
        StringBuilder sb = new StringBuilder(128);
        sb.append("\n")
          .append("==========================================================\n")
          .append(" OneStep LSP process started\n")
          .append(" process name : ").append(getProcessName()).append("\n")
          .append(" pid          : ").append(Process.myPid()).append("\n")
          .append(" uid          : ").append(Process.myUid()).append("\n")
          .append(" device       : ").append(Build.MANUFACTURER).append(' ')
          .append(Build.MODEL).append(" (").append(Build.DEVICE).append(")\n")
          .append(" os           : Android ").append(Build.VERSION.RELEASE)
          .append(" / API ").append(Build.VERSION.SDK_INT).append("\n")
          .append(" build        : ").append(Build.DISPLAY).append("\n")
          .append(" time         : ").append(sDateFormat.format(new Date())).append("\n")
          .append("==========================================================");
        i(sb.toString());
    }

    /** Writes a portable device/display snapshot before reproducing a compatibility bug. */
    public static void logDeviceSnapshot(Context context, String reason) {
        initialize(context);
        if (!isEnabled()) return;
        i("DIAG_SNAPSHOT_BEGIN reason=" + safe(reason));
        i("DIAG_DEVICE manufacturer=" + safe(Build.MANUFACTURER)
                + " brand=" + safe(Build.BRAND)
                + " model=" + safe(Build.MODEL)
                + " device=" + safe(Build.DEVICE)
                + " product=" + safe(Build.PRODUCT)
                + " sdk=" + Build.VERSION.SDK_INT
                + " release=" + safe(Build.VERSION.RELEASE)
                + " display=" + safe(Build.DISPLAY)
                + " fingerprint=" + safe(Build.FINGERPRINT)
                + " abis=" + Arrays.toString(Build.SUPPORTED_ABIS));
        if (context != null) {
            try {
                DisplayManager manager = (DisplayManager) context.getSystemService(
                        Context.DISPLAY_SERVICE);
                Display[] displays = manager == null ? null : manager.getDisplays();
                if (displays != null) {
                    for (Display display : displays) {
                        DisplayMetrics metrics = new DisplayMetrics();
                        display.getRealMetrics(metrics);
                        i("DIAG_DISPLAY id=" + display.getDisplayId()
                                + " name=" + safe(display.getName())
                                + " state=" + display.getState()
                                + " rotation=" + display.getRotation()
                                + " size=" + metrics.widthPixels + "x" + metrics.heightPixels
                                + " density=" + metrics.densityDpi
                                + " refresh=" + display.getRefreshRate());
                    }
                }
            } catch (Throwable t) {
                w("DIAG_DISPLAY unavailable", t);
            }
            try {
                String backend = Settings.Global.getString(context.getContentResolver(),
                        "smartisanos_onestep_render_backend");
                int mirrorSwitch = Settings.Global.getInt(context.getContentResolver(),
                        "mirror_switch", -1);
                i("DIAG_SETTINGS renderBackend=" + safe(backend)
                        + " mirrorSwitch=" + mirrorSwitch);
            } catch (Throwable t) {
                w("DIAG_SETTINGS unavailable", t);
            }
        }
        Runtime runtime = Runtime.getRuntime();
        i("DIAG_RUNTIME process=" + getProcessName()
                + " pid=" + Process.myPid()
                + " maxMemory=" + runtime.maxMemory()
                + " totalMemory=" + runtime.totalMemory()
                + " freeMemory=" + runtime.freeMemory());
        i("DIAG_SNAPSHOT_END reason=" + safe(reason));
    }

    /**
     * Captures the state that is otherwise lost when a task is moved between displays.
     * This is intentionally event/periodic based instead of shell based so it works on
     * devices where dumpsys is restricted from the SystemUI process.
     */
    public static void logRuntimeSnapshot(Context context, String reason) {
        initialize(context);
        if (!isEnabled()) return;
        String tag = safe(reason);
        i("DIAG_RUNTIME_BEGIN reason=" + tag);
        try {
            Configuration configuration = context == null ? null
                    : context.getResources().getConfiguration();
            if (configuration != null) {
                i("DIAG_HOST_CONFIG orientation=" + configuration.orientation
                        + " orientationName=" + orientationName(configuration.orientation)
                        + " screenDp=" + configuration.screenWidthDp + "x"
                        + configuration.screenHeightDp
                        + " densityDpi=" + configuration.densityDpi
                        + " uiMode=" + configuration.uiMode);
            }
        } catch (Throwable t) {
            w("DIAG_HOST_CONFIG unavailable", t);
        }

        if (context != null) {
            logDisplayState(context);
            logTaskState(context);
            logProcessState(context);
            try {
                String backend = Settings.Global.getString(context.getContentResolver(),
                        "smartisanos_onestep_render_backend");
                int mirrorSwitch = Settings.Global.getInt(context.getContentResolver(),
                        "mirror_switch", -1);
                i("DIAG_RUNTIME_SETTINGS backend=" + safe(backend)
                        + " mirrorSwitch=" + mirrorSwitch
                        + " logging=" + Settings.Global.getInt(
                                context.getContentResolver(), ENABLE_SETTING, 1));
            } catch (Throwable t) {
                w("DIAG_RUNTIME_SETTINGS unavailable", t);
            }
        }
        i("DIAG_RUNTIME_END reason=" + tag);
    }

    private static void logDisplayState(Context context) {
        try {
            DisplayManager manager = (DisplayManager) context.getSystemService(
                    Context.DISPLAY_SERVICE);
            Display[] displays = manager == null ? null : manager.getDisplays();
            if (displays == null) return;
            for (Display display : displays) {
                DisplayMetrics real = new DisplayMetrics();
                DisplayMetrics logical = new DisplayMetrics();
                display.getRealMetrics(real);
                display.getMetrics(logical);
                i("DIAG_RUNTIME_DISPLAY id=" + display.getDisplayId()
                        + " name=" + safe(display.getName())
                        + " state=" + display.getState()
                        + " rotation=" + display.getRotation()
                        + " size=" + real.widthPixels + "x" + real.heightPixels
                        + " logical=" + logical.widthPixels + "x" + logical.heightPixels
                        + " density=" + real.densityDpi
                        + " scaledDensity=" + real.scaledDensity
                        + " refresh=" + display.getRefreshRate()
                        + " flags=0x" + Integer.toHexString(display.getFlags()));
            }
        } catch (Throwable t) {
            w("DIAG_RUNTIME_DISPLAY unavailable", t);
        }
    }

    private static void logTaskState(Context context) {
        try {
            ActivityManager manager = (ActivityManager) context.getSystemService(
                    Context.ACTIVITY_SERVICE);
            if (manager == null) return;
            java.util.List<?> tasks = manager.getRunningTasks(100);
            if (tasks == null) return;
            i("DIAG_RUNTIME_TASK_COUNT count=" + tasks.size());
            for (Object task : tasks) {
                int taskId = readInt(task, "taskId", -1);
                int displayId = readInt(task, "displayId", -1);
                boolean visible = readBoolean(task, "isVisible", false);
                boolean running = readBoolean(task, "isRunning", false);
                ComponentName top = readComponent(task, "topActivity");
                ComponentName base = readComponent(task, "baseActivity");
                Object configuration = readObject(task, "configuration");
                int orientation = readInt(configuration, "orientation", -1);
                Object windowConfiguration = readObject(configuration, "windowConfiguration");
                int windowingMode = readInt(windowConfiguration, "windowingMode", -1);
                Rect bounds = readRect(windowConfiguration, "getBounds", "bounds");
                Rect appBounds = readRect(configuration, "getAppBounds", "appBounds");
                int activityType = readInt(windowConfiguration, "activityType", -1);
                i("DIAG_RUNTIME_TASK id=" + taskId
                        + " display=" + displayId
                        + " visible=" + visible
                        + " running=" + running
                        + " top=" + componentName(top)
                        + " base=" + componentName(base)
                        + " orientation=" + orientation
                        + " orientationName=" + orientationName(orientation)
                        + " windowingMode=" + windowingMode
                        + " activityType=" + activityType
                        + " bounds=" + bounds
                        + " appBounds=" + appBounds
                        + " raw=" + safe(String.valueOf(task)));
            }
        } catch (Throwable t) {
            w("DIAG_RUNTIME_TASK unavailable", t);
        }
    }

    private static void logProcessState(Context context) {
        try {
            ActivityManager manager = (ActivityManager) context.getSystemService(
                    Context.ACTIVITY_SERVICE);
            if (manager == null) return;
            java.util.List<ActivityManager.RunningAppProcessInfo> processes =
                    manager.getRunningAppProcesses();
            if (processes == null) return;
            for (ActivityManager.RunningAppProcessInfo process : processes) {
                i("DIAG_RUNTIME_PROCESS pid=" + process.pid
                        + " name=" + safe(process.processName)
                        + " importance=" + process.importance
                        + " importanceReason=" + process.importanceReasonCode
                        + " pkgList=" + java.util.Arrays.toString(process.pkgList));
            }
        } catch (Throwable t) {
            w("DIAG_RUNTIME_PROCESS unavailable", t);
        }
    }

    private static Object readObject(Object object, String fieldName) {
        if (object == null) return null;
        try {
            java.lang.reflect.Field field = object.getClass().getField(fieldName);
            field.setAccessible(true);
            return field.get(object);
        } catch (Throwable ignored) {
            try {
                java.lang.reflect.Field field = object.getClass().getDeclaredField(fieldName);
                field.setAccessible(true);
                return field.get(object);
            } catch (Throwable ignoredAgain) {
                return null;
            }
        }
    }

    private static int readInt(Object object, String fieldName, int fallback) {
        Object value = readObject(object, fieldName);
        return value instanceof Number ? ((Number) value).intValue() : fallback;
    }

    private static boolean readBoolean(Object object, String fieldName, boolean fallback) {
        Object value = readObject(object, fieldName);
        return value instanceof Boolean ? (Boolean) value : fallback;
    }

    private static ComponentName readComponent(Object object, String fieldName) {
        Object value = readObject(object, fieldName);
        return value instanceof ComponentName ? (ComponentName) value : null;
    }

    private static Rect readRect(Object object, String methodName, String fieldName) {
        if (object == null) return null;
        try {
            java.lang.reflect.Method method = object.getClass().getMethod(methodName);
            method.setAccessible(true);
            Object value = method.invoke(object);
            return value instanceof Rect ? new Rect((Rect) value) : null;
        } catch (Throwable ignored) {
            Object value = readObject(object, fieldName);
            return value instanceof Rect ? new Rect((Rect) value) : null;
        }
    }

    private static String componentName(ComponentName component) {
        return component == null ? "null" : component.flattenToShortString();
    }

    private static String orientationName(int orientation) {
        if (orientation == Configuration.ORIENTATION_PORTRAIT) return "portrait";
        if (orientation == Configuration.ORIENTATION_LANDSCAPE) return "landscape";
        return "undefined";
    }

    /** 清空当前日志文件（配置 Activity 提供按钮调用） */
    public static void clear() {
        sLock.lock();
        try {
            new File(PRIMARY_LOG).delete();
            new File(PRIMARY_LOG_OLD).delete();
            new File(FALLBACK_LOG).delete();
            new File(FALLBACK_LOG_OLD).delete();
            new File(SYSTEM_LOG).delete();
            new File(SYSTEM_LOG_OLD).delete();
            new File(APPDATA_LOG).delete();
            new File(APPDATA_LOG_OLD).delete();
            sActiveLogPath = null;
            sPrimaryAvailable = true;
            sFallbackAvailable = true;
            sSystemAvailable = true;
            sAppDataAvailable = true;
        } finally {
            sLock.unlock();
        }
        if (isEnabled()) i("log cleared by user");
    }

    /** 获取当前日志文件路径（用于 UI 展示） */
    public static String getLogFilePath() {
        if (sActiveLogPath != null) {
            return sActiveLogPath;
        }
        if (sPrimaryAvailable && new File(PRIMARY_DIR).canWrite()) {
            return PRIMARY_LOG;
        }
        if (sAppDataAvailable) {
            return APPDATA_LOG;
        }
        if (sSystemAvailable) {
            return SYSTEM_LOG;
        }
        return FALLBACK_LOG;
    }

    public static long getLogFileSize() {
        File file = new File(getLogFilePath());
        return file.isFile() ? file.length() : 0L;
    }

    public static String getEnableConfigPath() {
        return "Settings.Global:" + ENABLE_SETTING;
    }

    // ==================== Internal ====================

    private static void write(String level, String msg, Throwable t) {
        sLock.lock();
        try {
            String line = formatLine(level, msg, t);
            if (appendToActivePath(line)) return;
            if (sPrimaryAvailable && appendAndSelect(
                    PRIMARY_DIR, PRIMARY_LOG, PRIMARY_LOG_OLD, line)) return;
            sPrimaryAvailable = false;
            if (sAppDataAvailable && appendAndSelect(
                    APPDATA_DIR, APPDATA_LOG, APPDATA_LOG_OLD, line)) return;
            sAppDataAvailable = false;
            if (sSystemAvailable && appendAndSelect(
                    SYSTEM_DIR, SYSTEM_LOG, SYSTEM_LOG_OLD, line)) return;
            sSystemAvailable = false;
            if (sFallbackAvailable && appendAndSelect(
                    FALLBACK_DIR, FALLBACK_LOG, FALLBACK_LOG_OLD, line)) return;
            sFallbackAvailable = false;
        } catch (Throwable ignored) {
            // 日志本身不能影响业务流程
        } finally {
            sLock.unlock();
        }
    }

    private static String formatLine(String level, String msg, Throwable t) {
        StringBuilder sb = new StringBuilder(256);
        sb.append(sDateFormat.format(new Date()))
          .append(' ').append(level)
          .append(" #").append(String.format(Locale.US, "%06d", sSequence.incrementAndGet()))
          .append(" +").append(SystemClock.uptimeMillis())
          .append(" [").append(getProcessName()).append(':').append(Process.myPid())
          .append('/').append(Thread.currentThread().getName()).append("] ")
          .append(msg);
        if (t != null) {
            sb.append('\n').append(stackTraceToString(t));
        }
        sb.append('\n');
        return sb.toString();
    }

    private static String stackTraceToString(Throwable t) {
        StringWriter sw = new StringWriter();
        PrintWriter pw = new PrintWriter(sw);
        t.printStackTrace(pw);
        pw.flush();
        return sw.toString();
    }

    private static boolean appendToActivePath(String line) {
        String path = sActiveLogPath;
        if (path == null) return false;
        if (PRIMARY_LOG.equals(path)) {
            return appendToFile(PRIMARY_DIR, PRIMARY_LOG, PRIMARY_LOG_OLD, line);
        }
        if (APPDATA_LOG.equals(path)) {
            return appendToFile(APPDATA_DIR, APPDATA_LOG, APPDATA_LOG_OLD, line);
        }
        if (SYSTEM_LOG.equals(path)) {
            return appendToFile(SYSTEM_DIR, SYSTEM_LOG, SYSTEM_LOG_OLD, line);
        }
        if (FALLBACK_LOG.equals(path)) {
            return appendToFile(FALLBACK_DIR, FALLBACK_LOG, FALLBACK_LOG_OLD, line);
        }
        sActiveLogPath = null;
        return false;
    }

    private static boolean appendAndSelect(String dir, String path, String oldPath,
            String line) {
        if (!appendToFile(dir, path, oldPath, line)) return false;
        sActiveLogPath = path;
        Log.i(TAG, "LSPLogger active path: " + path);
        return true;
    }

    /**
     * 追加写一行到指定日志文件，超过 MAX_FILE_SIZE 时轮转。
     *
     * @return true 写入成功；false 写入失败（调用方应切换兜底路径）
     */
    private static boolean appendToFile(String dir, String path, String oldPath, String line) {
        File dirFile = new File(dir);
        try {
            if (!dirFile.exists() && !dirFile.mkdirs()) {
                return false;
            }
        } catch (Throwable t) {
            return false;
        }
        if (!dirFile.canWrite()) {
            return false;
        }
        try (RandomAccessFile lockFile = new RandomAccessFile(
                new File(dirFile, ".logger.lock"), "rw");
                FileChannel channel = lockFile.getChannel();
                FileLock ignored = channel.lock()) {
            return appendUnlocked(path, oldPath, line);
        } catch (IOException ioe) {
            // Some emulated-storage implementations do not support file locks.
            return appendUnlocked(path, oldPath, line);
        } catch (Throwable t) {
            return false;
        }
    }

    private static boolean appendUnlocked(String path, String oldPath, String line) {
        File file = new File(path);
        try {
            if (file.exists() && file.length() > MAX_FILE_SIZE) {
                File old = new File(oldPath);
                if (old.exists()) old.delete();
                file.renameTo(old);
            }
            try (FileOutputStream output = new FileOutputStream(file, true);
                    OutputStreamWriter writer = new OutputStreamWriter(output, "UTF-8")) {
                writer.write(line);
                writer.flush();
            }
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    private static String safe(String value) {
        if (value == null) return "null";
        return value.replace('\n', ' ').replace('\r', ' ');
    }

    private static String sProcessNameCache;
    private static String getProcessName() {
        if (sProcessNameCache != null && !"unknown".equals(sProcessNameCache)) {
            return sProcessNameCache;
        }
        try {
            String name = (String) Class.forName("android.app.ActivityThread")
                    .getMethod("currentProcessName")
                    .invoke(null);
            if (name != null) {
                sProcessNameCache = name;
                return name;
            }
        } catch (Throwable ignored) {
        }
        try (FileInputStream input = new FileInputStream(
                "/proc/" + Process.myPid() + "/cmdline")) {
            StringBuilder value = new StringBuilder();
            int ch;
            while ((ch = input.read()) > 0) value.append((char) ch);
            if (value.length() > 0) {
                sProcessNameCache = value.toString();
                return sProcessNameCache;
            }
        } catch (Throwable ignored) {
        }
        sProcessNameCache = "unknown";
        return sProcessNameCache;
    }

    private static Context resolveContext() {
        Context context = sContext;
        if (context != null) return context;
        try {
            Object application = Class.forName("android.app.ActivityThread")
                    .getMethod("currentApplication").invoke(null);
            if (application instanceof Context) {
                initialize((Context) application);
                return sContext;
            }
        } catch (Throwable ignored) {
        }
        // The getSystemContext() fallback carries package "android". In a third-party
        // app process that attribution makes every Settings.Global read throw
        // SecurityException, so only use it in the system (uid 1000) process itself.
        if (Process.myUid() != Process.SYSTEM_UID) return null;
        try {
            Class<?> activityThread = Class.forName("android.app.ActivityThread");
            Object thread = activityThread.getMethod("currentActivityThread").invoke(null);
            if (thread != null) {
                Object systemContext = activityThread.getMethod("getSystemContext")
                        .invoke(thread);
                if (systemContext instanceof Context) {
                    initialize((Context) systemContext);
                    return sContext;
                }
            }
        } catch (Throwable ignored) {
        }
        return null;
    }
}
