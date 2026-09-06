package com.hyper.onestep.ui.window;

import android.content.ClipData;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.view.DragEvent;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.SurfaceView;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.util.Log;

import com.hyper.onestep.R;
import com.hyper.onestep.lsp.MultiTaskController;
import com.hyper.onestep.model.LauncherApp;
import com.hyper.onestep.ui.gesture.SideSlotGesturePolicy;
import com.hyper.onestep.ui.widget.FixedViewportFrameLayout;
import com.leaf.hyperdragshare.codex.DragShareSuppression;

public final class OneStepWindowView extends FrameLayout {
    private static final String SHELF_TRACE = "[SHELFDBG] ";
    public interface Callbacks {
        View createDesktopHome();

        void configureDesktopHomeViewport(OneStepWindowView windowView);

        void drawSharedBackground(android.graphics.Canvas canvas, View target);

        boolean isVerticalWindowLayout();

        int getSideDismissDirection();

        int getSideDismissDistancePx();

        boolean canDismissSlot(int slot);

        boolean movedPastSideDismissThreshold(float dx, float dy);

        void dismissSideWindow(int slot);

        void settleSideWindowBack(OneStepWindowView windowView);

        boolean shouldRetainEmbeddedSurface(int slot);

        boolean beginSideShelve(int slot);

        boolean resumeSideShelve(int slot);

        void dragSideShelve(int slot, float dx, float dy);

        void finishSideShelve(int slot, boolean commit, float velocityX, float velocityY);

        default void onAppDroppedInSlot(int slot, String componentFlat) {
        }

        
        default void onSideWindowMotion(OneStepWindowView view, MotionEvent event) {
        }

        
        default boolean onNativeContentDragInWindow(OneStepWindowView view, DragEvent event) {
            return false;
        }
    }

    private final Callbacks callbacks;
    private boolean mainWindow;
    private boolean mainWindowModeInitialized;
    private int slot = -1;
    private float sideTouchDownX;
    private float sideTouchDownY;
    private boolean sideTouchMoved;
    private final SideSlotGesturePolicy sideGesture = new SideSlotGesturePolicy();
    private VelocityTracker sideVelocity;
    private boolean shelfAnimationActive;
    private final FrameLayout embeddedContainer;
    private final WindowPlaceholderView placeholder;
    private View internalOverlay;
    private boolean requestedLiveAppVisible;
    private View desktopHome;
    private boolean desktopHomeShown;
    private LauncherApp boundApp;
    private final ImageView emptyMark;

    public OneStepWindowView(Context context, boolean mainWindow, Drawable placeholderBorder,
                             Callbacks callbacks) {
        super(context);
        this.mainWindow = mainWindow;
        this.callbacks = callbacks;
        setClipToOutline(false);
        setClipChildren(true);
        setClipToPadding(true);
        setBackgroundColor(Color.TRANSPARENT);

        embeddedContainer = new FrameLayout(context);
        embeddedContainer.setBackgroundColor(Color.BLACK);
        embeddedContainer.setClipChildren(true);
        embeddedContainer.setClipToPadding(true);
        embeddedContainer.setVisibility(GONE);
        addView(embeddedContainer, matchFrame());

        placeholder = new WindowPlaceholderView(
                context, placeholderBorder, callbacks::drawSharedBackground);
        placeholder.setPadding(dp(1), dp(1), dp(1), dp(1));
        addView(placeholder, matchFrame());

        desktopHome = mainWindow ? callbacks.createDesktopHome() : null;
        desktopHomeShown = desktopHome != null;
        if (desktopHome != null) {
            placeholder.addView(desktopHome, matchFrame());
        }

        emptyMark = createEmptyWindowMark(context);
        placeholder.addView(emptyMark,
                new FrameLayout.LayoutParams(dp(58), dp(58), Gravity.CENTER));
        setMainWindowMode(mainWindow);
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        
        
        if (!mainWindow && slot >= 0) {
            return handleSideWindowTouch(event);
        }
        return super.dispatchTouchEvent(event);
    }

