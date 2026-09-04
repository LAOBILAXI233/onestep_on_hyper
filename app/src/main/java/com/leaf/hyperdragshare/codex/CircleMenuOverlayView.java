package com.leaf.hyperdragshare.codex;

import android.annotation.SuppressLint;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@SuppressLint("ViewConstructor")
final class CircleMenuOverlayView extends FrameLayout {
    private static final int MAX_ITEMS = 5;
    static final int CONTAINER_SIZE_DP = 300;
    private static final int ITEM_SIZE_DP = 68;
    private static final int RADIUS_DP = 112;
    private static final int ARC_STROKE_DP = 2;

    private final int screenWidth;
    private final int screenHeight;
    private final int topInset;
    private final int bottomInset;
    private final int containerSize;
    private final int itemSize;
    private final float radius;
    private final int panelColor;
    private final int panelStrokeColor;
    private final int accentColor;
    private final int textColor;
    private final int selectedColor;
    private final int selectedStrokeColor;
    private final Paint panelPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint arcPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint glowPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint scrimPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final int[] arcColors;
    private final float[] arcPositions = new float[]{0f, 0.5f, 1f};
    private final List<ShareTarget> targets = new ArrayList<>();
    private final List<ShareTarget> allTargets = new ArrayList<>();
    private final List<View> itemViews = new ArrayList<>();
    private final Path arcPath = new Path();
    private Shader arcShader;

    private int edge = CircleMenuGeometry.EDGE_NONE;
    private float pointerX;
    private float pointerY;
    private float edgeProgress;
    private float expansionProgress;
    private int selectedIndex = -1;
    private boolean expanded;
    private ValueAnimator expansionAnimator;
    private ValueAnimator pulseAnimator;
    private float pulse;
    private Rect panelRect = new Rect();
    private View emptyView;
    private int windowStart;
    private final float contentAlpha;

