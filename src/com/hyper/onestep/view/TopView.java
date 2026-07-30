package com.hyper.onestep.view;
import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSessionManager;
import android.media.session.PlaybackState;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.hyper.onestep.R;
import com.hyper.onestep.SidebarController;
import com.hyper.onestep.SidebarMode;
import com.hyper.onestep.SidebarStatus;
import com.hyper.onestep.lsp.LSPLogger;
import com.hyper.onestep.lsp.MultiTaskController;
import com.hyper.onestep.util.AppIconLoader;
import com.hyper.onestep.util.AppIconPlaceholder;
import com.hyper.onestep.util.AppItem;
import com.hyper.onestep.util.AppManager;
import com.hyper.onestep.util.DataManager;
import com.hyper.onestep.util.RecentClipManager;
import com.hyper.onestep.util.RecentFileManager;
import com.hyper.onestep.util.RecentPhotoManager;
import com.hyper.onestep.util.anim.AnimListener;
import com.hyper.onestep.util.anim.AnimStatusManager;
import com.hyper.onestep.util.anim.AnimTimeLine;
import com.hyper.onestep.view.ContentView.ContentType;
import com.hyper.onestep.util.Utils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/** OneStep 3.0 top app strip. Long-press an icon and drag it into a task slot. */
public class TopView extends FrameLayout {
    private LinearLayout mAppStrip;
    private View mDisableView;
    private View mShadowLine;
    private View mMediaCard;
    private ImageView mMediaArt;
    private TextView mMediaTitle;
    private TextView mMediaArtist;
    private ImageButton mMediaPrevious;
    private ImageButton mMediaPlayPause;
    private ImageButton mMediaNext;
    private AppManager mAppManager;
    private SidebarController mController;
    private HandlerThread mAppLoaderThread;
    private Handler mAppLoader;
    private boolean mAppRefreshPending;
    private long mAppsLoadedAt;
    private int mAppRenderGeneration;
    private int mAppRefreshRetryCount;
    private static final int MAX_TOP_APPS = 64;
    private static final long APP_CACHE_TTL_MS = 5L * 60L * 1000L;
    private View mCurrentPage;
    private View mLegacyPage;
    private View mAppScroll;
    private View mControls;
    private DimSpaceView mLegacyLeft;
    private DimSpaceView mLegacyRight;
    private TopItemView mPhotos;
    private TopItemView mFile;
    private TopItemView mClipboard;
    private final Map<ITopItem, ContentType> mViewToType =
            new HashMap<ITopItem, ContentType>();
    private static final int PAGE_CURRENT = 0;
    private static final int PAGE_LEGACY = 1;
    private static final String KEY_LAST_TOP_PAGE = "last_top_page";
    private int mPage = PAGE_CURRENT;
    private float mPageDownX;
    private float mPageDownY;
    private boolean mPotentialPageSwipe;
    private boolean mDraggingPage;
    private VelocityTracker mPageVelocityTracker;
    private int mTouchSlop;
    private int mMinimumFlingVelocity;
    private final Rect mTouchBounds = new Rect();
    private final Handler mMediaHandler = new Handler(Looper.getMainLooper());
    private MediaSessionManager mMediaSessionManager;
    private MediaController mMediaController;
    private boolean mMediaListening;
    private final MediaSessionManager.OnActiveSessionsChangedListener mMediaSessionsListener =
            new MediaSessionManager.OnActiveSessionsChangedListener() {
                @Override
                public void onActiveSessionsChanged(List<MediaController> controllers) {
                    bindBestMediaController(controllers);
                }
            };
    private final MediaController.Callback mMediaCallback = new MediaController.Callback() {
        @Override
        public void onMetadataChanged(MediaMetadata metadata) {
            postMediaUpdate();
        }
        @Override
        public void onPlaybackStateChanged(PlaybackState state) {
            postMediaUpdate();
        }
        @Override
        public void onSessionDestroyed() {
            mMediaHandler.post(new Runnable() {
                @Override
                public void run() {
                    bindBestMediaController(null);
                }
            });
        }
    };
    private final DataManager.RecentUpdateListener mAppsChangedListener =
            new DataManager.RecentUpdateListener() {
                @Override
                public void onUpdate() {
                    post(new Runnable() {
                        @Override
                        public void run() {
                            requestAppsRefresh(true);
                        }
                    });
                }
            };
    private final OnClickListener mLegacyItemClickListener = new OnClickListener() {
        @Override
        public void onClick(View view) {
            if (!(view instanceof TopItemView) || mController == null) return;
            if (!AnimStatusManager.getInstance().canShowContentView()) {
                AnimStatusManager.getInstance().dumpStatus();
                return;
            }
            TopItemView itemView = (TopItemView) view;
            ContentType contentType = mViewToType.get(itemView);
            if (contentType == null || contentType == ContentType.NONE) return;
            if (mController.getCurrentContentType() == ContentType.NONE) {
                AnimStatusManager.getInstance().setStatus(
                        AnimStatusManager.ON_TOP_VIEW_CLICK, true);
                AnimTimeLine timeLine = new AnimTimeLine();
                mController.showContent(contentType);
                for (ITopItem item : mViewToType.keySet()) {
                    timeLine.addTimeLine(item == itemView ? item.highlight() : item.dim());
                }
                timeLine.setAnimListener(new AnimListener() {
                    @Override
                    public void onStart() {
                    }
                    @Override
                    public void onComplete(int type) {
                        AnimStatusManager.getInstance().setStatus(
                                AnimStatusManager.ON_TOP_VIEW_CLICK, false);
                    }
                });
                timeLine.start();
            } else if (mController.getCurrentContentType() == contentType) {
                mController.dismissContent(true);
                resumeToNormal();
            }
        }
    };
    public TopView(Context context) {
        this(context, null);
    }
    public TopView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }
    public TopView(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }
    public TopView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        ViewConfiguration configuration = ViewConfiguration.get(context);
        mTouchSlop = configuration.getScaledTouchSlop();
        mMinimumFlingVelocity = configuration.getScaledMinimumFlingVelocity();
    }
    // 视图加载完成：初始化页面、控件、媒体控制器并刷新应用列表
    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        mCurrentPage = findViewById(R.id.current_top_page);
        mLegacyPage = findViewById(R.id.legacy_top_page);
        mAppScroll = findViewById(R.id.top_app_scroll);
        mControls = findViewById(R.id.top_controls);
        mAppStrip = (LinearLayout) findViewById(R.id.top_app_strip);
        mDisableView = findViewById(R.id.topbar_disable_view);
        mShadowLine = findViewById(R.id.top_view_shadow_line);
        mMediaCard = findViewById(R.id.top_media_card);
        mMediaArt = (ImageView) findViewById(R.id.media_art);
        mMediaTitle = (TextView) findViewById(R.id.media_title);
        mMediaArtist = (TextView) findViewById(R.id.media_artist);
        mMediaPrevious = (ImageButton) findViewById(R.id.media_previous);
        mMediaPlayPause = (ImageButton) findViewById(R.id.media_play_pause);
        mMediaNext = (ImageButton) findViewById(R.id.media_next);
        mController = SidebarController.getInstance(getContext());
        mAppManager = AppManager.getInstance(getContext());
        mAppManager.addListener(mAppsChangedListener);
        mAppLoaderThread = new HandlerThread("OneStep-TopApps",
                Process.THREAD_PRIORITY_BACKGROUND);
        mAppLoaderThread.start();
        mAppLoader = new Handler(mAppLoaderThread.getLooper());
        bindLegacyItems();
        bindControls();
        bindMediaControls();
        resetPages(PAGE_CURRENT);
        startMediaController();
        requestAppsRefresh(true);
    }
    private void bindLegacyItems() {
        mLegacyLeft = (DimSpaceView) findViewById(R.id.top_dim_view_left);
        mLegacyRight = (DimSpaceView) findViewById(R.id.top_dim_view_right);
        mPhotos = (TopItemView) findViewById(R.id.photo);
        mFile = (TopItemView) findViewById(R.id.file);
        mClipboard = (TopItemView) findViewById(R.id.clipboard);
        mPhotos.setText(R.string.topbar_photo);
        mPhotos.setIconBackground(R.drawable.topbar_photo, R.drawable.topbar_photo_dim);
        mPhotos.setIconContentPaddingTop(getResources().getDimensionPixelSize(
                R.dimen.topbar_photo_icon_content_paddingTop));
        mFile.setText(R.string.topbar_file);
        mFile.setIconBackground(R.drawable.topbar_file, R.drawable.topbar_file_dim);
        mFile.setIconContentPaddingTop(getResources().getDimensionPixelSize(
                R.dimen.topbar_file_icon_content_paddingTop));
        mClipboard.setText(R.string.topbar_clipboard);
        mClipboard.setIconBackground(
                R.drawable.topbar_clipboard, R.drawable.topbar_clipboard_dim);
        mViewToType.clear();
        mViewToType.put(mLegacyLeft, ContentType.NONE);
        mViewToType.put(mPhotos, ContentType.PHOTO);
        mViewToType.put(mFile, ContentType.FILE);
        mViewToType.put(mClipboard, ContentType.CLIPBOARD);
        mViewToType.put(mLegacyRight, ContentType.NONE);
        mPhotos.setOnClickListener(mLegacyItemClickListener);
        mFile.setOnClickListener(mLegacyItemClickListener);
        mClipboard.setOnClickListener(mLegacyItemClickListener);
    }
    // 视图销毁时释放应用加载线程与媒体控制器
    @Override
    protected void onDetachedFromWindow() {
        if (mAppManager != null) mAppManager.removeListener(mAppsChangedListener);
        if (mAppLoaderThread != null) {
            mAppLoaderThread.quitSafely();
            mAppLoaderThread = null;
            mAppLoader = null;
        }
        cancelPageGesture();
        stopMediaController();
        super.onDetachedFromWindow();
    }
    // 根据状态切换顶栏为正常或暗化效果
    public void requestStatus(SidebarStatus status) {
        if (status == SidebarStatus.NORMAL) {
            resumeToNormal();
        } else {
            dimLegacyItems();
            setAlpha(0.68f);
        }
    }
    // 恢复上次打开的内容类型并触发高亮动画
    public void restoreContentType(ContentType contentType) {
        if (mController == null || contentType == null || contentType == ContentType.NONE) return;
        if (mController.getCurrentContentType() != ContentType.NONE) return;
        ITopItem target = null;
        for (Map.Entry<ITopItem, ContentType> entry : mViewToType.entrySet()) {
            if (entry.getValue() == contentType) {
                target = entry.getKey();
                break;
            }
        }
        if (target == null) return;
        mController.showContent(contentType);
        AnimTimeLine timeLine = new AnimTimeLine();
        for (ITopItem item : mViewToType.keySet()) {
            timeLine.addTimeLine(item == target ? item.highlight() : item.dim());
        }
        timeLine.start();
    }
    // 恢复所有顶栏项到正常显示状态并播放动画
    public void resumeToNormal() {
        animate().alpha(1f).setDuration(120L).start();
        if (mViewToType.isEmpty()
                || AnimStatusManager.getInstance().getStatus(
                AnimStatusManager.ON_TOP_VIEW_RESUME)) {
            return;
        }
        AnimStatusManager.getInstance().setStatus(
                AnimStatusManager.ON_TOP_VIEW_RESUME, true);
        AnimTimeLine timeLine = new AnimTimeLine();
        for (ITopItem view : mViewToType.keySet()) {
            timeLine.addTimeLine(view.resume());
        }
        timeLine.setAnimListener(new AnimListener() {
            @Override
            public void onStart() {
            }
            @Override
            public void onComplete(int type) {
                AnimStatusManager.getInstance().setStatus(
                        AnimStatusManager.ON_TOP_VIEW_RESUME, false);
            }
        });
        timeLine.start();
    }
    private void dimLegacyItems() {
        if (mViewToType.isEmpty()) return;
        AnimTimeLine timeLine = new AnimTimeLine();
        for (ITopItem view : mViewToType.keySet()) {
            timeLine.addTimeLine(view.dim());
        }
        timeLine.start();
    }
    // 显示或隐藏顶栏并播放进入/退出动画
    public void show(boolean show) {
        animate().cancel();
        cancelPageGesture();
        if (show) {
            resetPages(rememberedPage());
            setVisibility(VISIBLE);
            setAlpha(0f);
            setTranslationY(-getResources().getDimensionPixelSize(
                    R.dimen.multitask_top_height));
            animate().alpha(1f).translationY(0f).setDuration(180L).start();
            if (mShadowLine != null) mShadowLine.setVisibility(VISIBLE);
            postDelayed(new Runnable() {
                @Override
                public void run() {
                    requestAppsRefresh(false);
                    if (mAppStrip != null) {
                        mAppStrip.requestLayout();
                        mAppStrip.invalidate();
                    }
                    requestLayout();
                    invalidate();
                }
            }, 260L);
        } else {
            resumeToNormal();
            resetPages(mPage);
            animate().alpha(0f)
                    .translationY(-getResources().getDimensionPixelSize(
                            R.dimen.multitask_top_height))
                    .setDuration(160L)
                    .withEndAction(new Runnable() {
                        @Override
                        public void run() {
                            setTranslationY(0f);
                            setAlpha(1f);
                            setVisibility(GONE);
                        }
                    }).start();
        }
    }
    // 启用/禁用顶栏交互并控制遮罩显示
    @Override
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        if (!enabled) {
            cancelPageGesture();
            resetPages(mPage);
        }
        if (mDisableView != null) {
            mDisableView.setVisibility(enabled ? GONE : VISIBLE);
        }
    }
    // 内容面板可见时拦截触摸以恢复侧边栏
    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        if (event.getActionMasked() == MotionEvent.ACTION_DOWN
                && mController != null
                && mController.getCurrentContentType() != ContentType.NONE
                && AnimStatusManager.getInstance().canShowContentView()) {
            com.hyper.onestep.util.Utils.resumeSidebar(getContext());
            return true;
        }
        return super.dispatchTouchEvent(event);
    }
    // 拦截横向滑动以切换顶栏页面
    @Override
    public boolean onInterceptTouchEvent(MotionEvent event) {
        if (!isEnabled() || mController == null
                || mController.getCurrentContentType() != ContentType.NONE) {
            return super.onInterceptTouchEvent(event);
        }
        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_DOWN:
                cancelPageGesture();
                mPageDownX = event.getX();
                mPageDownY = event.getY();
                mPotentialPageSwipe = canStartPageSwipe(event);
                if (mPotentialPageSwipe) {
                    mPageVelocityTracker = VelocityTracker.obtain();
                    mPageVelocityTracker.addMovement(event);
                }
                return false;
            case MotionEvent.ACTION_MOVE:
                if (!mPotentialPageSwipe) return false;
                addPageVelocityMovement(event);
                float dx = event.getX() - mPageDownX;
                float dy = event.getY() - mPageDownY;
                if (Math.abs(dy) > mTouchSlop && Math.abs(dy) >= Math.abs(dx)) {
                    cancelPageGesture();
                    return false;
                }
                boolean validDirection = mPage == PAGE_CURRENT ? dx > 0f : dx < 0f;
                if (Math.abs(dx) > mTouchSlop && Math.abs(dx) > Math.abs(dy) * 1.15f) {
                    if (!validDirection) {
                        cancelPageGesture();
                        return false;
                    }
                    mDraggingPage = true;
                    preparePagesForDrag();
                    if (getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    updatePageDrag(dx);
                    return true;
                }
                return false;
            case MotionEvent.ACTION_UP:
            case MotionEvent.ACTION_CANCEL:
                boolean wasDragging = mDraggingPage;
                if (!wasDragging) cancelPageGesture();
                return wasDragging;
            default:
                return false;
        }
    }
    // 处理页面拖拽手势并根据速度决定是否切换页面
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        if (!mDraggingPage) return super.onTouchEvent(event);
        addPageVelocityMovement(event);
        switch (event.getActionMasked()) {
            case MotionEvent.ACTION_MOVE:
                updatePageDrag(event.getX() - mPageDownX);
                return true;
            case MotionEvent.ACTION_UP:
                float velocityX = 0f;
                if (mPageVelocityTracker != null) {
                    mPageVelocityTracker.computeCurrentVelocity(1000);
                    velocityX = mPageVelocityTracker.getXVelocity(event.getPointerId(0));
                }
                float dx = event.getX() - mPageDownX;
                float threshold = Math.max(1f, getWidth() * 0.32f);
                boolean fling = mPage == PAGE_CURRENT
                        ? velocityX >= mMinimumFlingVelocity
                        : velocityX <= -mMinimumFlingVelocity;
                boolean commit = Math.abs(dx) >= threshold || fling;
                settlePage(commit ? oppositePage(mPage) : mPage, true);
                recyclePageVelocityTracker();
                mPotentialPageSwipe = false;
                mDraggingPage = false;
                return true;
            case MotionEvent.ACTION_CANCEL:
                settlePage(mPage, true);
                cancelPageGesture();
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
    private boolean canStartPageSwipe(MotionEvent event) {
        if (mCurrentPage == null || mLegacyPage == null) return false;
        if (isTouchInsideView(mAppScroll, event)
                || isTouchInsideView(mControls, event)) {
            return false;
        }
        if (mPage == PAGE_LEGACY) return true;
        return !isTouchInsideView(mMediaPrevious, event)
                && !isTouchInsideView(mMediaPlayPause, event)
                && !isTouchInsideView(mMediaNext, event);
    }
    private boolean isTouchInsideView(View view, MotionEvent event) {
        return view != null && view.isShown()
                && view.getGlobalVisibleRect(mTouchBounds)
                && mTouchBounds.contains((int) event.getRawX(), (int) event.getRawY());
    }
    private void preparePagesForDrag() {
        int width = Math.max(1, getWidth());
        mCurrentPage.animate().cancel();
        mLegacyPage.animate().cancel();
        mCurrentPage.setVisibility(VISIBLE);
        mLegacyPage.setVisibility(VISIBLE);
        if (mPage == PAGE_CURRENT) {
            mCurrentPage.setTranslationX(0f);
            mLegacyPage.setTranslationX(-width);
        } else {
            mLegacyPage.setTranslationX(0f);
            mCurrentPage.setTranslationX(width);
        }
    }
    private void updatePageDrag(float dx) {
        int width = Math.max(1, getWidth());
        if (mPage == PAGE_CURRENT) {
            float offset = Math.max(0f, Math.min(width, dx));
            mCurrentPage.setTranslationX(offset);
            mLegacyPage.setTranslationX(offset - width);
        } else {
            float offset = Math.max(-width, Math.min(0f, dx));
            mLegacyPage.setTranslationX(offset);
            mCurrentPage.setTranslationX(width + offset);
        }
    }
    private void settlePage(final int targetPage, boolean animate) {
        int width = Math.max(1, getWidth());
        mCurrentPage.animate().cancel();
        mLegacyPage.animate().cancel();
        mCurrentPage.setVisibility(VISIBLE);
        mLegacyPage.setVisibility(VISIBLE);
        float currentTarget = targetPage == PAGE_CURRENT ? 0f : width;
        float legacyTarget = targetPage == PAGE_LEGACY ? 0f : -width;
        if (!animate) {
            mCurrentPage.setTranslationX(currentTarget);
            mLegacyPage.setTranslationX(legacyTarget);
            finishPageSettle(targetPage);
            return;
        }
        mCurrentPage.animate().translationX(currentTarget).setDuration(220L).start();
        mLegacyPage.animate().translationX(legacyTarget).setDuration(220L)
                .withEndAction(new Runnable() {
                    @Override
                    public void run() {
                        finishPageSettle(targetPage);
                    }
                }).start();
    }
    private void finishPageSettle(int targetPage) {
        boolean pageChanged = mPage != targetPage;
        mPage = targetPage;
        if (pageChanged) {
            Utils.Config.setIntValue(getContext(), KEY_LAST_TOP_PAGE, targetPage);
        }
        int width = Math.max(1, getWidth());
        mCurrentPage.setTranslationX(targetPage == PAGE_CURRENT ? 0f : width);
        mLegacyPage.setTranslationX(targetPage == PAGE_LEGACY ? 0f : -width);
        mCurrentPage.setVisibility(targetPage == PAGE_CURRENT ? VISIBLE : INVISIBLE);
        mLegacyPage.setVisibility(targetPage == PAGE_LEGACY ? VISIBLE : INVISIBLE);
    }
    private void resetPages(int page) {
        if (mCurrentPage == null || mLegacyPage == null) return;
        settlePage(page, false);
    }
    /** The top-bar page the user last swiped to; defaults to the media controls. */
    private int rememberedPage() {
        try {
            int stored = Utils.Config.getIntValue(getContext(), KEY_LAST_TOP_PAGE);
            return stored == PAGE_LEGACY ? PAGE_LEGACY : PAGE_CURRENT;
        } catch (Throwable t) {
            return PAGE_CURRENT;
        }
    }
    private int oppositePage(int page) {
        return page == PAGE_CURRENT ? PAGE_LEGACY : PAGE_CURRENT;
    }
    private void addPageVelocityMovement(MotionEvent event) {
        if (mPageVelocityTracker == null) mPageVelocityTracker = VelocityTracker.obtain();
        mPageVelocityTracker.addMovement(event);
    }
    private void cancelPageGesture() {
        mPotentialPageSwipe = false;
        mDraggingPage = false;
        recyclePageVelocityTracker();
        if (getParent() != null) getParent().requestDisallowInterceptTouchEvent(false);
    }
    private void recyclePageVelocityTracker() {
        if (mPageVelocityTracker == null) return;
        mPageVelocityTracker.recycle();
        mPageVelocityTracker = null;
    }
    private void bindControls() {
        findViewById(R.id.top_move_left).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View view) {
                mController.setSidebarMode(SidebarMode.MODE_LEFT);
            }
        });
        findViewById(R.id.top_move_right).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View view) {
                mController.setSidebarMode(SidebarMode.MODE_RIGHT);
            }
        });
        findViewById(R.id.top_rotate).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View view) {
                mController.toggleMainTaskRotation();
            }
        });
        findViewById(R.id.top_settings).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intent = getContext().getPackageManager()
                        .getLaunchIntentForPackage(getContext().getPackageName());
                if (intent == null) return;
                mController.exitOneStepMode();
                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                getContext().startActivity(intent);
            }
        });
        findViewById(R.id.top_exit).setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View view) {
                mController.exitOneStepMode();
            }
        });
    }
    private void startMediaController() {
        Context host = mController == null ? getContext() : mController.getHostContext();
        if (host == null) host = getContext();
        try {
            Object service = host.getSystemService(Context.MEDIA_SESSION_SERVICE);
            if (!(service instanceof MediaSessionManager)) {
                LSPLogger.w("TopView.startMediaController: MediaSessionManager unavailable");
                renderNoMedia();
                return;
            }
            mMediaSessionManager = (MediaSessionManager) service;
            mMediaSessionManager.addOnActiveSessionsChangedListener(
                    mMediaSessionsListener, null, mMediaHandler);
            mMediaListening = true;
            LSPLogger.i("TopView.startMediaController: active session listener registered");
            refreshMediaSessions();
        } catch (SecurityException e) {
            LSPLogger.w("TopView.startMediaController: permission denied: " + e.getMessage());
            renderNoMedia();
        } catch (Throwable t) {
            LSPLogger.e("TopView.startMediaController: failed", t);
            renderNoMedia();
        }
    }
    private void stopMediaController() {
        if (mMediaSessionManager != null && mMediaListening) {
            try {
                mMediaSessionManager.removeOnActiveSessionsChangedListener(mMediaSessionsListener);
            } catch (Throwable t) {
                LSPLogger.w("TopView.stopMediaController: remove listener failed: " + t);
            }
        }
        mMediaListening = false;
        unregisterMediaCallback();
        mMediaSessionManager = null;
        mMediaHandler.removeCallbacksAndMessages(null);
    }
    private void refreshMediaSessions() {
        if (mMediaSessionManager == null) {
            renderNoMedia();
            return;
        }
        try {
            bindBestMediaController(mMediaSessionManager.getActiveSessions(null));
        } catch (SecurityException e) {
            LSPLogger.w("TopView.refreshMediaSessions: permission denied: " + e.getMessage());
            renderNoMedia();
        } catch (Throwable t) {
            LSPLogger.w("TopView.refreshMediaSessions: failed: " + t);
            renderNoMedia();
        }
    }
    private void bindBestMediaController(List<MediaController> controllers) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            final List<MediaController> copy = controllers == null
                    ? null : new ArrayList<MediaController>(controllers);
            mMediaHandler.post(new Runnable() {
                @Override
                public void run() {
                    bindBestMediaController(copy);
                }
            });
            return;
        }
        MediaController best = chooseMediaController(controllers);
        if (!sameMediaSession(best, mMediaController)) {
            unregisterMediaCallback();
            mMediaController = best;
            if (mMediaController != null) {
                try {
                    mMediaController.registerCallback(mMediaCallback, mMediaHandler);
                    LSPLogger.i("TopView.bindMediaController: package="
                            + mMediaController.getPackageName());
                } catch (Throwable t) {
                    LSPLogger.w("TopView.bindMediaController: register callback failed: " + t);
                }
            }
        }
        updateMediaUi();
    }
    private MediaController chooseMediaController(List<MediaController> controllers) {
        if (controllers == null || controllers.isEmpty()) return null;
        MediaController best = null;
        int bestScore = 0;
        for (MediaController controller : controllers) {
            if (controller == null) continue;
            int score = 0;
            PlaybackState state = null;
            MediaMetadata metadata = null;
            try {
                state = controller.getPlaybackState();
                metadata = controller.getMetadata();
            } catch (Throwable ignored) {
            }
            if (state != null) {
                int playbackState = state.getState();
                if (playbackState == PlaybackState.STATE_PLAYING
                        || playbackState == PlaybackState.STATE_BUFFERING
                        || playbackState == PlaybackState.STATE_CONNECTING) {
                    score += 8;
                } else if (playbackState == PlaybackState.STATE_PAUSED) {
                    score += 3;
                } else if (playbackState != PlaybackState.STATE_NONE) {
                    score += 1;
                }
            }
            if (hasUsefulMetadata(metadata)) score += 4;
            if (score > bestScore) {
                best = controller;
                bestScore = score;
            }
        }
        return best;
    }
    private boolean sameMediaSession(MediaController left, MediaController right) {
        if (left == right) return true;
        if (left == null || right == null) return false;
        try {
            return TextUtils.equals(left.getPackageName(), right.getPackageName())
                    && left.getSessionToken().equals(right.getSessionToken());
        } catch (Throwable t) {
            return false;
        }
    }
    private void unregisterMediaCallback() {
        if (mMediaController == null) return;
        try {
            mMediaController.unregisterCallback(mMediaCallback);
        } catch (Throwable ignored) {
        }
    }
    private void postMediaUpdate() {
        mMediaHandler.post(new Runnable() {
            @Override
            public void run() {
                updateMediaUi();
            }
        });
    }
    private void bindMediaControls() {
        if (mMediaPrevious != null) {
            mMediaPrevious.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (mMediaController == null) return;
                    try {
                        mMediaController.getTransportControls().skipToPrevious();
                    } catch (Throwable t) {
                        LSPLogger.w("TopView.mediaPrevious: " + t);
                    }
                }
            });
        }
        if (mMediaNext != null) {
            mMediaNext.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (mMediaController == null) return;
                    try {
                        mMediaController.getTransportControls().skipToNext();
                    } catch (Throwable t) {
                        LSPLogger.w("TopView.mediaNext: " + t);
                    }
                }
            });
        }
        if (mMediaPlayPause != null) {
            mMediaPlayPause.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View view) {
                    toggleMediaPlayback();
                }
            });
        }
        if (mMediaCard != null) {
            mMediaCard.setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View view) {
                    openMediaSession();
                }
            });
        }
    }
    private void toggleMediaPlayback() {
        if (mMediaController == null) return;
        try {
            PlaybackState state = mMediaController.getPlaybackState();
            int playbackState = state == null ? PlaybackState.STATE_NONE : state.getState();
            if (playbackState == PlaybackState.STATE_PLAYING
                    || playbackState == PlaybackState.STATE_BUFFERING) {
                mMediaController.getTransportControls().pause();
            } else {
                mMediaController.getTransportControls().play();
            }
        } catch (Throwable t) {
            LSPLogger.w("TopView.mediaPlayPause: " + t);
        }
    }
    private void openMediaSession() {
        if (mMediaController == null) return;
        try {
            PendingIntent intent = mMediaController.getSessionActivity();
            if (intent != null) intent.send();
        } catch (Throwable t) {
            LSPLogger.w("TopView.openMediaSession: " + t);
        }
    }
    private void updateMediaUi() {
        if (mMediaTitle == null) return;
        if (mMediaController == null) {
            renderNoMedia();
            return;
        }
        MediaMetadata metadata = null;
        PlaybackState state = null;
        try {
            metadata = mMediaController.getMetadata();
            state = mMediaController.getPlaybackState();
        } catch (Throwable t) {
            LSPLogger.w("TopView.updateMediaUi: session query failed: " + t);
        }
        String packageName = mMediaController.getPackageName();
        String appLabel = getApplicationLabel(packageName);
        String title = firstNonEmpty(
                getMetadataString(metadata, MediaMetadata.METADATA_KEY_TITLE),
                getMetadataString(metadata, MediaMetadata.METADATA_KEY_DISPLAY_TITLE),
                getMetadataString(metadata, MediaMetadata.METADATA_KEY_ALBUM),
                appLabel,
                packageName);
        String artist = firstNonEmpty(
                getMetadataString(metadata, MediaMetadata.METADATA_KEY_ARTIST),
                getMetadataString(metadata, MediaMetadata.METADATA_KEY_ALBUM_ARTIST),
                getMetadataString(metadata, MediaMetadata.METADATA_KEY_DISPLAY_SUBTITLE),
                appLabel,
                getResources().getString(R.string.media_unknown_artist));
        mMediaTitle.setText(title);
        mMediaArtist.setText(artist);
        mMediaTitle.setContentDescription(title);
        Bitmap art = getMetadataBitmap(metadata, MediaMetadata.METADATA_KEY_ALBUM_ART);
        if (art == null) art = getMetadataBitmap(metadata, MediaMetadata.METADATA_KEY_ART);
        if (art != null) {
            mMediaArt.setImageDrawable(new BitmapDrawable(getResources(), art));
        } else {
            Drawable appIcon = getApplicationIcon(packageName);
            mMediaArt.setImageDrawable(appIcon == null ? getResources().getDrawable(
                    R.drawable.ic_media_note) : appIcon);
        }
        long actions = state == null ? 0L : state.getActions();
        boolean playing = state != null && (state.getState() == PlaybackState.STATE_PLAYING
                || state.getState() == PlaybackState.STATE_BUFFERING);
        boolean canPrevious = (actions & PlaybackState.ACTION_SKIP_TO_PREVIOUS) != 0;
        boolean canNext = (actions & PlaybackState.ACTION_SKIP_TO_NEXT) != 0;
        boolean canPlayPause = (actions & (PlaybackState.ACTION_PLAY
                | PlaybackState.ACTION_PAUSE | PlaybackState.ACTION_PLAY_PAUSE)) != 0
                || state != null && state.getState() != PlaybackState.STATE_NONE;
        setMediaButtonEnabled(mMediaPrevious, canPrevious);
        setMediaButtonEnabled(mMediaNext, canNext);
        setMediaButtonEnabled(mMediaPlayPause, canPlayPause);
        if (mMediaPlayPause != null) {
            mMediaPlayPause.setImageResource(playing
                    ? R.drawable.ic_media_pause : R.drawable.ic_media_play);
            mMediaPlayPause.setContentDescription(getResources().getString(
                    playing ? R.string.media_pause : R.string.media_play));
        }
        if (mMediaCard != null) mMediaCard.setAlpha(1f);
    }
    private void renderNoMedia() {
        if (mMediaTitle == null) return;
        mMediaTitle.setText(R.string.media_no_media);
        mMediaArtist.setText(R.string.media_hint);
        mMediaArt.setImageResource(R.drawable.ic_media_note);
        setMediaButtonEnabled(mMediaPrevious, false);
        setMediaButtonEnabled(mMediaPlayPause, false);
        setMediaButtonEnabled(mMediaNext, false);
        if (mMediaCard != null) mMediaCard.setAlpha(0.78f);
    }
    private void setMediaButtonEnabled(ImageButton button, boolean enabled) {
        if (button == null) return;
        button.setEnabled(enabled);
        button.setAlpha(enabled ? 1f : 0.38f);
    }
    private boolean hasUsefulMetadata(MediaMetadata metadata) {
        return !TextUtils.isEmpty(getMetadataString(metadata, MediaMetadata.METADATA_KEY_TITLE))
                || !TextUtils.isEmpty(getMetadataString(metadata,
                MediaMetadata.METADATA_KEY_DISPLAY_TITLE));
    }
    private String getMetadataString(MediaMetadata metadata, String key) {
        if (metadata == null || key == null) return null;
        try {
            return metadata.getString(key);
        } catch (Throwable ignored) {
            return null;
        }
    }
    private Bitmap getMetadataBitmap(MediaMetadata metadata, String key) {
        if (metadata == null || key == null) return null;
        try {
            return metadata.getBitmap(key);
        } catch (Throwable ignored) {
            return null;
        }
    }
    private String firstNonEmpty(String... values) {
        if (values == null) return "";
        for (String value : values) {
            if (!TextUtils.isEmpty(value)) return value;
        }
        return "";
    }
    private String getApplicationLabel(String packageName) {
        try {
            Context host = mController == null ? getContext() : mController.getHostContext();
            PackageManager pm = host.getPackageManager();
            return String.valueOf(pm.getApplicationLabel(pm.getApplicationInfo(packageName, 0)));
        } catch (Throwable ignored) {
            return null;
        }
    }
    private Drawable getApplicationIcon(String packageName) {
        try {
            Context host = mController == null ? getContext() : mController.getHostContext();
            return host.getPackageManager().getApplicationIcon(packageName);
        } catch (Throwable ignored) {
            return null;
        }
    }
    private void requestAppsRefresh(final boolean force) {
        if (mAppStrip == null || mAppManager == null || mAppLoader == null
                || mAppRefreshPending) {
            return;
        }
        long age = SystemClock.uptimeMillis() - mAppsLoadedAt;
        if (!force && mAppStrip.getChildCount() > 0 && age < APP_CACHE_TTL_MS) {
            return;
        }
        mAppRefreshPending = true;
        mAppLoader.post(new Runnable() {
            @Override
            public void run() {
                List<AppItem> loaded = null;
                try {
                    loaded = loadAppsInBackground();
                } catch (Throwable t) {
                    LSPLogger.e("TopView.loadAppsInBackground failed", t);
                }
                final List<AppItem> apps = loaded;
                post(new Runnable() {
                    @Override
                    public void run() {
                        mAppRefreshPending = false;
                        if (mAppStrip == null) return;
                        if (apps == null || apps.isEmpty()) {
                            scheduleAppsRefreshRetry();
                            return;
                        }
                        mAppRefreshRetryCount = 0;
                        renderApps(apps);
                        mAppsLoadedAt = SystemClock.uptimeMillis();
                    }
                });
            }
        });
    }
    private void scheduleAppsRefreshRetry() {
        if (mAppStrip == null || mAppLoader == null || mAppRefreshRetryCount >= 4) return;
        final long delay = 250L << mAppRefreshRetryCount++;
        LSPLogger.w("TopView: app query returned no icons; retry in " + delay + "ms");
        postDelayed(new Runnable() {
            @Override
            public void run() {
                requestAppsRefresh(true);
            }
        }, delay);
    }
    private List<AppItem> loadAppsInBackground() {
        if (mAppManager == null) return null;
        long started = SystemClock.uptimeMillis();
        List<AppItem> pinned = mAppManager.getAddedAppItem();
        List<AppItem> recommended = mAppManager.getUnAddedAppItem();
        sortByRecentUsage(recommended);
        List<AppItem> apps = new ArrayList<AppItem>(pinned);
        for (AppItem app : recommended) {
            if (!apps.contains(app)) apps.add(app);
        }
        List<AppItem> ready = new ArrayList<AppItem>();
        int count = Math.min(apps.size(), MAX_TOP_APPS);
        for (int i = 0; i < count; i++) {
            AppItem app = apps.get(i);
            app.getDisplayName();
            ready.add(app);
        }
        LSPLogger.i("TopView.loadAppsInBackground: count=" + ready.size()
                + " queried=" + count + " elapsedMs="
                + (SystemClock.uptimeMillis() - started));
        return ready;
    }
    private void renderApps(List<AppItem> apps) {
        final int generation = ++mAppRenderGeneration;
        mAppStrip.removeAllViews();
        renderAppBatch(apps, 0, generation);
    }
    private void renderAppBatch(final List<AppItem> apps, int start,
            final int generation) {
        if (generation != mAppRenderGeneration || mAppStrip == null) return;
        int count = Math.min(apps.size(), MAX_TOP_APPS);
        int end = Math.min(count, start + 8);
        for (int i = start; i < end; i++) {
            final AppItem app = apps.get(i);
            View appItem = createAppItem(app, generation);
            if (appItem != null) {
                mAppStrip.addView(appItem, new LinearLayout.LayoutParams(
                        getResources().getDimensionPixelSize(R.dimen.multitask_app_item_width),
                        LinearLayout.LayoutParams.MATCH_PARENT));
            }
        }
        mAppStrip.requestLayout();
        mAppStrip.invalidate();
        if (end >= count) {
            LSPLogger.i("TopView.renderApps: count=" + count);
            return;
        }
        final int next = end;
        postOnAnimation(new Runnable() {
            @Override
            public void run() {
                renderAppBatch(apps, next, generation);
            }
        });
    }
    private void sortByRecentUsage(List<AppItem> apps) {
        final Map<String, Long> scores = new HashMap<String, Long>();
        try {
            Context hostContext = SidebarController.getInstance(getContext()).getHostContext();
            UsageStatsManager manager = (UsageStatsManager) hostContext
                    .getSystemService(Context.USAGE_STATS_SERVICE);
            long now = System.currentTimeMillis();
            List<UsageStats> stats = manager.queryUsageStats(
                    UsageStatsManager.INTERVAL_DAILY,
                    now - 14L * 24L * 60L * 60L * 1000L, now);
            if (stats != null) {
                for (UsageStats stat : stats) {
                    long score = stat.getLastTimeUsed()
                            + Math.min(stat.getTotalTimeInForeground(), 24L * 60L * 60L * 1000L);
                    Long old = scores.get(stat.getPackageName());
                    if (old == null || score > old) scores.put(stat.getPackageName(), score);
                }
            }
        } catch (Throwable t) {
            LSPLogger.w("TopView.sortByRecentUsage: fallback to app order: " + t);
        }
        Collections.sort(apps, new Comparator<AppItem>() {
            @Override
            public int compare(AppItem left, AppItem right) {
                long leftScore = scores.containsKey(left.getPackageName())
                        ? scores.get(left.getPackageName()) : 0L;
                long rightScore = scores.containsKey(right.getPackageName())
                        ? scores.get(right.getPackageName()) : 0L;
                if (leftScore != rightScore) return leftScore < rightScore ? 1 : -1;
                CharSequence leftName = left.getDisplayName();
                CharSequence rightName = right.getDisplayName();
                return String.valueOf(leftName).compareToIgnoreCase(String.valueOf(rightName));
            }
        });
    }
    private View createAppItem(final AppItem app, final int generation) {
        FrameLayout container = new FrameLayout(getContext());
        container.setClickable(true);
        container.setLongClickable(true);
        container.setContentDescription(app.getDisplayName());
        final ImageView icon = new ImageView(getContext());
        icon.setScaleType(ImageView.ScaleType.FIT_CENTER);
        icon.setTag(app.mName);
        Drawable avatar = app.getCachedAvatar();
        icon.setImageDrawable(avatar != null ? avatar
                : AppIconPlaceholder.get(getContext()));
        if (avatar == null) {
            AppIconLoader.getInstance().load(app, new AppIconLoader.Callback() {
                @Override
                public boolean isValid() {
                    return generation == mAppRenderGeneration
                            && app.mName.equals(icon.getTag())
                            && icon.getParent() != null;
                }

                @Override
                public void onIconLoaded(AppItem loadedApp, Drawable loadedIcon) {
                    if (loadedIcon != null) icon.setImageDrawable(loadedIcon);
                }
            });
        }
        int iconSize = getResources().getDimensionPixelSize(R.dimen.multitask_app_icon_size);
        FrameLayout.LayoutParams iconParams = new FrameLayout.LayoutParams(
                iconSize, iconSize, Gravity.CENTER);
        container.addView(icon, iconParams);
        container.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View view) {
                MultiTaskController.getInstance(getContext()).openAppInMain(app.mName);
            }
        });
        container.setOnLongClickListener(new OnLongClickListener() {
            @Override
            public boolean onLongClick(View view) {
                try {
                    return view.startDragAndDrop(
                            MultiTaskController.createAppDragData(app.mName),
                            new DragShadowBuilder(view),
                            null,
                            View.DRAG_FLAG_GLOBAL);
                } catch (Throwable t) {
                    LSPLogger.e("TopView.startAppDrag failed for "
                            + app.getPackageName(), t);
                    return false;
                }
            }
        });
        return container;
    }
}