    @Override
    public boolean onDragEvent(DragEvent event) {
        switch (event.getAction()) {
            case DragEvent.ACTION_DRAG_STARTED:
                boolean accepted = isAppDrag(event);
                if (!accepted) {
                    accepted = isNativeMediaDrag(event);
                    android.util.Log.i("OneStepDrag",
                            "window slot=" + slot + " STARTED nativeMedia=" + accepted);
                }
                android.util.Log.i("OneStepDrag",
                        "window slot=" + slot + " STARTED accepted=" + accepted);
                return accepted;
            case DragEvent.ACTION_DRAG_ENTERED:
                android.util.Log.i("OneStepDrag", "window slot=" + slot + " ENTERED");
                if (isAppDrag(event)) {
                    setAlpha(0.62f);
                    return true;
                }
                return dispatchNativeDrag(event);
            case DragEvent.ACTION_DRAG_LOCATION:
                if (isAppDrag(event)) {
                    return true;
                }
                return dispatchNativeDrag(event);
            case DragEvent.ACTION_DRAG_EXITED:
            case DragEvent.ACTION_DRAG_ENDED:
                if (isAppDrag(event)) {
                    setAlpha(1f);
                    return true;
                }
                return dispatchNativeDrag(event);
            case DragEvent.ACTION_DROP:
                setAlpha(1f);
                if (isAppDrag(event) && slot >= 0) {
                    ClipData clip = event.getClipData();
                    String flat = clip.getItemCount() > 0
                            ? String.valueOf(clip.getItemAt(0).getText()) : null;
                    android.util.Log.i("OneStepDrag",
                            "window slot=" + slot + " DROP flat=" + flat);
                    callbacks.onAppDroppedInSlot(slot, flat);
                    return true;
                }
                return dispatchNativeDrag(event);
            default:
                return super.onDragEvent(event);
        }
    }

    private boolean dispatchNativeDrag(DragEvent event) {
        return callbacks.onNativeContentDragInWindow(this, event);
    }

    
    
    private static boolean isNativeMediaDrag(DragEvent event) {
        android.content.ClipDescription description = event.getClipDescription();
        if (description == null || description.getMimeTypeCount() == 0) {
            return false;
        }
        for (int index = 0; index < description.getMimeTypeCount(); index++) {
            String mime = description.getMimeType(index);
            if (mime == null || MultiTaskController.APP_DRAG_MIME.equals(mime)) {
                continue;
            }
            if (mime.startsWith("image/") || mime.startsWith("video/")
                    || mime.startsWith("text/") || mime.startsWith("application/")
                    || mime.equals("*/*")) {
                return true;
            }
        }
        return false;
    }

    private static boolean isAppDrag(DragEvent event) {
        if (MultiTaskController.APP_DRAG_LOCAL_STATE.equals(event.getLocalState())) {
            return true;
        }
        ClipData clip = event.getClipData();
        if (clip == null) {
            android.util.Log.i("OneStepDrag",
                    "isAppDrag: clip=null, local=" + event.getLocalState());
            return false;
        }
        android.content.ClipDescription desc = clip.getDescription();
        StringBuilder mimes = new StringBuilder();
        for (int i = 0; i < desc.getMimeTypeCount(); i++) {
            mimes.append(desc.getMimeType(i)).append(' ');
        }
        android.util.Log.i("OneStepDrag", "isAppDrag: local=" + event.getLocalState()
                + ", mimes=[" + mimes.toString().trim() + "]");
        return desc.hasMimeType(MultiTaskController.APP_DRAG_MIME);
    }

