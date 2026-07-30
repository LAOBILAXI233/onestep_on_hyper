package com.hyper.onestep.view;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.CopyHistoryItem;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.RenderEffect;
import android.graphics.Shader;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.hyper.onestep.R;
import com.hyper.onestep.SidebarController;
import com.hyper.onestep.lsp.LSPLogger;
import com.hyper.onestep.util.DataManager;
import com.hyper.onestep.util.FileInfo;
import com.hyper.onestep.util.ImageInfo;
import com.hyper.onestep.util.RecentClipManager;
import com.hyper.onestep.util.RecentFileManager;
import com.hyper.onestep.util.RecentPhotoManager;
import com.hyper.onestep.view.ContentView.ContentType;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
// 媒体玻璃面板，展示剪贴板/图片/文件的预览
public class MediaGlassPanel extends FrameLayout {
    private static final long EXPAND_DURATION_MS = 260L;
    private static final long COLLAPSE_DURATION_MS = 210L;
    private static final int MAX_PREVIEW_ROWS = 2;
    private static final int SECTION_CLIPBOARD = 0;
    private static final int SECTION_PHOTOS = 1;
    private static final int SECTION_FILES = 2;
    private static final PathInterpolator EXPAND_INTERPOLATOR =
            new PathInterpolator(0.16f, 0.86f, 0.24f, 1f);
    private static final PathInterpolator COLLAPSE_INTERPOLATOR =
            new PathInterpolator(0.42f, 0f, 0.72f, 0.36f);
    private final RectF mGlassBounds = new RectF();
    private final Paint mGlassWashPaint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.DITHER_FLAG);
    private final Paint mRimPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Paint mInnerHighlightPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final List<SectionBinding> mSections = new ArrayList<SectionBinding>(3);
    private final float mCornerRadiusPx;
    private final float mBaseElevationPx;
    private final float mClosedOffsetPx;
    private int mGlassTintColor = Color.WHITE;
    private LinearGradient mGlassWashShader;
    private float mExpansionProgress = 1f;
    private boolean mExpanded;
    private boolean mAttached;
    private ValueAnimator mExpansionAnimator;
    private OnPanelStateChangeListener mStateChangeListener;
    private LinearLayout mSectionsContainer;
    private View mHandle;
    private RecentClipManager mClipManager;
    private RecentPhotoManager mPhotoManager;
    private RecentFileManager mFileManager;
    private boolean mDataListenersRegistered;
    private boolean mDataSourcesStarted;
    private final DataManager.RecentUpdateListener mDataChangedListener =
            new DataManager.RecentUpdateListener() {
                @Override
                public void onUpdate() {
                    post(new Runnable() {
                        @Override
                        public void run() {
                            refreshSections();
                        }
                    });
                }
            };
    private final int mTouchSlop;
    private final int mMinimumFlingVelocity;
    private final int mMaximumFlingVelocity;
    private VelocityTracker mVelocityTracker;
    private float mDownX;
    private float mDownY;
    private float mSwipeStartProgress;
    private boolean mInterceptingCloseSwipe;
    private WeakReference<View> mBackdropLayer = new WeakReference<View>(null);
    private float mBackdropBlurRadiusPx;
    private boolean mBackdropBlurEnabled = true;
    private boolean mBackdropBlurApplied;
    public MediaGlassPanel(Context context) {
        this(context, null);
    }
    public MediaGlassPanel(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }
    public MediaGlassPanel(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }
    public MediaGlassPanel(Context context, AttributeSet attrs, int defStyleAttr,
            int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        mCornerRadiusPx = getResources().getDimension(R.dimen.glass_panel_corner_radius);
        mBaseElevationPx = getResources().getDimension(R.dimen.glass_panel_elevation);
        mClosedOffsetPx = dp(42f);
        mBackdropBlurRadiusPx = dp(22f);
        ViewConfiguration configuration = ViewConfiguration.get(context);
        mTouchSlop = configuration.getScaledTouchSlop();
        mMinimumFlingVelocity = configuration.getScaledMinimumFlingVelocity();
        mMaximumFlingVelocity = configuration.getScaledMaximumFlingVelocity();
        setWillNotDraw(false);
        setClipToOutline(true);
        setClickable(true);
        setFocusable(true);
        setElevation(mBaseElevationPx);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            setOutlineAmbientShadowColor(0x36000000);
            setOutlineSpotShadowColor(0x5c000000);
        }
        setOutlineProvider(new ViewOutlineProvider() {
            @Override
            public void getOutline(View view, Outline outline) {
                if (view.getWidth() > 0 && view.getHeight() > 0) {
                    outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(),
                            mCornerRadiusPx);
                }
            }
        });
        mRimPaint.setStyle(Paint.Style.STROKE);
        mRimPaint.setStrokeWidth(dp(1f));
        mRimPaint.setColor(0x66ffffff);
        mInnerHighlightPaint.setStyle(Paint.Style.STROKE);
        mInnerHighlightPaint.setStrokeWidth(dp(0.65f));
        mInnerHighlightPaint.setColor(0x42ffffff);
        mExpanded = getVisibility() == VISIBLE;
        applyExpansionVisuals();
    }
    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        mHandle = findViewById(R.id.glass_panel_handle);
        mSectionsContainer = (LinearLayout) findViewById(R.id.glass_panel_sections);
        if (mHandle != null) {
            mHandle.setClickable(true);
            mHandle.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View view) {
                    hide(true);
                }
            });
        }
        bindManagers();
        createSectionsIfNeeded();
        refreshSections();
        updatePanelAccessibilityDescription();
    }
    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        mAttached = true;
        bindManagers();
        if (getVisibility() == VISIBLE) {
            startVisibleState();
        }
    }
    @Override
    protected void onDetachedFromWindow() {
        mAttached = false;
        cancelExpansionAnimator();
        recycleVelocityTracker();
        stopVisibleState();
        dismissClearDialogs();
        clearBackdropBlur();
        super.onDetachedFromWindow();
    }
    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        for (SectionBinding binding : mSections) {
            if (binding.clearListener != null) {
                binding.clearListener.onConfigurationChanged(newConfig);
            }
        }
    }
    @Override
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        if (changedView != this || !mAttached) return;
        if (visibility == VISIBLE) {
            startVisibleState();
        } else {
            stopVisibleState();
        }
    }
    private void startVisibleState() {
        bindManagers();
        registerDataListeners();
        startDataSources();
        refreshSections();
        applyBackdropBlur();
    }
    private void stopVisibleState() {
        unregisterDataListeners();
        stopDataSources();
        dismissClearDialogs();
        clearBackdropBlur();
    }
    private void dismissClearDialogs() {
        for (SectionBinding binding : mSections) {
            if (binding.clearListener != null) binding.clearListener.dismiss();
        }
    }
    @Override
    protected void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
        super.onSizeChanged(width, height, oldWidth, oldHeight);
        mGlassBounds.set(dp(0.75f), dp(0.75f),
                Math.max(dp(0.75f), width - dp(0.75f)),
                Math.max(dp(0.75f), height - dp(0.75f)));
        mGlassWashShader = new LinearGradient(
                0f, 0f, width, Math.max(1, height),
                new int[] {
                        withAlpha(mGlassTintColor, 0x22),
                        0x0fffffff,
                        0x123cbad4,
                        0x0adca65b
                },
                new float[] {0f, 0.42f, 0.78f, 1f},
                Shader.TileMode.CLAMP);
        invalidateOutline();
    }
    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (mGlassBounds.isEmpty()) return;
        mGlassWashPaint.setShader(mGlassWashShader);
        canvas.drawRoundRect(mGlassBounds, mCornerRadiusPx, mCornerRadiusPx,
                mGlassWashPaint);
    }
    @Override
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (mGlassBounds.isEmpty()) return;
        float rimInset = dp(0.75f);
        canvas.drawRoundRect(mGlassBounds, mCornerRadiusPx, mCornerRadiusPx, mRimPaint);
        RectF innerBounds = new RectF(
                mGlassBounds.left + rimInset,
                mGlassBounds.top + rimInset,
                mGlassBounds.right - rimInset,
                Math.min(mGlassBounds.bottom, mGlassBounds.top + getHeight() * 0.46f));
        canvas.save();
        canvas.clipRect(0, 0, getWidth(), Math.max(1f, getHeight() * 0.54f));
        canvas.drawRoundRect(innerBounds,
                Math.max(0f, mCornerRadiusPx - rimInset),
                Math.max(0f, mCornerRadiusPx - rimInset),
                mInnerHighlightPaint);
        canvas.restore();
    }
    /** Shows the panel with its default spring-like transition. */
    public void show() {
        show(true);
    }
    public void show(boolean animate) {
        setExpanded(true, animate);
    }
    /** Hides the panel and marks it GONE after the transition completes. */
    public void hide() {
        hide(true);
    }
    public void hide(boolean animate) {
        setExpanded(false, animate);
    }
    public void expand() {
        setExpanded(true, true);
    }
    public void collapse() {
        setExpanded(false, true);
    }
    public void setExpanded(boolean expanded) {
        setExpanded(expanded, true);
    }
    public void setExpanded(final boolean expanded, boolean animate) {
        cancelExpansionAnimator();
        boolean wasHidden = getVisibility() != VISIBLE;
        if (expanded) {
            if (wasHidden) {
                setExpansionProgressInternal(animate ? 0f : 1f, false);
                setVisibility(VISIBLE);
            }
            refreshSections();
            applyBackdropBlur();
        }
        boolean stateChanged = mExpanded != expanded;
        mExpanded = expanded;
        if (stateChanged && mStateChangeListener != null) {
            mStateChangeListener.onExpandedChanged(this, expanded);
        }
        float target = expanded ? 1f : 0f;
        if (!animate || Math.abs(mExpansionProgress - target) < 0.001f) {
            setExpansionProgressInternal(target, true);
            if (!expanded) {
                setVisibility(GONE);
                clearBackdropBlur();
            }
            return;
        }
        final boolean[] cancelled = new boolean[1];
        mExpansionAnimator = ValueAnimator.ofFloat(mExpansionProgress, target);
        long baseDuration = expanded ? EXPAND_DURATION_MS : COLLAPSE_DURATION_MS;
        long duration = Math.max(110L,
                Math.round(baseDuration * Math.abs(target - mExpansionProgress)));
        mExpansionAnimator.setDuration(duration);
        mExpansionAnimator.setInterpolator(
                expanded ? EXPAND_INTERPOLATOR : COLLAPSE_INTERPOLATOR);
        mExpansionAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public void onAnimationUpdate(ValueAnimator animator) {
                setExpansionProgressInternal((Float) animator.getAnimatedValue(), true);
            }
        });
        mExpansionAnimator.addListener(new AnimatorListenerAdapter() {
            @Override
            public void onAnimationCancel(Animator animation) {
                cancelled[0] = true;
            }
            @Override
            public void onAnimationEnd(Animator animation) {
                if (mExpansionAnimator == animation) mExpansionAnimator = null;
                if (cancelled[0]) return;
                setExpansionProgressInternal(expanded ? 1f : 0f, true);
                if (!expanded) {
                    setVisibility(GONE);
                    clearBackdropBlur();
                }
            }
        });
        mExpansionAnimator.start();
    }
    public boolean isExpanded() {
        return mExpanded;
    }
    public void setExpansionProgress(float progress) {
        cancelExpansionAnimator();
        float clamped = clamp01(progress);
        if (clamped > 0f && getVisibility() != VISIBLE) setVisibility(VISIBLE);
        setExpansionProgressInternal(clamped, true);
    }
    public float getExpansionProgress() {
        return mExpansionProgress;
    }
    public void setOnPanelStateChangeListener(OnPanelStateChangeListener listener) {
        mStateChangeListener = listener;
    }
    public void refreshContent() {
        refreshSections();
    }
    public void setBackdropLayer(View backdropLayer) {
        View current = mBackdropLayer.get();
        if (current == backdropLayer) return;
        clearBackdropBlur();
        if (backdropLayer == this) {
            LSPLogger.w("MediaGlassPanel: refusing to blur the panel itself");
            mBackdropLayer = new WeakReference<View>(null);
            return;
        }
        mBackdropLayer = new WeakReference<View>(backdropLayer);
        if (getVisibility() == VISIBLE) applyBackdropBlur();
    }
    public void setBackdropBlurEnabled(boolean enabled) {
        if (mBackdropBlurEnabled == enabled) return;
        mBackdropBlurEnabled = enabled;
        if (enabled && getVisibility() == VISIBLE) {
            applyBackdropBlur();
        } else {
            clearBackdropBlur();
        }
    }
    public void setBackdropBlurRadius(float radiusPx) {
        float safeRadius = Math.max(0f, radiusPx);
        if (Math.abs(mBackdropBlurRadiusPx - safeRadius) < 0.5f) return;
        mBackdropBlurRadiusPx = safeRadius;
        if (getVisibility() == VISIBLE) applyBackdropBlur();
    }
    public void setGlassTintColor(int color) {
        if (mGlassTintColor == color) return;
        mGlassTintColor = color;
        onSizeChanged(getWidth(), getHeight(), getWidth(), getHeight());
        invalidate();
    }
    @Override
    public boolean onInterceptTouchEvent(MotionEvent event) {
        int action = event.getActionMasked();
        if (action == MotionEvent.ACTION_DOWN) {
            beginTouch(event);
            return false;
        }
        addVelocityMovement(event);
        if (action == MotionEvent.ACTION_MOVE && !mInterceptingCloseSwipe) {
            float dx = event.getX() - mDownX;
            float dy = event.getY() - mDownY;
            if (dx < -mTouchSlop && Math.abs(dx) > Math.abs(dy) * 1.15f) {
                mInterceptingCloseSwipe = true;
                if (getParent() != null) {
                    getParent().requestDisallowInterceptTouchEvent(true);
                }
                return true;
            }
        }
        if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
            if (!mInterceptingCloseSwipe) recycleVelocityTracker();
        }
        return mInterceptingCloseSwipe;
    }
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        int action = event.getActionMasked();
        if (action == MotionEvent.ACTION_DOWN) {
            beginTouch(event);
            return true;
        }
        addVelocityMovement(event);
        if (action == MotionEvent.ACTION_MOVE && mInterceptingCloseSwipe) {
            float width = Math.max(1f, getWidth());
            float dx = Math.min(0f, event.getX() - mDownX);
            float progress = mSwipeStartProgress + dx / (width * 0.72f);
            setExpansionProgressInternal(clamp01(progress), true);
            return true;
        }
        if (action == MotionEvent.ACTION_UP && mInterceptingCloseSwipe) {
            float velocityX = computeCurrentVelocityX();
            float dx = event.getX() - mDownX;
            boolean flingClosed = velocityX < -Math.max(mMinimumFlingVelocity, dp(560f));
            boolean draggedClosed = dx < -Math.max(dp(52f), getWidth() * 0.16f)
                    || mExpansionProgress < 0.72f;
            recycleVelocityTracker();
            mInterceptingCloseSwipe = false;
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
            setExpanded(!(flingClosed || draggedClosed), true);
            return true;
        }
        if (action == MotionEvent.ACTION_CANCEL && mInterceptingCloseSwipe) {
            recycleVelocityTracker();
            mInterceptingCloseSwipe = false;
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
            setExpanded(true, true);
            return true;
        }
        return super.onTouchEvent(event);
    }
    private void createSectionsIfNeeded() {
        if (mSectionsContainer == null) {
            LSPLogger.w("MediaGlassPanel: glass_panel_sections is missing");
            return;
        }
        if (!mSections.isEmpty()) return;
        mSectionsContainer.removeAllViews();
        mSections.add(createSection(SECTION_CLIPBOARD, ContentType.CLIPBOARD,
                R.string.title_clipboard, R.string.clipboard_empty_text));
        mSections.add(createSection(SECTION_PHOTOS, ContentType.PHOTO,
                R.string.title_photo, R.string.photo_empty_text));
        mSections.add(createSection(SECTION_FILES, ContentType.FILE,
                R.string.title_file, R.string.file_empty_text));
    }
    private SectionBinding createSection(final int sectionType, final ContentType contentType,
            int titleResId, int emptyResId) {
        View root = LayoutInflater.from(getContext()).inflate(
                R.layout.media_glass_section, mSectionsContainer, false);
        TextView title = (TextView) root.findViewById(R.id.section_title);
        View clear = root.findViewById(R.id.section_clear);
        TextView empty = (TextView) root.findViewById(R.id.section_empty);
        View legacyList = root.findViewById(R.id.section_list);
        if (legacyList != null) legacyList.setVisibility(GONE);
        LinearLayout preview = new LinearLayout(getContext());
        preview.setOrientation(LinearLayout.VERTICAL);
        preview.setClipToPadding(false);
        ViewGroup.LayoutParams previewParams = new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        if (root instanceof ViewGroup) {
            ViewGroup rootGroup = (ViewGroup) root;
            int insertIndex = legacyList == null ? rootGroup.getChildCount()
                    : rootGroup.indexOfChild(legacyList);
            rootGroup.addView(preview, Math.max(0, insertIndex), previewParams);
        }
        final ClearListener clearListener = new ClearListener(new Runnable() {
            @Override
            public void run() {
                clearSection(sectionType);
            }
        }, clearTitleForSection(sectionType));
        final SectionBinding binding = new SectionBinding(sectionType, contentType,
                titleResId, emptyResId, root, title, clear, empty, preview, clearListener);
        root.setClickable(true);
        root.setFocusable(true);
        root.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View view) {
                openFullSection(binding.contentType);
            }
        });
        if (clear != null) {
            clear.setOnClickListener(clearListener);
        }
        mSectionsContainer.addView(root);
        return binding;
    }
    private void bindManagers() {
        if (mClipManager != null && mPhotoManager != null && mFileManager != null) return;
        try {
            Context context = getContext();
            SidebarController controller = SidebarController.peekInstance();
            if (controller != null && controller.getHostContext() != null) {
                context = controller.getHostContext();
            }
            mClipManager = RecentClipManager.getInstance(context);
            mPhotoManager = RecentPhotoManager.getInstance(context);
            mFileManager = RecentFileManager.getInstance(context);
        } catch (Throwable throwable) {
            LSPLogger.e("MediaGlassPanel: manager initialization failed", throwable);
        }
    }
    private void registerDataListeners() {
        if (mDataListenersRegistered) return;
        if (mClipManager == null || mPhotoManager == null || mFileManager == null) return;
        mClipManager.addListener(mDataChangedListener);
        mPhotoManager.addListener(mDataChangedListener);
        mFileManager.addListener(mDataChangedListener);
        mDataListenersRegistered = true;
    }
    private void unregisterDataListeners() {
        if (!mDataListenersRegistered) return;
        if (mClipManager != null) mClipManager.removeListener(mDataChangedListener);
        if (mPhotoManager != null) mPhotoManager.removeListener(mDataChangedListener);
        if (mFileManager != null) mFileManager.removeListener(mDataChangedListener);
        mDataListenersRegistered = false;
    }
    private void startDataSources() {
        if (mDataSourcesStarted) return;
        mDataSourcesStarted = true;
        try {
            if (mPhotoManager != null) mPhotoManager.startObserver();
        } catch (Throwable throwable) {
            LSPLogger.w("MediaGlassPanel: photo observer unavailable: " + throwable);
        }
        try {
            if (mFileManager != null) {
                mFileManager.startFileObserver();
                mFileManager.startSearchFile();
            }
        } catch (Throwable throwable) {
            LSPLogger.w("MediaGlassPanel: file observer unavailable: " + throwable);
        }
    }
    private void stopDataSources() {
        if (!mDataSourcesStarted) return;
        mDataSourcesStarted = false;
        try {
            if (mPhotoManager != null) mPhotoManager.stopObserver();
        } catch (Throwable throwable) {
            LSPLogger.w("MediaGlassPanel: photo observer stop failed: " + throwable);
        }
        try {
            if (mFileManager != null) mFileManager.stopFileObserver();
        } catch (Throwable throwable) {
            LSPLogger.w("MediaGlassPanel: file observer stop failed: " + throwable);
        }
    }
    private void refreshSections() {
        if (mSections.isEmpty()) return;
        for (SectionBinding binding : mSections) {
            try {
                if (binding.sectionType == SECTION_CLIPBOARD) {
                    List<CopyHistoryItem> items = mClipManager == null
                            ? new ArrayList<CopyHistoryItem>() : mClipManager.getCopyList();
                    List<String> previews = clipboardPreviews(items);
                    updateSection(binding, countClipboardItems(items), previews);
                } else if (binding.sectionType == SECTION_PHOTOS) {
                    List<ImageInfo> items = mPhotoManager == null
                            ? new ArrayList<ImageInfo>() : mPhotoManager.getImageList();
                    updateSection(binding, items.size(), photoPreviews(items));
                } else {
                    List<FileInfo> items = mFileManager == null
                            ? new ArrayList<FileInfo>() : mFileManager.getFileList();
                    updateSection(binding, items.size(), filePreviews(items));
                }
            } catch (Throwable throwable) {
                LSPLogger.w("MediaGlassPanel: section refresh failed type="
                        + binding.sectionType + ": " + throwable);
                updateSection(binding, 0, new ArrayList<String>());
            }
        }
    }
    private void updateSection(SectionBinding binding, int count, List<String> previews) {
        String title = getResources().getString(binding.titleResId);
        String countLabel = getCountLabel(count);
        if (binding.title != null) {
            binding.title.setText(title + "  " + countLabel);
        }
        binding.root.setContentDescription(title + ", " + countLabel);
        if (binding.clear != null) {
            binding.clear.setVisibility(count > 0 ? VISIBLE : INVISIBLE);
            binding.clear.setEnabled(count > 0);
        }
        if (binding.empty != null) {
            binding.empty.setText(binding.emptyResId);
            binding.empty.setVisibility(count == 0 ? VISIBLE : GONE);
        }
        binding.preview.removeAllViews();
        if (count == 0) {
            binding.preview.setVisibility(GONE);
            return;
        }
        binding.preview.setVisibility(VISIBLE);
        int rows = Math.min(MAX_PREVIEW_ROWS, previews.size());
        for (int i = 0; i < rows; i++) {
            binding.preview.addView(createPreviewRow(previews.get(i), i < rows - 1));
        }
    }
    private View createPreviewRow(String text, boolean addDivider) {
        LinearLayout row = new LinearLayout(getContext());
        row.setOrientation(LinearLayout.VERTICAL);
        row.setGravity(android.view.Gravity.CENTER_VERTICAL);
        row.setPadding(Math.round(dp(14f)), 0, Math.round(dp(14f)), 0);
        row.setMinimumHeight(Math.round(dp(42f)));
        TextView label = new TextView(getContext());
        label.setText(text);
        label.setTextColor(getColorCompat(R.color.glass_text_secondary, 0xd9f2f4f5));
        label.setTextSize(12.5f);
        label.setSingleLine(true);
        label.setEllipsize(TextUtils.TruncateAt.END);
        label.setIncludeFontPadding(false);
        row.addView(label, new LinearLayout.LayoutParams(
                LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT));
        if (addDivider) {
            View divider = new View(getContext());
            divider.setBackgroundColor(getColorCompat(R.color.glass_section_stroke,
                    0x24ffffff));
            LinearLayout.LayoutParams dividerParams = new LinearLayout.LayoutParams(
                    LayoutParams.MATCH_PARENT, Math.max(1, Math.round(dp(0.5f))));
            dividerParams.leftMargin = Math.round(dp(2f));
            dividerParams.rightMargin = Math.round(dp(2f));
            row.addView(divider, dividerParams);
        }
        return row;
    }
    private List<String> clipboardPreviews(List<CopyHistoryItem> items) {
        List<String> previews = new ArrayList<String>(MAX_PREVIEW_ROWS);
        for (int i = 0; i < items.size() && previews.size() < MAX_PREVIEW_ROWS; i++) {
            CopyHistoryItem item = items.get(i);
            if (item == null || TextUtils.isEmpty(item.mContent)) continue;
            String value = item.mContent.replace('\n', ' ').replace('\r', ' ').trim();
            if (!TextUtils.isEmpty(value)) previews.add(value);
        }
        return previews;
    }
    private int countClipboardItems(List<CopyHistoryItem> items) {
        int count = 0;
        for (int i = 0; i < items.size(); i++) {
            CopyHistoryItem item = items.get(i);
            if (item != null && !TextUtils.isEmpty(item.mContent)
                    && !TextUtils.isEmpty(item.mContent.trim())) {
                count++;
            }
        }
        return count;
    }
    private List<String> photoPreviews(List<ImageInfo> items) {
        List<String> previews = new ArrayList<String>(MAX_PREVIEW_ROWS);
        for (int i = 0; i < items.size() && previews.size() < MAX_PREVIEW_ROWS; i++) {
            ImageInfo item = items.get(i);
            String name = item == null ? null : fileName(item.filePath);
            if (!TextUtils.isEmpty(name)) previews.add(name);
        }
        return previews;
    }
    private List<String> filePreviews(List<FileInfo> items) {
        List<String> previews = new ArrayList<String>(MAX_PREVIEW_ROWS);
        for (int i = 0; i < items.size() && previews.size() < MAX_PREVIEW_ROWS; i++) {
            FileInfo item = items.get(i);
            String name = item == null ? null : fileName(item.filePath);
            if (!TextUtils.isEmpty(name)) previews.add(name);
        }
        return previews;
    }
    private String getCountLabel(int count) {
        int resourceId = getResources().getIdentifier(
                "glass_section_item_count", "plurals", getContext().getPackageName());
        if (resourceId != 0) {
            return getResources().getQuantityString(resourceId, count, count);
        }
        return Integer.toString(count);
    }
    private void clearSection(int sectionType) {
        try {
            if (sectionType == SECTION_CLIPBOARD && mClipManager != null) {
                mClipManager.clear();
            } else if (sectionType == SECTION_PHOTOS && mPhotoManager != null) {
                mPhotoManager.clear();
            } else if (sectionType == SECTION_FILES && mFileManager != null) {
                mFileManager.clear();
            }
            refreshSections();
        } catch (Throwable throwable) {
            LSPLogger.e("MediaGlassPanel: clear failed type=" + sectionType, throwable);
        }
    }
    private int clearTitleForSection(int sectionType) {
        if (sectionType == SECTION_CLIPBOARD) {
            return R.string.title_confirm_delete_history_clipboard;
        }
        if (sectionType == SECTION_PHOTOS) {
            return R.string.title_confirm_delete_history_photo;
        }
        return R.string.title_confirm_delete_history_file;
    }
    private void openFullSection(ContentType contentType) {
        try {
            hide(true);
            SidebarController.getInstance(getContext()).showContent(contentType);
        } catch (Throwable throwable) {
            LSPLogger.e("MediaGlassPanel: open section failed type=" + contentType, throwable);
        }
    }
    private void updatePanelAccessibilityDescription() {
        int resourceId = getResources().getIdentifier(
                "glass_panel_accessibility_title", "string", getContext().getPackageName());
        if (resourceId == 0) {
            resourceId = getResources().getIdentifier(
                    "media_glass_panel_title", "string", getContext().getPackageName());
        }
        if (resourceId != 0) setContentDescription(getResources().getString(resourceId));
    }
    private void setExpansionProgressInternal(float progress, boolean notifyListener) {
        mExpansionProgress = clamp01(progress);
        applyExpansionVisuals();
        if (notifyListener && mStateChangeListener != null) {
            mStateChangeListener.onExpansionChanged(this, mExpansionProgress);
        }
    }
    private void applyExpansionVisuals() {
        float eased = 1f - (1f - mExpansionProgress) * (1f - mExpansionProgress);
        setAlpha(eased);
        setTranslationX(-mClosedOffsetPx * (1f - eased));
        setScaleX(0.985f + 0.015f * eased);
        setScaleY(0.975f + 0.025f * eased);
        setElevation(mBaseElevationPx * (0.72f + 0.28f * eased));
        invalidate();
    }
    private void cancelExpansionAnimator() {
        if (mExpansionAnimator == null) return;
        ValueAnimator animator = mExpansionAnimator;
        mExpansionAnimator = null;
        animator.cancel();
    }
    private void beginTouch(MotionEvent event) {
        recycleVelocityTracker();
        mVelocityTracker = VelocityTracker.obtain();
        mVelocityTracker.addMovement(event);
        mDownX = event.getX();
        mDownY = event.getY();
        mSwipeStartProgress = mExpansionProgress;
        mInterceptingCloseSwipe = false;
    }
    private void addVelocityMovement(MotionEvent event) {
        if (mVelocityTracker != null) mVelocityTracker.addMovement(event);
    }
    private float computeCurrentVelocityX() {
        if (mVelocityTracker == null) return 0f;
        mVelocityTracker.computeCurrentVelocity(1000, mMaximumFlingVelocity);
        return mVelocityTracker.getXVelocity();
    }
    private void recycleVelocityTracker() {
        if (mVelocityTracker == null) return;
        mVelocityTracker.recycle();
        mVelocityTracker = null;
    }
    private void applyBackdropBlur() {
        clearBackdropBlur();
        View backdrop = mBackdropLayer.get();
        if (!mBackdropBlurEnabled || backdrop == null || mBackdropBlurRadiusPx <= 0f) return;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            backdrop.setRenderEffect(RenderEffect.createBlurEffect(
                    mBackdropBlurRadiusPx, mBackdropBlurRadiusPx, Shader.TileMode.CLAMP));
            mBackdropBlurApplied = true;
        }
    }
    private void clearBackdropBlur() {
        View backdrop = mBackdropLayer.get();
        if (mBackdropBlurApplied && backdrop != null && Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            backdrop.setRenderEffect(null);
        }
        mBackdropBlurApplied = false;
    }
    private String fileName(String path) {
        if (TextUtils.isEmpty(path)) return null;
        String name = new File(path).getName();
        return TextUtils.isEmpty(name) ? path : name;
    }
    private float dp(float value) {
        return value * getResources().getDisplayMetrics().density;
    }
    private int getColorCompat(int resourceId, int fallback) {
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                return getResources().getColor(resourceId, getContext().getTheme());
            }
            return getResources().getColor(resourceId);
        } catch (Throwable ignored) {
            return fallback;
        }
    }
    private static float clamp01(float value) {
        return Math.max(0f, Math.min(1f, value));
    }
    private static int withAlpha(int color, int alpha) {
        int sourceAlpha = Color.alpha(color);
        int resultAlpha = Math.round(sourceAlpha * (alpha / 255f));
        return (color & 0x00ffffff) | (resultAlpha << 24);
    }
    public interface OnPanelStateChangeListener {
        void onExpansionChanged(MediaGlassPanel panel, float progress);
        void onExpandedChanged(MediaGlassPanel panel, boolean expanded);
    }
    private static final class SectionBinding {
        final int sectionType;
        final ContentType contentType;
        final int titleResId;
        final int emptyResId;
        final View root;
        final TextView title;
        final View clear;
        final TextView empty;
        final LinearLayout preview;
        final ClearListener clearListener;
        SectionBinding(int sectionType, ContentType contentType, int titleResId,
                int emptyResId, View root, TextView title, View clear, TextView empty,
                LinearLayout preview, ClearListener clearListener) {
            this.sectionType = sectionType;
            this.contentType = contentType;
            this.titleResId = titleResId;
            this.emptyResId = emptyResId;
            this.root = root;
            this.title = title;
            this.clear = clear;
            this.empty = empty;
            this.preview = preview;
            this.clearListener = clearListener;
        }
    }
}
