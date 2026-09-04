package com.leaf.hyperdragshare.codex;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

final class CopyTargetIconDrawable extends Drawable {
    private final Drawable glyph;
    private final int accentColor;
    private final Paint tilePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint fallbackPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private int alpha = 255;

    CopyTargetIconDrawable(Drawable sourceGlyph, int accentColor) {
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
        fallbackPaint.setStrokeJoin(Paint.Join.ROUND);
    }

    @Override
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            return;
        }
        float size = Math.min(bounds.width(), bounds.height());
        tilePaint.setColor((accentColor & 0x00FFFFFF)
                | (Math.round(Color.alpha(accentColor) * alpha / 255f) << 24));
        canvas.drawRoundRect(new RectF(bounds), size * 0.24f, size * 0.24f, tilePaint);

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
        float stroke = Math.max(2f, tileSize * 0.07f);
        float inset = bounds.width() * 0.08f;
        float offset = bounds.width() * 0.16f;
        float radius = tileSize * 0.07f;
        fallbackPaint.setAlpha(alpha);
        fallbackPaint.setStrokeWidth(stroke);
        RectF back = new RectF(
                bounds.left + inset,
                bounds.top + inset,
                bounds.right - offset,
                bounds.bottom - offset);
        RectF front = new RectF(
                bounds.left + offset,
                bounds.top + offset,
                bounds.right - inset,
                bounds.bottom - inset);
        canvas.drawRoundRect(back, radius, radius, fallbackPaint);
        canvas.drawRoundRect(front, radius, radius, fallbackPaint);
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
