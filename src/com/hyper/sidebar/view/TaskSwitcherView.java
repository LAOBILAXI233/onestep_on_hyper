package com.hyper.sidebar.view;

import android.content.ClipData;
import android.content.ClipDescription;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.os.IBinder;
import android.util.DisplayMetrics;
import android.view.DragEvent;
import android.view.Display;
import android.view.Gravity;
import android.view.HapticFeedbackConstants;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.hyper.sidebar.R;
import com.hyper.sidebar.SidebarController;
import com.hyper.sidebar.lsp.LSPLogger;
import com.hyper.sidebar.lsp.MultiTaskController;
import com.hyper.sidebar.lsp.OneStepStateBridge;
import com.hyper.sidebar.lsp.TaskResizer;
import com.hyper.sidebar.util.DragHapticFeedback;
import com.hyper.sidebar.util.MiuiMirrorDragBridge;

/** Three fixed OneStep 3.0 slots, each backed by a live virtual display. */
public class TaskSwitcherView extends LinearLayout
        implements MultiTaskController.Listener {
    // Hidden platform flags available to the SystemUI host on Android 16.
    private static final int VIRTUAL_DISPLAY_FLAG_SUPPORTS_TOUCH = 0x40;
    private static final int VIRTUAL_DISPLAY_FLAG_TRUSTED = 0x400;
    private static final int VIRTUAL_DISPLAY_FLAG_OWN_FOCUS = 0x4000;
    private static final int VIRTUAL_DISPLAY_FLAG_STEAL_TOP_FOCUS_DISABLED = 0x8000;
    private static final int PRIVATE_DISPLAY_FLAGS =
            DisplayManager.VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY
                    | VIRTUAL_DISPLAY_FLAG_SUPPORTS_TOUCH
                    | VIRTUAL_DISPLAY_FLAG_TRUSTED
                    | VIRTUAL_DISPLAY_FLAG_OWN_FOCUS
                    | VIRTUAL_DISPLAY_FLAG_STEAL_TOP_FOCUS_DISABLED;
    private static final int PRIVATE_DISPLAY_FALLBACK_FLAGS =
            DisplayManager.VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY
                    | VIRTUAL_DISPLAY_FLAG_SUPPORTS_TOUCH
                    | VIRTUAL_DISPLAY_FLAG_TRUSTED;

    private final SlotView[] mSlotViews =
            new SlotView[MultiTaskController.SLOT_COUNT];
    private final MultiTaskController mController;
    private boolean mNeedsFreshSurfaces;
    private boolean mContentDropMode;
    private SlotView mContentHoverSlot;
    private PendingContentDrop mPendingContentDrop;
    private Runnable mPendingDropRunnable;
    private static final int MIRROR_DROP_MAX_ATTEMPTS = 3;
    private static final long MIRROR_DROP_RETRY_MS = 48L;

    private static final class PendingContentDrop {
        final ClipData data;
        final int slotIndex;
        final int taskId;
        final int displayId;
        final float x;
        final float y;

        PendingContentDrop(ClipData data, int slotIndex, int taskId,
                int displayId, float x, float y) {
            this.data = data;
            this.slotIndex = slotIndex;
            this.taskId = taskId;
            this.displayId = displayId;
            this.x = x;
            this.y = y;
        }
    }

    public TaskSwitcherView(Context context) {
        this(context, null);
    }

    public TaskSwitcherView(Context context, android.util.AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public TaskSwitcherView(Context context, android.util.AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        setOrientation(VERTICAL);
        setPadding(0, 0, 0, 0);
        mController = MultiTaskController.getInstance(context);

        for (int i = 0; i < mSlotViews.length; i++) {
            final int index = i;
            SlotView slot = new SlotView(context, index);
            LayoutParams params = new LayoutParams(LayoutParams.MATCH_PARENT, 0, 1f);
            addView(slot, params);
            slot.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View v) {
                    LSPLogger.i("TaskSwitcherView: onClick slot=" + index);
                    mController.swapWithSlot(index);
                }
            });
            slot.setOnDragListener(new OnDragListener() {
                @Override
                public boolean onDrag(View v, DragEvent event) {
                    return handleSlotDrag((SlotView) v, event);
                }
            });
            mSlotViews[i] = slot;
        }
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        mController.setListener(this);
    }

    @Override
    protected void onDetachedFromWindow() {
        mPendingContentDrop = null;
        if (mPendingDropRunnable != null) {
            removeCallbacks(mPendingDropRunnable);
            mPendingDropRunnable = null;
        }
        mController.setListener(null);
        for (SlotView slot : mSlotViews) slot.releaseVirtualDisplay();
        super.onDetachedFromWindow();
    }

    @Override
    public void onSlotsChanged(MultiTaskController.Slot[] slots) {
        LSPLogger.d("TaskSwitcherView.onSlotsChanged: slots="
                + (slots == null ? "null" : slots.length));
        for (int i = 0; i < mSlotViews.length; i++) {
            mSlotViews[i].bind(slots != null && i < slots.length ? slots[i] : null);
        }
    }

    /**
     * Rebind live slot surfaces when OneStep is shown again.
     *
     * The virtual displays are portrait-locked and never change geometry, so a plain
     * refresh is enough — recreating the TextureView on every entry used to force the
     * parked task through a producer rebind (visible re-render + first-frame stall).
     * refreshVirtualDisplay() still recreates internally if the geometry is stale.
     */
    public void refreshVirtualDisplays() {
        for (SlotView slot : mSlotViews) {
            slot.refreshVirtualDisplay();
        }
        mNeedsFreshSurfaces = false;
    }

    /** The attached TextureViews need fresh consumers on the next OneStep entry. */
    public void markHidden() {
        mNeedsFreshSurfaces = true;
    }

    public static boolean isTaskDrag(DragEvent event) {
        return event != null && MultiTaskController.isAppDrag(event.getClipDescription());
    }

    private boolean handleSlotDrag(SlotView slot, DragEvent event) {
        ClipDescription description = event.getClipDescription();
        if (!MultiTaskController.isAppDrag(description)) return false;
        // A live task owns its slot until it is swiped away. Accepting another
        // drop here would leave the same task bound to two virtual displays.
        if (slot.getTag() != null) return false;
        switch (event.getAction()) {
            case DragEvent.ACTION_DRAG_STARTED:
                return true;
            case DragEvent.ACTION_DRAG_ENTERED:
                slot.setActivated(true);
                return true;
            case DragEvent.ACTION_DRAG_EXITED:
            case DragEvent.ACTION_DRAG_ENDED:
                slot.setActivated(false);
                return true;
            case DragEvent.ACTION_DROP:
                slot.setActivated(false);
                ComponentName component = MultiTaskController.readDraggedComponent(
                        event.getClipData());
                if (component != null) {
                    mController.putAppInSlot(slot.mIndex, component);
                    return true;
                }
                return false;
            default:
                return true;
        }
    }

    public void setContentDropMode(boolean enabled) {
        if (mContentDropMode == enabled) return;
        mContentDropMode = enabled;
        endContentDrag();
        int topInset = enabled
                ? Math.round(52f * getResources().getDisplayMetrics().density) : 0;
        setPadding(0, topInset, 0, 0);
        setClipToPadding(false);
        requestLayout();
        LSPLogger.i("TaskSwitcherView.setContentDropMode: enabled=" + enabled
                + " topInset=" + topInset);
    }

    public void updateContentDragLocation(DragEvent event, float rawX, float rawY) {
        if (!mContentDropMode || event == null
                || MultiTaskController.isAppDrag(event.getClipDescription())) {
            endContentDrag();
            return;
        }
        SlotView target = findContentTarget(rawX, rawY);
        if (target == mContentHoverSlot) return;
        endContentDrag();
        if (target == null || !mController.canDeliverContentToSlot(
                target.mIndex, event.getClipDescription())) {
            return;
        }
        mContentHoverSlot = target;
        target.setActivated(true);
        DragHapticFeedback.perform(target, HapticFeedbackConstants.CLOCK_TICK);
        FloatText.getInstance(getContext()).show(target, getSlotLabel(target));
        LSPLogger.i("TaskSwitcherView: content drag entered slot=" + target.mIndex);
    }

    public boolean dropContent(DragEvent event, float rawX, float rawY) {
        if (!mContentDropMode || event == null
                || MultiTaskController.isAppDrag(event.getClipDescription())) {
            return false;
        }
        SlotView target = findContentTarget(rawX, rawY);
        if (target == null) {
            endContentDrag();
            return false;
        }
        ClipData clipData = event.getClipData();
        if (clipData == null || clipData.getItemCount() == 0
                || !mController.canDeliverContentToSlot(
                target.mIndex, event.getClipDescription())) {
            endContentDrag();
            return false;
        }
        PendingContentDrop pending = target.stageContentDrop(
                new ClipData(clipData), rawX, rawY);
        boolean staged = pending != null;
        if (staged) {
            mPendingContentDrop = pending;
            DragHapticFeedback.perform(target, HapticFeedbackConstants.CONFIRM);
        }
        LSPLogger.i("TaskSwitcherView: content drop slot=" + target.mIndex
                + " staged=" + staged
                + (pending == null ? "" : " displayId=" + pending.displayId
                + " point=" + pending.x + "," + pending.y));
        endContentDrag();
        return staged;
    }

    /** Run only after the original platform drag has delivered ACTION_DRAG_ENDED. */
    public void deliverPendingContentDrop() {
        final PendingContentDrop pending = mPendingContentDrop;
        mPendingContentDrop = null;
        if (pending == null) return;
        if (mPendingDropRunnable != null) {
            removeCallbacks(mPendingDropRunnable);
        }
        mPendingDropRunnable = new Runnable() {
            private int mAttempt;

            @Override
            public void run() {
                mAttempt++;
                if (!isAttachedToWindow()) {
                    finish();
                    return;
                }
                SlotView slotView = pending.slotIndex >= 0
                        && pending.slotIndex < mSlotViews.length
                        ? mSlotViews[pending.slotIndex] : null;
                Object tag = slotView == null ? null : slotView.getTag();
                if (!(tag instanceof MultiTaskController.Slot)) {
                    LSPLogger.w("TaskSwitcherView: discard mirror drop; slot emptied index="
                            + pending.slotIndex);
                    finish();
                    return;
                }
                MultiTaskController.Slot slot = (MultiTaskController.Slot) tag;
                if (slot.taskId != pending.taskId || slot.displayId != pending.displayId) {
                    LSPLogger.w("TaskSwitcherView: discard mirror drop; slot changed index="
                            + pending.slotIndex + " expected=" + pending.taskId + "/"
                            + pending.displayId + " actual=" + slot.taskId + "/"
                            + slot.displayId);
                    finish();
                    return;
                }
                if (!slotView.isMirrorDropTargetReady(pending.displayId)) {
                    retryOrFinish("target display not ready");
                    return;
                }

                IBinder token = MiuiMirrorDragBridge.startAndDrop(
                        TaskSwitcherView.this, pending.data,
                        MiuiMirrorDragBridge.DEFAULT_DRAG_FLAGS,
                        pending.displayId, pending.x, pending.y);
                if (token != null) {
                    LSPLogger.i("TaskSwitcherView: native mirror drop sent slot="
                            + pending.slotIndex + " taskId=" + pending.taskId
                            + " displayId=" + pending.displayId + " point="
                            + pending.x + "," + pending.y + " attempt=" + mAttempt);
                    finish();
                    return;
                }
                retryOrFinish("mirror service rejected start/drop");
            }

            private void retryOrFinish(String reason) {
                if (mAttempt < MIRROR_DROP_MAX_ATTEMPTS && isAttachedToWindow()) {
                    LSPLogger.w("TaskSwitcherView: retry mirror drop slot="
                            + pending.slotIndex + " displayId=" + pending.displayId
                            + " attempt=" + mAttempt + " reason=" + reason);
                    postDelayed(this, MIRROR_DROP_RETRY_MS * mAttempt);
                    return;
                }
                LSPLogger.e("TaskSwitcherView: native mirror drop failed slot="
                        + pending.slotIndex + " displayId=" + pending.displayId
                        + " attempts=" + mAttempt + " reason=" + reason);
                finish();
            }

            private void finish() {
                if (mPendingDropRunnable == this) {
                    mPendingDropRunnable = null;
                }
            }
        };
        post(mPendingDropRunnable);
    }

    public void endContentDrag() {
        if (mContentHoverSlot != null) {
            mContentHoverSlot.setActivated(false);
            mContentHoverSlot = null;
        }
        FloatText.getInstance(getContext()).hide();
    }

    private SlotView findContentTarget(float rawX, float rawY) {
        for (SlotView slot : mSlotViews) {
            if (slot == null || slot.getTag() == null || slot.getVisibility() != VISIBLE) {
                continue;
            }
            int[] location = new int[2];
            slot.getLocationOnScreen(location);
            if (rawX >= location[0] && rawX < location[0] + slot.getWidth()
                    && rawY >= location[1] && rawY < location[1] + slot.getHeight()) {
                return slot;
            }
        }
        return null;
    }

    private CharSequence getSlotLabel(SlotView slotView) {
        Object tag = slotView == null ? null : slotView.getTag();
        if (!(tag instanceof MultiTaskController.Slot)) return "";
        MultiTaskController.Slot slot = (MultiTaskController.Slot) tag;
        if (slot.component == null) return "";
        String packageName = slot.component.getPackageName();
        try {
            PackageManager packageManager = getContext().getPackageManager();
            ApplicationInfo info = packageManager.getApplicationInfo(packageName, 0);
            CharSequence label = packageManager.getApplicationLabel(info);
            if (label != null && label.length() > 0) return label;
        } catch (Throwable ignored) {
        }
        return packageName;
    }

    private final class SlotView extends FrameLayout implements TextureView.SurfaceTextureListener {
        private final int mIndex;
        private TextureView mTextureView;
        private TextureView mPendingTextureView;
        private final TextView mAdd;
        private VirtualDisplay mVirtualDisplay;
        private Surface mSurface;
        private Surface mPendingSurface;
        private boolean mPromotionPosted;
        private int mVirtualWidth;
        private int mVirtualHeight;
        private int mVirtualDensity;
        private boolean mLandscapeTask;
        private int mTaskId = -1;
        private String mLastGeometryLog;
        private String mLastTextureTransformLog;
        /** First-frame promote can stall on landscape→slot; force show after settle. */
        private final Runnable mPromoteTimeout = new Runnable() {
            @Override
            public void run() {
                if (mPendingTextureView != null && getTag() != null) {
                    LSPLogger.i("TaskSwitcherView: promote timeout slot=" + mIndex
                            + " landscape=" + mLandscapeTask);
                    promotePendingTextureView();
                }
            }
        };

        SlotView(Context context, int index) {
            super(context);
            mIndex = index;
            setBackgroundResource(R.drawable.multitask_slot_background);
            setClipToOutline(true);
            setClickable(true);

            mTextureView = new TextureView(context);
            mTextureView.setSurfaceTextureListener(this);
            addView(mTextureView, new FrameLayout.LayoutParams(
                    LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));

            mAdd = new TextView(context);
            mAdd.setText("+");
            mAdd.setTextColor(Color.WHITE);
            mAdd.setTextSize(30);
            mAdd.setGravity(Gravity.CENTER);
            mAdd.setAlpha(0.78f);
            addView(mAdd, new FrameLayout.LayoutParams(
                    LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
        }

        PendingContentDrop stageContentDrop(ClipData data, float rawX, float rawY) {
            Object tag = getTag();
            if (!(tag instanceof MultiTaskController.Slot) || data == null
                    || mVirtualWidth <= 0 || mVirtualHeight <= 0
                    || getWidth() <= 0 || getHeight() <= 0) {
                return null;
            }
            MultiTaskController.Slot slot = (MultiTaskController.Slot) tag;
            if (slot.displayId < 0 || slot.taskId < 0) return null;

            int[] location = new int[2];
            getLocationOnScreen(location);
            float localX = rawX - location[0];
            float localY = rawY - location[1];
            float[] virtualPoint = mapPreviewToVirtual(localX, localY);
            if (virtualPoint == null) return null;
            return new PendingContentDrop(data, mIndex, slot.taskId, slot.displayId,
                    virtualPoint[0], virtualPoint[1]);
        }

        private float[] mapPreviewToVirtual(float viewX, float viewY) {
            int viewWidth = getWidth();
            int viewHeight = getHeight();
            if (viewWidth <= 0 || viewHeight <= 0
                    || mVirtualWidth <= 0 || mVirtualHeight <= 0) {
                return null;
            }

            float virtualX;
            float virtualY;
            if (!mLandscapeTask) {
                virtualX = viewX * mVirtualWidth / (float) viewWidth;
                virtualY = viewY * mVirtualHeight / (float) viewHeight;
            } else {
                Rect source = resolveLetterboxSource();
                if (source == null || source.width() <= 0 || source.height() <= 0) {
                    return null;
                }
                float scale = Math.min(viewWidth / (float) source.height(),
                        viewHeight / (float) source.width());
                if (!(scale > 0f) || Float.isNaN(scale) || Float.isInfinite(scale)) {
                    return null;
                }
                float drawnWidth = source.height() * scale;
                float drawnHeight = source.width() * scale;
                float dx = (viewWidth - drawnWidth) * 0.5f;
                float dy = (viewHeight - drawnHeight) * 0.5f;
                if (viewX < dx || viewX >= dx + drawnWidth
                        || viewY < dy || viewY >= dy + drawnHeight) {
                    return null;
                }
                Matrix bufferToView = new Matrix();
                bufferToView.setValues(new float[] {
                        0f, -scale, dx + source.bottom * scale,
                        scale, 0f, dy - source.left * scale,
                        0f, 0f, 1f
                });
                Matrix viewToBuffer = new Matrix();
                if (!bufferToView.invert(viewToBuffer)) return null;
                float[] point = new float[] { viewX, viewY };
                viewToBuffer.mapPoints(point);
                if (point[0] < source.left || point[0] >= source.right
                        || point[1] < source.top || point[1] >= source.bottom) {
                    return null;
                }
                virtualX = point[0];
                virtualY = point[1];
            }
            return new float[] {
                    clamp(virtualX, 0f, Math.max(0f, mVirtualWidth - 1f)),
                    clamp(virtualY, 0f, Math.max(0f, mVirtualHeight - 1f))
            };
        }

        private float clamp(float value, float min, float max) {
            return Math.max(min, Math.min(value, max));
        }

        private boolean isMirrorDropTargetReady(int displayId) {
            if (!isAttachedToWindow() || mVirtualDisplay == null
                    || mSurface == null || !mSurface.isValid()) {
                return false;
            }
            Display display = mVirtualDisplay.getDisplay();
            return display != null && display.getDisplayId() == displayId
                    && display.getState() != Display.STATE_OFF;
        }

        void bind(MultiTaskController.Slot slot) {
            MultiTaskController.Slot previous = getTag() instanceof MultiTaskController.Slot
                    ? (MultiTaskController.Slot) getTag() : null;
            boolean taskChanged = slot != null && (previous == null
                    || previous.taskId != slot.taskId
                    || previous.displayId != slot.displayId);
            LSPLogger.d("TaskSwitcherView.bind: RAW slot=" + mIndex
                    + " slotArg=" + (slot == null ? "null" : slot.taskId + "/" + slot.displayId)
                    + " previous=" + (previous == null ? "null" : previous.taskId + "/" + previous.displayId)
                    + " taskChanged=" + taskChanged);
            setTag(slot);
            boolean occupied = slot != null;
            mTaskId = occupied ? slot.taskId : -1;
            Context hostContext = SidebarController.getInstance(getContext()).getHostContext();
            boolean detectedLandscape = occupied
                    && TaskResizer.isLandscapeTask(hostContext, slot.taskId);
            // Prefer the park-time hint for the whole occupancy of this slot.
            // After moveRootTaskToDisplay, HyperOS often reports portrait for the root
            // activity (bilibili MainActivityV2) while the player is still landscape.
            boolean hintedLandscape = occupied && slot.landscapeHint;
            boolean previousLandscape = mLandscapeTask;
            mLandscapeTask = hintedLandscape || detectedLandscape;
            boolean orientationChanged = occupied
                    && previousLandscape != mLandscapeTask;
            boolean geometryMismatch = occupied && hasStaleGeometry();
            mAdd.setVisibility(occupied ? GONE : VISIBLE);
            // Keep occupied preview visible even while a pending recreate is in flight.
            // recreateTextureView still starts the replacement at alpha 0 until promote.
            if (mPendingTextureView == null) {
                mTextureView.setAlpha(occupied ? 1f : 0f);
            }
            if (!occupied) {
                removeCallbacks(mPromoteTimeout);
                releasePendingSurface();
                mTextureView.setTransform(new Matrix());
                resetEmptyVirtualDisplayIfNeeded();
            }
            setContentDescription(occupied && slot.component != null
                    ? slot.component.getPackageName() : "Add live task");
            if (occupied && (taskChanged || orientationChanged || geometryMismatch)) {
                LSPLogger.i("TaskSwitcherView.bind: slot=" + mIndex
                        + " taskId=" + slot.taskId
                        + " component=" + slot.component
                        + " displayId=" + slot.displayId
                        + " landscape=" + mLandscapeTask
                        + " hinted=" + hintedLandscape
                        + " detected=" + detectedLandscape
                        + " taskChanged=" + taskChanged
                        + " orientationChanged=" + orientationChanged
                        + " geometryMismatch=" + geometryMismatch
                        + " virtual=" + mVirtualWidth + "x" + mVirtualHeight
                        + " density=" + mVirtualDensity
                        + " view=" + getWidth() + "x" + getHeight());
            }
            // The VirtualDisplay is portrait-locked (identical to the physical panel),
            // so moving a task between display 0 and a slot produces NO configuration
            // change: no relaunch, no re-render, no producer resize by itself. But the
            // FIRST time a given task lands on this VD, the SurfaceFlinger producer/
            // consumer connection still needs an explicit reconnect — evidence 2026-07-23
            // 20:28-20:44: matrix and task visibility were both correct, yet the slot
            // stayed black until an unrelated activate/rotate90 happened to reconnect it.
            // A geometry-only reconnect (setSurface null→mSurface, no resize/bounds
            // change) is cheap enough to run on every taskChanged without reintroducing
            // the recreateTextureView() first-frame stall this class used to have.
            if (geometryMismatch) {
                post(new Runnable() {
                    @Override
                    public void run() {
                        if (getTag() != null) recreateTextureView();
                    }
                });
            } else if (taskChanged) {
                refreshVirtualDisplay();
            } else {
                applyTextureTransform(mTextureView);
            }
        }

        private float mDownX;
        private float mDownY;

        @Override
        public boolean onTouchEvent(MotionEvent event) {
            LSPLogger.i("TaskSwitcherView.SlotView: onTouchEvent slot=" + mIndex
                    + " action=" + MotionEvent.actionToString(event.getActionMasked())
                    + " x=" + event.getX() + " y=" + event.getY());
            switch (event.getActionMasked()) {
                case MotionEvent.ACTION_DOWN:
                    mDownX = event.getX();
                    mDownY = event.getY();
                    return true;
                case MotionEvent.ACTION_UP:
                    float dx = event.getX() - mDownX;
                    float dy = event.getY() - mDownY;
                    boolean swipeRemove = getTag() != null && Math.abs(dx) >= getWidth() * 0.35f
                            && Math.abs(dx) > Math.abs(dy);
                    LSPLogger.i("TaskSwitcherView.SlotView: ACTION_UP slot=" + mIndex
                            + " dx=" + dx + " dy=" + dy + " width=" + getWidth()
                            + " occupied=" + (getTag() != null) + " swipeRemove=" + swipeRemove);
                    if (swipeRemove) {
                        animate().translationX(dx > 0 ? getWidth() : -getWidth())
                                .alpha(0f).setDuration(140L)
                                .withEndAction(new Runnable() {
                                    @Override
                                    public void run() {
                                        setTranslationX(0f);
                                        setAlpha(1f);
                                        mController.removeSlot(mIndex);
                                    }
                                }).start();
                    } else {
                        performClick();
                    }
                    return true;
                case MotionEvent.ACTION_CANCEL:
                    return true;
                default:
                    return true;
            }
        }

        @Override
        public boolean performClick() {
            super.performClick();
            return true;
        }

        @Override
        public void setActivated(boolean activated) {
            super.setActivated(activated);
            animate().scaleX(activated ? 0.94f : 1f)
                    .scaleY(activated ? 0.94f : 1f)
                    .alpha(activated ? 0.72f : 1f)
                    .setDuration(100L)
                    .start();
        }

        @Override
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture,
                int width, int height) {
            if (isPendingSurface(surfaceTexture)) {
                attachPendingSurface(surfaceTexture);
                return;
            }
            mSurface = new Surface(surfaceTexture);
            mTextureView.setTransform(new Matrix());
            updateVirtualDisplaySize(surfaceTexture, width, height);
        }

        @Override
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture,
                int width, int height) {
            if (isPendingSurface(surfaceTexture)) {
                surfaceTexture.setDefaultBufferSize(
                        Math.max(1, mVirtualWidth), Math.max(1, mVirtualHeight));
                applyTextureTransform(mPendingTextureView);
                return;
            }
            updateVirtualDisplaySize(surfaceTexture, width, height);
        }

        @Override
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            if (isPendingSurface(surfaceTexture)) {
                if (mVirtualDisplay != null) {
                    mVirtualDisplay.setSurface(mSurface);
                }
                releasePendingSurface();
                return true;
            }
            if (mVirtualDisplay != null) mVirtualDisplay.setSurface(null);
            if (mSurface != null) {
                mSurface.release();
                mSurface = null;
            }
            return true;
        }

        @Override
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            if (isPendingSurface(surfaceTexture) && !mPromotionPosted) {
                // This callback can run during RenderThread's display-list traversal.
                // Defer child removal until the traversal has completed.
                mPromotionPosted = true;
                post(new Runnable() {
                    @Override
                    public void run() {
                        mPromotionPosted = false;
                        if (mPendingTextureView != null) {
                            promotePendingTextureView();
                        }
                    }
                });
            }
        }

        private boolean isPendingSurface(SurfaceTexture surfaceTexture) {
            return mPendingTextureView != null
                    && mPendingTextureView.getSurfaceTexture() == surfaceTexture;
        }

        void recreateTextureView() {
            if (mPendingTextureView != null || getTag() == null) return;

            TextureView replacement = new TextureView(getContext());
            // Keep the previous TextureView visible underneath. Only the pending
            // replacement starts transparent; promoteTimeout unblocks blank slots.
            replacement.setAlpha(0f);
            replacement.setSurfaceTextureListener(this);
            mPendingTextureView = replacement;
            int addIndex = indexOfChild(mAdd);
            addView(replacement, addIndex < 0 ? getChildCount() : addIndex,
                    new FrameLayout.LayoutParams(
                            LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
            removeCallbacks(mPromoteTimeout);
            postDelayed(mPromoteTimeout, 1200L);
            LSPLogger.i("TaskSwitcherView: preparing fresh surface slot=" + mIndex
                    + " landscape=" + mLandscapeTask);
        }

        private void attachPendingSurface(SurfaceTexture surfaceTexture) {
            DisplayMetrics metrics = readPhysicalMetrics();
            // Portrait-locked VD: geometry never depends on task orientation.
            mVirtualWidth = Math.max(1, Math.min(metrics.widthPixels, metrics.heightPixels));
            mVirtualHeight = Math.max(1, Math.max(metrics.widthPixels, metrics.heightPixels));
            mVirtualDensity = Math.max(1, metrics.densityDpi);
            surfaceTexture.setDefaultBufferSize(mVirtualWidth, mVirtualHeight);
            applyTextureTransform(mPendingTextureView);
            mPendingSurface = new Surface(surfaceTexture);
            try {
                if (mVirtualDisplay != null) {
                    mVirtualDisplay.setSurface(null);
                    mVirtualDisplay.resize(
                            mVirtualWidth, mVirtualHeight, mVirtualDensity);
                    applyVirtualDisplayRotation();
                    mVirtualDisplay.setSurface(mPendingSurface);
                    mController.registerSlotDisplay(
                            mIndex, mVirtualDisplay.getDisplay().getDisplayId());
                    LSPLogger.i("TaskSwitcherView: attached fresh surface slot=" + mIndex
                            + " landscape=" + mLandscapeTask
                            + " fullConfig=" + mVirtualWidth + "x" + mVirtualHeight
                            + "@" + mVirtualDensity);
                } else {
                    Surface oldSurface = mSurface;
                    mSurface = mPendingSurface;
                    mPendingSurface = null;
                    createVirtualDisplay(mVirtualWidth, mVirtualHeight, mVirtualDensity);
                    mPendingSurface = mSurface;
                    mSurface = oldSurface;
                }
            } catch (Throwable t) {
                LSPLogger.e("TaskSwitcherView: fresh surface failed slot=" + mIndex, t);
                if (mVirtualDisplay != null) mVirtualDisplay.setSurface(mSurface);
                releasePendingSurface();
            }
        }

        private void promotePendingTextureView() {
            if (mPendingTextureView == null) return;
            removeCallbacks(mPromoteTimeout);
            TextureView oldTextureView = mTextureView;
            Surface oldSurface = mSurface;
            mTextureView = mPendingTextureView;
            mSurface = mPendingSurface;
            mPendingTextureView = null;
            mPendingSurface = null;

            mTextureView.setAlpha(getTag() == null ? 0f : 1f);
            // attachPendingSurface often runs before the pending TextureView is laid out.
            // applyTextureTransform then left identity, so a 3200x1440 buffer only showed its
            // top-left corner (looks blank). Re-apply after promotion and after the next layout.
            applyTextureTransform(mTextureView);
            scheduleTextureTransform(mTextureView);
            oldTextureView.setSurfaceTextureListener(null);
            removeView(oldTextureView);
            if (oldSurface != null) oldSurface.release();
            LSPLogger.i("TaskSwitcherView: promoted fresh surface slot=" + mIndex
                    + " landscape=" + mLandscapeTask
                    + " fullConfig=" + mVirtualWidth + "x" + mVirtualHeight
                    + " view=" + mTextureView.getWidth() + "x" + mTextureView.getHeight());
        }

        private void releasePendingSurface() {
            mPromotionPosted = false;
            removeCallbacks(mPromoteTimeout);
            if (mPendingSurface != null) {
                mPendingSurface.release();
                mPendingSurface = null;
            }
            if (mPendingTextureView != null) {
                mPendingTextureView.setSurfaceTextureListener(null);
                removeView(mPendingTextureView);
                mPendingTextureView = null;
            }
        }

        /**
         * Computes the VD geometry: ALWAYS the physical panel's portrait config.
         *
         * Portrait-locked VD is the core of the render fix: a task moving between
         * display 0 and this slot sees an identical Configuration (same size, same
         * density, same rotation), so HyperOS dispatches no relaunch and the app does
         * not re-render. A landscape task is letterboxed by WMS exactly like on the
         * physical portrait panel; the preview then rotates that letterbox region in
         * the TextureView (see applyTextureTransform). The old landscape-VD approach
         * forced a 1440x3200↔3200x1440 resize on every park/unpark — a full config
         * change, an activity re-render, and the "only a corner shows" producer /
         * consumer mismatch.
         */
        private void updateVirtualDisplaySize(SurfaceTexture surfaceTexture,
                int width, int height) {
            DisplayMetrics metrics = new DisplayMetrics();
            // A re-entered sidebar can inherit a transformed SystemUI display.
            // Always read the physical default display for the live task config.
            Context hostContext = SidebarController.getInstance(getContext()).getHostContext();
            DisplayManager displayManager = (DisplayManager) hostContext
                    .getSystemService(Context.DISPLAY_SERVICE);
            Display display = displayManager == null
                    ? null : displayManager.getDisplay(Display.DEFAULT_DISPLAY);
            if (display == null) display = getDisplay();
            if (display != null) {
                display.getRealMetrics(metrics);
            } else {
                metrics.setTo(getResources().getDisplayMetrics());
            }

            int virtualWidth = Math.max(1, Math.min(metrics.widthPixels, metrics.heightPixels));
            int virtualHeight = Math.max(1, Math.max(metrics.widthPixels, metrics.heightPixels));
            int virtualDensity = Math.max(1, metrics.densityDpi);
            mVirtualWidth = virtualWidth;
            mVirtualHeight = virtualHeight;
            mVirtualDensity = virtualDensity;
            surfaceTexture.setDefaultBufferSize(virtualWidth, virtualHeight);
            applyTextureTransform(mTextureView);
            createVirtualDisplay(virtualWidth, virtualHeight, virtualDensity);
            LSPLogger.i("TaskSwitcherView: preview=" + width + "x" + height
                    + " taskOrientation=" + (mLandscapeTask ? "landscape" : "portrait")
                    + " fullConfig=" + virtualWidth + "x" + virtualHeight
                    + "@" + virtualDensity + " sourceDisplay="
                    + (display == null ? -1 : display.getDisplayId()));
        }

        /**
         * An occupied slot can become empty without destroying its display.
         * With portrait-locked geometry this only needs to act after a real panel
         * metrics change; it never resizes on task orientation flips anymore.
         */
        private void resetEmptyVirtualDisplayIfNeeded() {
            DisplayMetrics metrics = readPhysicalMetrics();
            int portraitWidth = Math.max(1, Math.min(metrics.widthPixels, metrics.heightPixels));
            int portraitHeight = Math.max(1, Math.max(metrics.widthPixels, metrics.heightPixels));
            int density = Math.max(1, metrics.densityDpi);
            if (mVirtualWidth == portraitWidth && mVirtualHeight == portraitHeight
                    && mVirtualDensity == density) {
                return;
            }

            mVirtualWidth = portraitWidth;
            mVirtualHeight = portraitHeight;
            mVirtualDensity = density;
            SurfaceTexture texture = mTextureView.getSurfaceTexture();
            if (texture != null) {
                texture.setDefaultBufferSize(portraitWidth, portraitHeight);
            }
            try {
                if (mVirtualDisplay != null) {
                    mVirtualDisplay.setSurface(null);
                    mVirtualDisplay.resize(portraitWidth, portraitHeight, density);
                    mVirtualDisplay.setSurface(mSurface);
                    mController.registerSlotDisplay(
                            mIndex, mVirtualDisplay.getDisplay().getDisplayId());
                }
                LSPLogger.i("TaskSwitcherView: reset empty slot=" + mIndex
                        + " to " + portraitWidth + "x" + portraitHeight + "@" + density);
            } catch (Throwable t) {
                LSPLogger.e("TaskSwitcherView: reset empty slot failed=" + mIndex, t);
            }
        }

        private void createVirtualDisplay(int width, int height, int density) {
            if (mVirtualDisplay != null) {
                mVirtualDisplay.resize(width, height, density);
                applyVirtualDisplayRotation();
                mVirtualDisplay.setSurface(mSurface);
                mController.registerSlotDisplay(
                        mIndex, mVirtualDisplay.getDisplay().getDisplayId());
                LSPLogger.i("TaskSwitcherView: resized slot=" + mIndex + " to "
                        + width + "x" + height + "@" + density);
                return;
            }

            Context hostContext = SidebarController.getInstance(getContext()).getHostContext();
            DisplayManager displayManager = hostContext == null ? null
                    : (DisplayManager) hostContext.getSystemService(Context.DISPLAY_SERVICE);
            if (displayManager == null) {
                LSPLogger.e("TaskSwitcherView: no DisplayManager slot=" + mIndex);
                return;
            }

            Throwable primaryFailure = null;
            try {
                mVirtualDisplay = createPrivateVirtualDisplay(displayManager, width, height,
                        density, PRIVATE_DISPLAY_FLAGS);
            } catch (Throwable t) {
                primaryFailure = t;
                LSPLogger.w("TaskSwitcherView: private display full flags failed slot="
                        + mIndex + " flags=0x" + Integer.toHexString(PRIVATE_DISPLAY_FLAGS)
                        + " error=" + t);
            }

            if (mVirtualDisplay == null) {
                try {
                    mVirtualDisplay = createPrivateVirtualDisplay(displayManager, width, height,
                            density, PRIVATE_DISPLAY_FALLBACK_FLAGS);
                } catch (Throwable fallbackFailure) {
                    LSPLogger.e("TaskSwitcherView: private display fallback failed slot="
                            + mIndex + " flags=0x"
                            + Integer.toHexString(PRIVATE_DISPLAY_FALLBACK_FLAGS),
                            fallbackFailure);
                    return;
                }
            }

            if (mVirtualDisplay == null) {
                LSPLogger.e("TaskSwitcherView: private display returned null slot=" + mIndex
                        + " primaryFailure=" + primaryFailure);
                return;
            }

            applyVirtualDisplayRotation();
            Display display = mVirtualDisplay.getDisplay();
            mController.registerSlotDisplay(mIndex, display.getDisplayId());
            LSPLogger.i("TaskSwitcherView: created private slot=" + mIndex
                    + " displayId=" + display.getDisplayId()
                    + " name=" + display.getName()
                    + " displayFlags=0x" + Integer.toHexString(display.getFlags())
                    + " geometry=" + width + "x" + height + "@" + density);
        }

        private VirtualDisplay createPrivateVirtualDisplay(DisplayManager displayManager,
                int width, int height, int density, int flags) {
            return displayManager.createVirtualDisplay(
                    "OneStep-slot-" + mIndex, width, height, density, mSurface, flags);
        }

        void refreshVirtualDisplay() {
            SurfaceTexture surfaceTexture = mTextureView.getSurfaceTexture();
            if (surfaceTexture == null || mSurface == null) {
                // Evidence 2026-07-23 21:46: bind() taskChanged=true called this, but
                // the TextureView had no SurfaceTexture yet (not laid out/attached),
                // so this returned silently — no matrix, no VD rebind, slot stayed
                // black forever with no retry. Fall back to the transform-only path
                // so at least the identity-vs-landscape decision still applies, and
                // retry the VD rebind once the surface actually becomes available.
                LSPLogger.w("TaskSwitcherView: refreshVirtualDisplay slot=" + mIndex
                        + " skip=noSurface surfaceTexture=" + (surfaceTexture != null)
                        + " mSurface=" + (mSurface != null));
                applyTextureTransform(mTextureView);
                return;
            }
            // A task can keep the same display id while HyperOS changes the root
            // configuration behind our back. In that case resize-in-place is not
            // enough: the producer buffer and TextureView consumer are already
            // out of agreement, which renders only the buffer's top-left corner.
            if (hasStaleGeometry()) {
                LSPLogger.w("TaskSwitcherView: stale geometry on refresh slot=" + mIndex
                        + " landscape=" + mLandscapeTask
                        + " virtual=" + mVirtualWidth + "x" + mVirtualHeight);
                recreateTextureView();
                return;
            }
            if (mVirtualWidth <= 0 || mVirtualHeight <= 0 || mVirtualDensity <= 0) {
                updateVirtualDisplaySize(surfaceTexture, getWidth(), getHeight());
                return;
            }
            try {
                // Reset both sides of the producer/consumer binding. Reusing
                // the stale binding is what leaves the full-size source cropped.
                surfaceTexture.setDefaultBufferSize(mVirtualWidth, mVirtualHeight);
                applyTextureTransform(mTextureView);
                mTextureView.invalidate();
                if (mVirtualDisplay != null) {
                    mVirtualDisplay.setSurface(null);
                    mVirtualDisplay.resize(mVirtualWidth, mVirtualHeight, mVirtualDensity);
                    applyVirtualDisplayRotation();
                    mVirtualDisplay.setSurface(mSurface);
                    mController.registerSlotDisplay(
                            mIndex, mVirtualDisplay.getDisplay().getDisplayId());
                    LSPLogger.i("TaskSwitcherView: refreshed slot=" + mIndex + " to "
                            + mVirtualWidth + "x" + mVirtualHeight + "@" + mVirtualDensity);
                } else {
                    createVirtualDisplay(mVirtualWidth, mVirtualHeight, mVirtualDensity);
                }
            } catch (Throwable t) {
                LSPLogger.e("TaskSwitcherView: refresh slot failed=" + mIndex, t);
            }
        }

        void releaseVirtualDisplay() {
            if (mVirtualDisplay != null) {
                mVirtualDisplay.release();
                mVirtualDisplay = null;
            }
            releasePendingSurface();
            if (mSurface != null) {
                mSurface.release();
                mSurface = null;
            }
        }

        private void applyVirtualDisplayRotation() {
            if (mVirtualDisplay == null) return;
            // The logical display geometry defines the task orientation. The
            // vendor-only VirtualDisplay#setRotation API changes that geometry
            // independently and causes black/relaunched tasks on HyperOS 2.
            String signature = mLandscapeTask + ":" + mVirtualWidth + "x" + mVirtualHeight
                    + "@" + mVirtualDensity;
            if (!signature.equals(mLastGeometryLog)) {
                mLastGeometryLog = signature;
                LSPLogger.d("TaskSwitcherView: slot=" + mIndex
                        + " landscape=" + mLandscapeTask + " geometry="
                        + mVirtualWidth + "x" + mVirtualHeight
                        + " density=" + mVirtualDensity);
            }
        }

        private DisplayMetrics readPhysicalMetrics() {
            DisplayMetrics metrics = new DisplayMetrics();
            Context hostContext = SidebarController.getInstance(getContext()).getHostContext();
            DisplayManager displayManager = hostContext == null ? null
                    : (DisplayManager) hostContext.getSystemService(Context.DISPLAY_SERVICE);
            Display display = displayManager == null
                    ? null : displayManager.getDisplay(Display.DEFAULT_DISPLAY);
            if (display == null) display = getDisplay();
            if (display != null) {
                display.getRealMetrics(metrics);
            } else {
                metrics.setTo(getResources().getDisplayMetrics());
            }
            return metrics;
        }

        /**
         * Returns true when the panel metrics and the producer geometry disagree.
         * With a portrait-locked VD this only trips on a real display change
         * (density / panel mode), not on task orientation flips.
         */
        private boolean hasStaleGeometry() {
            if (mVirtualWidth <= 0 || mVirtualHeight <= 0 || mVirtualDensity <= 0) {
                return false;
            }
            DisplayMetrics metrics = readPhysicalMetrics();
            int expectedWidth = Math.max(1, Math.min(metrics.widthPixels, metrics.heightPixels));
            int expectedHeight = Math.max(1, Math.max(metrics.widthPixels, metrics.heightPixels));
            int expectedDensity = Math.max(1, metrics.densityDpi);
            boolean mismatch = mVirtualWidth != expectedWidth
                    || mVirtualHeight != expectedHeight
                    || mVirtualDensity != expectedDensity;
            if (mismatch) {
                LSPLogger.w("TaskSwitcherView: geometry mismatch slot=" + mIndex
                        + " landscape=" + mLandscapeTask
                        + " actual=" + mVirtualWidth + "x" + mVirtualHeight
                        + "@" + mVirtualDensity
                        + " expected=" + expectedWidth + "x" + expectedHeight
                        + "@" + expectedDensity);
            }
            return mismatch;
        }

        @Override
        protected void onLayout(boolean changed, int left, int top, int right, int bottom) {
            super.onLayout(changed, left, top, right, bottom);
            if (!changed || !mLandscapeTask) return;
            // Evidence: landscape buffer attach/promote can finish before first layout. Without
            // a post-layout transform the TextureView keeps identity and only shows a corner.
            applyTextureTransform(mTextureView);
            if (mPendingTextureView != null) {
                applyTextureTransform(mPendingTextureView);
            }
        }

        private void scheduleTextureTransform(final TextureView textureView) {
            if (textureView == null) return;
            textureView.post(new Runnable() {
                @Override
                public void run() {
                    applyTextureTransform(textureView);
                }
            });
        }

        private void applyTextureTransform(TextureView textureView) {
            if (textureView == null) {
                LSPLogger.i("TaskSwitcherView: applyTextureTransform slot=" + mIndex
                        + " skip=nullTextureView");
                return;
            }
            if (!mLandscapeTask || mVirtualWidth <= 0 || mVirtualHeight <= 0) {
                LSPLogger.i("TaskSwitcherView: applyTextureTransform slot=" + mIndex
                        + " skip=notLandscapeOrNoVirtual landscape=" + mLandscapeTask
                        + " virtual=" + mVirtualWidth + "x" + mVirtualHeight);
                textureView.setTransform(new Matrix());
                return;
            }
            int viewWidth = textureView.getWidth();
            int viewHeight = textureView.getHeight();
            if (viewWidth <= 0 || viewHeight <= 0) {
                // Do NOT write identity here. Identity + letterboxed buffer = blank corner.
                LSPLogger.i("TaskSwitcherView: applyTextureTransform slot=" + mIndex
                        + " skip=zeroView view=" + viewWidth + "x" + viewHeight
                        + " retryScheduled=true");
                scheduleTextureTransform(textureView);
                return;
            }

            // The task renders the SAME fixed-orientation letterbox it had on the
            // physical portrait panel (VD config == panel config). Rotate that region
            // clockwise into the slot view — the same mapping rotate90() applies to
            // the main-area leash, just expressed as a TextureView matrix.
            Rect source = resolveLetterboxSource();
            if (source == null || source.width() <= 0 || source.height() <= 0) {
                LSPLogger.i("TaskSwitcherView: applyTextureTransform slot=" + mIndex
                        + " skip=badSource source=" + source);
                textureView.setTransform(new Matrix());
                return;
            }

            float scale = Math.min(viewWidth / (float) source.height(),
                    viewHeight / (float) source.width());
            if (!(scale > 0f) || Float.isNaN(scale) || Float.isInfinite(scale)) {
                LSPLogger.i("TaskSwitcherView: applyTextureTransform slot=" + mIndex
                        + " skip=badScale scale=" + scale + " source=" + source
                        + " view=" + viewWidth + "x" + viewHeight);
                textureView.setTransform(new Matrix());
                return;
            }
            float drawnW = source.height() * scale;
            float drawnH = source.width() * scale;
            float dx = (viewWidth - drawnW) * 0.5f;
            float dy = (viewHeight - drawnH) * 0.5f;

            // Desired buffer->view CW 90° rotation mapping.
            // Matrix row-major format for clockwise 90°:
            //   [  0   -s   tx ]    x' = -s*y + tx
            //   [  s    0   ty ] => y' =  s*x + ty
            //   [  0    0    1 ]
            // After rotation, buffer (0, 0) maps to view (dx + source.bottom*scale, dy).
            // Buffer (source.width, 0) maps to (dx + source.bottom*scale, dy + source.width*scale).
            Matrix desiredBufferToView = new Matrix();
            desiredBufferToView.setValues(new float[] {
                    0f, -scale, dx + source.bottom * scale,
                    scale, 0f, dy - source.left * scale,
                    0f, 0f, 1f
            });

            // TextureView first fits the producer buffer into this view (S), then
            // applies setTransform() in view-local coordinates (T). We need
            // T ∘ S = D, therefore T = D ∘ S⁻¹. Reversing the concat order
            // yields S⁻¹ ∘ D; on a 1440x3200 buffer in a 360x800 slot that
            // changes the expected x translation from 360 to 1440+ and moves the
            // entire texture outside the clipped slot (a fully black preview).
            Matrix implicitBufferToView = new Matrix();
            implicitBufferToView.setScale(viewWidth / (float) mVirtualWidth,
                    viewHeight / (float) mVirtualHeight);
            Matrix viewToBuffer = new Matrix();
            if (!implicitBufferToView.invert(viewToBuffer)) {
                LSPLogger.i("TaskSwitcherView: applyTextureTransform slot=" + mIndex
                        + " skip=invertFailed virtual=" + mVirtualWidth + "x" + mVirtualHeight
                        + " view=" + viewWidth + "x" + viewHeight);
                textureView.setTransform(new Matrix());
                return;
            }

            Matrix transform = new Matrix();
            transform.setConcat(desiredBufferToView, viewToBuffer);
            textureView.setTransform(transform);
            textureView.invalidate();

            float[] values = new float[9];
            transform.getValues(values);
            String signature = mVirtualWidth + "x" + mVirtualHeight + "/"
                    + viewWidth + "x" + viewHeight + "/" + source + "/"
                    + values[0] + "/" + values[1] + "/" + values[2] + "/"
                    + values[3] + "/" + values[4] + "/" + values[5];
            if (!signature.equals(mLastTextureTransformLog)) {
                mLastTextureTransformLog = signature;
                LSPLogger.i("TaskSwitcherView: texture transform slot=" + mIndex
                        + " buffer=" + mVirtualWidth + "x" + mVirtualHeight
                        + " source=" + source
                        + " view=" + viewWidth + "x" + viewHeight
                        + " scale=" + scale + " drawn=" + drawnW + "x" + drawnH
                        + " offset=" + dx + "," + dy
                        + " matrix=[" + values[0] + "," + values[1] + "," + values[2]
                        + " / " + values[3] + "," + values[4] + "," + values[5] + "]");
            }
        }

        /**
         * The actual letterbox rect WMS gave this landscape task (published by
         * FixedOrientationBoundsHooker in system_server). Falls back to the same
         * full-width content band the main-area rotate90 uses when nothing was
         * published yet.
         */
        private Rect resolveLetterboxSource() {
            Context hostContext = SidebarController.getInstance(getContext()).getHostContext();
            Rect published = OneStepStateBridge.getTaskFixedLetterboxBounds(
                    hostContext, mTaskId);
            if (published != null && published.width() > 0 && published.height() > 0
                    && published.left >= 0 && published.top >= 0
                    && published.right <= mVirtualWidth
                    && published.bottom <= mVirtualHeight) {
                // The state bridge can still contain display-0 coordinates captured
                // before the task was parked (for example y=169..817). OneStep VDs
                // have no status/navigation decor, and WMS lays the same 648px band
                // at y=0 there. Preserve the measured band size but normalize it to
                // the undecorated virtual-display origin.
                if (mVirtualDisplay != null
                        && published.width() == mVirtualWidth
                        && published.height() <= mVirtualHeight) {
                    return new Rect(0, 0, mVirtualWidth, published.height());
                }
                return published;
            }
            int contentHeight = Math.max(1, Math.round(
                    mVirtualWidth * mVirtualWidth / (float) mVirtualHeight));
            // A OneStep virtual display has no system-bar inset. Using the physical
            // display's status_bar_height here samples a black letterbox strip.
            return new Rect(0, 0, mVirtualWidth, Math.min(mVirtualHeight, contentHeight));
        }
    }
}
