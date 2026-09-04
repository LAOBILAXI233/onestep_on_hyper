.class public abstract Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
.super Landroid/widget/RelativeLayout;
.source "PullToRefreshBaseView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$RefreshListener;,
        Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;,
        Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;,
        Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;,
        Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$Gesture;,
        Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;
    }
.end annotation


.field private static final DBG:Z = false

.field private static final DISTANCE_TO_LOAD_MORE:I = 0x64

.field private static final GESTURE_DOWN:I = 0x0

.field private static final GESTURE_FLING_HORIZONTAL:I = 0x5

.field private static final GESTURE_FLING_VERTICAL:I = 0x6

.field private static final GESTURE_LONGPRESS:I = 0x4

.field private static final GESTURE_NONE:I = -0x1

.field private static final GESTURE_SCROLL_HORIZONTAL:I = 0x2

.field private static final GESTURE_SCROLL_VERTICAL:I = 0x3

.field private static final GESTURE_TAP:I = 0x1

.field private static final ICON_ANIM_DIV:I = 0x2d

.field private static final ICON_ANIM_FIRST:I = 0x1

.field private static final ICON_ANIM_LAST:I = 0x55

.field private static final ICON_ANIM_RATE:F = 5.3f

.field private static final LOG_TAG:Ljava/lang/String; = "PullToRefreshBaseView"

.field private static final MAX_NUM_OF_SYNC_TOASTS:I = 0x5

.field public static final PULL_DOWN:I = 0x1

.field public static final PULL_UP:I = 0x0

.field private static final PULL_UP_STYLE_LOAD:I = 0x1

.field private static final PULL_UP_STYLE_REFRESH:I = 0x0

.field private static final REFRESH_ANIM_MIN_TIME:I = 0x190

.field public static final SCROLL_BACK_SPEED:I = -0x14

.field private static final SCROLL_FAC:F = 0.2f

.field public static final SCROLL_OUT_SPEED:I = 0x14

.field private static final SHOW_CHECKING_FOR_MAIL_DURATION_IN_MILLIS:I = 0x3e8

.field public static final STATUS_PULL_TO_REFRESH:I = 0x0

.field public static final STATUS_REFRESHING:I = 0x2

.field public static final STATUS_REFRESH_FINISHED:I = 0x3

.field public static final STATUS_RELEASE_TO_REFRESH:I = 0x1

.field private static final SWIPE_TEXT_APPEAR_DURATION_IN_MILLIS:I = 0xc8


.field private final DEFAULT_PRE_POSITION:I

.field private final SPEED_CARDINAL:F

.field private currentStatus:I

.field horizentalSwipeFlag:Z

.field private isDoingStartRefreshAnim:Z

.field private isFooterAdded:Z

.field private lastStatus:I

.field private mBackground:I

.field private mCurrPoint:Landroid/graphics/Point;

.field private mDeltaY:F

.field private mDirectUp:Z

.field private mDownPoint:Landroid/graphics/Point;

.field private mDownScrollStartY:F

.field private mEnablePullDown:Z

.field private mEnablePullUp:Z

.field private mEnableSwipe:Z

.field private mEnabledPullDown:Z

.field private mFootIcon:Landroid/widget/ImageView;

.field private mFootText:Landroid/widget/TextView;

.field private mFooter:Lcom/smartisan/pullToRefresh/RefreshFooterView;

.field private mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

.field private mFooterListener:Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;

.field private mFooterNoMoreView:Landroid/view/View;

.field private mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

.field private mHandler:Landroid/os/Handler;

.field private mHasClearRotation:Z

.field private mHeadIcon:Landroid/widget/ImageView;

.field private mHeadText:Landroid/widget/TextView;

.field private mHeader:Lcom/smartisan/pullToRefresh/RefreshHeaderView;

.field private mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

.field private mIfInTouch:Z

.field private mIgnoreTouchEvents:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsFinishing:Z

.field public mIsSyncing:Z

.field private mLastNumber:I

.field private mLastY:F

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadOnce:Z

.field private mOnStatusChangeListener:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;

.field private mPrePosition:I

.field private mPullDownRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;

.field private mPullUpLoadMore:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;

.field private mPullUpRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;

.field private mPullUpStyle:I

.field private mRefreshAnim:Landroid/view/animation/Animation;

.field private mRefreshListener:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$RefreshListener;

.field private final mScaleTouchSlop:I

.field private mStartX:F

.field private mStartY:F

.field private mStateInReleaseToLoad:Z

.field private mTrackingScrollMovement:Z

.field private mTrackingScrollStartY:F

.field private mUpScrollStartY:F

