.class public Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;
.super Lcom/smartisanos/launcher/animations/PageScrollAnimation;
.source "PageScrollAnimationSwitchCard.java"


.field private mDarkBackground:Lcom/smartisanos/smengine/RectNode;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;-><init>()V

    .line 23
    return-void
.end method

.method private createScreenCoverBackgroundRect()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 107
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    if-nez v6, :cond_0

    .line 108
    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 109
    .local v1, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v5, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 110
    .local v5, "width":F
    iget v0, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 111
    .local v0, "height":F
    const-string v6, "HELP_SCROLL_ANIM_ZOOMIN"

    invoke-static {v6, v5, v0, v8, v9}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v6

    iput-object v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    .line 112
    const-string v6, "GlobalColorMaterial"

    invoke-static {v6}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v2

    .line 113
    .local v2, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v2}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 114
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v4

    .line 115
    .local v4, "rs":Lcom/smartisanos/smengine/RenderState;
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v8, v8, v8, v8}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 116
    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 117
    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 118
    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 119
    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 120
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 121
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    const/16 v7, 0x32

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 122
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    iget v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPageY:F

    invoke-virtual {v6, v8, v7, v8}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 123
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .line 124
    .local v3, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 125
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 126
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 128
    .end local v0    # "height":F
    .end local v1    # "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v2    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v3    # "rootNode":Lcom/smartisanos/smengine/SceneNode;
    .end local v4    # "rs":Lcom/smartisanos/smengine/RenderState;
    .end local v5    # "width":F
    :cond_0
    return-void
.end method


.method public onEndScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 37
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 38
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

    .line 39
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 40
    invoke-virtual {v1, v4, v4, v4}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 41
    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(I)V

    goto :goto_0

    .line 43
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 46
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 47
    return-void
.end method

.method public onRelease()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 134
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    .line 137
    :cond_0
    return-void
.end method

.method public onStartScroll()V
    .locals 5

    .prologue
    const v4, 0x3f666666    # 0.9f

    .line 27
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 28
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

    .line 29
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    goto :goto_0

    .line 31
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->createScreenCoverBackgroundRect()V

    .line 32
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 33
    return-void
.end method

.method public updateVisiblePageStatus()V
    .locals 12

    .prologue
    const v11, 0x3f1eb852    # 0.62f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 51
    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mScrollProcress:F

    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mCurrentPageIndex:I

    int-to-float v5, v5

    sub-float v2, v4, v5

    .line 52
    .local v2, "progress":F
    sget v4, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v1, v4

    .line 54
    .local v1, "pageSpan":F
    cmpl-float v4, v2, v7

    if-lez v4, :cond_4

    .line 55
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v4, :cond_0

    .line 56
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v9}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 58
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v4, :cond_1

    .line 59
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 60
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    const/16 v5, -0x18

    invoke-virtual {v4, v9, v5}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(II)V

    .line 61
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPageY:F

    invoke-virtual {v4, v7, v5, v7}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 62
    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v2

    sub-float v3, v8, v4

    .line 63
    .local v3, "scale":F
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v3, v3, v8}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 64
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 66
    .end local v3    # "scale":F
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v4, :cond_2

    .line 67
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 68
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v9, v9}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(II)V

    .line 69
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    sub-float v5, v8, v2

    mul-float/2addr v5, v1

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPageY:F

    invoke-virtual {v4, v5, v6, v7}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 70
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v8, v8, v8}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 71
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 73
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    if-eqz v4, :cond_3

    .line 74
    sub-float v4, v2, v8

    sub-float v5, v2, v8

    mul-float/2addr v4, v5

    sub-float v5, v2, v8

    mul-float/2addr v4, v5

    add-float/2addr v4, v8

    mul-float v0, v4, v11

    .line 75
    .local v0, "alpha":F
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 76
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v7, v7, v7, v0}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 104
    .end local v0    # "alpha":F
    :cond_3
    :goto_0
    return-void

    .line 79
    :cond_4
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v4, :cond_5

    .line 80
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 81
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    const/16 v5, -0x18

    invoke-virtual {v4, v9, v5}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(II)V

    .line 82
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPageY:F

    invoke-virtual {v4, v7, v5, v7}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 83
    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v2

    sub-float v3, v4, v5

    .line 84
    .restart local v3    # "scale":F
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v3, v3, v8}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 85
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 87
    .end local v3    # "scale":F
    :cond_5
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v4, :cond_6

    .line 88
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 89
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v9, v9}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(II)V

    .line 90
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    neg-float v5, v2

    mul-float/2addr v5, v1

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mPageY:F

    invoke-virtual {v4, v5, v6, v7}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 91
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v8, v8, v8}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 92
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 94
    :cond_6
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v4, :cond_7

    .line 95
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v9}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 97
    :cond_7
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    if-eqz v4, :cond_3

    cmpl-float v4, v2, v7

    if-eqz v4, :cond_3

    .line 98
    mul-float v4, v2, v2

    mul-float/2addr v4, v2

    mul-float/2addr v4, v11

    add-float v0, v11, v4

    .line 99
    .restart local v0    # "alpha":F
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v10}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 100
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSwitchCard;->mDarkBackground:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v4, v7, v7, v7, v0}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_0
.end method
