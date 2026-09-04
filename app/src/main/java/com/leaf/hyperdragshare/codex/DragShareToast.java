package com.leaf.hyperdragshare.codex;

import android.content.Context;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;

final class DragShareToast {
    private static final long DEFAULT_DURATION_MILLIS = 2_000L;
    private static final long LONG_DURATION_MILLIS = 3_500L;

    private final Context context;
    private final WindowManager windowManager;
    private final OverlayWindowPolicy windowPolicy;
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private TextView view;
    private Runnable removeRunnable;
    private boolean closed;

    DragShareToast(Context context, OverlayWindowPolicy windowPolicy) {
        this.context = context;
        this.windowManager = context == null
                ? null
                : (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        this.windowPolicy = windowPolicy == null ? OverlayWindowPolicy.portal() : windowPolicy;
    }

    void show(String message) {
        show(message, android.widget.Toast.LENGTH_SHORT);
    }

    void show(String message, int duration) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            showOnMain(message, duration);
        } else {
            mainHandler.post(() -> showOnMain(message, duration));
        }
    }

    void close() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            closeOnMain();
        } else {
            mainHandler.post(this::closeOnMain);
        }
    }

    private void showOnMain(String message, int duration) {
        if (closed || message == null || message.trim().isEmpty()) {
            return;
        }
        removeOnMain();
        if (windowManager == null || context == null) {
            fallbackToast(message, duration);
            return;
        }

        TextView next = new TextView(context);
        next.setText(message);
        next.setTextColor(Color.WHITE);
        next.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14f);
        next.setGravity(Gravity.CENTER);
        next.setMaxLines(2);
        next.setEllipsize(android.text.TextUtils.TruncateAt.END);
        next.setPadding(dp(18), dp(10), dp(18), dp(10));
        next.setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
        GradientDrawable background = new GradientDrawable();
        background.setColor(0xE52A2D32);
        background.setCornerRadius(dp(22));
        next.setBackground(background);

        WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                windowPolicy.windowType,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                        | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE
                        | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN,
                PixelFormat.TRANSLUCENT);
        params.gravity = Gravity.BOTTOM | Gravity.CENTER_HORIZONTAL;
        params.y = dp(112);
        params.setTitle("DragShare message");
        try {
            windowManager.addView(next, params);
            view = next;
            long timeout = duration == android.widget.Toast.LENGTH_LONG
                    ? LONG_DURATION_MILLIS
                    : DEFAULT_DURATION_MILLIS;
            removeRunnable = this::removeOnMain;
            mainHandler.postDelayed(removeRunnable, timeout);
        } catch (Throwable error) {
            DragShareLog.w("DragShare/Toast", "overlay message failed", error);
            fallbackToast(message, duration);
        }
    }

    private void fallbackToast(String message, int duration) {
        try {
            android.widget.Toast.makeText(
                    context == null ? null : context.getApplicationContext(),
                    message,
                    duration).show();
        } catch (Throwable error) {
            DragShareLog.w("DragShare/Toast", "system Toast fallback failed", error);
        }
    }

    private void removeOnMain() {
        if (removeRunnable != null) {
            mainHandler.removeCallbacks(removeRunnable);
            removeRunnable = null;
        }
        if (view != null && windowManager != null) {
            try {
                windowManager.removeViewImmediate(view);
            } catch (Throwable ignored) {
                
            }
        }
        view = null;
    }

    private void closeOnMain() {
        closed = true;
        removeOnMain();
    }

    private int dp(int value) {
        if (context == null) {
            return value;
        }
        return Math.max(1, Math.round(TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP,
                value,
                context.getResources().getDisplayMetrics())));
    }
}
