package com.hyper.onestep.ui.window;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.PixelCopy;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;

import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;

import com.hyper.onestep.model.LauncherApp;
import com.hyper.onestep.ui.gesture.SideSlotGesturePolicy;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Consumer;

public final class SlotShelfAnimationController {
    public interface Callbacks {
        LauncherApp app(int slot);
        OneStepWindowView window(int slot);
        View surface(int slot);
        Rect iconBounds(LauncherApp app);
        void setHidden(int slot, boolean hidden);
        void shelve(int slot, LauncherApp app, Consumer<Boolean> completion);
        void onIdle();
    }

    private final Activity activity;
    private final Callbacks callbacks;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final Map<Integer, Capture> captures = new LinkedHashMap<>();
    private final Map<Integer, Session> sessions = new LinkedHashMap<>();
    private final int[] location = new int[2];
    private Overlay overlay;
    private boolean released;

    public SlotShelfAnimationController(Activity activity, Callbacks callbacks) {
        this.activity = activity;
        this.callbacks = callbacks;
    }

    public boolean isActive() {
        return !sessions.isEmpty();
    }

    public boolean isActive(int slot) {
        return sessions.containsKey(slot);
    }

    public boolean isReturning(int slot) {
        Session session = sessions.get(slot);
        return session != null && session.returning;
    }

    public boolean resumeOrPrepare(int slot) {
        Session session = sessions.get(slot);
        if (session != null) {
            if (session.committing) {
                session.restore(null);
            } else {
                session.grab();
            }
            return true;
        }
        prepare(slot);
        return false;
    }

    public void prepare(int slot) {
        LauncherApp app = callbacks.app(slot);
        View source = callbacks.surface(slot);
        if (released || app == null || !(source instanceof SurfaceView)
                || source.getWidth() <= 0 || source.getHeight() <= 0) {
            return;
        }
        discardCapture(slot);
        Capture capture = new Capture(app);
        captures.put(slot, capture);
        float scale = Math.min(1f, 1024f / Math.max(source.getWidth(), source.getHeight()));
        Bitmap image = Bitmap.createBitmap(Math.max(1, Math.round(source.getWidth() * scale)),
                Math.max(1, Math.round(source.getHeight() * scale)), Bitmap.Config.ARGB_8888);
        try {
            PixelCopy.request((SurfaceView) source, image, result -> {
                capture.ready = true;
                if (capture.discarded || result != PixelCopy.SUCCESS) {
                    image.recycle();
                } else {
                    capture.image = image;
                }
                Session session = sessions.get(slot);
                if (session != null && session.capture == capture) {
                    session.reveal();
                }
            }, handler);
        } catch (RuntimeException e) {
            image.recycle();
            capture.ready = true;
        }
    }

    public boolean begin(int slot) {
        LauncherApp app = callbacks.app(slot);
        OneStepWindowView window = callbacks.window(slot);
        if (released || app == null || window == null || sessions.containsKey(slot)
                || window.getWidth() <= 0 || window.getHeight() <= 0) {
            return false;
        }
        Capture capture = captures.get(slot);
        if (capture == null || !capture.app.isSameInstance(app)) {
            prepare(slot);
            capture = captures.get(slot);
        }
        if (capture == null || !ensureOverlay()) {
            return false;
        }
        Rect target = callbacks.iconBounds(app);
        if (target == null || target.isEmpty()) {
            discardCapture(slot);
            removeOverlayIfIdle();
            return false;
        }
        Session session = new Session(slot, app, capture, bounds(window), new RectF(target));
        sessions.put(slot, session);
        session.reveal();
        handler.postDelayed(() -> {
            if (sessions.get(slot) == session) {
                session.revealNow();
            }
        }, 80L);
        return true;
    }

    public void drag(int slot, float dx, float dy) {
        Session session = sessions.get(slot);
        if (session != null && !session.committing && !session.settling) {
            session.drag(dx, dy);
        }
    }

    public void finish(int slot, boolean commit, float velocityX, float velocityY) {
        Session session = sessions.get(slot);
        if (session == null || session.committing) {
            return;
        }
        session.returning = !commit;
        RectF destination = commit ? session.target : bounds(callbacks.window(slot));
        session.animate(destination, velocityX * 0.4f, velocityY * 0.82f, true);
    }

    public boolean restore(LauncherApp app, Runnable afterRestore) {
        for (Session session : new ArrayList<>(sessions.values())) {
            if (session.app.isSameInstance(app)) {
                session.restore(afterRestore);
                return true;
            }
        }
        return false;
    }

    public void cancelAll() {
        for (Session session : new ArrayList<>(sessions.values())) {
            session.afterRestore = null;
            remove(session);
        }
        for (Integer slot : new ArrayList<>(captures.keySet())) {
            discardCapture(slot);
        }
        removeOverlayIfIdle();
    }

