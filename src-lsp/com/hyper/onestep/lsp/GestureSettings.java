package com.hyper.onestep.lsp;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;

import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/** Cross-process settings shared by the module UI, SystemUI and system_server. */
public final class GestureSettings {
    public static final int MIN_LONG_PRESS_DURATION_MS = 300;
    public static final int MAX_LONG_PRESS_DURATION_MS = 1200;
    public static final int LONG_PRESS_DURATION_STEP_MS = 50;
    public static final int DEFAULT_LONG_PRESS_DURATION_MS = 500;

    private static final String KEY_LONG_PRESS_FALLBACK =
            "onestep_long_press_fallback_enabled_v1";
    private static final String KEY_LONG_PRESS_DURATION =
            "onestep_long_press_duration_ms_v1";
    private static final String KEY_TWO_FINGER_LONG_PRESS =
            "onestep_two_finger_long_press_enabled_v1";
    private static final String KEY_GESTURE_BLACKLIST =
            "onestep_gesture_blacklist_v1";
    private static final String KEY_DRAG_HAPTICS =
            "onestep_drag_haptics_enabled_v1";
    private static final String KEY_BIG_BANG_ENABLED =
            "onestep_bigbang_enabled_v1";

    private GestureSettings() {
    }

    public static Snapshot read(Context context) {
        if (context == null) return Snapshot.defaults();
        try {
            boolean fallback = Settings.Global.getInt(context.getContentResolver(),
                    KEY_LONG_PRESS_FALLBACK, 0) != 0;
            int duration = clampDuration(Settings.Global.getInt(context.getContentResolver(),
                    KEY_LONG_PRESS_DURATION, DEFAULT_LONG_PRESS_DURATION_MS));
            String encoded = Settings.Global.getString(context.getContentResolver(),
                    KEY_GESTURE_BLACKLIST);
            boolean dragHaptics = Settings.Global.getInt(context.getContentResolver(),
                    KEY_DRAG_HAPTICS, 1) != 0;
            boolean bigBangEnabled = Settings.Global.getInt(context.getContentResolver(),
                    KEY_BIG_BANG_ENABLED, 0) != 0;
            // Two-finger long press is a device-agnostic fallback, so it defaults on.
            boolean twoFinger = Settings.Global.getInt(context.getContentResolver(),
                    KEY_TWO_FINGER_LONG_PRESS, 1) != 0;
            return new Snapshot(fallback, duration, decodeBlacklist(encoded), dragHaptics,
                    twoFinger, bigBangEnabled);
        } catch (Throwable t) {
            LSPLogger.w("GestureSettings.read failed: " + t);
            return Snapshot.defaults();
        }
    }

    public static boolean setLongPressFallbackEnabled(Context context, boolean enabled) {
        return putInt(context, KEY_LONG_PRESS_FALLBACK, enabled ? 1 : 0);
    }

    public static boolean setLongPressDurationMs(Context context, int durationMs) {
        return putInt(context, KEY_LONG_PRESS_DURATION, clampDuration(durationMs));
    }

    public static boolean setTwoFingerLongPressEnabled(Context context, boolean enabled) {
        return putInt(context, KEY_TWO_FINGER_LONG_PRESS, enabled ? 1 : 0);
    }

    public static boolean setBlacklist(Context context, Set<String> packages) {
        return putString(context, KEY_GESTURE_BLACKLIST, encodeBlacklist(packages));
    }

    /** Global drag-feedback switch shared by the module UI and injected SystemUI process. */
    public static boolean isDragHapticsEnabled(Context context) {
        if (context == null) return true;
        try {
            return Settings.Global.getInt(context.getContentResolver(),
                    KEY_DRAG_HAPTICS, 1) != 0;
        } catch (Throwable t) {
            LSPLogger.w("GestureSettings.read drag haptics failed: " + t);
            return true;
        }
    }

    public static boolean setDragHapticsEnabled(Context context, boolean enabled) {
        return putInt(context, KEY_DRAG_HAPTICS, enabled ? 1 : 0);
    }

    public static boolean setBigBangEnabled(Context context, boolean enabled) {
        return putInt(context, KEY_BIG_BANG_ENABLED, enabled ? 1 : 0);
    }

    public static int clampDuration(int durationMs) {
        int clamped = Math.max(MIN_LONG_PRESS_DURATION_MS,
                Math.min(MAX_LONG_PRESS_DURATION_MS, durationMs));
        int offset = clamped - MIN_LONG_PRESS_DURATION_MS;
        return MIN_LONG_PRESS_DURATION_MS
                + Math.round(offset / (float) LONG_PRESS_DURATION_STEP_MS)
                * LONG_PRESS_DURATION_STEP_MS;
    }