    CircleMenuOverlayView(
            Context context,
            int screenWidth,
            int screenHeight,
            int topInset,
            int bottomInset,
            boolean dark,
            int accentColor,
            int textColor,
            int selectedColor,
            int selectedStrokeColor,
            int iconOpacityPercent) {
        super(context);
        this.screenWidth = screenWidth;
        this.screenHeight = screenHeight;
        this.topInset = topInset;
        this.bottomInset = bottomInset;
        int availableHeight = Math.max(1, screenHeight - topInset - bottomInset);
        int maximumContainer = Math.max(1, Math.min(screenWidth, availableHeight));
        this.containerSize = Math.min(dp(CONTAINER_SIZE_DP), maximumContainer);
        this.itemSize = Math.min(dp(ITEM_SIZE_DP), Math.max(1, containerSize / 4));
        this.radius = Math.min(dp(RADIUS_DP), containerSize * 0.38f);
        this.panelColor = dark ? 0xE91E242B : 0xE9F7FAFC;
        this.panelStrokeColor = dark ? 0x665E6D78 : 0x553E5662;
        this.accentColor = accentColor;
        this.textColor = textColor;
        this.selectedColor = selectedColor;
        this.selectedStrokeColor = selectedStrokeColor;
        this.contentAlpha = Math.max(0f, Math.min(1f, iconOpacityPercent / 100f));
        this.arcColors = new int[]{0x00FFFFFF, accentColor, 0x00FFFFFF};
        this.scrimPaint.setColor(dark ? 0x16000000 : 0x0C0B1820);
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            setForceDarkAllowed(false);
        }
        setVisibility(INVISIBLE);
    }

    void setTargets(List<ShareTarget> shareTargets) {
        allTargets.clear();
        if (shareTargets != null) {
            for (ShareTarget target : shareTargets) {
                if (target != null) {
                    allTargets.add(target);
                }
            }
        }
        windowStart = 0;
        targets.clear();
        clearItemViews();
    }

    private void rebuildVisibleItems() {
        targets.clear();
        int visibleCount = Math.min(
                MAX_ITEMS,
                Math.max(0, allTargets.size() - windowStart));
        for (int index = 0; index < visibleCount; index++) {
            targets.add(allTargets.get(windowStart + index));
        }
        clearItemViews();
        populateItemViews();
    }

    private void clearItemViews() {
        for (View item : itemViews) {
            item.animate().cancel();
            itemContent(item).animate().cancel();
        }
        removeAllViews();
        itemViews.clear();
        emptyView = null;
    }

    private void populateItemViews() {
        if (targets.isEmpty()) {
            TextView empty = new TextView(getContext());
            empty.setText("没有可用的分享应用");
            empty.setTextColor(textColor);
            empty.setTextSize(13);
            empty.setGravity(Gravity.CENTER);
            FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(
                    dp(180), dp(48));
            params.leftMargin = 0;
            params.topMargin = 0;
            addView(empty, params);
            emptyView = empty;
            return;
        }
        for (ShareTarget target : targets) {
            View item = createItemView(target);
            addView(item, new FrameLayout.LayoutParams(itemSize, itemSize));
            itemViews.add(item);
        }
        positionItems();
    }

    private View createItemView(ShareTarget target) {
        FrameLayout slot = new FrameLayout(getContext());
        slot.setClipChildren(false);
        slot.setClipToPadding(false);
        slot.setTag(target);

        LinearLayout item = new LinearLayout(getContext());
        item.setOrientation(LinearLayout.VERTICAL);
        item.setGravity(Gravity.CENTER_HORIZONTAL);
        item.setPadding(dp(4), dp(4), dp(4), dp(2));
        item.setBackground(itemBackground(target, false));

        ImageView icon = new ImageView(getContext());
        icon.setImageDrawable(iconFor(target));
        icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
        icon.setAlpha(contentAlpha);
        item.addView(icon, new LinearLayout.LayoutParams(dp(42), dp(42)));

        TextView label = new TextView(getContext());
        label.setText(target.label);
        label.setTextColor(textColor);
        label.setTextSize(11);
        label.setGravity(Gravity.CENTER);
        label.setMaxLines(1);
        label.setEllipsize(android.text.TextUtils.TruncateAt.END);
        label.setAlpha(contentAlpha);
        item.addView(label, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(20)));
        slot.addView(item, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.MATCH_PARENT));
        return slot;
    }

    boolean scrollWindow(int direction) {
        if (!expanded || allTargets.size() <= MAX_ITEMS || direction == 0) {
            return false;
        }
        int maximumStart = allTargets.size() - MAX_ITEMS;
        int nextStart = Math.max(0, Math.min(maximumStart, windowStart + direction));
        if (nextStart == windowStart) {
            return false;
        }
        setSelectedTarget(null);
        animateScrollTo(nextStart, direction);
        return true;
    }

    private void animateScrollTo(int nextStart, int direction) {
        Map<ShareTarget, View> previousViews = new LinkedHashMap<>();
        for (int index = 0; index < targets.size() && index < itemViews.size(); index++) {
            previousViews.put(targets.get(index), itemViews.get(index));
        }
        windowStart = nextStart;
        List<ShareTarget> nextTargets = new ArrayList<>();
        int visibleCount = Math.min(MAX_ITEMS, allTargets.size() - windowStart);
        for (int index = 0; index < visibleCount; index++) {
            nextTargets.add(allTargets.get(windowStart + index));
        }

        for (Map.Entry<ShareTarget, View> entry : previousViews.entrySet()) {
            if (!nextTargets.contains(entry.getKey())) {
                View leaving = entry.getValue();
                leaving.animate().cancel();
                leaving.animate()
                        .alpha(0f)
                        .scaleX(0.78f)
                        .scaleY(0.78f)
                        .setDuration(160L)
                        .withEndAction(() -> removeView(leaving))
                        .start();
            }
        }

        targets.clear();
        targets.addAll(nextTargets);
        itemViews.clear();
        for (int index = 0; index < targets.size(); index++) {
            ShareTarget target = targets.get(index);
            View item = previousViews.get(target);
            boolean entering = item == null;
            android.graphics.PointF center = centerFor(index);
            int targetLeft = Math.round(center.x - itemSize / 2f);
            int targetTop = Math.round(center.y - itemSize / 2f);
            if (entering) {
                item = createItemView(target);
                FrameLayout.LayoutParams params = new FrameLayout.LayoutParams(
                        itemSize,
                        itemSize);
                params.leftMargin = targetLeft;
                params.topMargin = targetTop;
                addView(item, params);
                item.setTranslationX(0f);
                item.setTranslationY(direction > 0 ? dp(52) : -dp(52));
                item.setAlpha(0f);
                item.setScaleX(0.78f);
                item.setScaleY(0.78f);
            } else {
                item.animate().cancel();
                float currentX = item.getX();
                float currentY = item.getY();
                FrameLayout.LayoutParams params = (FrameLayout.LayoutParams) item.getLayoutParams();
                params.width = itemSize;
                params.height = itemSize;
                params.leftMargin = targetLeft;
                params.topMargin = targetTop;
                item.setLayoutParams(params);
                
                
                item.setTranslationX(currentX - targetLeft);
                item.setTranslationY(currentY - targetTop);
            }
            itemViews.add(item);
            item.animate().cancel();
            item.animate()
                    .translationX(0f)
                    .translationY(0f)
                    .alpha(1f)
                    .scaleX(1f)
                    .scaleY(1f)
                    .setDuration(220L)
                    .setInterpolator(new OvershootInterpolator(0.45f))
                    .start();
        }
        updateArcShader();
        invalidate();
    }

    List<ShareTarget> getTargets() {
        return Collections.unmodifiableList(targets);
    }

    int getContainerSize() {
        return containerSize;
    }

    void setEdgeProgress(int edge, float progress, float x, float y) {
        if (expanded) {
            return;
        }
        this.edge = edge;
        this.pointerX = x;
        this.pointerY = y;
        this.edgeProgress = CircleMenuGeometry.clamp01(progress);
        if (edge == CircleMenuGeometry.EDGE_NONE || this.edgeProgress <= 0f) {
            stopPulse();
        } else {
            setVisibility(VISIBLE);
            startPulse();
        }
        invalidate();
    }

    void expand(int edge, float x, float y) {
        if (edge != CircleMenuGeometry.EDGE_LEFT
                && edge != CircleMenuGeometry.EDGE_RIGHT) {
            return;
        }
        this.edge = edge;
        this.pointerX = x;
        this.pointerY = y;
        this.edgeProgress = 1f;
        this.expanded = true;
        this.selectedIndex = -1;
        this.panelRect = CircleMenuGeometry.containerRect(
                edge, isVerticalEdge(edge) ? y : x,
                screenWidth, screenHeight, containerSize, topInset, bottomInset);
        rebuildVisibleItems();
        setVisibility(VISIBLE);
        stopPulse();
        if (expansionAnimator != null) {
            expansionAnimator.cancel();
        }
        expansionProgress = 0f;
        expansionAnimator = ValueAnimator.ofFloat(0f, 1f);
        expansionAnimator.setDuration(500L);
        expansionAnimator.setInterpolator(new LinearInterpolator());
        expansionAnimator.addUpdateListener(animation -> {
            expansionProgress = (Float) animation.getAnimatedValue();
            invalidate();
        });
        expansionAnimator.start();

        OvershootInterpolator spring = new OvershootInterpolator(0.82f);
        for (int index = 0; index < itemViews.size(); index++) {
            View item = itemViews.get(index);
            item.animate().cancel();
            item.setAlpha(0f);
            item.setScaleX(0.7f);
            item.setScaleY(0.7f);
            float travel = panelDepth() * 0.3f;
            item.setTranslationX(edge == CircleMenuGeometry.EDGE_LEFT ? -travel
                    : edge == CircleMenuGeometry.EDGE_RIGHT ? travel : 0f);
            item.setTranslationY(0f);
            item.animate().alpha(1f).scaleX(1f).scaleY(1f)
                    .translationX(0f).translationY(0f)
                    .setStartDelay(Math.min(120L, index * 28L))
                    .setDuration(500L)
                    .setInterpolator(spring)
                    .start();
        }
    }

    void updatePointer(float x, float y) {
        pointerX = x;
        pointerY = y;
        invalidate();
    }

    ShareTarget hitTest(float x, float y) {
        if (!expanded) {
            return null;
        }
        for (int index = 0; index < targets.size(); index++) {
            android.graphics.PointF center = centerFor(index);
            float scale = index == selectedIndex ? 1.12f : 1f;
            float half = itemSize * scale / 2f;
            if (Math.abs(x - center.x) <= half && Math.abs(y - center.y) <= half) {
                return targets.get(index);
            }
        }
        return null;
    }

    int scrollDirectionForPointer(float x, float y) {
        if (!expanded || allTargets.size() <= MAX_ITEMS || targets.isEmpty()) {
            return 0;
        }
        android.graphics.PointF first = centerFor(0);
        android.graphics.PointF last = centerFor(targets.size() - 1);
        float threshold = itemSize * 0.9f;
        if (Math.hypot(x - first.x, y - first.y) <= threshold && windowStart > 0) {
            return -1;
        }
        if (Math.hypot(x - last.x, y - last.y) <= threshold
                && windowStart < allTargets.size() - MAX_ITEMS) {
            return 1;
        }
        return 0;
    }

    void setSelectedTarget(ShareTarget target) {
        int next = targets.indexOf(target);
        if (next == selectedIndex) {
            return;
        }
        selectedIndex = next;
        for (int index = 0; index < itemViews.size(); index++) {
            View slot = itemViews.get(index);
            View item = itemContent(slot);
            boolean selected = index == selectedIndex;
            item.setBackground(itemBackground((ShareTarget) slot.getTag(), selected));
            item.animate().cancel();
            item.animate().scaleX(selected ? 1.12f : 1f)
                    .scaleY(selected ? 1.12f : 1f)
                    .setDuration(120L)
                    .start();
        }
        invalidate();
    }

    Rect getAvoidRect() {
        if (!expanded) {
            return new Rect();
        }
        int padding = Math.round(containerSize * 0.16f) + dp(10);
        return new Rect(
                Math.max(0, panelRect.left - padding),
                Math.max(topInset, panelRect.top - padding),
                Math.min(screenWidth, panelRect.right + padding),
                Math.min(screenHeight - bottomInset, panelRect.bottom + padding));
    }

    boolean containsExpandedRegion(float x, float y) {
        if (!expanded || !Float.isFinite(x) || !Float.isFinite(y)) {
            return false;
        }
        Rect region = getAvoidRect();
        return x >= region.left && x <= region.right
                && y >= region.top && y <= region.bottom;
    }

    void collapse() {
        if (expansionAnimator != null) {
            expansionAnimator.cancel();
            expansionAnimator = null;
        }
        for (View item : itemViews) {
            item.animate().cancel();
            itemContent(item).animate().cancel();
        }
        stopPulse();
        expanded = false;
        selectedIndex = -1;
        targets.clear();
        clearItemViews();
        edge = CircleMenuGeometry.EDGE_NONE;
        edgeProgress = 0f;
        setVisibility(INVISIBLE);
    }

    boolean isExpanded() {
        return expanded;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!expanded) {
            drawEdgeGlow(canvas);
            return;
        }
        canvas.drawRect(0, 0, getWidth(), getHeight(), scrimPaint);
        float scale = 0.7f + 0.3f * expansionProgress;
        float centerX = panelCenterX();
        float centerY = panelCenterY();
        canvas.save();
        canvas.scale(scale, scale, centerX, centerY);
        panelPaint.setStyle(Paint.Style.FILL);
        panelPaint.setColor(panelColor);
        panelPaint.setShadowLayer(dp(18), 0f, dp(5), 0x66000000);
        canvas.drawCircle(centerX, centerY, panelDepth(), panelPaint);
        panelPaint.clearShadowLayer();
        panelPaint.setStyle(Paint.Style.STROKE);
        panelPaint.setStrokeWidth(dp(1));
        panelPaint.setColor(panelStrokeColor);
        canvas.drawCircle(centerX, centerY, panelDepth(), panelPaint);

        arcPaint.setStyle(Paint.Style.STROKE);
        arcPaint.setStrokeWidth(dp(ARC_STROKE_DP));
        arcPaint.setStrokeCap(Paint.Cap.ROUND);
        arcPaint.setShader(arcShader);
        arcPath.reset();
        int arcItemCount = Math.max(1, targets.size());
        float sweep = Math.max(36f, (arcItemCount - 1) * 36f);
        float start = edge == CircleMenuGeometry.EDGE_RIGHT
                ? 180f - sweep / 2f
                : -sweep / 2f;
        arcPath.addArc(
                centerX - radius,
                centerY - radius,
                centerX + radius,
                centerY + radius,
                start,
                sweep);
        canvas.drawPath(arcPath, arcPaint);
        arcPaint.setShader(null);
        canvas.restore();
    }

    private void drawEdgeGlow(Canvas canvas) {
        if (edge == CircleMenuGeometry.EDGE_NONE || edgeProgress <= 0f) {
            return;
        }
        int alpha = Math.round(155f * edgeProgress * (0.82f + 0.18f * pulse));
        int color = (accentColor & 0x00FFFFFF) | (alpha << 24);
        int softColor = (accentColor & 0x00FFFFFF)
                | (Math.round(alpha * 0.42f) << 24);
        if (edge != CircleMenuGeometry.EDGE_LEFT
                && edge != CircleMenuGeometry.EDGE_RIGHT) {
            return;
        }
        float centerX = edge == CircleMenuGeometry.EDGE_LEFT ? 0f : getWidth();
        float centerY = Math.max(topInset, Math.min(getHeight() - bottomInset, pointerY));
        float glowRadius = dp(156) * (0.55f + edgeProgress * 0.45f);
        glowPaint.setShader(new RadialGradient(
                centerX,
                centerY,
                glowRadius,
                new int[]{color, softColor, 0x00FFFFFF},
                new float[]{0f, 0.42f, 1f},
                Shader.TileMode.CLAMP));
        canvas.drawCircle(centerX, centerY, glowRadius, glowPaint);
        glowPaint.setShader(null);
    }

    private void positionItems() {
        if (panelRect.isEmpty()) {
            panelRect = CircleMenuGeometry.containerRect(
                    edge, isVerticalEdge(edge) ? pointerY : pointerX,
                    screenWidth, screenHeight, containerSize, topInset, bottomInset);
        }
        updateArcShader();
        for (int index = 0; index < itemViews.size(); index++) {
            android.graphics.PointF center = centerFor(index);
            FrameLayout.LayoutParams params = (FrameLayout.LayoutParams)
                    itemViews.get(index).getLayoutParams();
            if (params == null) {
                params = new FrameLayout.LayoutParams(itemSize, itemSize);
            }
            params.width = itemSize;
            params.height = itemSize;
            params.leftMargin = Math.round(center.x - itemSize / 2f);
            params.topMargin = Math.round(center.y - itemSize / 2f);
            View item = itemViews.get(index);
            item.setLayoutParams(params);
            item.setTranslationX(0f);
            item.setTranslationY(0f);
        }
        if (emptyView != null) {
            FrameLayout.LayoutParams params = (FrameLayout.LayoutParams) emptyView.getLayoutParams();
            if (params == null) {
                params = new FrameLayout.LayoutParams(dp(180), dp(48));
            }
            params.leftMargin = panelRect.centerX() - dp(90);
            params.topMargin = panelRect.centerY() - dp(24);
            emptyView.setLayoutParams(params);
        }
    }

    private void updateArcShader() {
        if (panelRect.isEmpty()) {
            arcShader = null;
            return;
        }
        arcShader = new SweepGradient(
                panelCenterX(), panelCenterY(), arcColors, arcPositions);
    }

    private android.graphics.PointF centerFor(int index) {
        return CircleMenuGeometry.itemCenter(
                edge,
                panelRect.left,
                panelRect.top,
                containerSize,
                radius,
                index,
                Math.max(1, targets.size()));
    }

    private float panelCenterX() {
        return edge == CircleMenuGeometry.EDGE_RIGHT
                ? panelRect.right
                : panelRect.left;
    }

    private float panelCenterY() {
        return panelRect.centerY();
    }

    private float panelDepth() {
        return containerSize / 2f;
    }

    private boolean isVerticalEdge(int edge) {
        return edge == CircleMenuGeometry.EDGE_LEFT
                || edge == CircleMenuGeometry.EDGE_RIGHT;
    }

    private GradientDrawable itemBackground(ShareTarget target, boolean selected) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(selected ? selectedColor : android.graphics.Color.TRANSPARENT);
        drawable.setCornerRadius(itemSize / 2f);
        if (selected) {
            drawable.setStroke(dp(1), selectedStrokeColor);
        }
        return drawable;
    }

    private Drawable iconFor(ShareTarget target) {
        return ShareTargetRepository.iconForDisplay(target);
    }

    private View itemContent(View item) {
        if (item instanceof FrameLayout && ((FrameLayout) item).getChildCount() > 0) {
            return ((FrameLayout) item).getChildAt(0);
        }
        return item;
    }

    private void startPulse() {
        if (pulseAnimator != null && pulseAnimator.isRunning()) {
            return;
        }
        pulseAnimator = ValueAnimator.ofFloat(0f, 1f);
        pulseAnimator.setDuration(700L);
        pulseAnimator.setRepeatCount(ValueAnimator.INFINITE);
        pulseAnimator.setRepeatMode(ValueAnimator.REVERSE);
        pulseAnimator.addUpdateListener(animation -> {
            pulse = (Float) animation.getAnimatedValue();
            invalidate();
        });
        pulseAnimator.start();
    }

    private void stopPulse() {
        if (pulseAnimator != null) {
            pulseAnimator.cancel();
            pulseAnimator = null;
        }
        pulse = 0f;
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }
}
