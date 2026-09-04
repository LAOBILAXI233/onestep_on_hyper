package com.leaf.hyperdragshare.codex;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.view.animation.DecelerateInterpolator;

final class PortalGlowView extends View {
    private static final int PARTICLE_COUNT = 18;

    private final float density;
    private final boolean dark;
    private final Paint hazePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint radialPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint horizonPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint ribbonPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint particlePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path ribbonPath = new Path();

    private LinearGradient hazeShader;
    private LinearGradient horizonShader;
    private RadialGradient radialShader;
    private ValueAnimator expansionAnimator;

    private boolean running;
    private long animationStartUptime;
    private int bottomInset;
    private float targetPullProgress;
    private float displayedPullProgress;
    private float expansionProgress;
    private float pointerFraction = 0.5f;

    PortalGlowView(Context context, boolean dark, int bottomInset) {
        super(context);
        this.dark = dark;
        this.bottomInset = Math.max(0, bottomInset);
        this.density = context.getResources().getDisplayMetrics().density;
        setImportantForAccessibility(IMPORTANT_FOR_ACCESSIBILITY_NO);
        setFocusable(false);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            setForceDarkAllowed(false);
        }
        ribbonPaint.setStyle(Paint.Style.STROKE);
        ribbonPaint.setStrokeCap(Paint.Cap.ROUND);
    }

    void start() {
        if (running) {
            return;
        }
        running = true;
        animationStartUptime = SystemClock.uptimeMillis();
        postInvalidateOnAnimation();
    }

    void stop() {
        running = false;
        if (expansionAnimator != null) {
            expansionAnimator.cancel();
            expansionAnimator = null;
        }
    }

    void setPullProgress(float progress, float pointerXFraction) {
        targetPullProgress = GestureMath.clamp01(progress);
        pointerFraction = GestureMath.clamp01(pointerXFraction);
        if (!running) {
            invalidate();
        }
    }

    void expandMenu() {
        if (expansionProgress >= 1f) {
            return;
        }
        if (expansionAnimator != null) {
            expansionAnimator.cancel();
        }
        expansionAnimator = ValueAnimator.ofFloat(expansionProgress, 1f);
        expansionAnimator.setDuration(380L);
        expansionAnimator.setInterpolator(new DecelerateInterpolator(1.7f));
        expansionAnimator.addUpdateListener(animator -> {
            expansionProgress = (float) animator.getAnimatedValue();
            invalidate();
        });
        expansionAnimator.start();
    }

    void collapseMenu() {
        if (expansionProgress <= 0f) {
            return;
        }
        if (expansionAnimator != null) {
            expansionAnimator.cancel();
        }
        expansionAnimator = ValueAnimator.ofFloat(expansionProgress, 0f);
        expansionAnimator.setDuration(240L);
        expansionAnimator.setInterpolator(new DecelerateInterpolator(1.4f));
        expansionAnimator.addUpdateListener(animator -> {
            expansionProgress = (float) animator.getAnimatedValue();
            invalidate();
        });
        expansionAnimator.start();
    }

    @Override
    protected void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
        super.onSizeChanged(width, height, oldWidth, oldHeight);
        rebuildShaders(width, height);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (getWidth() <= 0 || getHeight() <= 0) {
            return;
        }
        if (hazeShader == null || radialShader == null || horizonShader == null) {
            rebuildShaders(getWidth(), getHeight());
        }

        float delta = targetPullProgress - displayedPullProgress;
        if (Math.abs(delta) < 0.002f) {
            displayedPullProgress = targetPullProgress;
        } else {
            displayedPullProgress += delta * 0.18f;
        }

        float pull = easeOut(displayedPullProgress);
        float strength = Math.min(1f, 0.18f + pull * 0.68f + expansionProgress * 0.22f);
        float contentBottom = Math.max(1f, getHeight() - bottomInset);
        float glowHeight = dp(92) + dp(158) * pull + dp(42) * expansionProgress;
        float horizontalShift = (pointerFraction - 0.5f) * getWidth() * 0.18f;

        int save = canvas.save();
        canvas.clipRect(0f, Math.max(0f, contentBottom - glowHeight), getWidth(), contentBottom);

        hazePaint.setShader(hazeShader);
        hazePaint.setAlpha(Math.round(255f * strength));
        canvas.drawRect(0f, contentBottom - glowHeight, getWidth(), contentBottom, hazePaint);

        int radialSave = canvas.save();
        canvas.translate(horizontalShift, 0f);
        radialPaint.setShader(radialShader);
        radialPaint.setAlpha(Math.round(255f * Math.min(1f, strength * 1.12f)));
        canvas.drawCircle(getWidth() / 2f, contentBottom + dp(24),
                Math.max(getWidth() * 0.72f, dp(280)), radialPaint);
        canvas.restoreToCount(radialSave);

        drawRibbons(canvas, contentBottom, pull, strength, horizontalShift);
        drawParticles(canvas, contentBottom, glowHeight, strength, horizontalShift);
        canvas.restoreToCount(save);

        horizonPaint.setShader(horizonShader);
        horizonPaint.setAlpha(Math.round(255f * Math.min(1f, strength * 1.18f)));
        canvas.drawRect(0f, contentBottom - dp(2.2f), getWidth(), contentBottom, horizonPaint);

        if (running) {
            postInvalidateOnAnimation();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        stop();
        super.onDetachedFromWindow();
    }

    private void rebuildShaders(int width, int height) {
        if (width <= 0 || height <= 0) {
            return;
        }
        float contentBottom = Math.max(1f, height - bottomInset);
        int blue = dark ? 0xA84F78FF : 0x985C8BFF;
        int cyan = dark ? 0xB044DDF1 : 0xA249E4EE;
        int rose = dark ? 0x8EC868FF : 0x7EDB72D7;
        hazeShader = new LinearGradient(
                0f,
                contentBottom - dp(300),
                0f,
                contentBottom,
                new int[]{Color.TRANSPARENT, 0x143F6DFF, blue, cyan},
                new float[]{0f, 0.43f, 0.78f, 1f},
                Shader.TileMode.CLAMP);
        radialShader = new RadialGradient(
                width / 2f,
                contentBottom + dp(24),
                Math.max(width * 0.72f, dp(280)),
                new int[]{0xE4EAFDFF, cyan, blue, rose, Color.TRANSPARENT},
                new float[]{0f, 0.12f, 0.38f, 0.66f, 1f},
                Shader.TileMode.CLAMP);
        horizonShader = new LinearGradient(
                0f,
                0f,
                width,
                0f,
                new int[]{Color.TRANSPARENT, rose, 0xFFE8FFFF, cyan, blue, Color.TRANSPARENT},
                new float[]{0f, 0.16f, 0.43f, 0.62f, 0.84f, 1f},
                Shader.TileMode.CLAMP);
    }

    private void drawRibbons(
            Canvas canvas,
            float contentBottom,
            float pull,
            float strength,
            float horizontalShift) {
        long elapsed = Math.max(0L, SystemClock.uptimeMillis() - animationStartUptime);
        float phase = (elapsed % 2400L) / 2400f;
        int[] colors = {0xFF67E8F4, 0xFF78A4FF, 0xFFE178E8};
        for (int index = 0; index < colors.length; index++) {
            float lane = index - 1f;
            float sway = (float) Math.sin((phase + index * 0.23f) * Math.PI * 2f);
            float startX = getWidth() * (0.18f + index * 0.32f) + horizontalShift * 0.5f;
            float peakY = contentBottom - dp(36) - dp(104) * pull - dp(13) * sway;
            ribbonPath.reset();
            ribbonPath.moveTo(startX - dp(150), contentBottom + dp(4));
            ribbonPath.cubicTo(
                    startX - dp(82), contentBottom - dp(18),
                    startX + lane * dp(52), peakY,
                    startX + dp(150), contentBottom + dp(3));
            ribbonPaint.setColor(colors[index]);
            ribbonPaint.setStrokeWidth(dp(1.2f + pull * 1.1f));
            ribbonPaint.setAlpha(Math.round(150f * strength));
            canvas.drawPath(ribbonPath, ribbonPaint);
        }
    }

    private void drawParticles(
            Canvas canvas,
            float contentBottom,
            float glowHeight,
            float strength,
            float horizontalShift) {
        float seconds = Math.max(0L, SystemClock.uptimeMillis() - animationStartUptime) / 1000f;
        particlePaint.setColor(0xFFF1FFFF);
        for (int index = 0; index < PARTICLE_COUNT; index++) {
            float cycle = (seconds * (0.18f + (index % 4) * 0.025f) + index * 0.137f) % 1f;
            float seed = ((index * 47) % 101) / 100f;
            float x = seed * getWidth() + horizontalShift * (0.2f + seed * 0.35f);
            x += (float) Math.sin(seconds * 1.7f + index) * dp(6);
            float y = contentBottom - cycle * glowHeight * (0.38f + seed * 0.54f);
            float fade = (float) Math.sin(cycle * Math.PI);
            particlePaint.setAlpha(Math.round(180f * strength * Math.max(0f, fade)));
            canvas.drawCircle(x, y, dp(0.8f + (index % 3) * 0.35f), particlePaint);
        }
    }

    private float dp(float value) {
        return value * density;
    }

    private static float easeOut(float value) {
        float inverse = 1f - GestureMath.clamp01(value);
        return 1f - inverse * inverse;
    }
}