    private static boolean putInt(Context context, String key, int value) {
        if (context != null) {
            try {
                if (Settings.Global.putInt(context.getContentResolver(), key, value)) {
                    return true;
                }
            } catch (Throwable t) {
                LSPLogger.d("GestureSettings direct int write denied: " + t);
            }
        }
        return putAsRoot(key, Integer.toString(value));
    }

    private static boolean putString(Context context, String key, String value) {
        if (context != null) {
            try {
                if (Settings.Global.putString(context.getContentResolver(), key, value)) {
                    return true;
                }
            } catch (Throwable t) {
                LSPLogger.d("GestureSettings direct string write denied: " + t);
            }
        }
        return putAsRoot(key, value);
    }

    private static boolean putAsRoot(String key, String value) {
        java.lang.Process process = null;
        try {
            String command = "settings put global " + key + " " + shellQuote(value);
            process = new ProcessBuilder("su", "-c", command)
                    .redirectErrorStream(true)
                    .start();
            process.getInputStream().close();
            if (!process.waitFor(3, TimeUnit.SECONDS)) {
                process.destroyForcibly();
                return false;
            }
            boolean success = process.exitValue() == 0;
            if (!success) {
                LSPLogger.w("GestureSettings root write failed key=" + key
                        + " exit=" + process.exitValue());
            }
            return success;
        } catch (Throwable t) {
            if (process != null) process.destroy();
            LSPLogger.e("GestureSettings root write failed key=" + key, t);
            return false;
        }
    }

    private static String encodeBlacklist(Set<String> packages) {
        if (packages == null || packages.isEmpty()) return "";
        StringBuilder result = new StringBuilder();
        for (String packageName : packages) {
            if (!isValidPackageName(packageName)) continue;
            if (result.length() > 0) result.append(',');
            result.append(packageName);
        }
        return result.toString();
    }

    private static Set<String> decodeBlacklist(String encoded) {
        if (TextUtils.isEmpty(encoded)) return Collections.emptySet();
        LinkedHashSet<String> result = new LinkedHashSet<>();
        for (String value : encoded.split(",")) {
            String packageName = value.trim();
            if (isValidPackageName(packageName)) result.add(packageName);
        }
        if (result.isEmpty()) return Collections.emptySet();
        return Collections.unmodifiableSet(result);
    }

    private static boolean isValidPackageName(String value) {
        if (TextUtils.isEmpty(value) || value.length() > 255) return false;
        for (int i = 0; i < value.length(); i++) {
            char c = value.charAt(i);
            if (!(c >= 'a' && c <= 'z')
                    && !(c >= 'A' && c <= 'Z')
                    && !(c >= '0' && c <= '9')
                    && c != '_' && c != '.') {
                return false;
            }
        }
        return true;
    }

    private static String shellQuote(String value) {
        String safe = value == null ? "" : value;
        return "'" + safe.replace("'", "'\\''") + "'";
    }

    public static final class Snapshot {
        public final boolean longPressFallbackEnabled;
        public final int longPressDurationMs;
        public final Set<String> blacklistedPackages;
        public final boolean dragHapticsEnabled;
        public final boolean twoFingerLongPressEnabled;
        public final boolean bigBangEnabled;

        Snapshot(boolean longPressFallbackEnabled, int longPressDurationMs,
                Set<String> blacklistedPackages, boolean dragHapticsEnabled,
                boolean twoFingerLongPressEnabled, boolean bigBangEnabled) {
            this.longPressFallbackEnabled = longPressFallbackEnabled;
            this.longPressDurationMs = clampDuration(longPressDurationMs);
            this.blacklistedPackages = blacklistedPackages == null
                    ? Collections.emptySet() : blacklistedPackages;
            this.dragHapticsEnabled = dragHapticsEnabled;
            this.twoFingerLongPressEnabled = twoFingerLongPressEnabled;
            this.bigBangEnabled = bigBangEnabled;
        }

        static Snapshot defaults() {
            return new Snapshot(false, DEFAULT_LONG_PRESS_DURATION_MS,
                    Collections.emptySet(), true, true, false);
        }

        public boolean isBlacklisted(String packageName) {
            return TextBoomContract.MODULE_PACKAGE.equals(packageName)
                    || (packageName != null && blacklistedPackages.contains(packageName));
        }
    }
}
