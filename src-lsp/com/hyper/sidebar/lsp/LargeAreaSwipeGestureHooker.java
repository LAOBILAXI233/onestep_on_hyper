package com.hyper.sidebar.lsp;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.InputDevice;
import android.view.MotionEvent;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

import io.github.libxposed.api.XposedInterface;

/** Observes the default display's pointer stream for a broad press and diagonal down swipe. */
public final class LargeAreaSwipeGestureHooker implements XposedInterface.Hooker {
    private static final String SYSTEM_UI_PACKAGE = "com.android.systemui";
    private static final String ACTION_ENTER_ONE_STEP =
            "com.hyper.sidebar.ACTION_ENTER_ONE_STEP";
    private static final String EXTRA_SIDEBAR_MODE = "sidebar_mode";

    private static final int MODE_LEFT = 1;
    private static final int MODE_RIGHT = 2;

    /**
     * HyperOS exposes its software large-contact classifier as an on-change sensor.  This is
     * deliberately not a pressure sensor: the touch HAL classifies the raw capacitive frame and
     * publishes a 1/0 result here, even though MotionEvent only contains the contact centroid.
     */
    private static final int XIAOMI_LARGE_AREA_SENSOR_TYPE = 33171031;
    private static final String XIAOMI_LARGE_AREA_SENSOR_STRING_TYPE =
            "xiaomi.sensor.large_area_detect";

    /**
     * Set by scripts/onestep-touchd.sh, which uprobes the vendor touch HAL's density routine.
     * This driver declares {@code ABS_MT_TOUCH_MAJOR} but never emits it, so the contact
     * footprint below is the only area signal available; MotionEvent carries the centroid alone.
     */
    private static final String DENSITY_LARGE_AREA_PROPERTY = "sys.onestep.large_area";
    private static final long DENSITY_PROPERTY_CACHE_MS = 8L;

    private static final float LARGE_TOUCH_MAJOR_DP = 48f;
    private static final float LARGE_NORMALIZED_SIZE = 0.055f;
    private static final long TRIGGER_COOLDOWN_MS = 1000L;

    /** Max drift (per finger) tolerated during a two-finger long press before it is treated
     * as a pinch/scroll and abandoned. */
    private static final float TWO_FINGER_MOVE_SLOP_DP = 20f;

    private static final GestureIntentClassifier sGestureClassifier =
            new GestureIntentClassifier();

    private static boolean sTracking;
    private static boolean sLargeContact;
    private static boolean sLongPressFallbackEnabled;
    private static int sLongPressDurationMs = GestureSettings.DEFAULT_LONG_PRESS_DURATION_MS;
    private static String sForegroundPackage;
    private static float sDownX;
    private static float sDownY;
    private static float sDensity;
    private static long sDownTime;
    private static long sLastTriggerTime;
    private static int sGestureGeneration;
    private static Context sContext;
    private static Handler sHandler;
    private static Runnable sLongPressFallbackRunnable;
    private static SensorManager sSensorManager;
    private static Sensor sLargeAreaSensor;
    private static SensorEventListener sLargeAreaSensorListener;
    private static boolean sLargeAreaSensorRegistrationAttempted;
    private static volatile boolean sVendorLargeAreaActive;
    private static Method sGetDisplayIdMethod;
    private static boolean sDisplayIdMethodResolved;
    private static Method sSystemPropertiesGetMethod;
    private static boolean sSystemPropertiesResolved;
    private static long sDensityPropertyReadTime;
    private static boolean sDensityLargeAreaActive;

    private static boolean sTwoFingerActive;
    private static long sTwoFingerDownTime;
    private static float sTwoFingerStartX0;
    private static float sTwoFingerStartY0;
    private static float sTwoFingerStartX1;
    private static float sTwoFingerStartY1;
    private static float sTwoFingerSlopPx;
    private static int sTwoFingerGeneration;
    private static String sTwoFingerPackage;
    private static Runnable sTwoFingerRunnable;

