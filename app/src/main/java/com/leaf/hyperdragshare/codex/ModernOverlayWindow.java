package com.leaf.hyperdragshare.codex;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.PathInterpolator;

import java.util.function.Consumer;

final class ModernOverlayWindow {
    private static final float CARD_CORNER_RADIUS_DP = 16f;
    private static final long ENTER_DURATION_MS = 220L;
    private static final float ENTER_INITIAL_SCALE = 0.9f;
    private static final float EXIT_TARGET_SCALE = 0.96f;
    private static final PathInterpolator ENTER_INTERPOLATOR =
            new PathInterpolator(0.2f, 0f, 0f, 1f);
    private static final PathInterpolator EXIT_INTERPOLATOR =
            new PathInterpolator(0.4f, 0f, 1f, 1f);

    private final Dialog dialog;
    private final WindowManager windowManager;
    private final ModernOverlayComposeView overlayView;
    private final WindowManager.LayoutParams layoutParams;
    private final int blurRadiusPx;
    private final Consumer<Boolean> blurEnabledListener;
    private boolean blurListenerRegistered;
    private boolean crossWindowBlurEnabled;
    private boolean nativeBackdropBlurEnabled;
    private boolean disposed;
    private int animationGeneration;

    ModernOverlayWindow(
            Context context,
            WindowManager windowManager,
            ModernOverlayComposeView overlayView,
            WindowManager.LayoutParams layoutParams,
            int blurRadiusPx) {
        if (context == null || windowManager == null || overlayView == null
                || layoutParams == null) {
            throw new IllegalArgumentException("Modern overlay window requires its view and layout");
        }
        this.windowManager = windowManager;
        this.overlayView = overlayView;
        this.layoutParams = layoutParams;
        this.blurRadiusPx = Math.max(0, blurRadiusPx);

        ContextThemeWrapper themedContext = new ContextThemeWrapper(
                context,
                android.R.style.Theme_Translucent_NoTitleBar);
        dialog = new Dialog(themedContext);
        dialog.requestWindowFeature(Window.FEATURE_NO_TITLE);
        dialog.setContentView(overlayView);

        Window window = dialog.getWindow();
        if (window == null) {
            throw new IllegalStateException("Modern overlay dialog has no Window");
        }
        window.setBackgroundDrawable(transparentRoundedBackground(context));
        window.setDimAmount(0f);
        window.setWindowAnimations(0);
        window.setAttributes(layoutParams);
        window.setBackgroundBlurRadius(this.blurRadiusPx);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            window.getDecorView().setForceDarkAllowed(false);
        }

        blurEnabledListener = enabled -> overlayView.post(() -> {
            if (!disposed) {
                updateCrossWindowBlurEnabled(Boolean.TRUE.equals(enabled));
            }
        });
        refreshNativeBackdropBlurEnabled();
        registerBlurEnabledListener();
    }

    void show() {
        if (!disposed && !dialog.isShowing()) {
            prepareDecorForEnter();
            dialog.show();
        }
    }

    void showAnimated() {
        if (disposed) {
            return;
        }
        animationGeneration++;
        show();
        overlayView.setContentVisibleForWindowAnimation(true);
        View decorView = decorView();
        if (decorView == null) {
            return;
        }
        decorView.animate().cancel();
        decorView.animate()
                .alpha(1f)
                .scaleX(1f)
                .scaleY(1f)
                .setDuration(ENTER_DURATION_MS)
                .setInterpolator(ENTER_INTERPOLATOR)
                .start();
    }

    void hideAnimated(long durationMillis, Runnable afterAnimation) {
        if (disposed) {
            return;
        }
        final int generation = ++animationGeneration;
        View decorView = decorView();
        if (!dialog.isShowing() || decorView == null) {
            finishHideAnimation(generation, afterAnimation);
            return;
        }
        decorView.animate().cancel();
        decorView.animate()
                .alpha(0f)
                .scaleX(EXIT_TARGET_SCALE)
                .scaleY(EXIT_TARGET_SCALE)
                .setDuration(Math.max(0L, durationMillis))
                .setInterpolator(EXIT_INTERPOLATOR)
                .withEndAction(() -> finishHideAnimation(generation, afterAnimation))
                .start();
    }

    boolean isShowing() {
        return !disposed && dialog.isShowing();
    }

    boolean isNativeBackdropBlurEnabled() {
        return nativeBackdropBlurEnabled;
    }

    void updateLayout() {
        if (disposed || !dialog.isShowing()) {
            return;
        }
        Window window = dialog.getWindow();
        View decorView = window == null ? null : window.getDecorView();
        if (decorView != null) {
            windowManager.updateViewLayout(decorView, layoutParams);
        }
    }

    void dispose() {
        if (disposed) {
            return;
        }
        animationGeneration++;
        disposed = true;
        View decorView = decorView();
        if (decorView != null) {
            decorView.animate().cancel();
        }
        if (blurListenerRegistered) {
            try {
                windowManager.removeCrossWindowBlurEnabledListener(blurEnabledListener);
            } catch (Throwable ignored) {
                
            }
            blurListenerRegistered = false;
        }
        try {
            dialog.dismiss();
        } catch (Throwable ignored) {
            
        }
        overlayView.disposeOverlay();
    }

    static GradientDrawable transparentRoundedBackground(Context context) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(Color.TRANSPARENT);
        drawable.setCornerRadius(localBackgroundCornerRadiusPx(context));
        return drawable;
    }

    static float localBackgroundCornerRadiusPx(Context context) {
        return CARD_CORNER_RADIUS_DP * context.getResources().getDisplayMetrics().density;
    }

    static boolean shouldUseNativeBackdropBlur(int radiusPx, boolean crossWindowBlurEnabled) {
        return radiusPx > 0 && crossWindowBlurEnabled;
    }

    private void registerBlurEnabledListener() {
        if (blurRadiusPx <= 0) {
            return;
        }
        try {
            windowManager.addCrossWindowBlurEnabledListener(blurEnabledListener);
            blurListenerRegistered = true;
        } catch (Throwable ignored) {
            updateCrossWindowBlurEnabled(false);
        }
    }

    private void refreshNativeBackdropBlurEnabled() {
        boolean enabled = false;
        if (blurRadiusPx > 0) {
            try {
                enabled = windowManager.isCrossWindowBlurEnabled();
            } catch (Throwable ignored) {
                
            }
        }
        updateCrossWindowBlurEnabled(enabled);
    }

    private void updateCrossWindowBlurEnabled(boolean enabled) {
        crossWindowBlurEnabled = enabled;
        updateOverlayBlurAvailability();
    }

    private void updateOverlayBlurAvailability() {
        nativeBackdropBlurEnabled = shouldUseNativeBackdropBlur(
                blurRadiusPx,
                crossWindowBlurEnabled);
        overlayView.updateNativeBackdropBlurAvailability(nativeBackdropBlurEnabled);
    }

    private void prepareDecorForEnter() {
        View decorView = decorView();
        if (decorView == null) {
            return;
        }
        decorView.animate().cancel();
        decorView.setAlpha(0f);
        decorView.setScaleX(ENTER_INITIAL_SCALE);
        decorView.setScaleY(ENTER_INITIAL_SCALE);
    }

    private View decorView() {
        Window window = dialog.getWindow();
        return window == null ? null : window.getDecorView();
    }

    private void finishHideAnimation(int generation, Runnable afterAnimation) {
        if (disposed || animationGeneration != generation) {
            return;
        }
        overlayView.setContentVisibleForWindowAnimation(false);
        if (afterAnimation != null) {
            afterAnimation.run();
        }
    }
}
