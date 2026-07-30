package com.hyper.onestep.util;

import android.content.Context;
import android.os.SystemClock;
import android.view.View;

import com.hyper.onestep.SidebarController;
import com.hyper.onestep.lsp.GestureSettings;

/** Centralized, cross-process-aware haptic gate for OneStep drag interactions. */
public final class DragHapticFeedback {
    private static final long SETTINGS_CACHE_MS = 750L;

    private static volatile boolean sEnabled = true;
    private static volatile long sValidUntilUptime;

    private DragHapticFeedback() {
    }

    public static boolean perform(View target, int feedbackConstant) {
        if (target == null || !isEnabled(target.getContext())) return false;
        return target.performHapticFeedback(feedbackConstant);
    }

    private static boolean isEnabled(Context context) {
        long now = SystemClock.uptimeMillis();
        if (now < sValidUntilUptime) return sEnabled;
        synchronized (DragHapticFeedback.class) {
            now = SystemClock.uptimeMillis();
            if (now < sValidUntilUptime) return sEnabled;
            Context settingsContext = resolveHostContext(context);
            sEnabled = GestureSettings.isDragHapticsEnabled(settingsContext);
            sValidUntilUptime = now + SETTINGS_CACHE_MS;
            return sEnabled;
        }
    }

    /** The wrapped module Context has the wrong attribution inside SystemUI; use its host. */
    private static Context resolveHostContext(Context fallback) {
        try {
            SidebarController controller = SidebarController.getInstance(fallback);
            Context host = controller == null ? null : controller.getHostContext();
            if (host != null) return host;
        } catch (Throwable ignored) {
        }
        return fallback;
    }
}