    private final ClassLoader mSystemServerClassLoader;

    LargeAreaSwipeGestureHooker(ClassLoader systemServerClassLoader) {
        mSystemServerClassLoader = systemServerClassLoader;
    }

    @Override
    public Object intercept(XposedInterface.Chain chain) throws Throwable {
        Object arg = chain.getArg(0);
        MotionEvent event = arg instanceof MotionEvent ? (MotionEvent) arg : null;
        if (event != null) {
            try {
                handleMotionEvent(chain.getThisObject(), event, mSystemServerClassLoader);
            } catch (Throwable t) {
                resetGesture();
                LSPLogger.e("LargeAreaSwipeGestureHooker: event handling failed", t);
            }
        }
        return chain.proceed();
    }

    private static void handleMotionEvent(Object listener, MotionEvent event,
            ClassLoader systemServerClassLoader) {
        if (getDisplayId(event) != Display.DEFAULT_DISPLAY
                || !event.isFromSource(InputDevice.SOURCE_TOUCHSCREEN)) {
            return;
        }

        ensureLargeAreaClassifier(listener);
        handleTwoFingerLongPress(listener, event, systemServerClassLoader);

        int action = event.getActionMasked();
        switch (action) {
            case MotionEvent.ACTION_DOWN:
                beginGesture(listener, event);
                break;
            case MotionEvent.ACTION_POINTER_DOWN:
                resetGesture();
                break;
            case MotionEvent.ACTION_MOVE:
                updateGesture(event);
                break;
            case MotionEvent.ACTION_UP:
                if (!sTracking) return;
                updateGesture(event);
                if (!sTracking) return;
                GestureIntentClassifier.Outcome outcome = sGestureClassifier.getOutcome();
                float horizontalDelta = sGestureClassifier.getHorizontalDelta();
                boolean stationaryLargePress = sLargeContact
                        && sGestureClassifier.canConfirmLongPressFallback();
                String foregroundPackage = sForegroundPackage;
                int touchX = Math.round(sDownX);
                int touchY = Math.round(sDownY);
                String summary = sGestureClassifier.summary(event.getEventTime());
                GestureActionArbitrator.Action resolvedAction = GestureActionArbitrator.decide(
                        outcome, stationaryLargePress);
                resetGesture();
                LSPLogger.i("LargeAreaSwipeGestureHooker: finished " + summary
                        + " action=" + resolvedAction);
                if (resolvedAction == GestureActionArbitrator.Action.ENTER_ONE_STEP) {
                    triggerOneStep(listener, horizontalDelta);
                } else if (resolvedAction == GestureActionArbitrator.Action.OPEN_BIG_BANG) {
                    triggerBigBang(listener, systemServerClassLoader, foregroundPackage,
                            touchX, touchY);
                }
                break;
            case MotionEvent.ACTION_CANCEL:
                resetGesture();
                break;
            default:
                break;
        }
    }

    private static void beginGesture(Object listener, MotionEvent event) {
        resetGesture();
        if (event.getPointerCount() != 1) return;

        Context context = resolveContext(listener);
        GestureSettings.Snapshot settings = GestureSettings.read(context);
        sLongPressFallbackEnabled = settings.bigBangEnabled
                && settings.longPressFallbackEnabled;
        sLongPressDurationMs = settings.longPressDurationMs;
        sForegroundPackage = resolveForegroundPackage(context);
        if (settings.isBlacklisted(sForegroundPackage)) {
            LSPLogger.d("LargeAreaSwipeGestureHooker: ignored blacklisted package="
                    + sForegroundPackage);
            return;
        }

        DisplayMetrics metrics = Resources.getSystem().getDisplayMetrics();
        sDensity = Math.max(1f, metrics.density);
        sDownX = event.getX(0);
        sDownY = event.getY(0);
        sDownTime = event.getEventTime();
        sTracking = true;
        sGestureClassifier.start(sDownX, sDownY, sDownTime, sDensity);
        processMotionSamples(event);
        scheduleLongPressFallback(listener);
    }

