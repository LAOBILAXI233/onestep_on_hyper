package com.hyper.onestep.ui.window;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
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
import android.util.Log;
import android.view.Gravity;
import android.view.PixelCopy;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.LinearInterpolator;

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
    private static final String SHELF_TRACE = "[SHELFDBG] ";
    private static final long FALLBACK_ANIMATION_MS = 220L;
    public interface Callbacks {
        LauncherApp app(int slot);
        OneStepWindowView window(int slot);
        View surface(int slot);
        Rect iconBounds(LauncherApp app);
        Rect shelfBounds();
        void setHidden(int slot, boolean hidden);
        void shelve(int slot, LauncherApp app, Consumer<Boolean> completion);
        void restoreTask(int slot, LauncherApp app, Consumer<Boolean> completion);
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
        Session session = sessions.get(slot);
        return session != null;
    }

    public boolean isReturning(int slot) {
        Session session = sessions.get(slot);
        return session != null && session.returning;
    }

    public boolean resumeOrPrepare(int slot) {
        Session session = sessions.get(slot);
        if (session != null) {
            Log.i("VanStep", SHELF_TRACE + "resume slot=" + slot
                    + " committing=" + session.committing
                    + " taskShelved=" + session.taskShelved
                    + " settling=" + session.settling);
            session.beginTouch();
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
        if (capture == null) {
            capture = new Capture(app);
            capture.ready = true;
            captures.put(slot, capture);
        }
        if (capture == null || !ensureOverlay()) {
            return false;
        }
        Rect iconBounds = callbacks.iconBounds(app);
        boolean fadeToCenter = iconBounds == null || iconBounds.isEmpty();
        RectF target;
        if (fadeToCenter) {
            Rect shelfBounds = callbacks.shelfBounds();
            RectF shelf = shelfBounds == null || shelfBounds.isEmpty()
                    ? bounds(activity.getWindow().getDecorView()) : new RectF(shelfBounds);
            target = new RectF(shelf.centerX() - 0.5f, shelf.centerY() - 0.5f,
                    shelf.centerX() + 0.5f, shelf.centerY() + 0.5f);
        } else {
            target = new RectF(iconBounds);
        }
        Session session = new Session(slot, app, capture, bounds(window), target, fadeToCenter);
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
        if (session != null && !session.settling) {
            session.drag(dx, dy);
        }
    }

    public void finish(int slot, boolean commit, float velocityX, float velocityY) {
        Session session = sessions.get(slot);
        if (session == null) {
            return;
        }
        Log.i("VanStep", SHELF_TRACE + "finish slot=" + slot
                + " commit=" + commit + " committing=" + session.committing
                + " taskShelved=" + session.taskShelved);
        session.finish(commit, velocityX, velocityY);
    }

    public void discardIdleCapture(int slot) {
        if (!sessions.containsKey(slot)) {
            discardCapture(slot);
        }
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
        Log.i("VanStep", SHELF_TRACE + "remove slot=" + session.slot
                + " committing=" + session.committing
                + " taskShelved=" + session.taskShelved
                + " returning=" + session.returning);
        session.settling = false;
        session.stopAnimations();
        if (session.icon != null) {
            session.icon.setCallback(null);
        }
        sessions.remove(session.slot);
        callbacks.setHidden(session.slot, false);
        discardCapture(session.slot);
        removeOverlayIfIdle();
        if (overlay != null) {
            overlay.invalidateFrame();
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
        final boolean fadeToCenter;
        final Drawable icon;
        final Axis x;
        final Axis y;
        final Axis width;
        final Axis height;
        final Axis[] axes;
        ValueAnimator fallbackAnimator;
        boolean visible;
        boolean settling;
        boolean returning;
        boolean committing;
        boolean restoreRequested;
        boolean touchActive;
        boolean pendingCommit;
        boolean taskShelved;
        BackendAction backendAction = BackendAction.NONE;
        int backendGeneration;
        Runnable afterRestore;

        enum BackendAction { NONE, SHELVING, RESTORING }

        Session(int slot, LauncherApp app, Capture capture, RectF source, RectF target,
                boolean fadeToCenter) {
            this.slot = slot;
            this.app = app;
            this.capture = capture;
            this.source = source;
            this.target = target;
            this.fadeToCenter = fadeToCenter;
            Drawable.ConstantState iconState = app.icon == null
                    ? null : app.icon.getConstantState();
            icon = iconState == null ? app.icon
                    : iconState.newDrawable(activity.getResources()).mutate();
            if (icon != null && icon != app.icon) {
                icon.setCallback(new Drawable.Callback() {
                    @Override
                    public void invalidateDrawable(Drawable drawable) {
                        if (overlay != null) {
                            overlay.invalidateFrame();
                        }
                    }

                    @Override
                    public void scheduleDrawable(Drawable drawable, Runnable action, long when) {
                        handler.postAtTime(action, when);
                    }

                    @Override
                    public void unscheduleDrawable(Drawable drawable, Runnable action) {
                        handler.removeCallbacks(action);
                    }
                });
            }
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
                overlay.invalidateFrame();
            }
        }

        void frame(RectF output) {
            float w = Math.max(1f, width.value.getValue());
            float h = Math.max(1f, height.value.getValue());
            output.set(x.value.getValue() - w / 2f, y.value.getValue() - h / 2f,
                    x.value.getValue() + w / 2f, y.value.getValue() + h / 2f);
        }

        void beginTouch() {
            settling = false;
            touchActive = true;
            pendingCommit = false;
            afterRestore = null;
            stopAnimations();
            frame(grabbed);
            returning = false;
            restoreRequested = committing || taskShelved;
        }

        void finish(boolean commit, float velocityX, float velocityY) {
            touchActive = false;
            pendingCommit = commit;
            returning = !commit;
            restoreRequested = !commit;
            RectF destination = commit ? target : bounds(callbacks.window(slot));
            animate(destination, velocityX * 0.4f, velocityY * 0.82f, true);
        }

        void drag(float dx, float dy) {
            float scale = dy <= 0f ? SideSlotGesturePolicy.dragScale(-dy, source.height())
                    : Math.min(source.width() / grabbed.width(), 1f + dy / source.height());
            x.value.setValue(grabbed.centerX() + dx * 0.4f);
            y.value.setValue(grabbed.centerY() + dy * 0.82f);
            width.value.setValue(grabbed.width() * scale);
            height.value.setValue(grabbed.height() * scale);
            if (overlay != null) {
                overlay.invalidateFrame();
            }
        }

        void restore(Runnable completion) {
            touchActive = false;
            pendingCommit = false;
            returning = true;
            if (completion != null) {
                afterRestore = completion;
            }
            restoreRequested = true;
            animate(bounds(callbacks.window(slot)), 0f, 0f, false);
        }

        void animate(RectF destination, float vx, float vy, boolean releasedByFinger) {
            revealNow();
            settling = true;
            if (fadeToCenter) {
                stopAnimations();
                if (!returning) {
                    animateToCenter(destination);
                    return;
                }
            }
            x.animate(destination.centerX(), releasedByFinger ? vx : x.velocity);
            y.animate(destination.centerY(), releasedByFinger ? vy : y.velocity);
            float sizeVelocity = releasedByFinger ? vy * 0.6f : height.velocity;
            width.animate(destination.width(), releasedByFinger
                    ? sizeVelocity * source.width() / source.height() : width.velocity);
            height.animate(destination.height(), sizeVelocity);
        }

        void animateToCenter(RectF destination) {
            float[] start = {x.value.getValue(), y.value.getValue(),
                    width.value.getValue(), height.value.getValue()};
            float[] end = {destination.centerX(), destination.centerY(),
                    destination.width(), destination.height()};
            ValueAnimator animator = ValueAnimator.ofFloat(0f, 1f);
            fallbackAnimator = animator;
            animator.setDuration(FALLBACK_ANIMATION_MS);
            animator.setInterpolator(new LinearInterpolator());
            animator.addUpdateListener(animation -> {
                float progress = (float) animation.getAnimatedValue();
                for (int i = 0; i < axes.length; i++) {
                    axes[i].value.setValue(start[i] + (end[i] - start[i]) * progress);
                    axes[i].velocity = (end[i] - start[i]) * 1000f / FALLBACK_ANIMATION_MS;
                }
                if (overlay != null) {
                    overlay.invalidateFrame();
                }
            });
            animator.addListener(new AnimatorListenerAdapter() {
                @Override
                public void onAnimationEnd(Animator animation) {
                    if (fallbackAnimator == animation) {
                        fallbackAnimator = null;
                        for (Axis axis : axes) {
                            axis.velocity = 0f;
                        }
                        settled();
                    }
                }
            });
            animator.start();
        }

        void stopAnimations() {
            if (fallbackAnimator != null) {
                ValueAnimator animator = fallbackAnimator;
                fallbackAnimator = null;
                animator.removeAllListeners();
                animator.removeAllUpdateListeners();
                animator.cancel();
            }
            for (Axis axis : axes) {
                axis.spring.cancel();
            }
        }

        void settled() {
            if (!settling || fallbackAnimator != null || sessions.get(slot) != this) {
                return;
            }
            for (Axis axis : axes) {
                if (axis.spring.isRunning()) {
                    return;
                }
            }
            settling = false;
            Log.i("VanStep", SHELF_TRACE + "settled slot=" + slot
                    + " returning=" + returning + " committing=" + committing
                    + " taskShelved=" + taskShelved
                    + " restoreRequested=" + restoreRequested
                    + " touchActive=" + touchActive);
            if (committing) {
                return;
            }
            if (returning) {
                if (taskShelved) {
                    startRestoreTask();
                    return;
                }
                Runnable action = afterRestore;
                remove(this);
                if (action != null && !released) {
                    action.run();
                }
                return;
            }
            if (taskShelved) {
                remove(this);
                return;
            }
            startShelve();
        }

        void startShelve() {
            if (committing || taskShelved || sessions.get(slot) != this) {
                return;
            }
            committing = true;
            backendAction = BackendAction.SHELVING;
            int generation = ++backendGeneration;
            Log.i("VanStep", SHELF_TRACE + "shelve start slot=" + slot
                    + " generation=" + generation);
            callbacks.shelve(slot, app, success -> {
                if (sessions.get(slot) != this
                        || backendAction != BackendAction.SHELVING
                        || generation != backendGeneration) {
                    return;
                }
                committing = false;
                backendAction = BackendAction.NONE;
                Log.i("VanStep", SHELF_TRACE + "shelve done slot=" + slot
                        + " generation=" + generation + " success=" + success
                        + " touchActive=" + touchActive
                        + " restoreRequested=" + restoreRequested);
                if (!success) {
                    if (touchActive) {
                        restoreRequested = false;
                        return;
                    }
                    restore(afterRestore);
                    return;
                }
                taskShelved = true;
                if (touchActive) {
                    return;
                }
                if (restoreRequested) {
                    startRestoreTask();
                } else if (!settling) {
                    remove(this);
                }
            });
        }

        void startRestoreTask() {
            if (committing || !taskShelved || sessions.get(slot) != this) {
                return;
            }
            committing = true;
            backendAction = BackendAction.RESTORING;
            int generation = ++backendGeneration;
            Log.i("VanStep", SHELF_TRACE + "restore start slot=" + slot
                    + " generation=" + generation);
            callbacks.restoreTask(slot, app, restored -> {
                if (sessions.get(slot) != this
                        || backendAction != BackendAction.RESTORING
                        || generation != backendGeneration) {
                    return;
                }
                committing = false;
                backendAction = BackendAction.NONE;
                Log.i("VanStep", SHELF_TRACE + "restore done slot=" + slot
                        + " generation=" + generation + " restored=" + restored
                        + " touchActive=" + touchActive
                        + " pendingCommit=" + pendingCommit);
                if (!restored) {
                    if (touchActive) {
                        restoreRequested = true;
                        return;
                    }
                    Runnable action = afterRestore;
                    remove(this);
                    if (action != null && !released) {
                        action.run();
                    }
                    return;
                }
                taskShelved = false;
                if (touchActive) {
                    return;
                }
                if (pendingCommit) {
                    pendingCommit = false;
                    restoreRequested = false;
                    returning = false;
                    animate(target, 0f, 0f, false);
                } else {
                    restore(afterRestore);
                    settled();
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
                        overlay.invalidateFrame();
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
        private final RectF frame = new RectF();
        private final RectF imageBounds = new RectF();
        private final Rect iconBounds = new Rect();
        private final Rect previousIconBounds = new Rect();
        private final int[] origin = new int[2];
        private boolean frameInvalidated;

        Overlay() {
            super(activity);
            setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS);
        }

        void invalidateFrame() {
            if (!frameInvalidated) {
                frameInvalidated = true;
                invalidate();
            }
        }

        @Override
        protected void onDraw(Canvas canvas) {
            frameInvalidated = false;
            getLocationOnScreen(origin);
            canvas.translate(-origin[0], -origin[1]);
            for (Session session : sessions.values()) {
                if (!session.visible) {
                    continue;
                }
                session.frame(frame);
                float progress = Math.max(0f, Math.min(1f,
                        (session.source.height() - frame.height())
                                / Math.max(1f, session.source.height() - session.target.height())));
                float alpha = session.fadeToCenter ? 1f - progress : 1f;
                if (alpha <= 0f) {
                    continue;
                }
                float radius = Math.min(frame.width(), frame.height()) * (0.02f + progress * 0.22f);
                clip.rewind();
                clip.addRoundRect(frame, radius, radius, Path.Direction.CW);
                int checkpoint = canvas.save();
                canvas.clipPath(clip);
                Bitmap bitmap = session.capture.image;
                float iconAlpha = bitmap == null ? 1f : session.fadeToCenter ? 0f
                        : Math.max(0f, Math.min(1f, (progress - 0.76f) / 0.24f));
                if (!session.fadeToCenter) {
                    paint.setColor(Color.BLACK);
                    paint.setAlpha(Math.round(255f * (1f - iconAlpha)));
                    canvas.drawRect(frame, paint);
                }
                if (bitmap != null && !bitmap.isRecycled() && iconAlpha < 1f) {
                    float scale = Math.max(frame.width() / bitmap.getWidth(),
                            frame.height() / bitmap.getHeight());
                    float w = bitmap.getWidth() * scale;
                    float h = bitmap.getHeight() * scale;
                    imageBounds.set(frame.centerX() - w / 2f, frame.centerY() - h / 2f,
                            frame.centerX() + w / 2f, frame.centerY() + h / 2f);
                    paint.setAlpha(Math.round(255f * (1f - iconAlpha) * alpha));
                    canvas.drawBitmap(bitmap, null, imageBounds, paint);
                }
                Drawable icon = session.icon;
                if (icon != null && iconAlpha > 0f) {
                    float size = Math.min(frame.width(), frame.height());
                    iconBounds.set(Math.round(frame.centerX() - size / 2f),
                            Math.round(frame.centerY() - size / 2f),
                            Math.round(frame.centerX() + size / 2f),
                            Math.round(frame.centerY() + size / 2f));
                    boolean sharedIcon = icon == session.app.icon;
                    int previousAlpha = 255;
                    if (sharedIcon) {
                        icon.copyBounds(previousIconBounds);
                        previousAlpha = icon.getAlpha();
                    }
                    icon.setBounds(iconBounds);
                    icon.setAlpha(Math.round(iconAlpha * 255f * alpha));
                    icon.draw(canvas);
                    if (sharedIcon) {
                        icon.setBounds(previousIconBounds);
                        icon.setAlpha(previousAlpha);
                    }
                }
                canvas.restoreToCount(checkpoint);
            }
        }
    }
}
