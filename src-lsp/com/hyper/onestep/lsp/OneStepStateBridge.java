package com.hyper.onestep.lsp;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.provider.Settings;

/** Shares OneStep layout state from SystemUI with the separately hooked launcher process. */
public final class OneStepStateBridge {
    public static final String LAUNCHER_PACKAGE = "com.miui.home";
    public static final String ACTION_LAYOUT_CHANGED =
            "com.hyper.onestep.ACTION_ONE_STEP_LAYOUT_CHANGED";

    private static final String SETTINGS_KEY = "onestep_lsp_layout_v1";
    private static final String LANDSCAPE_TASKS_KEY = "onestep_lsp_landscape_tasks_v1";
    private static final String TASK_ORIENTATIONS_KEY = "onestep_lsp_task_orientations_v1";
    private static final String FIXED_LETTERBOX_BOUNDS_KEY =
            "onestep_lsp_fixed_letterbox_bounds_v1";
    private static final String EXTRA_STATE = "layout_state";

    private OneStepStateBridge() {}

    public static final class State {
        public final boolean enabled;
        public final boolean sidebarOnLeft;
        public final int screenWidth;
        public final int sidebarWidth;
        public final int topHeight;
        public final int screenHeight;

        State(boolean enabled, boolean sidebarOnLeft, int screenWidth,
                int sidebarWidth, int topHeight, int screenHeight) {
            this.enabled = enabled;
            this.sidebarOnLeft = sidebarOnLeft;
            this.screenWidth = screenWidth;
            this.sidebarWidth = sidebarWidth;
            this.topHeight = topHeight;
            this.screenHeight = screenHeight;
        }

        public boolean canTransform() {
            return enabled && screenWidth > sidebarWidth && sidebarWidth >= 0
                    && screenHeight > topHeight && topHeight >= 0;
        }

        String encode() {
            return (enabled ? "1" : "0") + "," + (sidebarOnLeft ? "1" : "0")
                    + "," + screenWidth + "," + sidebarWidth + "," + topHeight
                    + "," + screenHeight;
        }
    }

    public static void publish(Context context, boolean enabled, boolean sidebarOnLeft,
            int screenWidth, int sidebarWidth, int topHeight, int screenHeight) {
        if (context == null) return;
        State state = new State(enabled, sidebarOnLeft, screenWidth, sidebarWidth,
                topHeight, screenHeight);
        String encoded = state.encode();
        try {
            boolean stored = Settings.Global.putString(
                    context.getContentResolver(), SETTINGS_KEY, encoded);
            LSPLogger.i("OneStepStateBridge.publish: stored=" + stored
                    + " state=" + encoded);
        } catch (Throwable t) {
            LSPLogger.e("OneStepStateBridge.publish: Settings.Global failed", t);
        }
        try {
            Intent intent = new Intent(ACTION_LAYOUT_CHANGED);
            intent.setPackage(LAUNCHER_PACKAGE);
            intent.putExtra(EXTRA_STATE, encoded);
            context.sendBroadcast(intent);
        } catch (Throwable t) {
            LSPLogger.e("OneStepStateBridge.publish: launcher broadcast failed", t);
        }
    }

    public static State read(Context context) {
        if (context == null) return disabledState();
        try {
            State state = decode(Settings.Global.getString(
                    context.getContentResolver(), SETTINGS_KEY));
            return state != null ? state : disabledState();
        } catch (Throwable t) {
            LSPLogger.e("OneStepStateBridge.read: Settings.Global failed", t);
            return disabledState();
        }
    }

    public static State read(Intent intent, Context context) {
        State persisted = read(context);
        if (intent == null) return persisted;
        State broadcast = decode(intent.getStringExtra(EXTRA_STATE));
        return broadcast != null ? broadcast : persisted;
    }

    public static synchronized void setTaskLandscape(Context context, int taskId,
            boolean landscape) {
        if (context == null || taskId <= 0) return;
        try {
            String current = Settings.Global.getString(
                    context.getContentResolver(), LANDSCAPE_TASKS_KEY);
            java.util.LinkedHashSet<String> ids = new java.util.LinkedHashSet<String>();
            if (current != null && !current.isEmpty()) {
                for (String value : current.split(",")) {
                    if (!value.isEmpty()) ids.add(value);
                }
            }
            String id = String.valueOf(taskId);
            boolean changed = landscape ? ids.add(id) : ids.remove(id);
            if (changed) {
                Settings.Global.putString(context.getContentResolver(),
                        LANDSCAPE_TASKS_KEY, android.text.TextUtils.join(",", ids));
            }
        } catch (Throwable t) {
            LSPLogger.d("OneStepStateBridge.setTaskLandscape: " + t);
        }
    }