    public void release() {
        released = true;
        cancelAll();
    }

    private RectF bounds(View view) {
        view.getLocationOnScreen(location);
        return new RectF(location[0], location[1],
                location[0] + view.getWidth(), location[1] + view.getHeight());
    }

    private boolean ensureOverlay() {
        if (overlay != null) {
            return true;
        }
        WindowManager.LayoutParams params = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.MATCH_PARENT, WindowManager.LayoutParams.MATCH_PARENT,
                WindowManager.LayoutParams.TYPE_APPLICATION_SUB_PANEL,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                        | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE
                        | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
                        | WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS,
                PixelFormat.TRANSLUCENT);
        params.token = activity.getWindow().getDecorView().getWindowToken();
        params.gravity = Gravity.TOP | Gravity.LEFT;
        params.setTitle("OneStepSlotShelfAnimation");
        params.layoutInDisplayCutoutMode =
                WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) {
            params.setFitInsetsTypes(0);
        }
        Overlay view = new Overlay();
        try {
            activity.getWindowManager().addView(view, params);
            overlay = view;
            return true;
        } catch (RuntimeException e) {
            return false;
        }
    }

    private void remove(Session session) {
        if (sessions.get(session.slot) != session) {
            return;
        }
        session.settling = false;
        session.stopSprings();
        sessions.remove(session.slot);
        callbacks.setHidden(session.slot, false);
        discardCapture(session.slot);
        removeOverlayIfIdle();
        if (overlay != null) {
            overlay.invalidate();
        }
        if (sessions.isEmpty()) {
            callbacks.onIdle();
        }
    }

    private void discardCapture(int slot) {
        Capture capture = captures.remove(slot);
        if (capture != null) {
            capture.discarded = true;
            if (capture.image != null) {
                capture.image.recycle();
                capture.image = null;
            }
        }
    }

    private void removeOverlayIfIdle() {
        if (overlay != null && sessions.isEmpty()) {
            try {
                activity.getWindowManager().removeViewImmediate(overlay);
            } catch (IllegalArgumentException ignored) {
            }
            overlay = null;
        }
    }

    private static final class Capture {
        final LauncherApp app;
        Bitmap image;
        boolean ready;
        boolean discarded;

        Capture(LauncherApp app) {
            this.app = app;
        }
    }

    private final class Session {
        final int slot;
        final LauncherApp app;
        final Capture capture;
        final RectF source;
        final RectF target;
        final RectF grabbed;
        final Axis x;
        final Axis y;
        final Axis width;
        final Axis height;
        final Axis[] axes;
        boolean visible;
        boolean settling;
        boolean returning;
        boolean committing;
        Runnable afterRestore;

        Session(int slot, LauncherApp app, Capture capture, RectF source, RectF target) {
            this.slot = slot;
            this.app = app;
            this.capture = capture;
            this.source = source;
            this.target = target;
            grabbed = new RectF(source);
            x = new Axis(source.centerX(), 280f);
            y = new Axis(source.centerY(), 360f);
            width = new Axis(source.width(), 380f);
            height = new Axis(source.height(), 380f);
            axes = new Axis[]{x, y, width, height};
        }

        void reveal() {
            if (capture.ready) {
                revealNow();
            }
        }

        void revealNow() {
            if (!visible) {
                visible = true;
                callbacks.setHidden(slot, true);
            }
            if (overlay != null) {
                overlay.invalidate();
            }
        }

        RectF frame() {
            float w = Math.max(1f, width.value.getValue());
            float h = Math.max(1f, height.value.getValue());
            return new RectF(x.value.getValue() - w / 2f, y.value.getValue() - h / 2f,
                    x.value.getValue() + w / 2f, y.value.getValue() + h / 2f);
        }

        void grab() {
            settling = false;
            returning = false;
            afterRestore = null;
            stopSprings();
            grabbed.set(frame());
        }

        void drag(float dx, float dy) {
            float scale = dy <= 0f ? SideSlotGesturePolicy.dragScale(-dy, source.height())
                    : Math.min(source.width() / grabbed.width(), 1f + dy / source.height());
            x.value.setValue(grabbed.centerX() + dx * 0.4f);
            y.value.setValue(grabbed.centerY() + dy * 0.82f);
            width.value.setValue(grabbed.width() * scale);
            height.value.setValue(grabbed.height() * scale);
            if (overlay != null) {
                overlay.invalidate();
            }
        }

        void restore(Runnable completion) {
            returning = true;
            afterRestore = completion;
            animate(bounds(callbacks.window(slot)), 0f, 0f, false);
        }

        void animate(RectF destination, float vx, float vy, boolean releasedByFinger) {
            revealNow();
            settling = true;
            x.animate(destination.centerX(), releasedByFinger ? vx : x.velocity);
            y.animate(destination.centerY(), releasedByFinger ? vy : y.velocity);
            float sizeVelocity = releasedByFinger ? vy * 0.6f : height.velocity;
            width.animate(destination.width(), releasedByFinger
                    ? sizeVelocity * source.width() / source.height() : width.velocity);
            height.animate(destination.height(), sizeVelocity);
        }

        void stopSprings() {
            for (Axis axis : axes) {
                axis.spring.cancel();
            }
        }

        void settled() {
            if (!settling || sessions.get(slot) != this) {
                return;
            }
            for (Axis axis : axes) {
                if (axis.spring.isRunning()) {
                    return;
                }
            }
            if (committing) {
                return;
            }
            if (returning) {
                Runnable action = afterRestore;
                remove(this);
                if (action != null && !released) {
                    action.run();
                }
                return;
            }
            committing = true;
            callbacks.shelve(slot, app, success -> {
                committing = false;
                if (sessions.get(slot) != this) {
                    return;
                }
                if (success) {
                    remove(this);
                } else {
                    restore(afterRestore);
                }
            });
        }

        final class Axis {
            final FloatValueHolder value;
            final SpringAnimation spring;
            float velocity;

            Axis(float initialValue, float stiffness) {
                value = new FloatValueHolder(initialValue);
                spring = new SpringAnimation(value);
                spring.setMinimumVisibleChange(0.5f);
                spring.setSpring(new SpringForce(initialValue).setStiffness(stiffness)
                        .setDampingRatio(0.92f));
                spring.addUpdateListener((animation, position, currentVelocity) -> {
                    velocity = currentVelocity;
                    if (overlay != null) {
                        overlay.invalidate();
                    }
                });
                spring.addEndListener((animation, cancelled, position, finalVelocity) -> {
                    if (!cancelled) {
                        handler.post(Session.this::settled);
                    }
                });
            }

            void animate(float targetValue, float startVelocity) {
                if (!spring.isRunning()) {
                    spring.setStartValue(value.getValue());
                    spring.setStartVelocity(startVelocity);
                }
                spring.animateToFinalPosition(targetValue);
            }
        }
    }

    private final class Overlay extends View {
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        private final Path clip = new Path();
        private final RectF imageBounds = new RectF();
        private final Rect iconBounds = new Rect();
        private final int[] origin = new int[2];

        Overlay() {
            super(activity);
            setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS);
        }

        @Override
        protected void onDraw(Canvas canvas) {
            getLocationOnScreen(origin);
            canvas.translate(-origin[0], -origin[1]);
            for (Session session : sessions.values()) {
                if (!session.visible) {
                    continue;
                }
                RectF frame = session.frame();
                float progress = Math.max(0f, Math.min(1f,
                        (session.source.height() - frame.height())
                                / Math.max(1f, session.source.height() - session.target.height())));
                float radius = Math.min(frame.width(), frame.height()) * (0.02f + progress * 0.22f);
                clip.reset();
                clip.addRoundRect(frame, radius, radius, Path.Direction.CW);
                int checkpoint = canvas.save();
                canvas.clipPath(clip);
                Bitmap bitmap = session.capture.image;
                float iconAlpha = bitmap == null ? 1f
                        : Math.max(0f, Math.min(1f, (progress - 0.76f) / 0.24f));
                paint.setColor(Color.BLACK);
                paint.setAlpha(Math.round(255f * (1f - iconAlpha)));
                canvas.drawRect(frame, paint);
                if (bitmap != null && !bitmap.isRecycled()) {
                    float scale = Math.max(frame.width() / bitmap.getWidth(),
                            frame.height() / bitmap.getHeight());
                    float w = bitmap.getWidth() * scale;
                    float h = bitmap.getHeight() * scale;
                    imageBounds.set(frame.centerX() - w / 2f, frame.centerY() - h / 2f,
                            frame.centerX() + w / 2f, frame.centerY() + h / 2f);
                    paint.setAlpha(Math.round(255f * (1f - iconAlpha)));
                    canvas.drawBitmap(bitmap, null, imageBounds, paint);
                }
                Drawable icon = session.app.icon;
                if (icon != null && iconAlpha > 0f) {
                    float size = Math.min(frame.width(), frame.height());
                    iconBounds.set(Math.round(frame.centerX() - size / 2f),
                            Math.round(frame.centerY() - size / 2f),
                            Math.round(frame.centerX() + size / 2f),
                            Math.round(frame.centerY() + size / 2f));
                    Rect previous = new Rect(icon.getBounds());
                    int previousAlpha = icon.getAlpha();
                    icon.setBounds(iconBounds);
                    icon.setAlpha(Math.round(iconAlpha * 255f));
                    icon.draw(canvas);
                    icon.setBounds(previous);
                    icon.setAlpha(previousAlpha);
                }
                canvas.restoreToCount(checkpoint);
            }
        }
    }
}
