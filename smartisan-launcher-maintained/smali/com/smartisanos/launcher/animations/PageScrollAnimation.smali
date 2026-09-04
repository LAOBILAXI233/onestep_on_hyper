.class public abstract Lcom/smartisanos/launcher/animations/PageScrollAnimation;
.super Ljava/lang/Object;
.source "PageScrollAnimation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/animations/PageScrollAnimation$ProgressAccessor;
    }
.end annotation


.field protected static SCROLL_PARA_TABLE:[F = null

.field public static final TWEEN_TYPE_A:I = 0x1

.field public static final TWEEN_TYPE_B:I = 0x2

.field public static final TWEEN_TYPE_C:I = 0x3

.field public static final TWEEN_TYPE_D:I = 0x4

.field public static final TWEEN_TYPE_DEFAULT:I = 0x0

.field public static final TWEEN_TYPE_E:I = 0x5


.field protected mAnimProgress:[F

.field protected mAnimProgressTL:[F

.field private mCanDownUpScroll:Z

.field protected mCurTranX:F

.field protected mCurrentPage:Lcom/smartisanos/launcher/view/Page;

.field protected mCurrentPageIndex:I

.field protected mEmptyPage:Lcom/smartisanos/launcher/view/Page;

.field protected mEnable:Z

.field private mEndScrollAnimTime:F

.field private mEndScrollAnimationListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

.field protected mFromProgress:[F

.field protected mMaxTranX:F

.field protected mMaxTranXProcress:I

.field protected mMinTranX:F

.field protected mMustBeDisplayedPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation
.end field

.field protected mNextPage:Lcom/smartisanos/launcher/view/Page;

.field protected mPageGroupNum:I

.field protected mPageGroupSpanX:F

.field protected mPageHeight:F

.field protected mPageView:Lcom/smartisanos/launcher/view/PageView;

.field protected mPageWidth:F

.field protected mPageY:F

.field protected mPrePage:Lcom/smartisanos/launcher/view/Page;

.field private mScrollLeftRight:Z

.field protected mScrollProcress:F

.field protected mScrollX:F

.field private mShowShadow:Z

.field protected mTimeLine:Laurelienribon/tweenengine/Timeline;

.field protected mToProgressTL:[F

.field protected mTween:Laurelienribon/tweenengine/Tween;


.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mAnimProgress:[F

    .line 46
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mAnimProgressTL:[F

    .line 47
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mFromProgress:[F

    .line 48
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mToProgressTL:[F

    .line 50
    const/high16 v1, -0x3b860000    # -1000.0f

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    .line 54
    const/16 v1, -0x3e8

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPageIndex:I

    .line 65
    iput-boolean v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mEnable:Z

    .line 66
    iput-boolean v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mShowShadow:Z

    .line 67
    iput-boolean v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCanDownUpScroll:Z

    .line 68
    iput-boolean v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollLeftRight:Z

    .line 69
    const v1, 0x3e99999a    # 0.3f

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mEndScrollAnimTime:F

    .line 73
    const-class v1, Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-static {v1}, Laurelienribon/tweenengine/Tween;->getRegisteredAccessor(Ljava/lang/Class;)Laurelienribon/tweenengine/TweenAccessor;

    move-result-object v0

    .line 74
    .local v0, "a":Laurelienribon/tweenengine/TweenAccessor;, "Laurelienribon/tweenengine/TweenAccessor<Lcom/smartisanos/launcher/animations/PageScrollAnimation;>;"
    if-nez v0, :cond_0

    .line 75
    const-class v1, Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    new-instance v2, Lcom/smartisanos/launcher/animations/PageScrollAnimation$ProgressAccessor;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation$ProgressAccessor;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimation;)V

    invoke-static {v1, v2}, Laurelienribon/tweenengine/Tween;->registerAccessor(Ljava/lang/Class;Laurelienribon/tweenengine/TweenAccessor;)V

    .line 77
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMustBeDisplayedPages:Ljava/util/ArrayList;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/animations/PageScrollAnimation;[F)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/PageScrollAnimation;
    .param p1, "x1"    # [F

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->setProgress([F)V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/animations/PageScrollAnimation;IF)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/animations/PageScrollAnimation;
    .param p1, "x1"    # I
    .param p2, "x2"    # F

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->setProgress(IF)V

    return-void
.end method

.method private calculateScrollParameters()V
    .locals 11

    .prologue
    const/16 v10, 0x3e8

    .line 498
    sget-object v5, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->SCROLL_PARA_TABLE:[F

    if-nez v5, :cond_0

    .line 499
    new-array v5, v10, [F

    sput-object v5, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->SCROLL_PARA_TABLE:[F

    .line 500
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupSpanX:F

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v5, v6

    float-to-int v1, v5

    .line 501
    .local v1, "deltaX":I
    const/4 v4, 0x0

    .line 502
    .local v4, "y":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v10, :cond_0

    .line 503
    const-wide/high16 v6, 0x4079000000000000L    # 400.0

    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupSpanX:F

    div-float v5, v4, v5

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 504
    .local v0, "damp":F
    int-to-float v5, v1

    div-float v3, v5, v0

    .line 505
    .local v3, "newDeltaX":F
    add-float/2addr v4, v3

    .line 506
    sget-object v5, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->SCROLL_PARA_TABLE:[F

    aput v4, v5, v2

    .line 502
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    .end local v0    # "damp":F
    .end local v1    # "deltaX":I
    .end local v2    # "i":I
    .end local v3    # "newDeltaX":F
    .end local v4    # "y":F
    :cond_0
    return-void
.end method

.method private setProgress(IF)V
    .locals 2
    .param p1, "tweenType"    # I
    .param p2, "progress"    # F

    .prologue
    .line 512
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mAnimProgressTL:[F

    add-int/lit8 v1, p1, -0x1

    aput p2, v0, v1

    .line 513
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onAnimationChanged(IF)V

    .line 514
    return-void
.end method

.method private setProgress([F)V
    .locals 3
    .param p1, "progress"    # [F

    .prologue
    .line 517
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mAnimProgress:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mAnimProgress:[F

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onAnimationChanged([F)V

    .line 521
    return-void
.end method


.method protected calculateScrollStatus()V
    .locals 4

    .prologue
    .line 489
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getGroupNum()I

    move-result v0

    .line 490
    .local v0, "pageNumInOnePageGroup":I
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupNum:I

    .line 491
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getSpan()F

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupSpanX:F

    .line 492
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollX:F

    .line 493
    const/4 v1, 0x0

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranX:F

    .line 494
    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranX:F

    iget v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupSpanX:F

    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupNum:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMinTranX:F

    .line 495
    return-void
.end method

.method public canDownUpScroll()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCanDownUpScroll:Z

    return v0
.end method

.method public createEmptyPage(Z)Lcom/smartisanos/launcher/view/Page;
    .locals 6
    .param p1, "isReadOnly"    # Z

    .prologue
    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .local v0, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getPageCount()I

    move-result v1

    .line 605
    .local v1, "index":I
    new-instance v3, Lcom/smartisanos/launcher/data/PageInfo;

    invoke-direct {v3}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 606
    .local v3, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const-string v5, ""

    invoke-virtual {v4, v0, v1, v5, v3}, Lcom/smartisanos/launcher/view/PageView;->createPage(Ljava/util/ArrayList;ILjava/lang/String;Lcom/smartisanos/launcher/data/PageInfo;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    .line 607
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    iput-boolean p1, v2, Lcom/smartisanos/launcher/view/Page;->readOnlyPage:Z

    .line 608
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/DragLayer;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 609
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 610
    return-object v2
.end method

.method public endScroll(ZFFLcom/smartisanos/smengine/Animation$AnimationListener;)F
    .locals 5
    .param p1, "actionCancel"    # Z
    .param p2, "vx"    # F
    .param p3, "scrollTime"    # F
    .param p4, "al"    # Lcom/smartisanos/smengine/Animation$AnimationListener;

    .prologue
    .line 387
    iput-object p4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mEndScrollAnimationListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "left":Z
    const/4 v2, 0x0

    .line 390
    .local v2, "right":Z
    if-nez p1, :cond_0

    .line 391
    const/high16 v3, 0x44960000    # 1200.0f

    cmpl-float v3, p2, v3

    if-lez v3, :cond_2

    .line 392
    const/4 v2, 0x1

    .line 398
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 399
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v1, v3

    .line 405
    .local v1, "needMoveToPage":I
    :goto_1
    if-gez v1, :cond_5

    .line 406
    const/4 v1, 0x0

    .line 410
    :cond_1
    :goto_2
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    int-to-float v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->playEndScrollAnimation(FF)V

    .line 411
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v3

    sget-object v4, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v3, v4, v1}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 412
    int-to-float v3, v1

    return v3

    .line 393
    .end local v1    # "needMoveToPage":I
    :cond_2
    const/high16 v3, -0x3b6a0000    # -1200.0f

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    .line 394
    const/4 v0, 0x1

    goto :goto_0

    .line 400
    :cond_3
    if-eqz v2, :cond_4

    .line 401
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    float-to-int v1, v3

    .restart local v1    # "needMoveToPage":I
    goto :goto_1

    .line 403
    .end local v1    # "needMoveToPage":I
    :cond_4
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .restart local v1    # "needMoveToPage":I
    goto :goto_1

    .line 407
    :cond_5
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupNum:I

    add-int/lit8 v3, v3, -0x1

    if-le v1, v3, :cond_1

    .line 408
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupNum:I

    add-int/lit8 v1, v3, -0x1

    goto :goto_2
.end method

.method public endScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 534
    iget v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 535
    .local v1, "targetPageIndex":I
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 536
    .local v0, "targetPage":Lcom/smartisanos/launcher/view/Page;
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2, v0}, Lcom/smartisanos/launcher/view/PageView;->resetPagesTranslate(Lcom/smartisanos/launcher/view/Page;)V

    .line 537
    iput-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    .line 538
    iput-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    .line 539
    iput-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    .line 540
    const/high16 v2, -0x3b860000    # -1000.0f

    iput v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    .line 541
    const/16 v2, -0x3e8

    iput v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPageIndex:I

    .line 542
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v5}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 543
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/shadow/ShadowManager;->enableShadow(Z)V

    .line 544
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mEndScrollAnimationListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v2, :cond_0

    .line 545
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mEndScrollAnimationListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 546
    iput-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mEndScrollAnimationListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 548
    :cond_0
    return-void
.end method

.method public forceEndScroll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 425
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->killAnimation()V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mEndScrollAnimationListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 427
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    const/high16 v1, -0x3b860000    # -1000.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 428
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 429
    iput v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    .line 435
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    iget v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 436
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onAnimationStart()V

    .line 437
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onAnimationEnd()V

    .line 439
    :cond_0
    return-void

    .line 430
    :cond_1
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranXProcress:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 431
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranXProcress:I

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    goto :goto_0

    .line 433
    :cond_2
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    goto :goto_0
.end method

.method public getEndScrollAnimTime()F
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mEndScrollAnimTime:F

    return v0
.end method

.method protected getPage(I)Lcom/smartisanos/launcher/view/Page;
    .locals 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 323
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v1, :cond_4

    .line 324
    if-lt p1, v2, :cond_0

    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranXProcress:I

    add-int/lit8 v1, v1, 0x1

    if-le p1, v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-object v0

    .line 326
    :cond_1
    if-eq p1, v2, :cond_2

    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranXProcress:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_3

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    goto :goto_0

    .line 329
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    goto :goto_0

    .line 332
    :cond_4
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranXProcress:I

    if-gt p1, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    goto :goto_0
.end method

.method public getScrollIndex()F
    .locals 2

    .prologue
    .line 383
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranX:F

    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupSpanX:F

    div-float/2addr v0, v1

    return v0
.end method

.method public isScrollDownUp()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollLeftRight:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScrollLeftRight()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollLeftRight:Z

    return v0
.end method

.method public killAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->kill()V

    .line 119
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->kill()V

    .line 123
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    .line 125
    :cond_1
    return-void
.end method

.method public onAnimationChanged(IF)V
    .locals 0
    .param p1, "tweenType"    # I
    .param p2, "progress"    # F

    .prologue
    .line 552
    return-void
.end method

.method public onAnimationChanged([F)V
    .locals 2
    .param p1, "progress"    # [F

    .prologue
    const/4 v1, 0x0

    .line 555
    aget v0, p1, v1

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    .line 556
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->updateVisiblePage(Z)V

    .line 557
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->updateVisiblePageStatus()V

    .line 558
    return-void
.end method

.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onEndScroll()V

    .line 529
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->endScroll()V

    .line 530
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->updateScrollAnimationProgress(F)V

    .line 531
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    .prologue
    .line 525
    return-void
.end method

.method public abstract onEndScroll()V
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public abstract onStartScroll()V
.end method

.method public onThemeChanged()V
    .locals 0

    .prologue
    .line 626
    return-void
.end method

.method public playAnimation(FFLaurelienribon/tweenengine/TweenEquation;FLjava/lang/Runnable;)V
    .locals 8
    .param p1, "fromProgress"    # F
    .param p2, "toProgress"    # F
    .param p3, "animType"    # Laurelienribon/tweenengine/TweenEquation;
    .param p4, "time"    # F
    .param p5, "finish"    # Ljava/lang/Runnable;

    .prologue
    .line 136
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v0, 0x2

    if-ge v7, v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mFromProgress:[F

    aput p1, v0, v7

    .line 138
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mToProgressTL:[F

    aput p2, v0, v7

    .line 136
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mFromProgress:[F

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mToProgressTL:[F

    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->playAnimation([F[FLaurelienribon/tweenengine/TweenEquation;FZLjava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public playAnimation([F[FLaurelienribon/tweenengine/TweenEquation;FZLjava/lang/Runnable;)V
    .locals 4
    .param p1, "fromProgress"    # [F
    .param p2, "toProgress"    # [F
    .param p3, "animType"    # Laurelienribon/tweenengine/TweenEquation;
    .param p4, "time"    # F
    .param p5, "callBack"    # Z
    .param p6, "finish"    # Ljava/lang/Runnable;

    .prologue
    const/4 v3, 0x0

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mAnimProgress:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {p0, v3, p4}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    aget v2, p2, v3

    const/4 v3, 0x1

    aget v3, p2, v3

    invoke-virtual {v1, v2, v3}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    invoke-virtual {v1, p3}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->setCallbackTriggers(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    new-instance v2, Lcom/smartisanos/launcher/animations/PageScrollAnimation$1;

    invoke-direct {v2, p0, p5, p6}, Lcom/smartisanos/launcher/animations/PageScrollAnimation$1;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimation;ZLjava/lang/Runnable;)V

    .line 148
    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laurelienribon/tweenengine/Tween;

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 169
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/AnimationManager;->start(Laurelienribon/tweenengine/Tween;)V

    .line 170
    return-void
.end method

.method public playAnimationWithoutCallBack(FFLaurelienribon/tweenengine/TweenEquation;FLjava/lang/Runnable;)V
    .locals 8
    .param p1, "fromProgress"    # F
    .param p2, "toProgress"    # F
    .param p3, "animType"    # Laurelienribon/tweenengine/TweenEquation;
    .param p4, "time"    # F
    .param p5, "finish"    # Ljava/lang/Runnable;

    .prologue
    .line 128
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v0, 0x2

    if-ge v7, v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mFromProgress:[F

    aput p1, v0, v7

    .line 130
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mToProgressTL:[F

    aput p2, v0, v7

    .line 128
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mFromProgress:[F

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mToProgressTL:[F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->playAnimation([F[FLaurelienribon/tweenengine/TweenEquation;FZLjava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method public playEndScrollAnimation(FF)V
    .locals 6
    .param p1, "fromPage"    # F
    .param p2, "toPage"    # F

    .prologue
    .line 416
    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onAnimationStart()V

    .line 418
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onAnimationEnd()V

    .line 422
    :goto_0
    return-void

    .line 420
    :cond_0
    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mEndScrollAnimTime:F

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->playAnimation(FFLaurelienribon/tweenengine/TweenEquation;FLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public playTimeLineAnimation(FF[Laurelienribon/tweenengine/TweenEquation;FLjava/lang/Runnable;)V
    .locals 4
    .param p1, "fromProgress"    # F
    .param p2, "toProgress"    # F
    .param p3, "animType"    # [Laurelienribon/tweenengine/TweenEquation;
    .param p4, "time"    # F
    .param p5, "finish"    # Ljava/lang/Runnable;

    .prologue
    .line 173
    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Timeline;->setCallbackTriggers(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Timeline;

    iput-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mAnimProgressTL:[F

    aput p1, v2, v0

    .line 176
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v2, p4}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    invoke-virtual {v2, p2}, Laurelienribon/tweenengine/Tween;->target(F)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    .line 177
    .local v1, "tween":Laurelienribon/tweenengine/Tween;
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v2, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "tween":Laurelienribon/tweenengine/Tween;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    new-instance v3, Lcom/smartisanos/launcher/animations/PageScrollAnimation$2;

    invoke-direct {v3, p0, p5}, Lcom/smartisanos/launcher/animations/PageScrollAnimation$2;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimation;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    .line 197
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/AnimationManager;->startTimeLine(Laurelienribon/tweenengine/Timeline;)V

    .line 198
    return-void
.end method

.method public playTimeLineAnimation([F[F[Laurelienribon/tweenengine/TweenEquation;[FLjava/lang/Runnable;)V
    .locals 4
    .param p1, "fromProgress"    # [F
    .param p2, "toProgress"    # [F
    .param p3, "animType"    # [Laurelienribon/tweenengine/TweenEquation;
    .param p4, "time"    # [F
    .param p5, "finish"    # Ljava/lang/Runnable;

    .prologue
    .line 201
    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v2

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Timeline;->setCallbackTriggers(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/Timeline;

    iput-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mAnimProgressTL:[F

    aget v3, p1, v0

    aput v3, v2, v0

    .line 204
    add-int/lit8 v2, v0, 0x1

    aget v3, p4, v0

    invoke-static {p0, v2, v3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->target(F)Laurelienribon/tweenengine/Tween;

    move-result-object v2

    aget-object v3, p3, v0

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    .line 205
    .local v1, "tween":Laurelienribon/tweenengine/Tween;
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v2, v1}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "tween":Laurelienribon/tweenengine/Tween;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    new-instance v3, Lcom/smartisanos/launcher/animations/PageScrollAnimation$3;

    invoke-direct {v3, p0, p5}, Lcom/smartisanos/launcher/animations/PageScrollAnimation$3;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimation;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    .line 225
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/AnimationManager;->startTimeLine(Laurelienribon/tweenengine/Timeline;)V

    .line 226
    return-void
.end method

.method public pressedHomeKey()V
    .locals 9

    .prologue
    const/16 v3, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 442
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->startScroll()F

    .line 443
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 444
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 445
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 446
    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v4, 0x3eb851ec    # 0.36f

    new-instance v5, Lcom/smartisanos/launcher/animations/PageScrollAnimation$4;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation$4;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimation;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->playAnimation(FFLaurelienribon/tweenengine/TweenEquation;FLjava/lang/Runnable;)V

    .line 455
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v1, v8}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 486
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 458
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 459
    const/high16 v0, -0x3de00000    # -40.0f

    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupSpanX:F

    div-float v6, v0, v1

    .line 460
    .local v6, "toProgress":F
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mAnimProgress:[F

    aput v2, v0, v8

    .line 461
    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createSequence()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->setCallbackTriggers(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laurelienribon/tweenengine/Timeline;

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    .line 462
    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p0, v8, v0}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v6}, Laurelienribon/tweenengine/Tween;->target(F)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v7

    .line 463
    .local v7, "tween":Laurelienribon/tweenengine/Tween;
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, v7}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    .line 464
    const v0, 0x3e99999a    # 0.3f

    invoke-static {p0, v8, v0}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    invoke-virtual {v0, v2}, Laurelienribon/tweenengine/Tween;->target(F)Laurelienribon/tweenengine/Tween;

    move-result-object v0

    sget-object v1, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v7

    .line 465
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, v7}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    .line 466
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    new-instance v1, Lcom/smartisanos/launcher/animations/PageScrollAnimation$5;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation$5;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimation;)V

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    .line 483
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/AnimationManager;->startTimeLine(Laurelienribon/tweenengine/Timeline;)V

    .line 484
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v1, v8}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    goto :goto_0
.end method

.method public removeEmptyPage(Lcom/smartisanos/launcher/view/Page;)V
    .locals 2
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 614
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Page;->removePageTitle()V

    .line 615
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Page;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 616
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Page;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/MeshManager;->removeMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 617
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/Page;->clear(Z)V

    .line 618
    return-void
.end method

.method public setCanDownUpScroll()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCanDownUpScroll:Z

    .line 82
    return-void
.end method

.method public setEndScrollAnimTime(F)V
    .locals 0
    .param p1, "time"    # F

    .prologue
    .line 93
    iput p1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mEndScrollAnimTime:F

    .line 94
    return-void
.end method

.method public setScrollDownAndUp()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollLeftRight:Z

    .line 106
    return-void
.end method

.method public setScrollLeftAndRight()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollLeftRight:Z

    .line 102
    return-void
.end method

.method public setShowShadow(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mShowShadow:Z

    .line 90
    return-void
.end method

.method public startScroll()F
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 229
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->killAnimation()V

    .line 230
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    const/high16 v4, -0x3b860000    # -1000.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 231
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 232
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->calculateScrollStatus()V

    .line 233
    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 234
    .local v1, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v3, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iput v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageWidth:F

    .line 235
    iget v3, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    iput v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageHeight:F

    .line 236
    iget v3, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    sget v4, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageHeight:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float v2, v3, v4

    .line 237
    .local v2, "y":F
    neg-float v3, v2

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageY:F

    .line 238
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupNum:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranXProcress:I

    .line 239
    const/16 v3, -0x3e8

    iput v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPageIndex:I

    .line 240
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranX:F

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupSpanX:F

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    .line 241
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onStartScroll()V

    .line 242
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v6}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 243
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 244
    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->updateVisiblePage(Z)V

    .line 245
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->updateVisiblePageStatus()V

    .line 250
    .end local v1    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v2    # "y":F
    :goto_0
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    .line 251
    const/4 v0, 0x0

    .line 257
    .local v0, "index":I
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 258
    iget-boolean v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mShowShadow:Z

    if-eqz v3, :cond_3

    .line 259
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/shadow/ShadowManager;->enableShadow(Z)V

    .line 263
    :goto_2
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v3

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupNum:I

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/launcher/view/DotView;->updateDotView(II)V

    .line 264
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v3

    sget-object v4, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_APPEAR:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 265
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v3

    sget-object v4, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SINK:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 266
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mEndScrollAnimationListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 267
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    return v3

    .line 247
    .end local v0    # "index":I
    :cond_0
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    neg-float v3, v3

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupSpanX:F

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollX:F

    iput v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    goto :goto_0

    .line 252
    :cond_1
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranXProcress:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 253
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranXProcress:I

    .restart local v0    # "index":I
    goto :goto_1

    .line 255
    .end local v0    # "index":I
    :cond_2
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .restart local v0    # "index":I
    goto :goto_1

    .line 261
    :cond_3
    invoke-static {}, Lcom/smartisanos/smengine/shadow/ShadowManager;->getInstance()Lcom/smartisanos/smengine/shadow/ShadowManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/shadow/ShadowManager;->enableShadow(Z)V

    goto :goto_2
.end method

.method public updateScroll(F)V
    .locals 11
    .param p1, "deltaX"    # F

    .prologue
    const/16 v10, 0x3e6

    const v9, 0x4479c000    # 999.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/16 v7, 0x3e7

    .line 341
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->calculateScrollParameters()V

    .line 342
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollX:F

    add-float/2addr v5, p1

    iput v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollX:F

    .line 343
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupSpanX:F

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v5, v6

    float-to-int v4, v5

    .line 344
    .local v4, "spanX":I
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollX:F

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMinTranX:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    .line 345
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMinTranX:F

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollX:F

    sub-float/2addr v5, v6

    int-to-float v6, v4

    div-float/2addr v5, v6

    float-to-int v3, v5

    .line 346
    .local v3, "index":I
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMinTranX:F

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollX:F

    sub-float/2addr v5, v6

    int-to-float v6, v4

    div-float/2addr v5, v6

    int-to-float v6, v3

    sub-float v2, v5, v6

    .line 347
    .local v2, "distance":F
    const/16 v5, 0x3e8

    if-ge v3, v5, :cond_2

    .line 348
    if-nez v3, :cond_1

    .line 349
    .local v0, "a":F
    :goto_0
    sget-object v5, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->SCROLL_PARA_TABLE:[F

    aget v1, v5, v3

    .line 350
    .local v1, "b":F
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMinTranX:F

    sub-float v6, v8, v2

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    mul-float v6, v1, v2

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    .line 355
    .end local v1    # "b":F
    :goto_1
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMinTranX:F

    iget v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupSpanX:F

    sub-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 356
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMinTranX:F

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupSpanX:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    .line 376
    .end local v0    # "a":F
    .end local v2    # "distance":F
    .end local v3    # "index":I
    :cond_0
    :goto_2
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranX:F

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    iget v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupSpanX:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    .line 377
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->updateVisiblePage(Z)V

    .line 378
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->updateVisiblePageStatus()V

    .line 379
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v5

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/DotView;->translateMovedNode(F)V

    .line 380
    return-void

    .line 348
    .restart local v2    # "distance":F
    .restart local v3    # "index":I
    :cond_1
    sget-object v5, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->SCROLL_PARA_TABLE:[F

    add-int/lit8 v6, v3, -0x1

    aget v0, v5, v6

    goto :goto_0

    .line 352
    :cond_2
    sget-object v5, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->SCROLL_PARA_TABLE:[F

    aget v5, v5, v7

    sget-object v6, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->SCROLL_PARA_TABLE:[F

    aget v6, v6, v10

    sub-float v0, v5, v6

    .line 353
    .restart local v0    # "a":F
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMinTranX:F

    sget-object v6, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->SCROLL_PARA_TABLE:[F

    aget v6, v6, v7

    sub-float/2addr v5, v6

    int-to-float v6, v3

    add-float/2addr v6, v2

    sub-float/2addr v6, v9

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    goto :goto_1

    .line 359
    .end local v0    # "a":F
    .end local v2    # "distance":F
    .end local v3    # "index":I
    :cond_3
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollX:F

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranX:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 360
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollX:F

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranX:F

    sub-float/2addr v5, v6

    int-to-float v6, v4

    div-float/2addr v5, v6

    float-to-int v3, v5

    .line 361
    .restart local v3    # "index":I
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollX:F

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranX:F

    sub-float/2addr v5, v6

    int-to-float v6, v4

    div-float/2addr v5, v6

    int-to-float v6, v3

    sub-float v2, v5, v6

    .line 362
    .restart local v2    # "distance":F
    const/16 v5, 0x3e8

    if-ge v3, v5, :cond_5

    .line 363
    if-nez v3, :cond_4

    .line 364
    .restart local v0    # "a":F
    :goto_3
    sget-object v5, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->SCROLL_PARA_TABLE:[F

    aget v1, v5, v3

    .line 365
    .restart local v1    # "b":F
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranX:F

    sub-float v6, v8, v2

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    mul-float v6, v1, v2

    add-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    .line 370
    .end local v1    # "b":F
    :goto_4
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranX:F

    iget v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupSpanX:F

    add-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 371
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranX:F

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageGroupSpanX:F

    add-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    goto/16 :goto_2

    .line 363
    .end local v0    # "a":F
    :cond_4
    sget-object v5, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->SCROLL_PARA_TABLE:[F

    add-int/lit8 v6, v3, -0x1

    aget v0, v5, v6

    goto :goto_3

    .line 367
    :cond_5
    sget-object v5, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->SCROLL_PARA_TABLE:[F

    aget v5, v5, v7

    sget-object v6, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->SCROLL_PARA_TABLE:[F

    aget v6, v6, v10

    sub-float v0, v5, v6

    .line 368
    .restart local v0    # "a":F
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMaxTranX:F

    sget-object v6, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->SCROLL_PARA_TABLE:[F

    aget v6, v6, v7

    add-float/2addr v5, v6

    int-to-float v6, v3

    add-float/2addr v6, v2

    sub-float/2addr v6, v9

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    goto :goto_4

    .line 374
    .end local v0    # "a":F
    .end local v2    # "distance":F
    .end local v3    # "index":I
    :cond_6
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollX:F

    iput v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurTranX:F

    goto/16 :goto_2
.end method

.method public updateVisiblePage(Z)V
    .locals 8
    .param p1, "force"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 278
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/PageView;->updateScrollAnimationProgress(F)V

    .line 280
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPageIndex:I

    const/16 v4, -0x3e8

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPageIndex:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    if-nez p1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMustBeDisplayedPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 284
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mScrollProcress:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPageIndex:I

    .line 285
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPageIndex:I

    add-int/lit8 v2, v3, -0x1

    .line 286
    .local v2, "preIndex":I
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPageIndex:I

    .line 287
    .local v0, "currentIndex":I
    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPageIndex:I

    add-int/lit8 v1, v3, 0x1

    .line 289
    .local v1, "nextIndex":I
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v3, :cond_1

    .line 290
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 292
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v3, :cond_2

    .line 293
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 295
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v3, :cond_3

    .line 296
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 299
    :cond_3
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->getPage(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    .line 300
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v3, :cond_4

    .line 301
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 302
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageY:F

    invoke-virtual {v3, v5, v4, v5}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 303
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMustBeDisplayedPages:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_4
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->getPage(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    .line 307
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v3, :cond_5

    .line 308
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 309
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageY:F

    invoke-virtual {v3, v5, v4, v5}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 310
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMustBeDisplayedPages:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    :cond_5
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->getPage(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    .line 314
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v3, :cond_6

    .line 315
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 316
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageY:F

    invoke-virtual {v3, v5, v4, v5}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 317
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMustBeDisplayedPages:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_6
    iget-object v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mMustBeDisplayedPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/PageView;->loadContentForPages(Ljava/util/ArrayList;)V

    goto/16 :goto_0
.end method

.method public abstract updateVisiblePageStatus()V
.end method
