.class public Landroid/support/v7/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimator;,
        Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Landroid/support/v7/widget/RecyclerView$State;,
        Landroid/support/v7/widget/RecyclerView$SavedState;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObservable;,
        Landroid/support/v7/widget/RecyclerView$SmoothScroller;,
        Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;,
        Landroid/support/v7/widget/RecyclerView$LayoutParams;,
        Landroid/support/v7/widget/RecyclerView$ViewHolder;,
        Landroid/support/v7/widget/RecyclerView$RecyclerListener;,
        Landroid/support/v7/widget/RecyclerView$OnScrollListener;,
        Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;,
        Landroid/support/v7/widget/RecyclerView$ItemDecoration;,
        Landroid/support/v7/widget/RecyclerView$LayoutManager;,
        Landroid/support/v7/widget/RecyclerView$Adapter;,
        Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;,
        Landroid/support/v7/widget/RecyclerView$Recycler;,
        Landroid/support/v7/widget/RecyclerView$RecycledViewPool;,
        Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;,
        Landroid/support/v7/widget/RecyclerView$ViewFlinger;
    }
.end annotation


.field private static final DEBUG:Z = false

.field private static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final MAX_SCROLL_DURATION:I = 0x7d0

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field public static final VERTICAL:I = 0x1

.field private static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


.field private mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

.field private mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

.field mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

.field private mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field mChildHelper:Landroid/support/v7/widget/ChildHelper;

.field private mClipToPadding:Z

.field private mDataSetHasChangedAfterLayout:Z

.field final mDisappearingViewsInLayoutPass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mEatRequestLayout:Z

.field private mFirstLayoutComplete:Z

.field private mHasFixedSize:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mIsAttached:Z

.field mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field private final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

.field private final mPostUpdatesOnAnimation:Z

.field private mPostedAnimatorRunner:Z

.field final mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

.field private mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mRunningLayoutOrScroll:Z

.field private mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mScrollPointerId:I

.field private mScrollState:I

.field final mState:Landroid/support/v7/widget/RecyclerView$State;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field private final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 266
    new-instance v0, Landroid/support/v7/widget/RecyclerView$3;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$3;-><init>()V

    sput-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 282
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    new-instance v2, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v2, p0, v5}, Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    .line 128
    new-instance v2, Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/RecyclerView$Recycler;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    .line 151
    new-instance v2, Landroid/support/v7/widget/RecyclerView$1;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/RecyclerView$1;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 172
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 177
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 193
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 203
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    .line 207
    new-instance v2, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v2}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 232
    iput v4, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 233
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 243
    new-instance v2, Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    .line 245
    new-instance v2, Landroid/support/v7/widget/RecyclerView$State;

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$State;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    .line 250
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 251
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    .line 252
    new-instance v2, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v2, p0, v5}, Landroid/support/v7/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$1;)V

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 254
    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 256
    new-instance v2, Landroid/support/v7/widget/RecyclerView$2;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/RecyclerView$2;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 284
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 285
    .local v1, "version":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    .line 287
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 288
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 289
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    .line 290
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 291
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 293
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 294
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->initAdapterManager()V

    .line 295
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->initChildrenHelper()V

    .line 297
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_1

    .line 299
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 302
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 304
    new-instance v2, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V

    .line 305
    return-void

    .end local v0    # "vc":Landroid/view/ViewConfiguration;
    :cond_2
    move v2, v4

    .line 285
    goto :goto_0
.end method

