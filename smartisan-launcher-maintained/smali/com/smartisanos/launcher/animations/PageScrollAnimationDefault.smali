.class public Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;
.super Lcom/smartisanos/launcher/animations/PageScrollAnimation;
.source "PageScrollAnimationDefault.java"


.field private mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;-><init>()V

    .line 20
    return-void
.end method

.method private sinkPage()V
    .locals 12

    .prologue
    const v5, 0x3f7d70a4    # 0.99f

    .line 77
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 80
    :cond_0
    new-instance v1, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 81
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v8

    .line 82
    .local v8, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Page;

    .line 83
    .local v9, "p":Lcom/smartisanos/launcher/view/Page;
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 84
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 85
    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 86
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 87
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Page;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    .line 88
    .local v10, "ss":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v1, 0x1

    iget v2, v10, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v10, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v10, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/high16 v7, 0x3f800000    # 1.0f

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 89
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_0

    .line 91
    .end local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v9    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v10    # "ss":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 92
    return-void
.end method

.method private unSinkPage(Ljava/lang/Runnable;)V
    .locals 12
    .param p1, "finish"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 95
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 98
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 99
    new-instance v2, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 100
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v8

    .line 101
    .local v8, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Page;

    .line 102
    .local v9, "p":Lcom/smartisanos/launcher/view/Page;
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 103
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 104
    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 105
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 106
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Page;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    .line 107
    .local v10, "ss":Lcom/smartisanos/smengine/math/Vector3f;
    iget v2, v10, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v10, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v10, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 108
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_0

    .line 110
    .end local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v9    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v10    # "ss":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v2, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault$1;

    invoke-direct {v2, p0, p1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault$1;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 120
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 121
    return-void
.end method


.method public onEndScroll()V
    .locals 4

    .prologue
    .line 39
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 40
    .local v0, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 41
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    goto :goto_0

    .line 43
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->unSinkPage(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method

.method public onStartScroll()V
    .locals 4

    .prologue
    .line 31
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 32
    .local v0, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 33
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    goto :goto_0

    .line 35
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    return-void
.end method

.method public startScroll()F
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->startScroll()F

    move-result v0

    .line 25
    .local v0, "result":F
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->sinkPage()V

    .line 26
    return v0
.end method

.method public updateVisiblePageStatus()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    iget v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mScrollProcress:F

    iget v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mCurrentPageIndex:I

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 49
    .local v1, "progress":F
    sget v2, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v0, v2

    .line 51
    .local v0, "pageSpan":F
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v2, :cond_0

    .line 52
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_3

    .line 53
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2, v7}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 60
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 62
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    neg-float v3, v1

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageY:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 63
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v2, :cond_2

    .line 66
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_4

    .line 67
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 68
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageY:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 69
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 74
    :cond_2
    :goto_1
    return-void

    .line 55
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 56
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    const/high16 v3, -0x40800000    # -1.0f

    sub-float/2addr v3, v1

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPageY:F

    invoke-virtual {v2, v3, v4, v5}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 57
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    goto :goto_0

    .line 71
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2, v7}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    goto :goto_1
.end method
