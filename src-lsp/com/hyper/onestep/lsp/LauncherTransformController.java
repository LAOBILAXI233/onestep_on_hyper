package com.hyper.onestep.lsp;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;

import java.lang.ref.WeakReference;

/** Applies OneStep geometry inside com.miui.home, whose task leash is not owned by SystemUI. */
public final class LauncherTransformController {
    private static final long[] REAPPLY_DELAYS_MS = { 0L, 120L, 300L, 600L, 1200L, 2000L };

    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static WeakReference<Activity> sActivity = new WeakReference<>(null);
    private static WeakReference<View> sDecor = new WeakReference<>(null);
    private static Context sAppContext;
    private static BroadcastReceiver sReceiver;
    private static OneStepStateBridge.State sState = OneStepStateBridge.read(null);
    private static int sGeneration;

    private static float sOriginalPivotX;
    private static float sOriginalPivotY;
    private static float sOriginalScaleX;
    private static float sOriginalScaleY;
    private static float sOriginalTranslationX;
    private static float sOriginalTranslationY;

    private LauncherTransformController() {}

    public static void attach(Activity activity) {
        if (activity == null || !OneStepStateBridge.LAUNCHER_PACKAGE.equals(
                activity.getPackageName())) return;
        sActivity = new WeakReference<>(activity);
        ensureReceiver(activity.getApplicationContext());
        setState(OneStepStateBridge.read(activity));
    }

    public static boolean toContent(MotionEvent event) {
        OneStepStateBridge.State state = sState;
        return state != null && state.canTransform()
                && OneStepTouchMapper.toContent(event, state.screenWidth,
                        state.sidebarWidth, state.topHeight, state.screenHeight,
                        state.sidebarOnLeft);
    }

    public static void toScreen(MotionEvent event) {
        OneStepStateBridge.State state = sState;
        if (state == null) return;
        OneStepTouchMapper.toScreen(event, state.screenWidth, state.sidebarWidth,
                state.topHeight, state.screenHeight, state.sidebarOnLeft);
    }

    private static void ensureReceiver(Context context) {
        if (sReceiver != null || context == null) return;
        sAppContext = context;
        sReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(Context receiverContext, Intent intent) {
                setState(OneStepStateBridge.read(intent, receiverContext));
            }
        };
        IntentFilter filter = new IntentFilter(OneStepStateBridge.ACTION_LAYOUT_CHANGED);
        try {
            context.registerReceiver(sReceiver, filter, Context.RECEIVER_EXPORTED);
            LSPLogger.i("LauncherTransformController: state receiver registered");
        } catch (Throwable t) {
            LSPLogger.e("LauncherTransformController: receiver registration failed", t);
        }
    }

    private static void setState(OneStepStateBridge.State state) {
        sState = state != null ? state : OneStepStateBridge.read(sAppContext);
        int generation = ++sGeneration;
        for (long delay : REAPPLY_DELAYS_MS) {
            MAIN.postDelayed(() -> {
                if (generation == sGeneration) applyCurrentState();
            }, delay);
        }
    }

    private static void applyCurrentState() {
        Activity activity = sActivity.get();
        if (activity == null || activity.isDestroyed()) return;
        View decor = activity.getWindow().getDecorView();
        View previous = sDecor.get();
        if (previous != decor) {
            if (previous != null) restore(previous);
            sDecor = new WeakReference<>(decor);
            sOriginalPivotX = decor.getPivotX();
            sOriginalPivotY = decor.getPivotY();
            sOriginalScaleX = decor.getScaleX();
            sOriginalScaleY = decor.getScaleY();
            sOriginalTranslationX = decor.getTranslationX();
            sOriginalTranslationY = decor.getTranslationY();
        }

        OneStepStateBridge.State state = sState;
        if (state == null || !state.canTransform()) {
            restore(decor);
            return;
        }
        float targetScaleX = (state.screenWidth - state.sidebarWidth)
                / (float) state.screenWidth;
        float targetScaleY = (state.screenHeight - state.topHeight)
                / (float) state.screenHeight;
        float targetTranslationX = state.sidebarOnLeft ? state.sidebarWidth : 0f;
        float targetTranslationY = state.topHeight;
        // The layout broadcast storm re-triggers this several times a second. Skip the
        // property writes when the decor already carries this exact transform — every
        // setScaleX/TranslationX invalidates the launcher view hierarchy.
        if (decor.getPivotX() == 0f && decor.getPivotY() == 0f
                && Math.abs(decor.getScaleX() - targetScaleX) < 0.0001f
                && Math.abs(decor.getScaleY() - targetScaleY) < 0.0001f
                && Math.abs(decor.getTranslationX() - targetTranslationX) < 0.5f
                && Math.abs(decor.getTranslationY() - targetTranslationY) < 0.5f) {
            return;
        }
        decor.setPivotX(0f);
        decor.setPivotY(0f);
        decor.setScaleX(targetScaleX);
        decor.setScaleY(targetScaleY);
        decor.setTranslationX(targetTranslationX);
        decor.setTranslationY(targetTranslationY);
        LSPLogger.d("LauncherTransformController.apply: sideLeft="
                + state.sidebarOnLeft + " screen=" + state.screenWidth + "x"
                + state.screenHeight);
    }

    private static void restore(View decor) {
        decor.setPivotX(sOriginalPivotX);
        decor.setPivotY(sOriginalPivotY);
        decor.setScaleX(sOriginalScaleX);
        decor.setScaleY(sOriginalScaleY);
        decor.setTranslationX(sOriginalTranslationX);
        decor.setTranslationY(sOriginalTranslationY);
    }
}