    public static boolean isTaskLandscape(Context context, int taskId) {
        if (context == null || taskId <= 0) return false;
        try {
            String current = Settings.Global.getString(
                    context.getContentResolver(), LANDSCAPE_TASKS_KEY);
            if (current == null || current.isEmpty()) return false;
            String wanted = String.valueOf(taskId);
            for (String value : current.split(",")) {
                if (wanted.equals(value)) return true;
            }
        } catch (Throwable t) {
            LSPLogger.d("OneStepStateBridge.isTaskLandscape: " + t);
        }
        return false;
    }

    public static synchronized void setTaskRequestedOrientation(Context context, int taskId,
            int orientation) {
        if (context == null || taskId <= 0) return;
        try {
            String current = Settings.Global.getString(
                    context.getContentResolver(), TASK_ORIENTATIONS_KEY);
            java.util.LinkedHashMap<String, String> values = decodeMap(current);
            values.put(String.valueOf(taskId), String.valueOf(orientation));
            Settings.Global.putString(context.getContentResolver(), TASK_ORIENTATIONS_KEY,
                    encodeMap(values));
        } catch (Throwable t) {
            LSPLogger.d("OneStepStateBridge.setTaskRequestedOrientation: " + t);
        }
    }

    public static Integer getTaskRequestedOrientation(Context context, int taskId) {
        if (context == null || taskId <= 0) return null;
        try {
            String current = Settings.Global.getString(
                    context.getContentResolver(), TASK_ORIENTATIONS_KEY);
            String value = decodeMap(current).get(String.valueOf(taskId));
            return value == null ? null : Integer.valueOf(value);
        } catch (Throwable t) {
            LSPLogger.d("OneStepStateBridge.getTaskRequestedOrientation: " + t);
            return null;
        }
    }

    public static synchronized void setTaskFixedLetterboxBounds(Context context, int taskId,
            Rect bounds) {
        if (context == null || taskId <= 0) return;
        try {
            String current = Settings.Global.getString(
                    context.getContentResolver(), FIXED_LETTERBOX_BOUNDS_KEY);
            java.util.LinkedHashMap<String, String> values = decodeMap(current);
            String id = String.valueOf(taskId);
            if (bounds == null || bounds.isEmpty()) {
                values.remove(id);
            } else {
                values.put(id, bounds.left + ":" + bounds.top + ":"
                        + bounds.right + ":" + bounds.bottom);
            }
            Settings.Global.putString(context.getContentResolver(),
                    FIXED_LETTERBOX_BOUNDS_KEY, encodeMap(values));
        } catch (Throwable t) {
            LSPLogger.d("OneStepStateBridge.setTaskFixedLetterboxBounds: " + t);
        }
    }

    public static Rect getTaskFixedLetterboxBounds(Context context, int taskId) {
        if (context == null || taskId <= 0) return null;
        try {
            String current = Settings.Global.getString(
                    context.getContentResolver(), FIXED_LETTERBOX_BOUNDS_KEY);
            String value = decodeMap(current).get(String.valueOf(taskId));
            if (value == null) return null;
            String[] parts = value.split(":", -1);
            if (parts.length != 4) return null;
            Rect bounds = new Rect(Integer.parseInt(parts[0]), Integer.parseInt(parts[1]),
                    Integer.parseInt(parts[2]), Integer.parseInt(parts[3]));
            return bounds.isEmpty() ? null : bounds;
        } catch (Throwable t) {
            LSPLogger.d("OneStepStateBridge.getTaskFixedLetterboxBounds: " + t);
            return null;
        }
    }

    private static java.util.LinkedHashMap<String, String> decodeMap(String encoded) {
        java.util.LinkedHashMap<String, String> values =
                new java.util.LinkedHashMap<String, String>();
        if (encoded == null || encoded.isEmpty()) return values;
        for (String entry : encoded.split(";")) {
            int separator = entry.indexOf('=');
            if (separator <= 0 || separator >= entry.length() - 1) continue;
            values.put(entry.substring(0, separator), entry.substring(separator + 1));
        }
        return values;
    }

    private static String encodeMap(java.util.LinkedHashMap<String, String> values) {
        StringBuilder encoded = new StringBuilder();
        for (java.util.Map.Entry<String, String> entry : values.entrySet()) {
            if (encoded.length() > 0) encoded.append(';');
            encoded.append(entry.getKey()).append('=').append(entry.getValue());
        }
        return encoded.toString();
    }

    private static State decode(String encoded) {
        if (encoded == null || encoded.isEmpty()) return null;
        try {
            String[] values = encoded.split(",", -1);
            if (values.length != 6) return null;
            return new State("1".equals(values[0]), "1".equals(values[1]),
                    Integer.parseInt(values[2]), Integer.parseInt(values[3]),
                    Integer.parseInt(values[4]), Integer.parseInt(values[5]));
        } catch (Throwable t) {
            LSPLogger.w("OneStepStateBridge.decode: invalid state=" + encoded);
            return null;
        }
    }

    private static State disabledState() {
        return new State(false, false, 0, 0, 0, 0);
    }
}