.method static synthetic access$100(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    return v0
.end method

.method static synthetic access$2000()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Landroid/support/v7/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$202(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    return-void
.end method

.method static synthetic access$2200(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    return v0
.end method

.method static synthetic access$2302(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    return p1
.end method

.method static synthetic access$2400(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->supportsChangeAnimations()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    return-void
.end method

.method static synthetic access$2800(Landroid/support/v7/widget/RecyclerView;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    return-void
.end method

.method static synthetic access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$3200(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    return v0
.end method

.method static synthetic access$3300(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method static synthetic access$3400(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method static synthetic access$3500(Landroid/support/v7/widget/RecyclerView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3602(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    return p1
.end method

.method static synthetic access$3700()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    return v0
.end method

.method static synthetic access$3800(Landroid/support/v7/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$RecyclerListener;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method static synthetic access$4300(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addToDisappearingList(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->removeFromDisappearingList(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$4700(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$ViewFlinger;
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Landroid/support/v7/widget/RecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    return p1
.end method

.method static synthetic access$600(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method private addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x1

    .line 707
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 708
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    move v0, v2

    .line 709
    .local v0, "alreadyParented":Z
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 710
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 712
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5, v2}, Landroid/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 718
    :goto_1
    return-void

    .line 708
    .end local v0    # "alreadyParented":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 713
    .restart local v0    # "alreadyParented":Z
    :cond_1
    if-nez v0, :cond_2

    .line 714
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v1, v2}, Landroid/support/v7/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 716
    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->hide(Landroid/view/View;)V

    goto :goto_1
.end method

.method private addToDisappearingList(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6530
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6531
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6533
    :cond_0
    return-void
.end method

.method private animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/graphics/Rect;II)V
    .locals 7
    .param p1, "itemHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "beforeBounds"    # Landroid/graphics/Rect;
    .param p3, "afterLeft"    # I
    .param p4, "afterTop"    # I

    .prologue
    const/4 v1, 0x0

    .line 2152
    iget-object v6, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2153
    .local v6, "newItemView":Landroid/view/View;
    if-eqz p2, :cond_2

    iget v0, p2, Landroid/graphics/Rect;->left:I

    if-ne v0, p3, :cond_0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-eq v0, p4, :cond_2

    .line 2156
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2160
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2163
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 2174
    :cond_1
    :goto_0
    return-void

    .line 2169
    :cond_2
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2170
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateAdd(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2171
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_0
.end method

.method private animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 7
    .param p1, "oldHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 2209
    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2210
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 2211
    iput-object p2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2212
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 2216
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2217
    .local v3, "fromLeft":I
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2219
    .local v4, "fromTop":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2220
    :cond_0
    move v5, v3

    .line 2221
    .local v5, "toLeft":I
    move v6, v4

    .line 2228
    .local v6, "toTop":I
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2230
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 2232
    :cond_1
    return-void

    .line 2223
    .end local v5    # "toLeft":I
    .end local v6    # "toTop":I
    :cond_2
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 2224
    .restart local v5    # "toLeft":I
    iget-object v0, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    .line 2225
    .restart local v6    # "toTop":I
    invoke-virtual {p2, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2226
    iput-object p1, p2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0
.end method

.method private animateDisappearance(Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;)V
    .locals 7
    .param p1, "disappearingItem"    # Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    .prologue
    const/4 v1, 0x0

    .line 2177
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2178
    .local v6, "disappearingItemView":Landroid/view/View;
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->addAnimatingView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 2179
    iget v2, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->left:I

    .line 2180
    .local v2, "oldLeft":I
    iget v3, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->top:I

    .line 2181
    .local v3, "oldTop":I
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 2182
    .local v4, "newLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2183
    .local v5, "newTop":I
    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_2

    .line 2184
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2185
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    invoke-virtual {v6, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 2192
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2194
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 2206
    :cond_1
    :goto_0
    return-void

    .line 2201
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2202
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2203
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_0
.end method

.method private cancelTouch()V
    .locals 1

    .prologue
    .line 1719
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1720
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1722
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->releaseGlows()V

    .line 1723
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1724
    return-void
.end method

.method private considerReleasingGlowsOnScroll(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1269
    const/4 v0, 0x0

    .line 1270
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 1271
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 1273
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 1274
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1276
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 1277
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1279
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 1280
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1282
    :cond_3
    if-eqz v0, :cond_4

    .line 1283
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1285
    :cond_4
    return-void
.end method

.method private consumePendingUpdateOperations()V
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 968
    return-void
.end method

.method private dispatchChildAttached(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4467
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 4468
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4470
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 4471
    return-void
.end method

.method private dispatchChildDetached(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 4460
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 4461
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4463
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 4464
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1515
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1516
    .local v0, "action":I
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-eqz v5, :cond_0

    .line 1517
    if-nez v0, :cond_2

    .line 1519
    iput-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 1532
    :cond_0
    if-eqz v0, :cond_5

    .line 1533
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1534
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 1535
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 1536
    .local v2, "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1537
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 1542
    .end local v1    # "i":I
    .end local v2    # "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_1
    :goto_1
    return v4

    .line 1521
    :cond_2
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v5, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 1522
    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_1

    .line 1524
    :cond_3
    iput-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    goto :goto_1

    .line 1534
    .restart local v1    # "i":I
    .restart local v2    # "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    .restart local v3    # "listenerCount":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1542
    .end local v1    # "i":I
    .end local v2    # "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    .line 1498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1499
    .local v0, "action":I
    if-eq v0, v5, :cond_0

    if-nez v0, :cond_1

    .line 1500
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 1503
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1504
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1505
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 1506
    .local v2, "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v0, v5, :cond_2

    .line 1507
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 1508
    const/4 v4, 0x1

    .line 1511
    .end local v2    # "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    :goto_1
    return v4

    .line 1504
    .restart local v2    # "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1511
    .end local v2    # "listener":Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 2576
    if-nez p0, :cond_0

    .line 2577
    const/4 v0, 0x0

    .line 2579
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    goto :goto_0
.end method

.method private initChildrenHelper()V
    .locals 2

    .prologue
    .line 326
    new-instance v0, Landroid/support/v7/widget/ChildHelper;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$4;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$4;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ChildHelper;-><init>(Landroid/support/v7/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    .line 407
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 1727
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1728
    .local v0, "actionIndex":I
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    if-ne v2, v3, :cond_0

    .line 1730
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 1731
    .local v1, "newIndex":I
    :goto_0
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 1732
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 1733
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 1735
    .end local v1    # "newIndex":I
    :cond_0
    return-void

    .line 1730
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postAnimationRunner()V
    .locals 1

    .prologue
    .line 1820
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1822
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 1824
    :cond_0
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .prologue
    .line 1827
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1837
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    .line 1840
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/AdapterHelper;->reset()V

    .line 1841
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 1842
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onItemsChanged(Landroid/support/v7/widget/RecyclerView;)V

    .line 1847
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1848
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/AdapterHelper;->preProcess()V

    .line 1852
    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_6

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->supportsChangeAnimations()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    move v0, v2

    .line 1854
    .local v0, "animationTypeSupported":Z
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->access$1700(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_3
    iget-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    move v3, v2

    :goto_2
    invoke-static {v4, v3}, Landroid/support/v7/widget/RecyclerView$State;->access$1602(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1858
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$State;->access$1600(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v4, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_8

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_3
    invoke-static {v3, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$1402(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1861
    return-void

    .line 1850
    .end local v0    # "animationTypeSupported":Z
    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 1852
    goto :goto_1

    .restart local v0    # "animationTypeSupported":Z
    :cond_7
    move v3, v1

    .line 1854
    goto :goto_2

    :cond_8
    move v2, v1

    .line 1858
    goto :goto_3
.end method

.method private processDisappearingList(Landroid/support/v4/util/ArrayMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2127
    .local p1, "appearingViews":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 2128
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_3

    .line 2129
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2130
    .local v9, "view":Landroid/view/View;
    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2131
    .local v1, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    .line 2132
    .local v8, "info":Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2133
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    :cond_0
    invoke-virtual {p1, v9}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2136
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v9, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 2128
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2139
    :cond_1
    if-eqz v8, :cond_2

    .line 2140
    invoke-direct {p0, v8}, Landroid/support/v7/widget/RecyclerView;->animateDisappearance(Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;)V

    goto :goto_1

    .line 2143
    :cond_2
    new-instance v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->animateDisappearance(Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;)V

    goto :goto_1

    .line 2147
    .end local v1    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v8    # "info":Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;
    .end local v9    # "view":Landroid/view/View;
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2148
    return-void
.end method

.method private pullGlows(II)V
    .locals 3
    .param p1, "overscrollX"    # I
    .param p2, "overscrollY"    # I

    .prologue
    .line 1236
    if-gez p1, :cond_4

    .line 1237
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 1238
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 1244
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 1245
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 1246
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    .line 1252
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 1253
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1255
    :cond_3
    return-void

    .line 1239
    :cond_4
    if-lez p1, :cond_0

    .line 1240
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 1241
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    goto :goto_0

    .line 1247
    :cond_5
    if-lez p2, :cond_1

    .line 1248
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 1249
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v1, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    goto :goto_1
.end method

.method private releaseGlows()V
    .locals 2

    .prologue
    .line 1258
    const/4 v0, 0x0

    .line 1259
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 1260
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1261
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1262
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1263
    :cond_3
    if-eqz v0, :cond_4

    .line 1264
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1266
    :cond_4
    return-void
.end method

.method private removeAnimatingView(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 727
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 728
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    .line 729
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 730
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 731
    .local v1, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 732
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 737
    .end local v1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 738
    return v0
.end method

.method private removeFromDisappearingList(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 6526
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 6527
    return-void
.end method

.method private setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V
    .locals 3
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleViews"    # Z

    .prologue
    .line 578
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 580
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 582
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_3

    .line 584
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_2

    .line 585
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 591
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_3

    .line 592
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 593
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 596
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AdapterHelper;->reset()V

    .line 597
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 598
    .local v0, "oldAdapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 599
    if-eqz p1, :cond_4

    .line 600
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mObserver:Landroid/support/v7/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 601
    invoke-virtual {p1, p0}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 603
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_5

    .line 604
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 606
    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 607
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$1202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 608
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 609
    return-void
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 812
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    .line 826
    :goto_0
    return-void

    .line 818
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    .line 819
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 820
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 822
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 823
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 825
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    goto :goto_0
.end method

.method private stopScrollersInternal()V
    .locals 1

    .prologue
    .line 1228
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->stop()V

    .line 1229
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 1230
    return-void
.end method

.method private supportsChangeAnimations()Z
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->getSupportsChangeAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


.method absorbGlows(II)V
    .locals 2
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 1288
    if-gez p1, :cond_4

    .line 1289
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureLeftGlow()V

    .line 1290
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 1296
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 1297
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureTopGlow()V

    .line 1298
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 1304
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 1305
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1307
    :cond_3
    return-void

    .line 1291
    :cond_4
    if-lez p1, :cond_0

    .line 1292
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureRightGlow()V

    .line 1293
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_0

    .line 1299
    :cond_5
    if-lez p2, :cond_1

    .line 1300
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->ensureBottomGlow()V

    .line 1301
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1402
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAddFocusables(Landroid/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1403
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1405
    :cond_0
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "decor"    # Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .prologue
    .line 872
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V

    .line 873
    return-void
.end method

.method public addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;I)V
    .locals 2
    .param p1, "decor"    # Landroid/support/v7/widget/RecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .prologue
    .line 843
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 847
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 848
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 850
    :cond_1
    if-gez p2, :cond_2

    .line 851
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 855
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 856
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 857
    return-void

    .line 853
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .prologue
    .line 1482
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1442
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    if-nez v0, :cond_1

    .line 1443
    if-nez p1, :cond_0

    .line 1444
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1447
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1450
    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1460
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    if-eqz v0, :cond_1

    .line 1461
    if-nez p1, :cond_0

    .line 1462
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1465
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1467
    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2333
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->checkLayoutParams(Landroid/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearOldPositions()V
    .locals 4

    .prologue
    .line 2375
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 2376
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2377
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2378
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2379
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 2376
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2382
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->clearOldPositions()V

    .line 2383
    return-void
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 1050
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 1136
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 1115
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dispatchLayout()V
    .locals 34

    .prologue
    .line 1886
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-nez v4, :cond_0

    .line 1887
    const-string v4, "RecyclerView"

    const-string v6, "No adapter attached; skipping layout"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    :goto_0
    return-void

    .line 1890
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1891
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1892
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    .line 1894
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 1896
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$State;->access$1600(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v4, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->supportsChangeAnimations()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V

    :goto_1
    iput-object v4, v6, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    .line 1898
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView;->mItemsChanged:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 1899
    const/4 v12, 0x0

    .line 1900
    .local v12, "appearingViewInitialBounds":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1400(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v6

    invoke-static {v4, v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1502(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1901
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    iput v6, v4, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 1903
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$State;->access$1600(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1905
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1906
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 1907
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v14

    .line 1908
    .local v14, "count":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v0, v14, :cond_4

    .line 1909
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 1910
    .local v5, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1908
    :cond_1
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 1896
    .end local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v12    # "appearingViewInitialBounds":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    .end local v14    # "count":I
    .end local v19    # "i":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 1913
    .restart local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v12    # "appearingViewInitialBounds":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    .restart local v14    # "count":I
    .restart local v19    # "i":I
    :cond_3
    iget-object v0, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v33, v0

    .line 1914
    .local v33, "view":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v10, v4, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    new-instance v4, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v10, v5, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1918
    .end local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v33    # "view":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$State;->access$1400(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1925
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->saveOldPositions()V

    .line 1927
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    if-eqz v4, :cond_6

    .line 1928
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v14

    .line 1929
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_4
    move/from16 v0, v19

    if-ge v0, v14, :cond_6

    .line 1930
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 1931
    .restart local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isChanged()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1932
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v24

    .line 1933
    .local v24, "key":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1929
    .end local v24    # "key":J
    :cond_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1939
    .end local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v14    # "count":I
    .end local v19    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$State;->access$1200(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v15

    .line 1940
    .local v15, "didStructureChange":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1942
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4, v6, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 1943
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v4, v15}, Landroid/support/v7/widget/RecyclerView$State;->access$1202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1945
    new-instance v12, Landroid/support/v4/util/ArrayMap;

    .end local v12    # "appearingViewInitialBounds":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    invoke-direct {v12}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 1946
    .restart local v12    # "appearingViewInitialBounds":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/View;Landroid/graphics/Rect;>;"
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_b

    .line 1947
    const/16 v18, 0x0

    .line 1948
    .local v18, "found":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1949
    .local v13, "child":Landroid/view/View;
    invoke-static {v13}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1946
    :cond_7
    :goto_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 1952
    :cond_8
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v23

    if-ge v0, v4, :cond_9

    .line 1953
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1954
    .restart local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v4, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v4, v13, :cond_a

    .line 1955
    const/16 v18, 0x1

    .line 1959
    .end local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_9
    if-nez v18, :cond_7

    .line 1960
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v9

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v10

    invoke-direct {v4, v6, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v12, v13, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1952
    .restart local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_a
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 1965
    .end local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v13    # "child":Landroid/view/View;
    .end local v18    # "found":Z
    .end local v23    # "j":I
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    .line 1966
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 1983
    .end local v15    # "didStructureChange":Z
    .end local v19    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    iput v6, v4, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 1984
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1002(Landroid/support/v7/widget/RecyclerView$State;I)I

    .line 1987
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1502(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1988
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4, v6, v8}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 1990
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1991
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 1994
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$State;->access$1600(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    :goto_8
    invoke-static {v6, v4}, Landroid/support/v7/widget/RecyclerView$State;->access$1602(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1996
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$State;->access$1600(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1998
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    if-eqz v4, :cond_10

    new-instance v26, Landroid/support/v4/util/ArrayMap;

    invoke-direct/range {v26 .. v26}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 2000
    .local v26, "newChangedHolders":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/Long;Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v14

    .line 2001
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_a
    move/from16 v0, v19

    if-ge v0, v14, :cond_13

    .line 2002
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 2003
    .restart local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2001
    :goto_b
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 1968
    .end local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v26    # "newChangedHolders":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/Long;Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->clearOldPositions()V

    .line 1970
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 1971
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    if-eqz v4, :cond_c

    .line 1972
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v14

    .line 1973
    .restart local v14    # "count":I
    const/16 v19, 0x0

    .restart local v19    # "i":I
    :goto_c
    move/from16 v0, v19

    if-ge v0, v14, :cond_c

    .line 1974
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 1975
    .restart local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isChanged()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_e

    .line 1976
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v24

    .line 1977
    .restart local v24    # "key":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    .end local v24    # "key":J
    :cond_e
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    .line 1994
    .end local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v14    # "count":I
    .end local v19    # "i":I
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 1998
    :cond_10
    const/16 v26, 0x0

    goto/16 :goto_9

    .line 2006
    .restart local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v14    # "count":I
    .restart local v19    # "i":I
    .restart local v26    # "newChangedHolders":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/Long;Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    :cond_11
    iget-object v0, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v33, v0

    .line 2007
    .restart local v33    # "view":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J

    move-result-wide v24

    .line 2008
    .restart local v24    # "key":J
    if-eqz v26, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 2009
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 2011
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v10, v4, Landroid/support/v7/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    new-instance v4, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-direct/range {v4 .. v9}, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;-><init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v10, v5, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 2015
    .end local v5    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v24    # "key":J
    .end local v33    # "view":Landroid/view/View;
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/support/v7/widget/RecyclerView;->processDisappearingList(Landroid/support/v4/util/ArrayMap;)V

    .line 2017
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v32

    .line 2018
    .local v32, "preLayoutCount":I
    add-int/lit8 v19, v32, -0x1

    :goto_d
    if-ltz v19, :cond_15

    .line 2019
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2020
    .local v22, "itemHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 2021
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    .line 2022
    .local v16, "disappearingItem":Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2024
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v17, v0

    .line 2025
    .local v17, "disappearingItemView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 2026
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;->animateDisappearance(Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;)V

    .line 2018
    .end local v16    # "disappearingItem":Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;
    .end local v17    # "disappearingItemView":Landroid/view/View;
    :cond_14
    add-int/lit8 v19, v19, -0x1

    goto :goto_d

    .line 2030
    .end local v22    # "itemHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v30

    .line 2031
    .local v30, "postLayoutCount":I
    if-lez v30, :cond_19

    .line 2032
    add-int/lit8 v19, v30, -0x1

    :goto_e
    if-ltz v19, :cond_19

    .line 2033
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2034
    .restart local v22    # "itemHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    .line 2035
    .local v20, "info":Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 2037
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2038
    if-eqz v12, :cond_18

    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v12, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    move-object/from16 v21, v4

    .line 2040
    .local v21, "initialBounds":Landroid/graphics/Rect;
    :goto_f
    move-object/from16 v0, v20

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->left:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->top:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2, v4, v6}, Landroid/support/v7/widget/RecyclerView;->animateAppearance(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/graphics/Rect;II)V

    .line 2032
    .end local v21    # "initialBounds":Landroid/graphics/Rect;
    :cond_17
    add-int/lit8 v19, v19, -0x1

    goto :goto_e

    .line 2038
    :cond_18
    const/16 v21, 0x0

    goto :goto_f

    .line 2046
    .end local v20    # "info":Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;
    .end local v22    # "itemHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v14

    .line 2047
    const/16 v19, 0x0

    :goto_10
    move/from16 v0, v19

    if-ge v0, v14, :cond_1c

    .line 2048
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2049
    .local v7, "postHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPostLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    .line 2050
    .local v29, "postInfo":Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mPreLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4, v7}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;

    .line 2051
    .local v31, "preInfo":Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;
    if-eqz v31, :cond_1b

    if-eqz v29, :cond_1b

    .line 2052
    move-object/from16 v0, v31

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->left:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->left:I

    if-ne v4, v6, :cond_1a

    move-object/from16 v0, v31

    iget v4, v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->top:I

    move-object/from16 v0, v29

    iget v6, v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->top:I

    if-eq v4, v6, :cond_1b

    .line 2053
    :cond_1a
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object/from16 v0, v31

    iget v8, v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->left:I

    move-object/from16 v0, v31

    iget v9, v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->top:I

    move-object/from16 v0, v29

    iget v10, v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->left:I

    move-object/from16 v0, v29

    iget v11, v0, Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;->top:I

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2060
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->postAnimationRunner()V

    .line 2047
    :cond_1b
    add-int/lit8 v19, v19, 0x1

    goto :goto_10

    .line 2066
    .end local v7    # "postHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v29    # "postInfo":Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;
    .end local v31    # "preInfo":Landroid/support/v7/widget/RecyclerView$ItemHolderInfo;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v14

    .line 2068
    :goto_11
    add-int/lit8 v19, v14, -0x1

    :goto_12
    if-ltz v19, :cond_20

    .line 2069
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 2070
    .restart local v24    # "key":J
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2071
    .local v27, "oldHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v28, v0

    .line 2072
    .local v28, "oldView":Landroid/view/View;
    invoke-virtual/range {v27 .. v27}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2068
    :cond_1d
    :goto_13
    add-int/lit8 v19, v19, -0x1

    goto :goto_12

    .line 2066
    .end local v24    # "key":J
    .end local v27    # "oldHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v28    # "oldView":Landroid/view/View;
    :cond_1e
    const/4 v14, 0x0

    goto :goto_11

    .line 2077
    .restart local v24    # "key":J
    .restart local v27    # "oldHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v28    # "oldView":Landroid/view/View;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->access$1800(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->access$1800(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2079
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v4}, Landroid/support/v7/widget/RecyclerView;->animateChange(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_13

    .line 2085
    .end local v14    # "count":I
    .end local v19    # "i":I
    .end local v24    # "key":J
    .end local v26    # "newChangedHolders":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/Long;Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    .end local v27    # "oldHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v28    # "oldView":Landroid/view/View;
    .end local v30    # "postLayoutCount":I
    .end local v32    # "preLayoutCount":I
    :cond_20
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2086
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 2087
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v6, v6, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    invoke-static {v4, v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1902(Landroid/support/v7/widget/RecyclerView$State;I)I

    .line 2088
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 2089
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1602(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2090
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1402(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2091
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/support/v7/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    .line 2092
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->access$1702(Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)Z

    .line 2093
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->access$1800(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 2094
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->access$1800(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2096
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v6, 0x0

    iput-object v6, v4, Landroid/support/v7/widget/RecyclerView$State;->mOldChangedHolders:Landroid/support/v4/util/ArrayMap;

    goto/16 :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2262
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2264
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2265
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2266
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v9, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v6, p1, p0, v9}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2265
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2270
    :cond_0
    const/4 v2, 0x0

    .line 2271
    .local v2, "needsInvalidate":Z
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2272
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2273
    .local v4, "restore":I
    iget-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    .line 2274
    .local v3, "padding":I
    :goto_1
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2275
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    const/4 v9, 0x0

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2276
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_9

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v2, v8

    .line 2277
    :goto_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2279
    .end local v3    # "padding":I
    .end local v4    # "restore":I
    :cond_1
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2280
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2281
    .restart local v4    # "restore":I
    iget-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_2

    .line 2282
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2284
    :cond_2
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v8

    :goto_3
    or-int/2addr v2, v6

    .line 2285
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2287
    .end local v4    # "restore":I
    :cond_3
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2288
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2289
    .restart local v4    # "restore":I
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 2290
    .local v5, "width":I
    iget-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 2291
    .restart local v3    # "padding":I
    :goto_4
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2292
    neg-int v6, v3

    int-to-float v6, v6

    neg-int v9, v5

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2293
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v8

    :goto_5
    or-int/2addr v2, v6

    .line 2294
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2296
    .end local v3    # "padding":I
    .end local v4    # "restore":I
    .end local v5    # "width":I
    :cond_4
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_5

    .line 2297
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 2298
    .restart local v4    # "restore":I
    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2299
    iget-boolean v6, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_d

    .line 2300
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2304
    :goto_6
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_e

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_e

    :goto_7
    or-int/2addr v2, v8

    .line 2305
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2311
    .end local v4    # "restore":I
    :cond_5
    if-nez v2, :cond_6

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2313
    const/4 v2, 0x1

    .line 2316
    :cond_6
    if-eqz v2, :cond_7

    .line 2317
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2319
    :cond_7
    return-void

    .restart local v4    # "restore":I
    :cond_8
    move v3, v7

    .line 2273
    goto/16 :goto_1

    .restart local v3    # "padding":I
    :cond_9
    move v2, v7

    .line 2276
    goto/16 :goto_2

    .end local v3    # "padding":I
    :cond_a
    move v6, v7

    .line 2284
    goto/16 :goto_3

    .restart local v5    # "width":I
    :cond_b
    move v3, v7

    .line 2290
    goto/16 :goto_4

    .restart local v3    # "padding":I
    :cond_c
    move v6, v7

    .line 2293
    goto :goto_5

    .line 2302
    .end local v3    # "padding":I
    .end local v5    # "width":I
    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    :cond_e
    move v8, v7

    .line 2304
    goto :goto_7
.end method

.method eatRequestLayout()V
    .locals 1

    .prologue
    .line 1161
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:Z

    if-nez v0, :cond_0

    .line 1162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:Z

    .line 1163
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1165
    :cond_0
    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .prologue
    .line 1350
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1360
    :goto_0
    return-void

    .line 1353
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1354
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1355
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1358
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method ensureLeftGlow()V
    .locals 4

    .prologue
    .line 1310
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1320
    :goto_0
    return-void

    .line 1313
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1314
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1315
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1318
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method ensureRightGlow()V
    .locals 4

    .prologue
    .line 1323
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1333
    :goto_0
    return-void

    .line 1326
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1327
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1328
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1331
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method ensureTopGlow()V
    .locals 4

    .prologue
    .line 1336
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1347
    :goto_0
    return-void

    .line 1339
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1340
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1341
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0

    .line 1344
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_0
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2667
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v1

    .line 2668
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2669
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2670
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v3

    .line 2671
    .local v3, "translationX":F
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    .line 2672
    .local v4, "translationY":F
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 2679
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :goto_1
    return-object v0

    .line 2668
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "translationX":F
    .restart local v4    # "translationY":F
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2679
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findViewHolderForItemId(J)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 2647
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 2648
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2649
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2650
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 2656
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_1
    return-object v1

    .line 2648
    .restart local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2656
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2614
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "position"    # I
    .param p2, "checkNewPosition"    # Z

    .prologue
    .line 2618
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 2619
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 2620
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2621
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2622
    if-eqz p2, :cond_1

    .line 2623
    iget v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v3, p1, :cond_2

    .line 2634
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_0
    :goto_1
    return-object v1

    .line 2626
    .restart local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 2619
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2634
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public fling(II)Z
    .locals 2
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 1200
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v0, v1, :cond_0

    .line 1201
    const/4 p1, 0x0

    .line 1203
    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v0, v1, :cond_1

    .line 1204
    const/4 p2, 0x0

    .line 1206
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v0, v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1207
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v0, v0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1208
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 1209
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->fling(II)V

    .line 1210
    const/4 v0, 0x1

    .line 1212
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 5
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 1370
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1371
    .local v1, "result":Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 1381
    :goto_0
    return-object v2

    .line 1374
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 1375
    .local v0, "ff":Landroid/view/FocusFinder;
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 1376
    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_1

    .line 1377
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1378
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p2, v3, v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v1

    .line 1379
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1381
    :cond_1
    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2338
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 2339
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2341
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2346
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 2347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2349
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2354
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 2355
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2357
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method getChangedHolderKey(Landroid/support/v7/widget/RecyclerView$ViewHolder;)J
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 2119
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, -0x1

    .line 2600
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2604
    :cond_0
    :goto_0
    return-wide v2

    .line 2603
    :cond_1
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 2604
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2589
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 2590
    .local v0, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2567
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2568
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 2569
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2572
    :cond_0
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public getCompatAccessibilityDelegate()Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;
    .locals 1

    .prologue
    .line 1808
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 2734
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 2735
    .local v3, "lp":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    iget-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    .line 2736
    iget-object v2, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 2751
    :goto_0
    return-object v2

    .line 2739
    :cond_0
    iget-object v2, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 2740
    .local v2, "insets":Landroid/graphics/Rect;
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2741
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2742
    .local v0, "decorCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 2743
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2744
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v4, v5, p1, p0, v6}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2745
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 2746
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 2747
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 2748
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 2742
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2750
    :cond_1
    iput-boolean v7, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 808
    iget v0, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method initAdapterManager()V
    .locals 2

    .prologue
    .line 410
    new-instance v0, Landroid/support/v7/widget/AdapterHelper;

    new-instance v1, Landroid/support/v7/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/RecyclerView$5;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/AdapterHelper;-><init>(Landroid/support/v7/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    .line 475
    return-void
.end method

.method invalidateGlows()V
    .locals 1

    .prologue
    .line 1363
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1364
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .prologue
    .line 2549
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2558
    :goto_0
    return-void

    .line 2552
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 2553
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2556
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 2557
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .prologue
    .line 2252
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 2253
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 2254
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2255
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 2253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2257
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 2258
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    .line 2533
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 2534
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2535
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2536
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2537
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 2534
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2540
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 2541
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 2542
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3
    .param p1, "dx"    # I

    .prologue
    .line 2727
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 2728
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2729
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2728
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2731
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3
    .param p1, "dy"    # I

    .prologue
    .line 2689
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 2690
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2691
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2690
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2693
    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 2420
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 2421
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2422
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2423
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 2428
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 2429
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$State;->access$1202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2421
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2432
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 2433
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2434
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v8, 0x0

    .line 2386
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 2388
    .local v0, "childCount":I
    if-ge p1, p2, :cond_1

    .line 2389
    move v5, p1

    .line 2390
    .local v5, "start":I
    move v1, p2

    .line 2391
    .local v1, "end":I
    const/4 v4, -0x1

    .line 2398
    .local v4, "inBetweenOffset":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 2399
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 2400
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v6, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v5, :cond_0

    iget v6, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_2

    .line 2398
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2393
    .end local v1    # "end":I
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_1
    move v5, p2

    .line 2394
    .restart local v5    # "start":I
    move v1, p1

    .line 2395
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_0

    .line 2407
    .restart local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_2
    iget v6, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_3

    .line 2408
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 2413
    :goto_3
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/support/v7/widget/RecyclerView$State;->access$1202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    goto :goto_2

    .line 2410
    :cond_3
    invoke-virtual {v2, v4, v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_3

    .line 2415
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v6, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 2416
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2417
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    const/4 v6, 0x1

    .line 2438
    add-int v3, p1, p2

    .line 2439
    .local v3, "positionEnd":I
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 2440
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2441
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2442
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2443
    iget v4, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_1

    .line 2449
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 2450
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v4, v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 2440
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2451
    :cond_1
    iget v4, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 2456
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v1, v4, v5, p3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 2458
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v4, v6}, Landroid/support/v7/widget/RecyclerView$State;->access$1202(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    goto :goto_1

    .line 2462
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v4, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 2463
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 2464
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1409
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1410
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 1411
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 1412
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 1415
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 1416
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2706
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2718
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1420
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1421
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1424
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 1426
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 1427
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    .line 1428
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 1429
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1431
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1432
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 2323
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2325
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2326
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2327
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 2326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2329
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1547
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1548
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 1549
    const/4 v10, 0x1

    .line 1622
    :goto_0
    return v10

    .line 1552
    :cond_0
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    .line 1553
    .local v2, "canScrollHorizontally":Z
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 1555
    .local v3, "canScrollVertically":Z
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 1556
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1558
    :cond_1
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1560
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1561
    .local v0, "action":I
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1563
    .local v1, "actionIndex":I
    packed-switch v0, :pswitch_data_0

    .line 1622
    :cond_2
    :goto_1
    :pswitch_0
    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    const/4 v10, 0x1

    goto :goto_0

    .line 1565
    :pswitch_1
    const/4 v10, 0x0

    invoke-static {p1, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v10

    iput v10, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 1566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v10, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 1567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v10, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    .line 1569
    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 1570
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1571
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto :goto_1

    .line 1576
    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v10

    iput v10, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 1577
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    iput v10, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 1578
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    iput v10, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto :goto_1

    .line 1582
    :pswitch_3
    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-static {p1, v10}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v6

    .line 1583
    .local v6, "index":I
    if-gez v6, :cond_3

    .line 1584
    const-string v10, "RecyclerView"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error processing scroll; pointer index for id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1589
    :cond_3
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v8, v10

    .line 1590
    .local v8, "x":I
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    float-to-int v9, v10

    .line 1591
    .local v9, "y":I
    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    .line 1592
    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    sub-int v4, v8, v10

    .line 1593
    .local v4, "dx":I
    iget v10, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    sub-int v5, v9, v10

    .line 1594
    .local v5, "dy":I
    const/4 v7, 0x0

    .line 1595
    .local v7, "startScroll":Z
    if-eqz v2, :cond_4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v10, v11, :cond_4

    .line 1596
    iget v11, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    iget v12, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-gez v4, :cond_6

    const/4 v10, -0x1

    :goto_2
    mul-int/2addr v10, v12

    add-int/2addr v10, v11

    iput v10, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 1597
    const/4 v7, 0x1

    .line 1599
    :cond_4
    if-eqz v3, :cond_5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v10, v11, :cond_5

    .line 1600
    iget v11, p0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    iget v12, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-gez v5, :cond_7

    const/4 v10, -0x1

    :goto_3
    mul-int/2addr v10, v12

    add-int/2addr v10, v11

    iput v10, p0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 1601
    const/4 v7, 0x1

    .line 1603
    :cond_5
    if-eqz v7, :cond_2

    .line 1604
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1605
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_1

    .line 1596
    :cond_6
    const/4 v10, 0x1

    goto :goto_2

    .line 1600
    :cond_7
    const/4 v10, 0x1

    goto :goto_3

    .line 1611
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "index":I
    .end local v7    # "startScroll":Z
    .end local v8    # "x":I
    .end local v9    # "y":I
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1615
    :pswitch_5
    iget-object v10, p0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_1

    .line 1619
    :pswitch_6
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 1622
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1563
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 2236
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 2237
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 2238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2239
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2240
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 1739
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_0

    .line 1740
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 1741
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 1743
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView$State;->access$1400(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1748
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$1502(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1754
    :goto_0
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 1755
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1758
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 1759
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 1764
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 1765
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0, v3}, Landroid/support/v7/widget/RecyclerView$State;->access$1502(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    .line 1766
    return-void

    .line 1751
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 1752
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0, v3}, Landroid/support/v7/widget/RecyclerView$State;->access$1502(Landroid/support/v7/widget/RecyclerView$State;Z)Z

    goto :goto_0

    .line 1761
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iput v3, v0, Landroid/support/v7/widget/RecyclerView$State;->mItemCount:I

    goto :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 691
    check-cast p1, Landroid/support/v7/widget/RecyclerView$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    .line 692
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 693
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 696
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 677
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 678
    .local v0, "state":Landroid/support/v7/widget/RecyclerView$SavedState;
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mPendingSavedState:Landroid/support/v7/widget/RecyclerView$SavedState;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$SavedState;->access$1300(Landroid/support/v7/widget/RecyclerView$SavedState;Landroid/support/v7/widget/RecyclerView$SavedState;)V

    .line 686
    :goto_0
    return-object v0

    .line 680
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 681
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 683
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1770
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1771
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 1772
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 1774
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1627
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1628
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    .line 1629
    const/4 v13, 0x1

    .line 1715
    :goto_0
    return v13

    .line 1632
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    .line 1633
    .local v3, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v13}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    .line 1635
    .local v4, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v13, :cond_1

    .line 1636
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1638
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1640
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1641
    .local v1, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 1643
    .local v2, "actionIndex":I
    packed-switch v1, :pswitch_data_0

    .line 1715
    :goto_1
    :pswitch_0
    const/4 v13, 0x1

    goto :goto_0

    .line 1645
    :pswitch_1
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 1646
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 1647
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto :goto_1

    .line 1651
    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    .line 1652
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    .line 1653
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    goto :goto_1

    .line 1657
    :pswitch_3
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 1658
    .local v7, "index":I
    if-gez v7, :cond_2

    .line 1659
    const-string v13, "RecyclerView"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error processing scroll; pointer index for id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1664
    :cond_2
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v9, v13

    .line 1665
    .local v9, "x":I
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    float-to-int v11, v13

    .line 1666
    .local v11, "y":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_5

    .line 1667
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    sub-int v5, v9, v13

    .line 1668
    .local v5, "dx":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    sub-int v6, v11, v13

    .line 1669
    .local v6, "dy":I
    const/4 v8, 0x0

    .line 1670
    .local v8, "startScroll":Z
    if-eqz v3, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v13, v14, :cond_3

    .line 1671
    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchX:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-gez v5, :cond_7

    const/4 v13, -0x1

    :goto_2
    mul-int/2addr v13, v15

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 1672
    const/4 v8, 0x1

    .line 1674
    :cond_3
    if-eqz v4, :cond_4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-le v13, v14, :cond_4

    .line 1675
    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v7/widget/RecyclerView;->mInitialTouchY:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    if-gez v6, :cond_8

    const/4 v13, -0x1

    :goto_3
    mul-int/2addr v13, v15

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    .line 1676
    const/4 v8, 0x1

    .line 1678
    :cond_4
    if-eqz v8, :cond_5

    .line 1679
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1680
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1683
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v8    # "startScroll":Z
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v7/widget/RecyclerView;->mScrollState:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    .line 1684
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    sub-int v5, v9, v13

    .line 1685
    .restart local v5    # "dx":I
    move-object/from16 v0, p0

    iget v13, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    sub-int v6, v11, v13

    .line 1686
    .restart local v6    # "dy":I
    if-eqz v3, :cond_9

    neg-int v13, v5

    move v14, v13

    :goto_4
    if-eqz v4, :cond_a

    neg-int v13, v6

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(II)V

    .line 1689
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    :cond_6
    move-object/from16 v0, p0

    iput v9, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchX:I

    .line 1690
    move-object/from16 v0, p0

    iput v11, v0, Landroid/support/v7/widget/RecyclerView;->mLastTouchY:I

    goto/16 :goto_1

    .line 1671
    .restart local v5    # "dx":I
    .restart local v6    # "dy":I
    .restart local v8    # "startScroll":Z
    :cond_7
    const/4 v13, 0x1

    goto :goto_2

    .line 1675
    :cond_8
    const/4 v13, 0x1

    goto :goto_3

    .line 1686
    .end local v8    # "startScroll":Z
    :cond_9
    const/4 v13, 0x0

    move v14, v13

    goto :goto_4

    :cond_a
    const/4 v13, 0x0

    goto :goto_5

    .line 1694
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v7    # "index":I
    .end local v9    # "x":I
    .end local v11    # "y":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Landroid/support/v7/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1698
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v14, 0x3e8

    move-object/from16 v0, p0

    iget v15, v0, Landroid/support/v7/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1699
    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-static {v13, v14}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v13

    neg-float v10, v13

    .line 1701
    .local v10, "xvel":F
    :goto_6
    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v7/widget/RecyclerView;->mScrollPointerId:I

    invoke-static {v13, v14}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v13

    neg-float v12, v13

    .line 1703
    .local v12, "yvel":F
    :goto_7
    const/4 v13, 0x0

    cmpl-float v13, v10, v13

    if-nez v13, :cond_b

    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-eqz v13, :cond_c

    :cond_b
    float-to-int v13, v10

    float-to-int v14, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result v13

    if-nez v13, :cond_d

    .line 1704
    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1706
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v13}, Landroid/view/VelocityTracker;->clear()V

    .line 1707
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->releaseGlows()V

    goto/16 :goto_1

    .line 1699
    .end local v10    # "xvel":F
    .end local v12    # "yvel":F
    :cond_e
    const/4 v10, 0x0

    goto :goto_6

    .line 1701
    .restart local v10    # "xvel":F
    :cond_f
    const/4 v12, 0x0

    goto :goto_7

    .line 1711
    .end local v10    # "xvel":F
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 1643
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method rebindUpdatedViewHolders()V
    .locals 6

    .prologue
    .line 2497
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 2498
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_7

    .line 2499
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2501
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2498
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2504
    :cond_1
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2505
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1

    .line 2506
    :cond_3
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2507
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    .line 2508
    .local v3, "type":I
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 2510
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isChanged()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->supportsChangeAnimations()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2511
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget v5, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v4, v1, v5}, Landroid/support/v7/widget/RecyclerView$Adapter;->bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_1

    .line 2516
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1

    .line 2521
    :cond_6
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 2522
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_1

    .line 2526
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v3    # "type":I
    :cond_7
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 2101
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 2102
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 2103
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2104
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 2110
    :cond_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 2111
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 2112
    return-void

    .line 2105
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V
    .locals 2
    .param p1, "decor"    # Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .prologue
    .line 885
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 889
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 890
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 891
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 893
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 894
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 895
    return-void

    .line 891
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .prologue
    .line 1491
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1492
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    .line 1493
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mActiveOnItemTouchListener:Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;

    .line 1495
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1386
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1, p0, v2, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    .line 1387
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1388
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1389
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1390
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v7/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 1392
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1393
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1397
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 2244
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:Z

    if-nez v0, :cond_0

    .line 2245
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2249
    :goto_0
    return-void

    .line 2247
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0
.end method

.method resumeRequestLayout(Z)V
    .locals 2
    .param p1, "performLayoutChildren"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1168
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:Z

    if-eqz v0, :cond_1

    .line 1169
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 1171
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->dispatchLayout()V

    .line 1173
    :cond_0
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mEatRequestLayout:Z

    .line 1174
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1176
    :cond_1
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    .prologue
    .line 2361
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 2362
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2363
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 2368
    .local v1, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2369
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    .line 2362
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2372
    .end local v1    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 947
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_0

    .line 948
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 951
    :cond_0
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 952
    .local v0, "canScrollHorizontal":Z
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 953
    .local v1, "canScrollVertical":Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 954
    :cond_1
    if-eqz v0, :cond_3

    .end local p1    # "x":I
    :goto_0
    if-eqz v1, :cond_4

    .end local p2    # "y":I
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->scrollByInternal(II)V

    .line 956
    :cond_2
    return-void

    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_3
    move p1, v2

    .line 954
    goto :goto_0

    .end local p1    # "x":I
    :cond_4
    move p2, v2

    goto :goto_1
.end method

.method scrollByInternal(II)V
    .locals 21
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 974
    const/4 v10, 0x0

    .local v10, "overscrollX":I
    const/4 v11, 0x0

    .line 975
    .local v11, "overscrollY":I
    const/4 v7, 0x0

    .local v7, "hresult":I
    const/16 v16, 0x0

    .line 976
    .local v16, "vresult":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 978
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 979
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    .line 980
    if-eqz p1, :cond_0

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v7

    .line 982
    sub-int v10, p1, v7

    .line 984
    :cond_0
    if-eqz p2, :cond_1

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, p2

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v16

    .line 986
    sub-int v11, p2, v16

    .line 988
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->supportsChangeAnimations()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/widget/ChildHelper;->getChildCount()I

    move-result v5

    .line 991
    .local v5, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v5, :cond_5

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 993
    .local v15, "view":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 994
    .local v6, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v6, :cond_3

    iget-object v0, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 995
    iget-object v12, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 996
    .local v12, "shadowingHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v12, :cond_4

    iget-object v13, v12, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 997
    .local v13, "shadowingView":Landroid/view/View;
    :goto_1
    if-eqz v13, :cond_3

    .line 998
    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 999
    .local v9, "left":I
    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v14

    .line 1000
    .local v14, "top":I
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v17

    move/from16 v0, v17

    if-ne v9, v0, :cond_2

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    if-eq v14, v0, :cond_3

    .line 1001
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v17

    add-int v17, v17, v9

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v18

    add-int v18, v18, v14

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v9, v14, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 991
    .end local v9    # "left":I
    .end local v12    # "shadowingHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v13    # "shadowingView":Landroid/view/View;
    .end local v14    # "top":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 996
    .restart local v12    # "shadowingHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    const/4 v13, 0x0

    goto :goto_1

    .line 1009
    .end local v5    # "count":I
    .end local v6    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v8    # "i":I
    .end local v12    # "shadowingHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .end local v15    # "view":Landroid/view/View;
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/widget/RecyclerView;->mRunningLayoutOrScroll:Z

    .line 1010
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1012
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_7

    .line 1013
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1015
    :cond_7
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 1016
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 1017
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/support/v7/widget/RecyclerView;->pullGlows(II)V

    .line 1019
    :cond_8
    if-nez v7, :cond_9

    if-eqz v16, :cond_a

    .line 1020
    :cond_9
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v16

    invoke-virtual {v0, v1, v7, v2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 1025
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    move-result v17

    if-nez v17, :cond_b

    .line 1026
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1028
    :cond_b
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 941
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RecyclerView does not support scrolling to an absolute position."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 915
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->stopScroll()V

    .line 916
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 917
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->awakenScrollBars()Z

    .line 918
    return-void
.end method

.method public setAccessibilityDelegateCompat(Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 1
    .param p1, "accessibilityDelegate"    # Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .prologue
    .line 321
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .line 322
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 323
    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 563
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 564
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 565
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 498
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 499
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->invalidateGlows()V

    .line 501
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mClipToPadding:Z

    .line 502
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 503
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 506
    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0
    .param p1, "hasFixedSize"    # Z

    .prologue
    .line 485
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    .line 486
    return-void
.end method

.method public setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V
    .locals 2
    .param p1, "animator"    # Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .prologue
    .line 1788
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 1789
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1790
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 1792
    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 1793
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 1794
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mItemAnimatorListener:Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setListener(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 1796
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 798
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 799
    return-void
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "layout"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 648
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    .line 673
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    .line 654
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 657
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 659
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 660
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 661
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 662
    if-eqz p1, :cond_4

    .line 663
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 667
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 668
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_4

    .line 669
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 672
    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 903
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 904
    return-void
.end method

.method public setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .locals 1
    .param p1, "pool"    # Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .prologue
    .line 772
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V

    .line 773
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    .prologue
    .line 632
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView;->mRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    .line 633
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4
    .param p1, "slopConstant"    # I

    .prologue
    .line 518
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 519
    .local v0, "vc":Landroid/view/ViewConfiguration;
    packed-switch p1, :pswitch_data_0

    .line 521
    const-string v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    .line 532
    :goto_0
    return-void

    .line 529
    :pswitch_1
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/RecyclerView;->mTouchSlop:I

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V
    .locals 1
    .param p1, "extension"    # Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

    .prologue
    .line 783
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V

    .line 784
    return-void
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1185
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 1186
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    .line 1188
    :cond_1
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 936
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V

    .line 937
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 1220
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 1221
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->stopScrollersInternal()V

    .line 1222
    return-void
.end method

.method public swapAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .prologue
    const/4 v0, 0x1

    .line 549
    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/RecyclerView;->setAdapterInternal(Landroid/support/v7/widget/RecyclerView$Adapter;ZZ)V

    .line 550
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 551
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 552
    return-void
.end method

.method viewRangeUpdate(II)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 2473
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v5}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 2474
    .local v1, "childCount":I
    add-int v4, p1, p2

    .line 2476
    .local v4, "positionEnd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 2477
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    invoke-virtual {v5, v3}, Landroid/support/v7/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2478
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 2479
    .local v2, "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2476
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2482
    :cond_1
    iget v5, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_0

    iget v5, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v4, :cond_0

    .line 2485
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 2486
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView;->supportsChangeAnimations()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2487
    const/16 v5, 0x40

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 2490
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_1

    .line 2493
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "holder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_3
    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v5, p1, p2}, Landroid/support/v7/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 2494
    return-void
.end method