    private static void updateGesture(MotionEvent event) {
        if (!sTracking) return;
        if (event.getPointerCount() != 1) {
            resetGesture();
            return;
        }

        processMotionSamples(event);
    }

    private static void processMotionSamples(MotionEvent event) {
        int historySize = event.getHistorySize();
        for (int i = 0; i < historySize; i++) {
            ContactEvidence evidence = observeContactArea(event, i);
            sGestureClassifier.addSample(
                    event.getHistoricalX(0, i),
                    event.getHistoricalY(0, i),
                    event.getHistoricalEventTime(i),
                    evidence.strong,
                    evidence.source);
        }

        ContactEvidence evidence = observeContactArea(event, -1);
        sGestureClassifier.addSample(event.getX(0), event.getY(0), event.getEventTime(),
                evidence.strong, evidence.source);
    }

    private static ContactEvidence observeContactArea(MotionEvent event, int historyIndex) {
        float touchMajor = historyIndex >= 0
                ? event.getHistoricalTouchMajor(0, historyIndex) : event.getTouchMajor(0);
        float normalizedSize = historyIndex >= 0
                ? event.getHistoricalSize(0, historyIndex) : event.getSize(0);
        boolean deepPress = event.getClassification() == MotionEvent.CLASSIFICATION_DEEP_PRESS;
        String source = null;
        if (isDensityLargeContact()) {
            source = "hal-density";
        } else if (sVendorLargeAreaActive) {
            source = "xiaomi-classifier";
        } else if (deepPress) {
            source = "android-deep-press";
        } else if (touchMajor >= LARGE_TOUCH_MAJOR_DP * sDensity
                || normalizedSize >= LARGE_NORMALIZED_SIZE) {
            source = "motion-contact";
        }
        if (source != null) {
            armLargeContact(source, touchMajor, normalizedSize, event.getClassification());
            return new ContactEvidence(true, source);
        }
        return ContactEvidence.NONE;
    }

    private static void armLargeContact(String source, float touchMajor, float normalizedSize,
            int classification) {
        if (sLargeContact) return;
        sLargeContact = true;
        LSPLogger.i("LargeAreaSwipeGestureHooker: armed source=" + source
                + " major=" + touchMajor
                + " size=" + normalizedSize
                + " classification=" + classification);
    }

    /**
     * Reads the contact-density verdict published by the touch daemon. Polled per motion sample,
     * so the value is cached briefly; the daemon only rewrites it on a state change.
     */
    private static boolean isDensityLargeContact() {
        long now = SystemClock.uptimeMillis();
        if (now - sDensityPropertyReadTime < DENSITY_PROPERTY_CACHE_MS) {
            return sDensityLargeAreaActive;
        }
        sDensityPropertyReadTime = now;
        sDensityLargeAreaActive = "1".equals(readSystemProperty(DENSITY_LARGE_AREA_PROPERTY));
        return sDensityLargeAreaActive;
    }

    private static String readSystemProperty(String key) {
        if (!sSystemPropertiesResolved) {
            sSystemPropertiesResolved = true;
            try {
                sSystemPropertiesGetMethod = Class.forName("android.os.SystemProperties")
                        .getMethod("get", String.class, String.class);
            } catch (Throwable t) {
                LSPLogger.w("LargeAreaSwipeGestureHooker: SystemProperties unavailable: " + t);
            }
        }
        if (sSystemPropertiesGetMethod == null) return "";
        try {
            Object value = sSystemPropertiesGetMethod.invoke(null, key, "");
            return value instanceof String ? (String) value : "";
        } catch (Throwable t) {
            LSPLogger.d("LargeAreaSwipeGestureHooker: cannot read " + key + ": " + t);
            return "";
        }
    }

