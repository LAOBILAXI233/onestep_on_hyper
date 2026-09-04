package com.leaf.hyperdragshare.codex;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

final class SaveTargetIconDrawable extends Drawable {
    private final Drawable glyph;
    private final int accentColor;
    private final Paint tilePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint fallbackPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path fallbackPath = new Path();
    private int alpha = 255;

    SaveTargetIconDrawable(Drawable sourceGlyph, int accentColor) {
        this.accentColor = accentColor;
        if (sourceGlyph == null) {
            glyph = null;
        } else {
            Drawable.ConstantState state = sourceGlyph.getConstantState();
            glyph = (state == null ? sourceGlyph : state.newDrawable()).mutate();
            glyph.setTint(Color.WHITE);
        }
        fallbackPaint.setColor(Color.WHITE);
        fallbackPaint.setStyle(Paint.Style.STROKE);
        fallbackPaint.setStrokeCap(Paint.Cap.ROUND);
        fallbackPaint.setStrokeJoin(Paint.Join.ROUND);
    }

    @Override
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            return;
        }
        float size = Math.min(bounds.width(), bounds.height());
        float radius = size * 0.24f;
        tilePaint.setColor((accentColor & 0x00FFFFFF)
                | (Math.round(Color.alpha(accentColor) * alpha / 255f) << 24));
        canvas.drawRoundRect(new RectF(bounds), radius, radius, tilePaint);

        int inset = Math.max(1, Math.round(size * 0.20f));
        Rect glyphBounds = new Rect(
                bounds.left + inset,
                bounds.top + inset,
                bounds.right - inset,
                bounds.bottom - inset);
        if (glyph != null) {
            glyph.setAlpha(alpha);
            glyph.setBounds(glyphBounds);
            glyph.draw(canvas);
        } else {
            drawFallbackGlyph(canvas, glyphBounds, size);
        }
    }

    private void drawFallbackGlyph(Canvas canvas, Rect bounds, float tileSize) {
        float centerX = bounds.exactCenterX();
        float top = bounds.top + bounds.height() * 0.08f;
        float tip = bounds.top + bounds.height() * 0.62f;
        float wing = bounds.width() * 0.22f;
        fallbackPaint.setAlpha(alpha);
        fallbackPaint.setStrokeWidth(Math.max(2f, tileSize * 0.065f));
        fallbackPath.reset();
        fallbackPath.moveTo(centerX, top);
        fallbackPath.lineTo(centerX, tip);
        fallbackPath.moveTo(centerX - wing, tip - wing);
        fallbackPath.lineTo(centerX, tip);
        fallbackPath.lineTo(centerX + wing, tip - wing);
        canvas.drawPath(fallbackPath, fallbackPaint);
        RectF tray = new RectF(
                bounds.left + bounds.width() * 0.06f,
                bounds.top + bounds.height() * 0.42f,
                bounds.right - bounds.width() * 0.06f,
                bounds.bottom - bounds.height() * 0.06f);
        canvas.drawRoundRect(tray, tileSize * 0.08f, tileSize * 0.08f, fallbackPaint);
    }

    @Override
    public void setAlpha(int alpha) {
        this.alpha = Math.max(0, Math.min(255, alpha));
        invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        tilePaint.setColorFilter(colorFilter);
        fallbackPaint.setColorFilter(colorFilter);
        if (glyph != null) {
            glyph.setColorFilter(colorFilter);
        }
        invalidateSelf();
    }

    @Override
    public int getOpacity() {
        return PixelFormat.TRANSLUCENT;
    }
}