.field private startAnimTime:J


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 175
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 179
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    const/4 v1, 0x3

    iput v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    .line 72
    iget v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    iput v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->lastStatus:I

    .line 85
    iput-boolean v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIgnoreTouchEvents:Z

    .line 87
    iput-boolean v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    .line 90
    iput v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mStartY:F

    .line 91
    iput v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastY:F

    .line 92
    iput v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mStartX:F

    .line 93
    iput v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mDeltaY:F

    .line 95
    iput-boolean v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mDirectUp:Z

    .line 96
    iput-boolean v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIsSyncing:Z

    .line 97
    iput-boolean v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isDoingStartRefreshAnim:Z

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mListeners:Ljava/util/List;

    .line 108
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->startAnimTime:J

    .line 109
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v1, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;

    invoke-direct {v1, p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    iput-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;

    .line 116
    new-instance v1, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;

    invoke-direct {v1, p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    iput-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;

    .line 117
    new-instance v1, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;

    invoke-direct {v1, p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    iput-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;

    .line 342
    iput-boolean v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isFooterAdded:Z

    .line 350
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mCurrPoint:Landroid/graphics/Point;

    .line 351
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mDownPoint:Landroid/graphics/Point;

    .line 353
    const v1, 0x3c449ba6    # 0.012f

    iput v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->SPEED_CARDINAL:F

    .line 358
    iput v6, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->DEFAULT_PRE_POSITION:I

    .line 362
    iput v6, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPrePosition:I

    .line 384
    iput-boolean v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIfInTouch:Z

    .line 385
    iput-boolean v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mStateInReleaseToLoad:Z

    .line 684
    iput-boolean v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->horizentalSwipeFlag:Z

    .line 880
    iput v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastNumber:I

    .line 881
    iput-boolean v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHasClearRotation:Z

    .line 1090
    iput-boolean v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIsFinishing:Z

    .line 1464
    iput-boolean v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnabledPullDown:Z

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/smartisan/pullToRefresh/R$styleable;->PullToRefreshListView:[I

    invoke-virtual {v1, p2, v2, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 184
    .local v0, "array":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/smartisan/pullToRefresh/R$styleable;->PullToRefreshListView_enablePullDown:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnablePullDown:Z

    .line 185
    sget v1, Lcom/smartisan/pullToRefresh/R$styleable;->PullToRefreshListView_enablePullUp:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnablePullUp:Z

    .line 186
    sget v1, Lcom/smartisan/pullToRefresh/R$styleable;->PullToRefreshListView_pullUpStyle:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpStyle:I

    .line 187
    sget v1, Lcom/smartisan/pullToRefresh/R$styleable;->PullToRefreshListView_back_ground:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mBackground:I

    .line 188
    sget v1, Lcom/smartisan/pullToRefresh/R$styleable;->PullToRefreshListView_enableSwipe:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnableSwipe:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    iget v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mBackground:I

    if-eqz v1, :cond_0

    .line 193
    iget v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mBackground:I

    invoke-virtual {p0, v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->setBackgroundResource(I)V

    .line 195
    :cond_0
    sget v1, Lcom/smartisan/pullToRefresh/R$anim;->refresh_anim:I

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mRefreshAnim:Landroid/view/animation/Animation;

    .line 196
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mRefreshAnim:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 197
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mScaleTouchSlop:I

    .line 198
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mInflater:Landroid/view/LayoutInflater;

    .line 199
    invoke-direct {p0, p2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->initViews(Landroid/util/AttributeSet;)V

    .line 200
    return-void

    .line 190
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIsFinishing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIsFinishing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    return v0
.end method

.method static synthetic access$1000(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateHeaderPadding(F)V

    return-void
.end method

.method static synthetic access$102(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    return p1
.end method

.method static synthetic access$1100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateHeaderView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->cancelMovementTracking()V

    return-void
.end method

.method static synthetic access$1400(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->doFinishRefreshing(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkPullUpRefresh()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/IFooterBaseView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateFooterScroll(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateFooterView()V

    return-void
.end method

.method static synthetic access$1900(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/ConversationListFooterView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/RefreshFooterView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisan/pullToRefresh/RefreshFooterView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateHeadIcon(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mRefreshAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->startAnimTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isDoingStartRefreshAnim:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateFootIcon(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIfInTouch:Z

    return v0
.end method

.method static synthetic access$300(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/RefreshHeaderView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->doDisappearFooter()V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$RefreshListener;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mRefreshListener:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$RefreshListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnabledPullDown:Z

    return v0
.end method

.method static synthetic access$600(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
    .param p1, "x1"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->startMovementTracking(F)V

    return-void
.end method

.method static synthetic access$700(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/IHeaderBaseView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->notifyAllListeners(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)F
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    .prologue
    .line 30
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mDeltaY:F

    return v0
.end method

.method private adjustScrollY(F)I
    .locals 3
    .param p1, "y"    # F

    .prologue
    .line 830
    const/4 v1, 0x0

    .line 833
    .local v1, "result":F
    iget-boolean v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mDirectUp:Z

    if-eqz v2, :cond_0

    .line 834
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getScrollY()I

    move-result v0

    .line 838
    .local v0, "hasScrolled":I
    :goto_0
    const/16 v2, 0x19

    if-ge v0, v2, :cond_1

    .line 839
    move v1, p1

    .line 849
    :goto_1
    float-to-int v2, v1

    return v2

    .line 836
    .end local v0    # "hasScrolled":I
    :cond_0
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    invoke-interface {v2}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->getHeaderTop()I

    move-result v0

    .restart local v0    # "hasScrolled":I
    goto :goto_0

    .line 840
    :cond_1
    const/16 v2, 0x46

    if-ge v0, v2, :cond_2

    .line 841
    const/high16 v2, 0x3fc00000    # 1.5f

    div-float v1, p1, v2

    goto :goto_1

    .line 842
    :cond_2
    const/16 v2, 0x64

    if-ge v0, v2, :cond_3

    .line 843
    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, p1, v2

    goto :goto_1

    .line 844
    :cond_3
    const/16 v2, 0x96

    if-ge v0, v2, :cond_4

    .line 845
    const/high16 v2, 0x40200000    # 2.5f

    div-float v1, p1, v2

    goto :goto_1

    .line 847
    :cond_4
    const/high16 v2, 0x40400000    # 3.0f

    div-float v1, p1, v2

    goto :goto_1
.end method

.method private adjustScrollYPullUp(F)I
    .locals 3
    .param p1, "y"    # F

    .prologue
    .line 858
    const/4 v1, 0x0

    .line 861
    .local v1, "result":F
    iget-boolean v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mDirectUp:Z

    if-nez v2, :cond_0

    .line 862
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getScrollY()I

    move-result v0

    .line 866
    .local v0, "hasScrolled":I
    :goto_0
    const/16 v2, 0x19

    if-ge v0, v2, :cond_1

    .line 867
    move v1, p1

    .line 877
    :goto_1
    neg-float v2, v1

    float-to-int v2, v2

    return v2

    .line 864
    .end local v0    # "hasScrolled":I
    :cond_0
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

    invoke-interface {v2}, Lcom/smartisan/pullToRefresh/IFooterBaseView;->getFooterBottom()I

    move-result v0

    .restart local v0    # "hasScrolled":I
    goto :goto_0

    .line 868
    :cond_1
    const/16 v2, 0x46

    if-ge v0, v2, :cond_2

    .line 869
    const/high16 v2, 0x3fc00000    # 1.5f

    div-float v1, p1, v2

    goto :goto_1

    .line 870
    :cond_2
    const/16 v2, 0x64

    if-ge v0, v2, :cond_3

    .line 871
    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, p1, v2

    goto :goto_1

    .line 872
    :cond_3
    const/16 v2, 0x96

    if-ge v0, v2, :cond_4

    .line 873
    const/high16 v2, 0x40200000    # 2.5f

    div-float v1, p1, v2

    goto :goto_1

    .line 875
    :cond_4
    const/high16 v2, 0x40400000    # 3.0f

    div-float v1, p1, v2

    goto :goto_1
.end method

.method private cancelMovementTracking()V
    .locals 1

    .prologue
    .line 1326
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    if-eqz v0, :cond_0

    .line 1327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    .line 1329
    :cond_0
    return-void
.end method

.method private checkPullUpLoad()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 165
    iget-boolean v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnablePullUp:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpStyle:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPullUpRefresh()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnablePullUp:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpStyle:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkSwipeGesture()Z
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    instance-of v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    check-cast v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->ifSwipingOrOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doDisappearFooter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1440
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIsFinishing:Z

    if-eqz v0, :cond_0

    .line 1462
    :goto_0
    return-void

    .line 1443
    :cond_0
    iput-boolean v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isDoingStartRefreshAnim:Z

    .line 1444
    iput-boolean v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIsFinishing:Z

    .line 1446
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1447
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1448
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1449
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

    check-cast v0, Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/HeaderListView;->removeFooter()V

    .line 1450
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

    check-cast v0, Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/HeaderListView;->addFooter()V

    .line 1452
    iput-boolean v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIsSyncing:Z

    .line 1453
    iput-boolean v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIsFinishing:Z

    .line 1454
    const/4 v0, 0x3

    iput v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    .line 1457
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    invoke-interface {v1}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->getHeaderHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->setClipBottom(I)V

    .line 1459
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateFooterView()V

    .line 1460
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    invoke-direct {p0, v0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->notifyAllListeners(II)V

    .line 1461
    invoke-direct {p0, v3}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateFootIcon(I)V

    goto :goto_0
.end method

.method private doFinishRefreshing(I)V
    .locals 10
    .param p1, "refreshMethod"    # I

    .prologue
    .line 1093
    iget-boolean v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIsFinishing:Z

    if-eqz v7, :cond_1

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1096
    :cond_1
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isDoingStartRefreshAnim:Z

    .line 1097
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIsFinishing:Z

    .line 1099
    const/4 v7, 0x1

    if-ne p1, v7, :cond_2

    .line 1100
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1109
    :goto_1
    const-wide/16 v0, 0x0

    .line 1111
    .local v0, "duration":J
    iget v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastNumber:I

    const/16 v8, 0x2d

    if-ge v7, v8, :cond_3

    .line 1112
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    iget v9, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastNumber:I

    aput v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x1

    aput v9, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 1113
    .local v6, "refreshBackAnim":Landroid/animation/ValueAnimator;
    iget v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastNumber:I

    mul-int/lit8 v7, v7, 0x4

    int-to-long v0, v7

    .line 1125
    :goto_2
    sget-object v7, Lcom/smartisan/pullToRefresh/CubicInterpolator;->OUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1126
    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1127
    new-instance v7, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$10;

    invoke-direct {v7, p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$10;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1140
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 1141
    const/4 v7, 0x1

    if-ne p1, v7, :cond_5

    .line 1143
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    sget-object v8, Lcom/smartisan/pullToRefresh/CubicInterpolator;->OUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1146
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    sget-object v8, Lcom/smartisan/pullToRefresh/CubicInterpolator;->OUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1149
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    invoke-interface {v9}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->getHeaderTop()I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    invoke-interface {v9}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->getHeaderHeight()I

    move-result v9

    mul-int/lit8 v9, v9, -0x1

    aput v9, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 1151
    .local v5, "mHeadAnim":Landroid/animation/ValueAnimator;
    sget-object v7, Lcom/smartisan/pullToRefresh/CubicInterpolator;->OUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1152
    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1153
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    invoke-virtual {v7}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->getClipBottom()I

    move-result v3

    .line 1154
    .local v3, "headerClipBottom":I
    new-instance v7, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$11;

    invoke-direct {v7, p0, v3}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$11;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1167
    new-instance v7, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;

    invoke-direct {v7, p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1193
    const-wide/16 v8, 0x32

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1194
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 1195
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1196
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    invoke-virtual {v7}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->isShowFooter()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1197
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->setState(I)V

    goto/16 :goto_0

    .line 1102
    .end local v0    # "duration":J
    .end local v3    # "headerClipBottom":I
    .end local v5    # "mHeadAnim":Landroid/animation/ValueAnimator;
    .end local v6    # "refreshBackAnim":Landroid/animation/ValueAnimator;
    :cond_2
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->clearAnimation()V

    goto/16 :goto_1

    .line 1115
    .restart local v0    # "duration":J
    :cond_3
    const/4 v7, 0x1

    if-ne p1, v7, :cond_4

    .line 1116
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setRotation(F)V

    .line 1121
    :goto_3
    const/4 v7, 0x2

    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 1122
    .restart local v6    # "refreshBackAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v0, 0x1f4

    goto/16 :goto_2

    .line 1118
    .end local v6    # "refreshBackAnim":Landroid/animation/ValueAnimator;
    :cond_4
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_3

    .line 1200
    .restart local v6    # "refreshBackAnim":Landroid/animation/ValueAnimator;
    :cond_5
    if-nez p1, :cond_0

    .line 1202
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    sget-object v8, Lcom/smartisan/pullToRefresh/CubicInterpolator;->OUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1205
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    sget-object v8, Lcom/smartisan/pullToRefresh/CubicInterpolator;->OUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1208
    const/4 v7, 0x2

    new-array v7, v7, [I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

    invoke-interface {v9}, Lcom/smartisan/pullToRefresh/IFooterBaseView;->getFooterBottom()I

    move-result v9

    aput v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

    invoke-interface {v9}, Lcom/smartisan/pullToRefresh/IFooterBaseView;->getFooterHeight()I

    move-result v9

    neg-int v9, v9

    aput v9, v7, v8

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1209
    .local v4, "mFootAnim":Landroid/animation/ValueAnimator;
    sget-object v7, Lcom/smartisan/pullToRefresh/CubicInterpolator;->OUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1210
    const-wide/16 v8, 0x12c

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1211
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisan/pullToRefresh/RefreshFooterView;

    invoke-virtual {v7}, Lcom/smartisan/pullToRefresh/RefreshFooterView;->getClipTop()I

    move-result v2

    .line 1212
    .local v2, "footerClipTop":I
    new-instance v7, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$13;

    invoke-direct {v7, p0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$13;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1226
    new-instance v7, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$14;

    invoke-direct {v7, p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$14;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1256
    const-wide/16 v8, 0x32

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1257
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 1121
    :array_0
    .array-data 4
        0x2d
        0x55
    .end array-data
.end method

.method private ensusreNoMoreView()V
    .locals 3

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterNoMoreView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1375
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/smartisan/pullToRefresh/R$layout;->pull_up_no_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterNoMoreView:Landroid/view/View;

    .line 1377
    :cond_0
    return-void
.end method

.method private getRefreshTextAlpha()F
    .locals 5

    .prologue
    const/high16 v4, 0x433e0000    # 190.0f

    const/4 v1, 0x0

    .line 802
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->getTranslationY()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v0, v2, v3

    .line 803
    .local v0, "headerPadding":F
    const/high16 v2, -0x3cc20000    # -190.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 809
    :goto_0
    return v1

    .line 806
    :cond_0
    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 807
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v4, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_0

    .line 809
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getRefreshTextAlphaPullUp()F
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x433e0000    # 190.0f

    .line 818
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisan/pullToRefresh/RefreshFooterView;

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/RefreshFooterView;->getTranslationY()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v0, v2, v3

    .line 819
    .local v0, "footerScroll":F
    cmpl-float v2, v0, v4

    if-lez v2, :cond_0

    .line 825
    :goto_0
    return v1

    .line 822
    :cond_0
    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 823
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v4, v1

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_0

    .line 825
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private initScrollData()V
    .locals 4

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getPaddingTop()I

    move-result v1

    .line 374
    .local v1, "paddingTop":I
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 375
    .local v0, "listHeight":F
    int-to-float v2, v1

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mUpScrollStartY:F

    .line 376
    int-to-float v2, v1

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mDownScrollStartY:F

    .line 377
    return-void
.end method

.method private initViews(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 230
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnablePullDown:Z

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/smartisan/pullToRefresh/R$layout;->pull_down_to_refresh_base_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkPullUpRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/smartisan/pullToRefresh/R$layout;->pull_up_to_refresh_base_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 236
    sget v0, Lcom/smartisan/pullToRefresh/R$id;->pull_to_refresh_foot:I

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisan/pullToRefresh/RefreshFooterView;

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisan/pullToRefresh/RefreshFooterView;

    .line 237
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisan/pullToRefresh/RefreshFooterView;

    invoke-virtual {v0, v3}, Lcom/smartisan/pullToRefresh/RefreshFooterView;->setClipTop(I)V

    .line 238
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisan/pullToRefresh/RefreshFooterView;

    sget v1, Lcom/smartisan/pullToRefresh/R$id;->footer_refresh_icon:I

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/RefreshFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    .line 239
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisan/pullToRefresh/RefreshFooterView;

    sget v1, Lcom/smartisan/pullToRefresh/R$id;->footer_refresh_text:I

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/RefreshFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    .line 242
    :cond_1
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnableSwipe:Z

    invoke-virtual {p0, p1, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->createRefreshableView(Landroid/util/AttributeSet;Z)Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    .line 243
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 244
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 245
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->addView(Landroid/view/View;II)V

    .line 248
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkPullUpRefresh()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    check-cast v0, Lcom/smartisan/pullToRefresh/HeaderListView;

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

    .line 250
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

    new-instance v1, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$1;

    invoke-direct {v1, p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$1;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    invoke-interface {v0, v1}, Lcom/smartisan/pullToRefresh/IFooterBaseView;->setRefreshFooterListener(Lcom/smartisan/pullToRefresh/RefreshFooterView$RefreshFooterListener;)V

    .line 262
    :cond_2
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnablePullDown:Z

    if-eqz v0, :cond_3

    .line 263
    sget v0, Lcom/smartisan/pullToRefresh/R$id;->pull_to_refresh_head:I

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    .line 264
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    invoke-interface {v1}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->getHeaderHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->setClipBottom(I)V

    .line 265
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    sget v1, Lcom/smartisan/pullToRefresh/R$id;->refresh_icon:I

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    .line 266
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    sget v1, Lcom/smartisan/pullToRefresh/R$id;->refresh_text:I

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    .line 267
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    new-instance v1, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$2;

    invoke-direct {v1, p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$2;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    invoke-interface {v0, v1}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->setRefreshHeaderListener(Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;)V

    .line 279
    :cond_3
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 280
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->addFooterView()V

    .line 282
    :cond_4
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 1334
    return-void
.end method

.method private notifyAllListeners(II)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "refreshStyle"    # I

    .prologue
    .line 141
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;

    .line 142
    .local v1, "listener":Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;
    invoke-interface {v1, p1, p2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;->onStatusChange(II)V

    goto :goto_0

    .line 144
    .end local v1    # "listener":Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;
    :cond_0
    return-void
.end method

.method private recovery()V
    .locals 1

    .prologue
    .line 381
    const/4 v0, -0x2

    iput v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPrePosition:I

    .line 382
    return-void
.end method

.method private setHeadIcon(Z)V
    .locals 8
    .param p1, "footer"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x2d

    .line 892
    if-eqz p1, :cond_3

    .line 893
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

    invoke-interface {v3}, Lcom/smartisan/pullToRefresh/IFooterBaseView;->getFooterBottom()I

    move-result v3

    iget-object v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

    invoke-interface {v4}, Lcom/smartisan/pullToRefresh/IFooterBaseView;->getFooterHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v2, v3

    .line 898
    .local v2, "translationY":F
    :goto_0
    const v3, 0x40a9999a    # 5.3f

    div-float v3, v2, v3

    float-to-int v1, v3

    .line 899
    .local v1, "number":I
    if-gtz v1, :cond_0

    .line 900
    const/4 v1, 0x1

    .line 902
    :cond_0
    iput-boolean v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isDoingStartRefreshAnim:Z

    .line 903
    if-ge v1, v5, :cond_6

    .line 904
    iget-boolean v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHasClearRotation:Z

    if-nez v3, :cond_1

    .line 905
    if-eqz p1, :cond_4

    .line 906
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setRotation(F)V

    .line 910
    :goto_1
    iput-boolean v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHasClearRotation:Z

    .line 913
    :cond_1
    :try_start_0
    iget v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastNumber:I

    if-eq v1, v3, :cond_2

    .line 914
    if-eqz p1, :cond_5

    .line 915
    invoke-direct {p0, v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateFootIcon(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :cond_2
    :goto_2
    return-void

    .line 895
    .end local v1    # "number":I
    .end local v2    # "translationY":F
    :cond_3
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    invoke-interface {v3}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->getHeaderTop()I

    move-result v3

    iget-object v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    invoke-interface {v4}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->getHeaderHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v2, v3

    .restart local v2    # "translationY":F
    goto :goto_0

    .line 908
    .restart local v1    # "number":I
    :cond_4
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    .line 917
    :cond_5
    :try_start_1
    invoke-direct {p0, v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateHeadIcon(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 924
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    iget-boolean v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHasClearRotation:Z

    if-eqz v3, :cond_7

    .line 925
    if-eqz p1, :cond_9

    .line 926
    invoke-direct {p0, v5}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateFootIcon(I)V

    .line 930
    :goto_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHasClearRotation:Z

    .line 932
    :cond_7
    iget v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastNumber:I

    if-eq v3, v5, :cond_8

    .line 933
    if-eqz p1, :cond_a

    .line 934
    invoke-direct {p0, v5}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateFootIcon(I)V

    .line 939
    :cond_8
    :goto_4
    iget v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastNumber:I

    if-eq v1, v3, :cond_2

    .line 940
    if-eqz p1, :cond_b

    .line 941
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    add-int/lit8 v4, v1, -0x2d

    mul-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    .line 945
    :goto_5
    iput v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastNumber:I

    goto :goto_2

    .line 928
    :cond_9
    invoke-direct {p0, v5}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateHeadIcon(I)V

    goto :goto_3

    .line 936
    :cond_a
    invoke-direct {p0, v5}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateHeadIcon(I)V

    goto :goto_4

    .line 943
    :cond_b
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    add-int/lit8 v4, v1, -0x2d

    mul-int/lit8 v4, v4, 0x5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_5
.end method

.method private startMovementTracking(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 1321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    .line 1322
    iput p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mTrackingScrollStartY:F

    .line 1323
    return-void
.end method

.method private updateFootIcon(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1275
    iput p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastNumber:I

    .line 1276
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1277
    return-void
.end method

.method private updateFooterScroll(F)V
    .locals 3
    .param p1, "scrollY"    # F

    .prologue
    .line 791
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

    invoke-interface {v1}, Lcom/smartisan/pullToRefresh/IFooterBaseView;->getFooterBottom()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->adjustScrollYPullUp(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/smartisan/pullToRefresh/IFooterBaseView;->setFooterPadding(I)V

    .line 792
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

    invoke-interface {v0}, Lcom/smartisan/pullToRefresh/IFooterBaseView;->scrollToBottom()Z

    .line 794
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIsSyncing:Z

    if-nez v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisan/pullToRefresh/RefreshFooterView;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterBaseView:Lcom/smartisan/pullToRefresh/IFooterBaseView;

    invoke-interface {v1}, Lcom/smartisan/pullToRefresh/IFooterBaseView;->getFooterBottom()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/RefreshFooterView;->setTranslationY(F)V

    .line 796
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getRefreshTextAlphaPullUp()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 797
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->setHeadIcon(Z)V

    .line 799
    :cond_0
    return-void
.end method

.method private updateFooterView()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1299
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->lastStatus:I

    iget v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    if-eq v0, v1, :cond_0

    .line 1300
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    if-nez v0, :cond_1

    .line 1301
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisan/pullToRefresh/R$string;->pull_up_to_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1314
    :cond_0
    :goto_0
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    iput v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->lastStatus:I

    .line 1315
    return-void

    .line 1303
    :cond_1
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1304
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisan/pullToRefresh/R$string;->pull_up_to_release:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 1306
    :cond_2
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1307
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisan/pullToRefresh/R$string;->pull_up_refreshing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1308
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 1309
    :cond_3
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisan/pullToRefresh/R$string;->pull_up_to_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method private updateHeadIcon(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1271
    iput p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastNumber:I

    .line 1272
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1273
    return-void
.end method

.method private updateHeaderPadding(F)V
    .locals 3
    .param p1, "scrollY"    # F

    .prologue
    .line 778
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    invoke-interface {v1}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->getHeaderTop()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->adjustScrollY(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->setHeaderPadding(I)V

    .line 780
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIsSyncing:Z

    if-nez v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    invoke-interface {v1}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->getHeaderTop()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->setTranslationY(F)V

    .line 782
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getRefreshTextAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 783
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->setHeadIcon(Z)V

    .line 785
    :cond_0
    return-void
.end method

.method private updateHeaderView()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1280
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->lastStatus:I

    iget v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    if-eq v0, v1, :cond_0

    .line 1281
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    if-nez v0, :cond_1

    .line 1282
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisan/pullToRefresh/R$string;->pull_down_to_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1283
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1295
    :cond_0
    :goto_0
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    iput v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->lastStatus:I

    .line 1296
    return-void

    .line 1284
    :cond_1
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1285
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisan/pullToRefresh/R$string;->pull_down_to_release:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 1287
    :cond_2
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1288
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisan/pullToRefresh/R$string;->pull_down_refreshing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1289
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 1290
    :cond_3
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisan/pullToRefresh/R$string;->pull_down_to_refresh:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method


.method protected addFooterView()V
    .locals 3

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/smartisan/pullToRefresh/R$layout;->conversation_list_footer_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    .line 348
    return-void
.end method

.method public addListener(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method protected abstract addMoreView(Landroid/view/View;)V
.end method

.method protected abstract addNoMoreView(Landroid/view/View;)V
.end method

.method protected abstract canPredicateWhenPullDown()Z
.end method

.method protected abstract canPredicateWhenPullUpLoad()Z
.end method

.method protected abstract canPredicateWhenPullUpRefresh()Z
.end method

.method protected abstract createRefreshableView(Landroid/util/AttributeSet;Z)Lcom/smartisan/pullToRefresh/IHeaderBaseView;
.end method

.method public disablePullUp()V
    .locals 1

    .prologue
    .line 1406
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnablePullUp:Z

    .line 1407
    return-void
.end method

.method public disappearFooter()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x190

    .line 1423
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1424
    .local v0, "curTime":J
    iget-wide v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->startAnimTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 1425
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->doDisappearFooter()V

    .line 1434
    :goto_0
    return-void

    .line 1427
    :cond_0
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$15;

    invoke-direct {v3, p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$15;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    iget-wide v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->startAnimTime:J

    sub-long v4, v0, v4

    sub-long v4, v6, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 696
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v5

    .line 700
    .local v0, "multiTouch":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 752
    :goto_2
    return v6

    .line 694
    .end local v0    # "multiTouch":Z
    :pswitch_1
    iput-boolean v6, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIgnoreTouchEvents:Z

    goto :goto_0

    :cond_0
    move v0, v6

    .line 696
    goto :goto_1

    .line 704
    .restart local v0    # "multiTouch":Z
    :cond_1
    iget-boolean v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIgnoreTouchEvents:Z

    if-eqz v4, :cond_2

    .line 705
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_2

    .line 712
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 731
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 736
    .local v2, "superRet":Z
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkSwipeGesture()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->horizentalSwipeFlag:Z

    if-eqz v4, :cond_6

    .line 737
    :cond_3
    iget-boolean v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->horizentalSwipeFlag:Z

    if-nez v4, :cond_4

    .line 738
    iput-boolean v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->horizentalSwipeFlag:Z

    .line 740
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_2

    :goto_4
    :pswitch_2
    move v6, v5

    .line 746
    goto :goto_2

    .line 714
    .end local v2    # "superRet":Z
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mStartY:F

    iput v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastY:F

    .line 715
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mStartX:F

    .line 716
    iget-object v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mDownPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Point;->set(II)V

    .line 717
    iput-boolean v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIfInTouch:Z

    goto :goto_3

    .line 720
    :pswitch_4
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 721
    .local v3, "y":F
    iget v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastY:F

    sub-float v4, v3, v4

    iput v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mDeltaY:F

    .line 722
    iput v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastY:F

    .line 723
    iget v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mDeltaY:F

    const/4 v7, 0x0

    cmpg-float v4, v4, v7

    if-gez v4, :cond_5

    move v4, v5

    :goto_5
    iput-boolean v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mDirectUp:Z

    goto :goto_3

    :cond_5
    move v4, v6

    goto :goto_5

    .line 727
    .end local v3    # "y":F
    :pswitch_5
    iput-boolean v6, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIfInTouch:Z

    .line 728
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->recovery()V

    goto :goto_3

    .line 743
    .restart local v2    # "superRet":Z
    :pswitch_6
    iput-boolean v6, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->horizentalSwipeFlag:Z

    goto :goto_4

    .line 749
    :cond_6
    iget-object v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;

    invoke-virtual {v4, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;

    invoke-virtual {v4, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_6
    or-int/2addr v4, v7

    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkPullUpRefresh()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;

    invoke-virtual {v7, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_7
    or-int v1, v4, v5

    .line 752
    .local v1, "ret":Z
    or-int v6, v1, v2

    goto/16 :goto_2

    .end local v1    # "ret":Z
    :cond_7
    move v4, v6

    .line 749
    goto :goto_6

    :cond_8
    move v5, v6

    goto :goto_7

    .line 690
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 712
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 740
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method public enablePullUp()V
    .locals 1

    .prologue
    .line 1414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnablePullUp:Z

    .line 1415
    return-void
.end method

.method public finishRefreshing(I)V
    .locals 8
    .param p1, "refreshMethod"    # I

    .prologue
    const-wide/16 v6, 0x190

    .line 1069
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1070
    .local v0, "curTime":J
    iget-wide v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->startAnimTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 1071
    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->doFinishRefreshing(I)V

    .line 1080
    :goto_0
    return-void

    .line 1073
    :cond_0
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$9;

    invoke-direct {v3, p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$9;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V

    iget-wide v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->startAnimTime:J

    sub-long v4, v0, v4

    sub-long v4, v6, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getCurrentStatus()I
    .locals 1

    .prologue
    .line 1083
    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    return v0
.end method

.method public getRefreshableView()Lcom/smartisan/pullToRefresh/IHeaderBaseView;
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    return-object v0
.end method

.method public hideLoadMore()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1363
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->setState(I)V

    .line 1365
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isFooterAdded:Z

    if-eqz v0, :cond_0

    .line 1366
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->removeMoreView(Landroid/view/View;)V

    .line 1367
    iput-boolean v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isFooterAdded:Z

    .line 1370
    :cond_0
    return-void
.end method

.method public hideNoMore()V
    .locals 1

    .prologue
    .line 1388
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->ensusreNoMoreView()V

    .line 1389
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isFooterAdded:Z

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterNoMoreView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->removeNoMoreView(Landroid/view/View;)V

    .line 1391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isFooterAdded:Z

    .line 1393
    :cond_0
    return-void
.end method

.method protected abstract isBottom(Z)Z
.end method

.method public isFinishedRefresh()Z
    .locals 2

    .prologue
    .line 1087
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->getCurrentStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isTop()Z
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 286
    const-string v0, "onAttachedToWindow"

    invoke-direct {p0, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->log(Ljava/lang/String;)V

    .line 287
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 288
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mOnStatusChangeListener:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$3;

    invoke-direct {v0, p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$3;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mOnStatusChangeListener:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;

    .line 305
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mOnStatusChangeListener:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterListener:Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$4;

    invoke-direct {v0, p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$4;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterListener:Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;

    .line 317
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterListener:Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->setClickListener(Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;)V

    .line 320
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 324
    const-string v0, "onDetachedFromWindow"

    invoke-direct {p0, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->log(Ljava/lang/String;)V

    .line 325
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 326
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mOnStatusChangeListener:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mOnStatusChangeListener:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 328
    iput-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mOnStatusChangeListener:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;

    .line 329
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    invoke-virtual {v0, v2}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterListener:Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    invoke-virtual {v0, v2}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->setClickListener(Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;)V

    .line 336
    iput-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterListener:Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;

    .line 339
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 652
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnabledPullDown:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mStartY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mScaleTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    if-eq v0, v4, :cond_0

    .line 657
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;

    invoke-static {v0, v3}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->access$2002(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;Z)Z

    .line 658
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->access$2102(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;Z)Z

    .line 659
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->access$2202(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;Z)Z

    .line 681
    :goto_0
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->access$2100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;)Z

    move-result v0

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->access$2000(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;)Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->access$2200(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;)Z

    move-result v1

    or-int/2addr v0, v1

    return v0

    .line 660
    :cond_0
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isBottom(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mScaleTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->access$2002(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;Z)Z

    .line 665
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;

    invoke-static {v0, v3}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->access$2102(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;Z)Z

    .line 666
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->access$2202(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;Z)Z

    goto :goto_0

    .line 667
    :cond_2
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isBottom(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mStartY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mScaleTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkPullUpRefresh()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    if-eq v0, v4, :cond_3

    .line 672
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->access$2002(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;Z)Z

    .line 673
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->access$2102(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;Z)Z

    .line 674
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;

    invoke-static {v0, v3}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->access$2202(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;Z)Z

    goto :goto_0

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullDownRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->access$2002(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;Z)Z

    .line 677
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpLoadMore:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->access$2102(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;Z)Z

    .line 678
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mPullUpRefresh:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->access$2202(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;Z)Z

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 223
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 224
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLoadOnce:Z

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLoadOnce:Z

    .line 227
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 366
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 367
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->initScrollData()V

    .line 368
    return-void
.end method

.method public releaseToLoad()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->setState(I)V

    .line 641
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->performLoading()V

    .line 642
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->setClickListener(Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;)V

    .line 643
    return-void
.end method

.method public removeListener(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method protected abstract removeMoreView(Landroid/view/View;)V
.end method

.method protected abstract removeNoMoreView(Landroid/view/View;)V
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 647
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 648
    return-void
.end method

.method public setEnabledPullDownToRefresh(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1466
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnabledPullDown:Z

    if-eq v0, p1, :cond_0

    .line 1467
    iput-boolean p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mEnabledPullDown:Z

    .line 1469
    :cond_0
    return-void
.end method

.method public setHeadTextAlpha(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1475
    :cond_0
    return-void
.end method

.method public setNoMoreText(Ljava/lang/String;)V
    .locals 3
    .param p1, "noMoreText"    # Ljava/lang/String;

    .prologue
    .line 1396
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->ensusreNoMoreView()V

    .line 1397
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterNoMoreView:Landroid/view/View;

    sget v2, Lcom/smartisan/pullToRefresh/R$id;->pull_up_no_more_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1398
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1399
    return-void
.end method

.method public setRefreshListener(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$RefreshListener;)V
    .locals 0
    .param p1, "refreshListener"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$RefreshListener;

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mRefreshListener:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$RefreshListener;

    .line 1349
    return-void
.end method

.method public showLoadMore()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1352
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->checkPullUpLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    invoke-virtual {v0, v2}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->setState(I)V

    .line 1354
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterListener:Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->setClickListener(Lcom/smartisan/pullToRefresh/ConversationListFooterView$FooterViewClickListener;)V

    .line 1355
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isFooterAdded:Z

    if-nez v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterView:Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->addMoreView(Landroid/view/View;)V

    .line 1357
    iput-boolean v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isFooterAdded:Z

    .line 1360
    :cond_0
    return-void
.end method

.method public showNoMore()V
    .locals 1

    .prologue
    .line 1379
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->ensusreNoMoreView()V

    .line 1380
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isFooterAdded:Z

    if-nez v0, :cond_0

    .line 1381
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooterNoMoreView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->addNoMoreView(Landroid/view/View;)V

    .line 1382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->isFooterAdded:Z

    .line 1385
    :cond_0
    return-void
.end method

.method public showRefreshing(ZI)V
    .locals 8
    .param p1, "byPull"    # Z
    .param p2, "refreshMethod"    # I

    .prologue
    .line 957
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showRefreshing byPull "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mLastNumber "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->log(Ljava/lang/String;)V

    .line 958
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->startAnimTime:J

    .line 959
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mTrackingScrollMovement:Z

    .line 960
    const/4 v5, 0x2

    iput v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    .line 962
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    .line 963
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateHeaderView()V

    .line 969
    :goto_0
    iget v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->currentStatus:I

    invoke-direct {p0, v5, p2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->notifyAllListeners(II)V

    .line 971
    const/4 v5, 0x1

    if-ne p2, v5, :cond_2

    .line 972
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    .line 978
    :goto_1
    if-nez p1, :cond_3

    .line 979
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeaderBaseView:Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    invoke-interface {v5}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->scrollToTop()Z

    .line 980
    const/4 v5, 0x1

    iput v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mLastNumber:I

    .line 981
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setRotation(F)V

    .line 982
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateHeadIcon(I)V

    .line 983
    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 984
    .local v3, "refreshToAnim":Landroid/animation/ValueAnimator;
    sget-object v5, Lcom/smartisan/pullToRefresh/CubicInterpolator;->OUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 985
    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 986
    new-instance v5, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$5;

    invoke-direct {v5, p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$5;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 993
    new-instance v5, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$6;

    invoke-direct {v5, p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$6;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1017
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 1018
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sget-object v6, Lcom/smartisan/pullToRefresh/CubicInterpolator;->OUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1035
    .end local v3    # "refreshToAnim":Landroid/animation/ValueAnimator;
    :cond_0
    :goto_2
    const/4 v5, 0x1

    if-ne p2, v5, :cond_6

    .line 1036
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeader:Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    invoke-virtual {v5}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->getTranslationY()F

    move-result v5

    float-to-int v4, v5

    .line 1037
    .local v4, "topPadding":I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v4, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1038
    .local v2, "mHeadAnim":Landroid/animation/ValueAnimator;
    sget-object v5, Lcom/smartisan/pullToRefresh/CubicInterpolator;->OUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1039
    const-wide/16 v6, 0xc8

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1040
    new-instance v5, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$7;

    invoke-direct {v5, p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$7;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1048
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 1065
    .end local v2    # "mHeadAnim":Landroid/animation/ValueAnimator;
    .end local v4    # "topPadding":I
    :goto_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIsSyncing:Z

    .line 1066
    return-void

    .line 966
    :cond_1
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateFooterView()V

    goto/16 :goto_0

    .line 975
    :cond_2
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    goto/16 :goto_1

    .line 1021
    :cond_3
    const/4 v5, 0x1

    if-ne p2, v5, :cond_4

    .line 1022
    const/16 v5, 0x2d

    invoke-direct {p0, v5}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateHeadIcon(I)V

    .line 1027
    :goto_4
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mRefreshAnim:Landroid/view/animation/Animation;

    if-eqz v5, :cond_0

    .line 1028
    const/4 v5, 0x1

    if-ne p2, v5, :cond_5

    .line 1029
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mHeadIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mRefreshAnim:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 1024
    :cond_4
    const/16 v5, 0x2d

    invoke-direct {p0, v5}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->updateFootIcon(I)V

    goto :goto_4

    .line 1031
    :cond_5
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFootIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mRefreshAnim:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 1050
    :cond_6
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mFooter:Lcom/smartisan/pullToRefresh/RefreshFooterView;

    invoke-virtual {v5}, Lcom/smartisan/pullToRefresh/RefreshFooterView;->getTranslationY()F

    move-result v5

    float-to-int v0, v5

    .line 1051
    .local v0, "bottomPadding":I
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1052
    .local v1, "mFootAnim":Landroid/animation/ValueAnimator;
    sget-object v5, Lcom/smartisan/pullToRefresh/CubicInterpolator;->OUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1053
    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1054
    new-instance v5, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$8;

    invoke-direct {v5, p0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$8;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1063
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .line 983
    :array_0
    .array-data 4
        0x1
        0x2d
    .end array-data
.end method