    private static void scheduleLongPressFallback(Object listener) {
        if (!sLongPressFallbackEnabled) return;

        Handler handler = resolveHandler(listener);
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
            sHandler = handler;
        }
        final int generation = sGestureGeneration;
        sLongPressFallbackRunnable = new Runnable() {
            @Override
            public void run() {
                if (!sTracking || generation != sGestureGeneration
                        || sLargeContact
                        || !sGestureClassifier.canConfirmLongPressFallback()) {
                    return;
                }
                long now = SystemClock.uptimeMillis();
                sGestureClassifier.armFallback(now);
                armLargeContact("long-press-fallback", 0f, 0f,
                        MotionEvent.CLASSIFICATION_NONE);
            }
        };
        handler.postAtTime(sLongPressFallbackRunnable, sDownTime + sLongPressDurationMs);
    }

    private static final class ContactEvidence {
        static final ContactEvidence NONE = new ContactEvidence(false, null);

        final boolean strong;
        final String source;

        ContactEvidence(boolean strong, String source) {
            this.strong = strong;
            this.source = source;
        }
    }

    private static void ensureLargeAreaClassifier(Object listener) {
        if (sLargeAreaSensorRegistrationAttempted) return;
        synchronized (LargeAreaSwipeGestureHooker.class) {
            if (sLargeAreaSensorRegistrationAttempted) return;

            Context context = resolveContext(listener);
            if (context == null) return;
            sLargeAreaSensorRegistrationAttempted = true;

            try {
                sSensorManager = (SensorManager) context.getSystemService(
                        Context.SENSOR_SERVICE);
                if (sSensorManager == null) {
                    LSPLogger.w("LargeAreaSwipeGestureHooker: SensorManager unavailable");
                    return;
                }

                sLargeAreaSensor = sSensorManager.getDefaultSensor(
                        XIAOMI_LARGE_AREA_SENSOR_TYPE);
                if (sLargeAreaSensor == null) {
                    for (Sensor sensor : sSensorManager.getSensorList(Sensor.TYPE_ALL)) {
                        if (sensor.getType() == XIAOMI_LARGE_AREA_SENSOR_TYPE
                                || XIAOMI_LARGE_AREA_SENSOR_STRING_TYPE.equals(
                                        sensor.getStringType())) {
                            sLargeAreaSensor = sensor;
                            break;
                        }
                    }
                }
                if (sLargeAreaSensor == null) {
                    LSPLogger.i("LargeAreaSwipeGestureHooker: vendor classifier unavailable; "
                            + "MotionEvent compatibility path remains active");
                    return;
                }

                sLargeAreaSensorListener = new SensorEventListener() {
                    @Override
                    public void onSensorChanged(SensorEvent event) {
                        if (event == null || event.values == null || event.values.length == 0) {
                            return;
                        }
                        float raw = event.values[0];
                        boolean active = raw > 0.5f;
                        boolean changed = active != sVendorLargeAreaActive;
                        sVendorLargeAreaActive = active;
                        if (changed) {
                            LSPLogger.i("LargeAreaSwipeGestureHooker: xiaomi classifier active="
                                    + active + " raw=" + raw + " tracking=" + sTracking);
                        }
                    }

                    @Override
                    public void onAccuracyChanged(Sensor sensor, int accuracy) {
                        // On-change classifier has no meaningful accuracy state.
                    }
                };

                Handler callbackHandler = resolveHandler(listener);
                if (callbackHandler == null) {
                    callbackHandler = new Handler(Looper.getMainLooper());
                    sHandler = callbackHandler;
                }
                boolean registered = sSensorManager.registerListener(
                        sLargeAreaSensorListener, sLargeAreaSensor,
                        SensorManager.SENSOR_DELAY_NORMAL, callbackHandler);
                if (!registered) {
                    sLargeAreaSensorListener = null;
                    LSPLogger.w("LargeAreaSwipeGestureHooker: vendor classifier registration "
                            + "returned false");
                    return;
                }
                LSPLogger.i("LargeAreaSwipeGestureHooker: vendor classifier registered name="
                        + sLargeAreaSensor.getName() + " vendor="
                        + sLargeAreaSensor.getVendor() + " type="
                        + sLargeAreaSensor.getStringType() + " delay=normal");
            } catch (Throwable t) {
                sLargeAreaSensorListener = null;
                LSPLogger.e("LargeAreaSwipeGestureHooker: vendor classifier registration failed",
                        t);
            }
        }
    }

    private static void triggerOneStep(Object listener, float horizontalDelta) {
        long now = SystemClock.uptimeMillis();
        if (now - sLastTriggerTime < TRIGGER_COOLDOWN_MS) return;

        Context context = resolveContext(listener);
        if (context == null || isKeyguardLocked(context)) {
            return;
        }
        if (isCurrentForegroundBlocked(context, "OneStep")) return;

        int mode = horizontalDelta > 0f ? MODE_LEFT : MODE_RIGHT;
        Intent intent = new Intent(ACTION_ENTER_ONE_STEP);
        intent.setPackage(SYSTEM_UI_PACKAGE);
        intent.putExtra(EXTRA_SIDEBAR_MODE, mode);
        intent.addFlags(Intent.FLAG_RECEIVER_FOREGROUND);

        sLastTriggerTime = now;
        Runnable sender = new Runnable() {
            @Override
            public void run() {
                try {
                    context.sendBroadcast(intent);
                    LSPLogger.i("LargeAreaSwipeGestureHooker.triggerOneStep: mode=" + mode);
                } catch (Throwable t) {
                    LSPLogger.e("LargeAreaSwipeGestureHooker: trigger broadcast failed", t);
                }
            }
        };
        Handler handler = resolveHandler(listener);
        if (handler != null) {
            handler.post(sender);
        } else {
            sender.run();
        }
    }

    private static void triggerBigBang(Object listener, ClassLoader systemServerClassLoader,
            String foregroundPackage, int touchX, int touchY) {
        long now = SystemClock.uptimeMillis();
        if (now - sLastTriggerTime < TRIGGER_COOLDOWN_MS) return;

        Context context = resolveContext(listener);
        if (context == null || isKeyguardLocked(context)) return;
        if (foregroundPackage == null || foregroundPackage.isEmpty()) {
            LSPLogger.w("LargeAreaSwipeGestureHooker: BigBang foreground package unavailable");
            return;
        }
        GestureSettings.Snapshot settings = GestureSettings.read(context);
        if (!settings.bigBangEnabled
                || settings.isBlacklisted(foregroundPackage)
                || isCurrentForegroundBlocked(context, "BigBang")) {
            return;
        }

        if (BigBangExtractionCoordinator.submit(context, systemServerClassLoader,
                foregroundPackage, touchX, touchY)) {
            sLastTriggerTime = now;
        }
    }

    private static boolean isCurrentForegroundBlocked(Context context, String action) {
        String currentPackage = resolveForegroundPackage(context);
        if (!GestureSettings.read(context).isBlacklisted(currentPackage)) return false;
        LSPLogger.d("LargeAreaSwipeGestureHooker: suppressed " + action
                + " in foreground package=" + currentPackage);
        return true;
    }

    private static boolean isKeyguardLocked(Context context) {
        try {
            KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService(
                    Context.KEYGUARD_SERVICE);
            return keyguardManager != null && keyguardManager.isKeyguardLocked();
        } catch (Throwable t) {
            LSPLogger.d("LargeAreaSwipeGestureHooker: keyguard check failed: " + t);
            return true;
        }
    }

    @SuppressWarnings("deprecation")
    private static String resolveForegroundPackage(Context context) {
        if (context == null) return null;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(
                    Context.ACTIVITY_SERVICE);
            if (activityManager == null) return null;
            List<ActivityManager.RunningTaskInfo> tasks = activityManager.getRunningTasks(10);
            if (tasks == null || tasks.isEmpty()) return null;
            for (ActivityManager.RunningTaskInfo task : tasks) {
                if (task == null || getTaskDisplayId(task) != Display.DEFAULT_DISPLAY) continue;
                ComponentName top = task.topActivity;
                if (top != null) return top.getPackageName();
            }
            return null;
        } catch (Throwable t) {
            LSPLogger.d("LargeAreaSwipeGestureHooker: foreground package unavailable: " + t);
            return null;
        }
    }

    private static int getTaskDisplayId(ActivityManager.RunningTaskInfo task) {
        Object value = readField(task, "displayId");
        return value instanceof Integer ? (Integer) value : Display.DEFAULT_DISPLAY;
    }

    private static Context resolveContext(Object listener) {
        if (sContext != null) return sContext;
        Object value = readField(listener, "mContext");
        if (value instanceof Context) {
            sContext = (Context) value;
        }
        return sContext;
    }

    private static Handler resolveHandler(Object listener) {
        if (sHandler != null) return sHandler;
        Object value = readField(listener, "mHandler");
        if (value instanceof Handler) {
            sHandler = (Handler) value;
        }
        return sHandler;
    }

    private static Object readField(Object target, String name) {
        if (target == null) return null;
        Class<?> current = target.getClass();
        while (current != null && current != Object.class) {
            try {
                Field field = current.getDeclaredField(name);
                field.setAccessible(true);
                return field.get(target);
            } catch (NoSuchFieldException ignored) {
                current = current.getSuperclass();
            } catch (Throwable t) {
                LSPLogger.d("LargeAreaSwipeGestureHooker: cannot read " + name + ": " + t);
                return null;
            }
        }
        return null;
    }

    private static int getDisplayId(MotionEvent event) {
        if (!sDisplayIdMethodResolved) {
            sDisplayIdMethodResolved = true;
            try {
                sGetDisplayIdMethod = event.getClass().getMethod("getDisplayId");
                sGetDisplayIdMethod.setAccessible(true);
            } catch (Throwable t) {
                LSPLogger.d("LargeAreaSwipeGestureHooker: getDisplayId unavailable: " + t);
            }
        }
        if (sGetDisplayIdMethod != null) {
            try {
                Object value = sGetDisplayIdMethod.invoke(event);
                if (value instanceof Integer) return (Integer) value;
            } catch (Throwable t) {
                LSPLogger.d("LargeAreaSwipeGestureHooker: getDisplayId failed: " + t);
            }
        }
        return Display.DEFAULT_DISPLAY;
    }

    /**
     * Device-agnostic fallback: two fingers held stationary for the configured long-press
     * duration open BigBang. Runs independently of the single-pointer swipe/large-contact state
     * machine above, which discards multi-touch. The daemon-backed thumb press remains primary;
     * this needs no vendor signal, only pointer geometry from the MotionEvent.
     */
    private static void handleTwoFingerLongPress(Object listener, MotionEvent event,
            ClassLoader systemServerClassLoader) {
        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_POINTER_DOWN:
                if (event.getPointerCount() == 2) {
                    beginTwoFingerLongPress(listener, event, systemServerClassLoader);
                } else {
                    cancelTwoFingerLongPress();
                }
                break;
            case MotionEvent.ACTION_MOVE:
                if (sTwoFingerActive
                        && (event.getPointerCount() != 2 || twoFingerMovedTooFar(event))) {
                    cancelTwoFingerLongPress();
                }
                break;
            case MotionEvent.ACTION_DOWN:
            case MotionEvent.ACTION_POINTER_UP:
            case MotionEvent.ACTION_UP:
            case MotionEvent.ACTION_CANCEL:
                cancelTwoFingerLongPress();
                break;
            default:
                break;
        }
    }

    private static void beginTwoFingerLongPress(Object listener, MotionEvent event,
            ClassLoader systemServerClassLoader) {
        cancelTwoFingerLongPress();

        Context context = resolveContext(listener);
        GestureSettings.Snapshot settings = GestureSettings.read(context);
        if (!settings.bigBangEnabled || !settings.twoFingerLongPressEnabled) return;

        String foregroundPackage = resolveForegroundPackage(context);
        if (settings.isBlacklisted(foregroundPackage)) {
            LSPLogger.d("LargeAreaSwipeGestureHooker: two-finger ignored blacklisted package="
                    + foregroundPackage);
            return;
        }

        DisplayMetrics metrics = Resources.getSystem().getDisplayMetrics();
        sTwoFingerSlopPx = TWO_FINGER_MOVE_SLOP_DP * Math.max(1f, metrics.density);
        sTwoFingerStartX0 = event.getX(0);
        sTwoFingerStartY0 = event.getY(0);
        sTwoFingerStartX1 = event.getX(1);
        sTwoFingerStartY1 = event.getY(1);
        sTwoFingerDownTime = event.getEventTime();
        sTwoFingerPackage = foregroundPackage;
        sTwoFingerActive = true;
        final int generation = ++sTwoFingerGeneration;
        final Object gestureListener = listener;
        final ClassLoader classLoader = systemServerClassLoader;

        Handler handler = resolveHandler(listener);
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper());
            sHandler = handler;
        }
        sTwoFingerRunnable = new Runnable() {
            @Override
            public void run() {
                if (!sTwoFingerActive || generation != sTwoFingerGeneration) return;
                fireTwoFingerLongPress(gestureListener, classLoader);
            }
        };
        handler.postAtTime(sTwoFingerRunnable,
                sTwoFingerDownTime + settings.longPressDurationMs);
    }

    private static boolean twoFingerMovedTooFar(MotionEvent event) {
        float slopSquared = sTwoFingerSlopPx * sTwoFingerSlopPx;
        float dx0 = event.getX(0) - sTwoFingerStartX0;
        float dy0 = event.getY(0) - sTwoFingerStartY0;
        if (dx0 * dx0 + dy0 * dy0 > slopSquared) return true;
        float dx1 = event.getX(1) - sTwoFingerStartX1;
        float dy1 = event.getY(1) - sTwoFingerStartY1;
        return dx1 * dx1 + dy1 * dy1 > slopSquared;
    }

    private static void fireTwoFingerLongPress(Object listener,
            ClassLoader systemServerClassLoader) {
        int touchX = Math.round((sTwoFingerStartX0 + sTwoFingerStartX1) * 0.5f);
        int touchY = Math.round((sTwoFingerStartY0 + sTwoFingerStartY1) * 0.5f);
        String foregroundPackage = sTwoFingerPackage;
        cancelTwoFingerLongPress();
        LSPLogger.i("LargeAreaSwipeGestureHooker: two-finger long press -> BigBang");
        triggerBigBang(listener, systemServerClassLoader, foregroundPackage, touchX, touchY);
    }

    private static void cancelTwoFingerLongPress() {
        sTwoFingerGeneration++;
        if (sTwoFingerRunnable != null && sHandler != null) {
            sHandler.removeCallbacks(sTwoFingerRunnable);
        }
        sTwoFingerRunnable = null;
        sTwoFingerActive = false;
        sTwoFingerPackage = null;
    }

    private static void resetGesture() {
        sGestureGeneration++;
        if (sLongPressFallbackRunnable != null && sHandler != null) {
            sHandler.removeCallbacks(sLongPressFallbackRunnable);
        }
        sLongPressFallbackRunnable = null;
        sGestureClassifier.reset();
        sTracking = false;
        sLargeContact = false;
        sLongPressFallbackEnabled = false;
        sLongPressDurationMs = GestureSettings.DEFAULT_LONG_PRESS_DURATION_MS;
        sForegroundPackage = null;
        sDownX = 0f;
        sDownY = 0f;
        sDensity = 1f;
        sDownTime = 0L;
    }
}
