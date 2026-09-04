.class public Lcom/smartisanos/smengine/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/GestureDetector$GestureHandler;,
        Lcom/smartisanos/smengine/GestureDetector$SimpleOnGestureListener;,
        Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;,
        Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;
    }
.end annotation


.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I = 0x190

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private mEndY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field protected mMayNeedSweep:Z

.field private mMinimumFlingVelocity:I

.field private mNeedSweep:Z

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStartY:F

.field private mStillDown:Z

.field private mSweepThreshold:F

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/smartisanos/smengine/GestureDetector;->TAP_TIMEOUT:I

    .line 215
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/smartisanos/smengine/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/smengine/GestureDetector;-><init>(Landroid/content/Context;Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 342
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    if-eqz p3, :cond_0

    .line 358
    new-instance v0, Lcom/smartisanos/smengine/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Lcom/smartisanos/smengine/GestureDetector$GestureHandler;-><init>(Lcom/smartisanos/smengine/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 362
    :goto_0
    iput-object p2, p0, Lcom/smartisanos/smengine/GestureDetector;->mListener:Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;

    .line 366
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/GestureDetector;->init(Landroid/content/Context;)V

    .line 367
    return-void

    .line 360
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Lcom/smartisanos/smengine/GestureDetector$GestureHandler;-><init>(Lcom/smartisanos/smengine/GestureDetector;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "unused"    # Z

    .prologue
    .line 383
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/smengine/GestureDetector;-><init>(Landroid/content/Context;Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 384
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, v0, p1, v0}, Lcom/smartisanos/smengine/GestureDetector;-><init>(Landroid/content/Context;Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 327
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/smartisanos/smengine/GestureDetector;-><init>(Landroid/content/Context;Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 310
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/smengine/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/GestureDetector;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/smengine/GestureDetector;)Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/GestureDetector;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mListener:Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/smengine/GestureDetector;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/GestureDetector;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/smartisanos/smengine/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/smengine/GestureDetector;)Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/GestureDetector;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mDoubleTapListener:Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/smartisanos/smengine/GestureDetector;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/GestureDetector;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 727
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 728
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 729
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 732
    iput-boolean v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mIsDoubleTapping:Z

    .line 733
    iput-boolean v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mStillDown:Z

    .line 734
    iput-boolean v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mAlwaysInTapRegion:Z

    .line 735
    iput-boolean v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 736
    iget-boolean v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    .line 737
    iput-boolean v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mInLongPress:Z

    .line 739
    :cond_0
    return-void
.end method

.method private cancelTaps()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 742
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 743
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 744
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 745
    iput-boolean v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mIsDoubleTapping:Z

    .line 746
    iput-boolean v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mAlwaysInTapRegion:Z

    .line 747
    iput-boolean v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 748
    iget-boolean v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    .line 749
    iput-boolean v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mInLongPress:Z

    .line 751
    :cond_0
    return-void
.end method

.method private cauculateSweep(Landroid/view/MotionEvent;Z)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isUp"    # Z

    .prologue
    .line 709
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 710
    .local v0, "downIndex":I
    if-eqz p2, :cond_0

    .line 711
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mEndY:F

    .line 715
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 717
    .local v1, "upIndex":I
    iget-boolean v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mNeedSweep:Z

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v2

    iget v3, p0, Lcom/smartisanos/smengine/GestureDetector;->mSweepThreshold:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 718
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mNeedSweep:Z

    .line 721
    :cond_1
    iget-boolean v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mNeedSweep:Z

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    iget v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mStartY:F

    iget v3, p0, Lcom/smartisanos/smengine/GestureDetector;->mEndY:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 722
    iget-object v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mListener:Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;

    invoke-interface {v2, p1}, Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;->onSweep(Landroid/view/MotionEvent;)V

    .line 724
    :cond_2
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 770
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mInLongPress:Z

    .line 771
    iget-object v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mListener:Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;

    iget-object v1, p0, Lcom/smartisanos/smengine/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 772
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 387
    iget-object v4, p0, Lcom/smartisanos/smengine/GestureDetector;->mListener:Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;

    if-nez v4, :cond_0

    .line 388
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "OnGestureListener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 390
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/smartisanos/smengine/GestureDetector;->mIsLongpressEnabled:Z

    .line 394
    if-nez p1, :cond_1

    .line 396
    const/16 v3, 0xc

    .line 397
    .local v3, "touchSlop":I
    move v2, v3

    .line 398
    .local v2, "doubleTapTouchSlop":I
    move v1, v2

    .line 400
    .local v1, "doubleTapSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/smartisanos/smengine/GestureDetector;->mMinimumFlingVelocity:I

    .line 401
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/smartisanos/smengine/GestureDetector;->mMaximumFlingVelocity:I

    .line 410
    :goto_0
    mul-int v4, v3, v3

    iput v4, p0, Lcom/smartisanos/smengine/GestureDetector;->mTouchSlopSquare:I

    .line 411
    mul-int v4, v2, v2

    iput v4, p0, Lcom/smartisanos/smengine/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 412
    mul-int v4, v1, v1

    iput v4, p0, Lcom/smartisanos/smengine/GestureDetector;->mDoubleTapSlopSquare:I

    .line 413
    return-void

    .line 403
    .end local v1    # "doubleTapSlop":I
    .end local v2    # "doubleTapTouchSlop":I
    .end local v3    # "touchSlop":I
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 404
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 405
    .restart local v3    # "touchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 406
    .restart local v1    # "doubleTapSlop":I
    move v2, v1

    .line 407
    .restart local v2    # "doubleTapTouchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/smartisanos/smengine/GestureDetector;->mMinimumFlingVelocity:I

    .line 408
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/smartisanos/smengine/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 755
    iget-boolean v3, p0, Lcom/smartisanos/smengine/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v3, :cond_1

    .line 765
    :cond_0
    :goto_0
    return v2

    .line 759
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget v3, Lcom/smartisanos/smengine/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-gtz v3, :cond_0

    .line 763
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 764
    .local v0, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 765
    .local v1, "deltaY":I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/smengine/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private resetSweep(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 685
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sweep_threshold:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mSweepThreshold:F

    .line 686
    iput-boolean v4, p0, Lcom/smartisanos/smengine/GestureDetector;->mMayNeedSweep:Z

    .line 687
    iput-boolean v4, p0, Lcom/smartisanos/smengine/GestureDetector;->mNeedSweep:Z

    .line 688
    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    iput v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mStartY:F

    .line 689
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mEndY:F

    .line 691
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 692
    .local v0, "downIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 694
    .local v1, "startY":F
    iget v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mStartY:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 695
    iput v1, p0, Lcom/smartisanos/smengine/GestureDetector;->mStartY:F

    .line 698
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v2

    iget v3, p0, Lcom/smartisanos/smengine/GestureDetector;->mSweepThreshold:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 699
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mMayNeedSweep:Z

    .line 701
    :cond_1
    iget-boolean v2, p0, Lcom/smartisanos/smengine/GestureDetector;->mMayNeedSweep:Z

    return v2
.end method


.method public isLongpressEnabled()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/smartisanos/smengine/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 42
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 465
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 467
    .local v6, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    if-nez v36, :cond_0

    .line 468
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 470
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 472
    and-int/lit16 v0, v6, 0xff

    move/from16 v36, v0

    const/16 v37, 0x6

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    const/16 v22, 0x1

    .line 474
    .local v22, "pointerUp":Z
    :goto_0
    if-eqz v22, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v25

    .line 477
    .local v25, "skipIndex":I
    :goto_1
    const/16 v26, 0x0

    .local v26, "sumX":F
    const/16 v27, 0x0

    .line 478
    .local v27, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 479
    .local v7, "count":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v7, :cond_4

    .line 480
    move/from16 v0, v25

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 479
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 472
    .end local v7    # "count":I
    .end local v18    # "i":I
    .end local v22    # "pointerUp":Z
    .end local v25    # "skipIndex":I
    .end local v26    # "sumX":F
    .end local v27    # "sumY":F
    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    .line 474
    .restart local v22    # "pointerUp":Z
    :cond_2
    const/16 v25, -0x1

    goto :goto_1

    .line 481
    .restart local v7    # "count":I
    .restart local v18    # "i":I
    .restart local v25    # "skipIndex":I
    .restart local v26    # "sumX":F
    .restart local v27    # "sumY":F
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v36

    add-float v26, v26, v36

    .line 482
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v36

    add-float v27, v27, v36

    goto :goto_3

    .line 484
    :cond_4
    if-eqz v22, :cond_6

    add-int/lit8 v12, v7, -0x1

    .line 485
    .local v12, "div":I
    :goto_4
    int-to-float v0, v12

    move/from16 v36, v0

    div-float v14, v26, v36

    .line 486
    .local v14, "focusX":F
    int-to-float v0, v12

    move/from16 v36, v0

    div-float v15, v27, v36

    .line 488
    .local v15, "focusY":F
    const/16 v17, 0x0

    .line 490
    .local v17, "handled":Z
    and-int/lit16 v0, v6, 0xff

    move/from16 v36, v0

    packed-switch v36, :pswitch_data_0

    :cond_5
    :goto_5
    :pswitch_0
    move/from16 v36, v17

    .line 672
    :goto_6
    return v36

    .end local v12    # "div":I
    .end local v14    # "focusX":F
    .end local v15    # "focusY":F
    .end local v17    # "handled":Z
    :cond_6
    move v12, v7

    .line 484
    goto :goto_4

    .line 492
    .restart local v12    # "div":I
    .restart local v14    # "focusX":F
    .restart local v15    # "focusY":F
    .restart local v17    # "handled":Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mMayNeedSweep:Z

    move/from16 v36, v0

    if-eqz v36, :cond_7

    .line 493
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/GestureDetector;->cauculateSweep(Landroid/view/MotionEvent;Z)V

    .line 494
    const/16 v36, 0x1

    goto :goto_6

    .line 496
    :cond_7
    move-object/from16 v0, p0

    iput v14, v0, Lcom/smartisanos/smengine/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/smartisanos/smengine/GestureDetector;->mDownFocusX:F

    .line 497
    move-object/from16 v0, p0

    iput v15, v0, Lcom/smartisanos/smengine/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/smartisanos/smengine/GestureDetector;->mDownFocusY:F

    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/GestureDetector;->cancelTaps()V

    goto :goto_5

    .line 503
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mMayNeedSweep:Z

    move/from16 v36, v0

    if-eqz v36, :cond_8

    .line 504
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/GestureDetector;->cauculateSweep(Landroid/view/MotionEvent;Z)V

    .line 505
    const/16 v36, 0x1

    goto :goto_6

    .line 507
    :cond_8
    move-object/from16 v0, p0

    iput v14, v0, Lcom/smartisanos/smengine/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/smartisanos/smengine/GestureDetector;->mDownFocusX:F

    .line 508
    move-object/from16 v0, p0

    iput v15, v0, Lcom/smartisanos/smengine/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/smartisanos/smengine/GestureDetector;->mDownFocusY:F

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    const/16 v37, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    invoke-virtual/range {v36 .. v38}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v28

    .line 514
    .local v28, "upIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 515
    .local v19, "id1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v33

    .line 516
    .local v33, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v35

    .line 517
    .local v35, "y1":F
    const/16 v18, 0x0

    :goto_7
    move/from16 v0, v18

    if-ge v0, v7, :cond_5

    .line 518
    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 517
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 520
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    .line 521
    .local v20, "id2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v36

    mul-float v32, v33, v36

    .line 522
    .local v32, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v36

    mul-float v34, v35, v36

    .line 524
    .local v34, "y":F
    add-float v13, v32, v34

    .line 525
    .local v13, "dot":F
    const/16 v36, 0x0

    cmpg-float v36, v13, v36

    if-gez v36, :cond_9

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_5

    .line 533
    .end local v13    # "dot":F
    .end local v19    # "id1":I
    .end local v20    # "id2":I
    .end local v28    # "upIndex":I
    .end local v32    # "x":F
    .end local v33    # "x1":F
    .end local v34    # "y":F
    .end local v35    # "y1":F
    :pswitch_3
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/smengine/GestureDetector;->resetSweep(Landroid/view/MotionEvent;)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 534
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mInLongPress:Z

    .line 535
    const/16 v36, 0x1

    goto/16 :goto_6

    .line 537
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mDoubleTapListener:Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    if-eqz v36, :cond_d

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v16

    .line 539
    .local v16, "hadTapMessage":Z
    if-eqz v16, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 540
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_10

    if-eqz v16, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    .line 541
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v36

    if-eqz v36, :cond_10

    .line 543
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mIsDoubleTapping:Z

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mDoubleTapListener:Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    invoke-interface/range {v36 .. v37}, Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mDoubleTapListener:Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 554
    .end local v16    # "hadTapMessage":Z
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iput v14, v0, Lcom/smartisanos/smengine/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v14, v0, Lcom/smartisanos/smengine/GestureDetector;->mDownFocusX:F

    .line 555
    move-object/from16 v0, p0

    iput v15, v0, Lcom/smartisanos/smengine/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v15, v0, Lcom/smartisanos/smengine/GestureDetector;->mDownFocusY:F

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_e

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->recycle()V

    .line 559
    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 560
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mAlwaysInTapRegion:Z

    .line 561
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 562
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mStillDown:Z

    .line 563
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mInLongPress:Z

    .line 565
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v36, v0

    if-eqz v36, :cond_f

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v38

    sget v40, Lcom/smartisanos/smengine/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    const-wide/16 v40, 0x190

    add-long v38, v38, v40

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 570
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v38

    sget v40, Lcom/smartisanos/smengine/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    add-long v38, v38, v40

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mListener:Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 572
    goto/16 :goto_5

    .line 550
    .restart local v16    # "hadTapMessage":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    sget v38, Lcom/smartisanos/smengine/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    invoke-virtual/range {v36 .. v39}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    .line 575
    .end local v16    # "hadTapMessage":Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mMayNeedSweep:Z

    move/from16 v36, v0

    if-eqz v36, :cond_11

    .line 576
    const/16 v36, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/GestureDetector;->cauculateSweep(Landroid/view/MotionEvent;Z)V

    .line 577
    const/16 v36, 0x1

    goto/16 :goto_6

    .line 579
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mInLongPress:Z

    move/from16 v36, v0

    if-nez v36, :cond_5

    .line 582
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mLastFocusX:F

    move/from16 v36, v0

    sub-float v23, v36, v14

    .line 583
    .local v23, "scrollX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mLastFocusY:F

    move/from16 v36, v0

    sub-float v24, v36, v15

    .line 584
    .local v24, "scrollY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v36, v0

    if-eqz v36, :cond_12

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mDoubleTapListener:Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    goto/16 :goto_5

    .line 587
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v36, v0

    if-eqz v36, :cond_14

    .line 588
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mDownFocusX:F

    move/from16 v36, v0

    sub-float v36, v14, v36

    move/from16 v0, v36

    float-to-int v9, v0

    .line 589
    .local v9, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mDownFocusY:F

    move/from16 v36, v0

    sub-float v36, v15, v36

    move/from16 v0, v36

    float-to-int v10, v0

    .line 590
    .local v10, "deltaY":I
    mul-int v36, v9, v9

    mul-int v37, v10, v10

    add-int v11, v36, v37

    .line 591
    .local v11, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mTouchSlopSquare:I

    move/from16 v36, v0

    move/from16 v0, v36

    if-le v11, v0, :cond_13

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mListener:Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    .line 593
    move-object/from16 v0, p0

    iput v14, v0, Lcom/smartisanos/smengine/GestureDetector;->mLastFocusX:F

    .line 594
    move-object/from16 v0, p0

    iput v15, v0, Lcom/smartisanos/smengine/GestureDetector;->mLastFocusY:F

    .line 595
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mAlwaysInTapRegion:Z

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 600
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mDoubleTapTouchSlopSquare:I

    move/from16 v36, v0

    move/from16 v0, v36

    if-le v11, v0, :cond_5

    .line 601
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_5

    .line 603
    .end local v9    # "deltaX":I
    .end local v10    # "deltaY":I
    .end local v11    # "distance":I
    :cond_14
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v36

    const/high16 v37, 0x3f800000    # 1.0f

    cmpl-float v36, v36, v37

    if-gez v36, :cond_15

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v36

    const/high16 v37, 0x3f800000    # 1.0f

    cmpl-float v36, v36, v37

    if-ltz v36, :cond_5

    .line 604
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mListener:Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    .line 605
    move-object/from16 v0, p0

    iput v14, v0, Lcom/smartisanos/smengine/GestureDetector;->mLastFocusX:F

    .line 606
    move-object/from16 v0, p0

    iput v15, v0, Lcom/smartisanos/smengine/GestureDetector;->mLastFocusY:F

    goto/16 :goto_5

    .line 611
    .end local v23    # "scrollX":F
    .end local v24    # "scrollY":F
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mMayNeedSweep:Z

    move/from16 v36, v0

    if-eqz v36, :cond_17

    .line 612
    const/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/GestureDetector;->cauculateSweep(Landroid/view/MotionEvent;Z)V

    .line 613
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mMayNeedSweep:Z

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    if-eqz v36, :cond_16

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->recycle()V

    .line 618
    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 620
    :cond_16
    const/16 v36, 0x1

    goto/16 :goto_6

    .line 622
    :cond_17
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mStillDown:Z

    .line 623
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 624
    .local v8, "currentUpEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1b

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mDoubleTapListener:Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v36

    or-int v17, v17, v36

    .line 646
    :cond_18
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    if-eqz v36, :cond_19

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/MotionEvent;->recycle()V

    .line 650
    :cond_19
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/smartisanos/smengine/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1a

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/view/VelocityTracker;->recycle()V

    .line 655
    const/16 v36, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 657
    :cond_1a
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mIsDoubleTapping:Z

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x2

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_5

    .line 627
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mInLongPress:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1c

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v36, v0

    const/16 v37, 0x3

    invoke-virtual/range {v36 .. v37}, Landroid/os/Handler;->removeMessages(I)V

    .line 629
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mInLongPress:Z

    goto :goto_9

    .line 630
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1d

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mListener:Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v17

    goto :goto_9

    .line 635
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v29, v0

    .line 636
    .local v29, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v36, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    .line 637
    .local v21, "pointerId":I
    const/16 v36, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v29

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 638
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v31

    .line 639
    .local v31, "velocityY":F
    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v30

    .line 641
    .local v30, "velocityX":F
    invoke-static/range {v31 .. v31}, Ljava/lang/Math;->abs(F)F

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    cmpl-float v36, v36, v37

    if-gtz v36, :cond_1e

    .line 642
    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    cmpl-float v36, v36, v37

    if-lez v36, :cond_18

    .line 643
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mListener:Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move/from16 v3, v30

    move/from16 v4, v31

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v17

    goto/16 :goto_9

    .line 663
    .end local v8    # "currentUpEvent":Landroid/view/MotionEvent;
    .end local v21    # "pointerId":I
    .end local v29    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v30    # "velocityX":F
    .end local v31    # "velocityY":F
    :pswitch_6
    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/GestureDetector;->mMayNeedSweep:Z

    .line 664
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/GestureDetector;->cancel()V

    goto/16 :goto_5

    .line 490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0
    .param p1, "isLongpressEnabled"    # Z

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/smartisanos/smengine/GestureDetector;->mIsLongpressEnabled:Z

    .line 437
    return-void
.end method

.method public setOnDoubleTapListener(Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .param p1, "onDoubleTapListener"    # Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/smartisanos/smengine/GestureDetector;->mDoubleTapListener:Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;

    .line 424
    return-void
.end method