    public void attachEmbeddedHost(View hostView) {
        ViewParent parent = hostView.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(hostView);
        }
        embeddedContainer.removeAllViews();
        embeddedContainer.addView(hostView, matchFrame());
    }

    public void setLiveAppVisible(boolean visible) {
        requestedLiveAppVisible = visible;
        applyLiveAppVisibility();
    }

    public int getEmbeddedContentWidth() {
        return embeddedContainer.getWidth();
    }

    public int getEmbeddedContentHeight() {
        return embeddedContainer.getHeight();
    }

    public void showInternalOverlay(View overlay) {
        ViewParent parent = overlay.getParent();
        if (parent instanceof OneStepWindowView) {
            ((OneStepWindowView) parent).hideInternalOverlay(overlay);
        } else if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(overlay);
        }
        internalOverlay = overlay;
        applyLiveAppVisibility();
        addView(overlay, matchFrame());
        overlay.bringToFront();
    }

    public void hideInternalOverlay(View overlay) {
        if (overlay != null && overlay.getParent() == this) {
            removeView(overlay);
        }
        if (internalOverlay == overlay) {
            internalOverlay = null;
            applyLiveAppVisibility();
        }
    }

    public boolean hasInternalOverlay() {
        return internalOverlay != null && internalOverlay.getParent() == this;
    }

    public boolean requiresUniformFrameScale() {
        return hasInternalOverlay() || isDesktopHomeShown();
    }

    public void showDesktopHome() {
        ensureDesktopHome();
        if (desktopHome == null) {
            return;
        }
        desktopHomeShown = true;
        applyBoundContent();
        callbacks.configureDesktopHomeViewport(this);
    }

    public void hideDesktopHome() {
        if (!desktopHomeShown) {
            return;
        }
        desktopHomeShown = false;
        applyBoundContent();
    }

    public boolean isDesktopHomeShown() {
        return desktopHomeShown && desktopHome != null;
    }

    public void updateDesktopHomeViewport(int width, int height) {
        if (!isDesktopHomeShown() || !(desktopHome instanceof FixedViewportFrameLayout)) {
            return;
        }
        ((FixedViewportFrameLayout) desktopHome).setViewportSize(width, height);
    }

    public void setMainWindowMode(boolean mainWindow) {
        if (mainWindowModeInitialized && this.mainWindow == mainWindow) {
            return;
        }
        this.mainWindow = mainWindow;
        mainWindowModeInitialized = true;
        if (placeholder.getVisibility() == VISIBLE) {
            applyMainWindowPlaceholderStyle();
        }
    }

    public void rebuildDesktopHomeIfNeeded() {
        if (desktopHome == null) {
            if (desktopHomeShown) {
                ensureDesktopHome();
            }
            return;
        }
        placeholder.removeView(desktopHome);
        desktopHome = callbacks.createDesktopHome();
        if (desktopHome != null) {
            placeholder.addView(desktopHome, 0, matchFrame());
            desktopHome.setVisibility(desktopHomeShown ? VISIBLE : GONE);
        }
        setMainWindowMode(mainWindow);
        if (desktopHomeShown && desktopHome != null) {
            callbacks.configureDesktopHomeViewport(this);
        }
    }

    public void invalidatePlaceholderBackground() {
        placeholder.invalidate();
    }

    public int getSlot() {
        return slot;
    }

    public View getEmbeddedSurfaceView() {
        return findSurfaceView(embeddedContainer);
    }

    private View findSurfaceView(View view) {
        if (view instanceof SurfaceView) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup group = (ViewGroup) view;
        for (int index = 0; index < group.getChildCount(); index++) {
            View found = findSurfaceView(group.getChildAt(index));
            if (found != null) {
                return found;
            }
        }
        return null;
    }

    public void setDropHovered(boolean hovered) {
        animate().cancel();
        float targetScale = hovered ? 0.96f : 1f;
        float targetAlpha = hovered ? 0.78f : 1f;
        animate().scaleX(targetScale).scaleY(targetScale).alpha(targetAlpha)
                .setDuration(hovered ? 110L : 160L)
                .start();
    }

    public void bind(LauncherApp app, int slot) {
        this.slot = slot;
        boundApp = app;
        if (app != null) {
            desktopHomeShown = false;
        }
        applyBoundContent();
    }

    private void ensureDesktopHome() {
        if (desktopHome != null) {
            return;
        }
        desktopHome = callbacks.createDesktopHome();
        if (desktopHome != null) {
            placeholder.addView(desktopHome, 0, matchFrame());
        }
    }

    private void applyBoundContent() {
        boolean showDesktopHome = desktopHomeShown && desktopHome != null;
        placeholder.setBorderVisible(!showDesktopHome);
        int placeholderInset = showDesktopHome ? 0 : dp(1);
        if (placeholder.getPaddingLeft() != placeholderInset) {
            placeholder.setPadding(placeholderInset, placeholderInset,
                    placeholderInset, placeholderInset);
        }
        if (desktopHome != null) {
            desktopHome.setVisibility(showDesktopHome ? VISIBLE : GONE);
        }
        if (showDesktopHome) {
            emptyMark.setVisibility(GONE);
            setAlpha(1f);
            setLiveAppVisible(false);
            return;
        }
        if (boundApp == null) {
            emptyMark.setVisibility(VISIBLE);
            setAlpha(1f);
            setLiveAppVisible(false);
            return;
        }
        emptyMark.setVisibility(GONE);
        setAlpha(1f);
    }

    private boolean handleSideWindowTouch(MotionEvent event) {
        
        callbacks.onSideWindowMotion(this, event);
        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:
                
                DragShareSuppression.begin();
                sideTouchDownX = event.getRawX();
                sideTouchDownY = event.getRawY();
                sideTouchMoved = false;
                sideGesture.reset();
                recycleSideVelocity();
                sideVelocity = VelocityTracker.obtain();
                sideVelocity.addMovement(event);
                boolean resumedShelf = callbacks.resumeSideShelve(slot);
                if (resumedShelf) {
                    sideGesture.resumeShelving();
                    sideTouchMoved = true;
                }
                Log.i("VanStep", SHELF_TRACE + "touch down slot=" + slot
                        + " shelf=" + resumedShelf
                        + " x=" + sideTouchDownX + " y=" + sideTouchDownY);
                animate().cancel();
                ViewParent parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                return true;
            case MotionEvent.ACTION_MOVE:
                if (sideVelocity != null) {
                    sideVelocity.addMovement(event);
                }
                updateSideWindowDrag(event);
                return true;
            case MotionEvent.ACTION_UP:
                if (sideVelocity != null) {
                    sideVelocity.addMovement(event);
                }
                finishSideWindowTouch(event);
                recycleSideVelocity();
                DragShareSuppression.end();
                return true;
            case MotionEvent.ACTION_POINTER_DOWN:
                cancelSideGesture();
                return true;
            case MotionEvent.ACTION_CANCEL:
                cancelSideGesture();
                recycleSideVelocity();
                DragShareSuppression.end();
                return true;
            default:
                return true;
        }
    }

    private void updateSideWindowDrag(MotionEvent event) {
        float dx = event.getRawX() - sideTouchDownX;
        float dy = event.getRawY() - sideTouchDownY;
        float touchSlop = Math.max(dp(8),
                ViewConfiguration.get(getContext()).getScaledTouchSlop());
        if (dx * dx + dy * dy > touchSlop * touchSlop) {
            sideTouchMoved = true;
        }
        if (!sideTouchMoved) {
            return;
        }
        SideSlotGesturePolicy.Direction previous = sideGesture.direction();
        SideSlotGesturePolicy.Direction gestureDirection = sideGesture.move(dx, dy, touchSlop,
                callbacks.isVerticalWindowLayout(), callbacks.getSideDismissDirection());
        if (gestureDirection != previous) {
            Log.i("VanStep", SHELF_TRACE + "direction slot=" + slot
                    + " from=" + previous + " to=" + gestureDirection
                    + " dx=" + dx + " dy=" + dy);
        }
        if (gestureDirection == SideSlotGesturePolicy.Direction.SHELVE) {
            if (previous != gestureDirection && !callbacks.beginSideShelve(slot)) {
                sideGesture.cancel();
                return;
            }
            callbacks.dragSideShelve(slot, dx, dy);
            return;
        }
        if (gestureDirection != SideSlotGesturePolicy.Direction.DISMISS) {
            return;
        }
        float visualOffset;
        if (callbacks.isVerticalWindowLayout()) {
            visualOffset = Math.max(0f, dy);
            setTranslationX(0f);
            setTranslationY(visualOffset);
        } else {
            int direction = callbacks.getSideDismissDirection();
            visualOffset = dx * direction > 0 ? dx : 0f;
            setTranslationX(visualOffset);
            setTranslationY(0f);
        }
        float progress = Math.min(1f,
                Math.abs(visualOffset) / Math.max(1f, callbacks.getSideDismissDistancePx()));
        setAlpha(1f - progress * 0.46f);
    }

    private void finishSideWindowTouch(MotionEvent event) {
        float dx = event.getRawX() - sideTouchDownX;
        float dy = event.getRawY() - sideTouchDownY;
        if (sideGesture.direction() == SideSlotGesturePolicy.Direction.SHELVE) {
            float velocityX = 0f;
            float velocityY = 0f;
            if (sideVelocity != null) {
                sideVelocity.computeCurrentVelocity(1000,
                        ViewConfiguration.get(getContext()).getScaledMaximumFlingVelocity());
                velocityX = sideVelocity.getXVelocity();
                velocityY = sideVelocity.getYVelocity();
            }
            boolean commit = SideSlotGesturePolicy.shouldShelve(-dy, -velocityY,
                    callbacks.getSideDismissDistancePx(), dp(850));
            Log.i("VanStep", SHELF_TRACE + "finish slot=" + slot
                    + " direction=SHELVE commit=" + commit
                    + " dx=" + dx + " dy=" + dy
                    + " vx=" + velocityX + " vy=" + velocityY);
            callbacks.finishSideShelve(slot, commit, velocityX, velocityY);
        } else if (sideGesture.direction() == SideSlotGesturePolicy.Direction.DISMISS
                && callbacks.canDismissSlot(slot)
                && callbacks.movedPastSideDismissThreshold(dx, dy)) {
            Log.i("VanStep", SHELF_TRACE + "finish slot=" + slot
                    + " direction=DISMISS dx=" + dx + " dy=" + dy);
            callbacks.dismissSideWindow(slot);
        } else if (!sideTouchMoved) {
            Log.i("VanStep", SHELF_TRACE + "finish slot=" + slot
                    + " direction=CLICK dx=" + dx + " dy=" + dy);
            performClick();
        } else {
            Log.i("VanStep", SHELF_TRACE + "finish slot=" + slot
                    + " direction=BACK dx=" + dx + " dy=" + dy);
            callbacks.settleSideWindowBack(this);
        }
    }

    private void cancelSideGesture() {
        Log.i("VanStep", SHELF_TRACE + "cancel slot=" + slot
                + " direction=" + sideGesture.direction());
        if (sideGesture.direction() == SideSlotGesturePolicy.Direction.SHELVE) {
            callbacks.finishSideShelve(slot, false, 0f, 0f);
        } else {
            callbacks.settleSideWindowBack(this);
        }
        sideTouchMoved = true;
        sideGesture.cancel();
    }

    private void recycleSideVelocity() {
        if (sideVelocity != null) {
            sideVelocity.recycle();
            sideVelocity = null;
        }
    }

    public boolean isShelfAnimationActive() {
        return shelfAnimationActive;
    }

    public void setShelfAnimationActive(boolean active) {
        shelfAnimationActive = active;
        applyLiveAppVisibility();
    }

    private void applyLiveAppVisibility() {
        boolean visible = requestedLiveAppVisible && internalOverlay == null
                && !shelfAnimationActive;
        boolean retainSurface = internalOverlay == null && !visible && slot >= 0
                && callbacks.shouldRetainEmbeddedSurface(slot);
        embeddedContainer.setVisibility(visible || retainSurface ? VISIBLE : GONE);
        embeddedContainer.setAlpha(visible ? 1f : 0f);
        placeholder.setVisibility(visible ? GONE : VISIBLE);
        if (visible) {
            embeddedContainer.bringToFront();
            embeddedContainer.requestLayout();
        } else {
            placeholder.bringToFront();
            applyMainWindowPlaceholderStyle();
        }
        if (internalOverlay != null && internalOverlay.getParent() == this) {
            internalOverlay.bringToFront();
        }
    }

    private void applyMainWindowPlaceholderStyle() {
        setBackgroundColor(Color.TRANSPARENT);
    }

    private ImageView createEmptyWindowMark(Context context) {
        ImageView mark = new ImageView(context);
        mark.setImageResource(R.drawable.add);
        mark.setScaleType(ImageView.ScaleType.FIT_CENTER);
        mark.setContentDescription("空窗口");
        return mark;
    }

    private FrameLayout.LayoutParams matchFrame() {
        return new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT);
    }

    private int dp(float value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }

}
