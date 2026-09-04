.class public Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
.super Landroid/widget/FrameLayout;
.source "SwipeListItemView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;
    }
.end annotation


.field private static final FLING_DURATION:I = 0xc8

.field private static final REBOUND_DURATION:I = 0x96

.field private static final SCROLL_DURATION:I = 0xfa

.field public static final UNDEFINED:I = -0x80000000


.field private f0:D

.field private mAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

.field private mCloseCoverLeft:I

.field private mContentShadow:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field mCoverHitRect:Landroid/graphics/Rect;

.field private mCurrentCoverLeft:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureStartLeft:I

.field private mIgnoreGesture:Z

.field private mIsScrollGesture:Z

.field private mLeftDampDistance:I

.field private mLeftOpenBalanceDistance:I

.field private mLeftOpenCoverLeft:I

.field private mMenuView:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

.field private mPosition:I

.field private mScrollRunner:Ljava/lang/Runnable;

.field private mScroller:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    .line 159
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mGestureStartLeft:I

    .line 40
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 45
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    .line 60
    iput-boolean v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mIsScrollGesture:Z

    .line 62
    iput-boolean v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    .line 313
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->overScrollCurveA(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->f0:D

    .line 341
    new-instance v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$2;

    invoke-direct {v0, p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$2;-><init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScrollRunner:Ljava/lang/Runnable;

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    .line 163
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mGestureStartLeft:I

    .line 40
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 45
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    .line 60
    iput-boolean v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mIsScrollGesture:Z

    .line 62
    iput-boolean v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    .line 313
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->overScrollCurveA(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->f0:D

    .line 341
    new-instance v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$2;

    invoke-direct {v0, p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$2;-><init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScrollRunner:Ljava/lang/Runnable;

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;)V
    .locals 3
    .param p1, "content"    # Landroid/view/View;
    .param p2, "contentShadow"    # Landroid/view/View;
    .param p3, "menu"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, -0x80000000

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mGestureStartLeft:I

    .line 40
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 45
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    .line 60
    iput-boolean v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mIsScrollGesture:Z

    .line 62
    iput-boolean v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    .line 313
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->overScrollCurveA(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->f0:D

    .line 341
    new-instance v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$2;

    invoke-direct {v0, p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$2;-><init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScrollRunner:Ljava/lang/Runnable;

    .line 172
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    .line 173
    iput-object p3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    .line 174
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    invoke-virtual {v0, p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->setSwipeListItemView(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)V

    .line 175
    iput-object p2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    .line 176
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->init()V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;)V
    .locals 1
    .param p1, "content"    # Landroid/view/View;
    .param p2, "menu"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;-><init>(Landroid/view/View;Landroid/view/View;Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;)V

    .line 168
    return-void
.end method

.method static synthetic access$002(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mIsScrollGesture:Z

    return p1
.end method

.method static synthetic access$100(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .prologue
    .line 24
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    return v0
.end method

.method static synthetic access$202(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mGestureStartLeft:I

    return p1
.end method

.method static synthetic access$300(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .prologue
    .line 24
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    return v0
.end method

.method static synthetic access$400(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->getTargetX(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .prologue
    .line 24
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftDampDistance:I

    return v0
.end method

.method static synthetic access$600(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->immediatelyScrollTo(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .prologue
    .line 24
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftOpenCoverLeft:I

    return v0
.end method

.method static synthetic access$800(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;IFI)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->flingTo(IFI)V

    return-void
.end method

.method static synthetic access$900(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;

    return-object v0
.end method

.method private flingTo(IFI)V
    .locals 11
    .param p1, "targetX"    # I
    .param p2, "velocityX"    # F
    .param p3, "overX"    # I

    .prologue
    const/4 v2, 0x0

    .line 356
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftOpenCoverLeft:I

    if-ne p1, v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    invoke-virtual {v0, p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->setOpenedChild(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)V

    .line 360
    :cond_0
    iget v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 361
    .local v1, "startX":I
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;

    float-to-int v3, p2

    move v4, v2

    move v5, p1

    move v6, p1

    move v7, v2

    move v8, v2

    move v9, p3

    move v10, v2

    invoke-virtual/range {v0 .. v10}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->fling(IIIIIIIIII)V

    .line 364
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScrollRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->post(Ljava/lang/Runnable;)Z

    .line 365
    return-void
.end method

.method private getCoverCloseLeft()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    return v0
.end method

.method private getTargetX(II)I
    .locals 6
    .param p1, "overX"    # I
    .param p2, "dx"    # I

    .prologue
    .line 305
    iget v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    add-int v0, v1, p2

    .line 306
    .local v0, "target":I
    iget v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftDampDistance:I

    if-le v0, v1, :cond_0

    if-lez p1, :cond_0

    .line 307
    iget v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftDampDistance:I

    int-to-double v2, v1

    int-to-double v4, p1

    invoke-direct {p0, v4, v5}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->overScrollCurveB(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 309
    .end local v0    # "target":I
    :cond_0
    return v0
.end method

.method private immediatelyScrollTo(I)Z
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 386
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 387
    .local v1, "width":I
    iget v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    if-ge p1, v2, :cond_0

    .line 388
    iget p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setLeft(I)V

    .line 391
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setRight(I)V

    .line 392
    iput p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 394
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 396
    .local v0, "shadowWidth":I
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    sub-int v3, p1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setLeft(I)V

    .line 397
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setRight(I)V

    .line 399
    .end local v0    # "shadowWidth":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 180
    new-instance v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;-><init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;

    .line 181
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;

    invoke-direct {v2, p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$1;-><init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 289
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v4, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->addView(Landroid/view/View;)V

    .line 294
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->addView(Landroid/view/View;)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->addView(Landroid/view/View;)V

    .line 302
    return-void
.end method

.method private interruptScroller()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->isClearFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->forceFinished(Z)V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScrollRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 407
    return-void
.end method

.method private isMotionOnCover(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 477
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCoverHitRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCoverHitRect:Landroid/graphics/Rect;

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCoverHitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 481
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCoverHitRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private isMotionOnMenu(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 488
    const/4 v3, 0x0

    .line 489
    .local v3, "result":Z
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 490
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    invoke-virtual {v4}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->getMenuViews()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 491
    .local v1, "menu":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 492
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 493
    goto :goto_0

    .line 494
    .end local v1    # "menu":Landroid/view/View;
    :cond_0
    return v3
.end method

.method private overScrollCurveA(D)D
    .locals 7
    .param p1, "x"    # D

    .prologue
    .line 316
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    add-double/2addr v4, p1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x3ff199999999999aL    # 1.1

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private overScrollCurveB(D)D
    .locals 5
    .param p1, "x"    # D

    .prologue
    .line 320
    invoke-direct {p0, p1, p2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->overScrollCurveA(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->f0:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private scrollByTouch(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 522
    .local v0, "action":I
    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    .line 531
    :pswitch_0
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->interruptScroller()V

    .line 534
    :pswitch_1
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 537
    .local v1, "handled":Z
    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_1

    .line 551
    :cond_0
    :goto_0
    :pswitch_2
    if-eqz v1, :cond_2

    and-int/lit16 v3, v0, 0xff

    if-eqz v3, :cond_2

    move v1, v2

    .line 552
    :goto_1
    return v1

    .line 540
    :pswitch_3
    iget v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    iget v4, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;

    invoke-virtual {v3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->isClearFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 542
    iget v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    iget v4, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftDampDistance:I

    if-eq v3, v4, :cond_1

    .line 543
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->scrollIntoSlot()V

    .line 546
    :cond_1
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 547
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    invoke-virtual {v3, v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->setMenuClickable(Z)V

    goto :goto_0

    .line 551
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 537
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private scrollIntoSlot()V
    .locals 4

    .prologue
    .line 371
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 373
    .local v0, "left":I
    iget v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mGestureStartLeft:I

    iget v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftOpenCoverLeft:I

    if-ne v2, v3, :cond_0

    .line 374
    iget v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    .line 379
    .local v1, "targetX":I
    :goto_0
    const/16 v2, 0xfa

    invoke-virtual {p0, v1, v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->scrollTo(II)V

    .line 380
    return-void

    .line 376
    .end local v1    # "targetX":I
    :cond_0
    iget v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftOpenBalanceDistance:I

    if-le v0, v2, :cond_1

    iget v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftOpenCoverLeft:I

    .restart local v1    # "targetX":I
    :goto_1
    goto :goto_0

    .end local v1    # "targetX":I
    :cond_1
    iget v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    goto :goto_1
.end method

.method private scrollTo(IZI)V
    .locals 7
    .param p1, "targetX"    # I
    .param p2, "ignoreInterrupt"    # Z
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 332
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftOpenCoverLeft:I

    if-ne p1, v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    invoke-virtual {v0, p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->setOpenedChild(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)V

    .line 336
    :cond_0
    iget v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 337
    .local v1, "startX":I
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;

    sub-int v3, p1, v1

    move v4, v2

    move v5, p3

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->startScroll(IIIIIZ)V

    .line 338
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScrollRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method


.method public closeAutonomously()V
    .locals 2

    .prologue
    .line 582
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->scrollTo(II)V

    .line 583
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->setMenuClickable(Z)V

    .line 584
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->setOpenedChild(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)V

    .line 585
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getCurrentCoverLeft()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    return v0
.end method

.method public getMenuView()Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mPosition:I

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 422
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    iget v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->isClearFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeftOpen()Z
    .locals 2

    .prologue
    .line 418
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    iget v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 448
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    .line 449
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->isAdapterAnimating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    iput-boolean v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    .line 469
    :cond_0
    :goto_0
    return v1

    .line 455
    :cond_1
    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->isMotionOnCover(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 460
    .local v0, "motionOnCover":Z
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->isClearFinished()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->ignoreInterrupt()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 462
    iput-boolean v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    goto :goto_0

    .line 464
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    :cond_3
    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->scrollByTouch(Landroid/view/MotionEvent;)Z

    .line 469
    iget-boolean v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mIsScrollGesture:Z

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 427
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 429
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    .line 430
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 431
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 435
    :goto_0
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->getLastMenuRightEdge()I

    move-result v0

    iput v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftDampDistance:I

    .line 437
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->getMenuViews()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftOpenBalanceDistance:I

    .line 438
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftDampDistance:I

    iput v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftOpenCoverLeft:I

    .line 439
    return-void

    .line 433
    :cond_0
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    invoke-direct {p0, v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->immediatelyScrollTo(I)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 501
    iget-boolean v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    if-eqz v2, :cond_0

    .line 515
    :goto_0
    return v1

    .line 506
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_2

    .line 507
    iget v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    iget v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mLeftOpenCoverLeft:I

    if-lt v2, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->isMotionOnCover(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->isMotionOnMenu(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 509
    :cond_1
    iput-boolean v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    .line 510
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->closeAutonomously()V

    goto :goto_0

    .line 514
    :cond_2
    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->scrollByTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 515
    .local v0, "handled":Z
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "targetX"    # I
    .param p2, "duration"    # I

    .prologue
    .line 328
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->scrollTo(IZI)V

    .line 329
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 570
    iput p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mPosition:I

    .line 571
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->setPosition(I)V

    .line 572
    return-void
.end method

.method public setSwipeListAdapter(Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    .prologue
    .line 556
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->mAdapter:Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    .line 557
    return-void
.end method

.method public superScrollTo(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 324
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 325
    return-void
.end method
