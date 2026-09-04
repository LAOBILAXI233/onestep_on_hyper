.class public Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;
.super Lcom/smartisanos/launcher/animations/PageScrollAnimation;
.source "PageScrollAnimationRotatePage.java"


.field private static final SCALE:F = 1.0f

.field private static SHADOW_SAMPLE_COUNT:I


.field private mBackgroundColor:F

.field private mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

.field private mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

.field private mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

.field private mPageScrollShadowRL:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/16 v0, 0x78

    sput v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->SHADOW_SAMPLE_COUNT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;-><init>()V

    .line 31
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundColor:F

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->setShowShadow(Z)V

    .line 37
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->getBackgroundColor()V

    .line 38
    return-void
.end method

.method private adjustBackground()V
    .locals 17

    .prologue
    .line 366
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v3, v12

    .line 367
    .local v3, "bgWidth":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v1, v12

    .line 368
    .local v1, "bgHeight":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v5, v12

    .line 369
    .local v5, "bgZ":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v6, v12

    .line 370
    .local v6, "cameraZ":F
    add-float v12, v5, v6

    mul-float/2addr v12, v3

    div-float v4, v12, v6

    .line 371
    .local v4, "bgWidthNew":F
    add-float v12, v5, v6

    mul-float/2addr v12, v1

    div-float v2, v12, v6

    .line 373
    .local v2, "bgHeightNew":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v12}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    .line 374
    .local v9, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    sget v13, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    add-float v8, v12, v13

    .line 375
    .local v8, "pageY":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float v8, v12, v8

    .line 376
    add-float v12, v5, v6

    mul-float/2addr v12, v8

    div-float/2addr v12, v6

    sub-float v11, v8, v12

    .line 377
    .local v11, "y":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 378
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 379
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundColor:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundColor:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundColor:F

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 380
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-nez v12, :cond_0

    .line 381
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    .line 382
    .local v10, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v3

    div-float v4, v12, v6

    .line 383
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x429a0000    # 77.0f

    sub-float v11, v12, v13

    .line 384
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v11

    div-float/2addr v12, v6

    add-float v11, v8, v12

    .line 385
    const/high16 v12, 0x431b0000    # 155.0f

    const/high16 v13, 0x41200000    # 10.0f

    sub-float v13, v5, v13

    add-float/2addr v13, v6

    mul-float/2addr v12, v13

    div-float v2, v12, v6

    .line 386
    const-string v12, "TextureModularColorMaterial"

    invoke-static {v12}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 387
    .local v7, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    const-string v12, "background_shadow_top"

    neg-float v13, v5

    const/high16 v14, 0x41200000    # 10.0f

    add-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static {v12, v4, v2, v13, v14}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    .line 388
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const-string v13, "page_scroll_shadow_top.png"

    invoke-static {v13}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 391
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 392
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 393
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 394
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 397
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 399
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    neg-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x41800000    # 16.0f

    add-float v11, v12, v13

    .line 400
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v11

    div-float/2addr v12, v6

    add-float v11, v8, v12

    .line 401
    const/high16 v12, 0x42000000    # 32.0f

    const/high16 v13, 0x41200000    # 10.0f

    sub-float v13, v5, v13

    add-float/2addr v13, v6

    mul-float/2addr v12, v13

    div-float v2, v12, v6

    .line 402
    const-string v12, "TextureModularColorMaterial"

    invoke-static {v12}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 403
    const-string v12, "background_shadow_bottom"

    neg-float v13, v5

    const/high16 v14, 0x41200000    # 10.0f

    add-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static {v12, v4, v2, v13, v14}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    .line 404
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const-string v13, "page_scroll_shadow_bottom.png"

    invoke-static {v13}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 407
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 408
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 409
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 410
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 411
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 413
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 419
    .end local v7    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v10    # "rootNode":Lcom/smartisanos/smengine/SceneNode;
    :goto_0
    return-void

    .line 415
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 416
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    goto :goto_0
.end method

.method private createEmptyPage()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 86
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    if-nez v2, :cond_1

    .line 87
    invoke-virtual {p0, v6}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->createEmptyPage(Z)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    .line 88
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 89
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 90
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v1

    .line 91
    .local v1, "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 92
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0, v6}, Lcom/smartisanos/launcher/view/Cell;->setSceneNodeForceRender(Z)V

    goto :goto_0

    .line 94
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    check-cast v2, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v4, v4, v3}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->enableLightEffect(FFF)V

    .line 96
    .end local v1    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 97
    return-void
.end method

.method private createPageScrollShadowDU()Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 357
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v7

    .line 358
    .local v7, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    const-string v0, "PageScrollShadowDU_rotatePage"

    iget v1, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v2, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    sget v5, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->SHADOW_SAMPLE_COUNT:I

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageY:F

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->createDU(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    move-result-object v8

    .line 359
    .local v8, "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;
    const/4 v0, 0x0

    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1, v3, v3, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 360
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/view/DragLayer;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 361
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->updateGeometricState()V

    .line 362
    return-object v8
.end method

.method private createPageScrollShadowRL()Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 348
    sget v0, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v7

    .line 349
    .local v7, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    const-string v0, "PageScrollShadowRL_rotatePage"

    iget v1, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v2, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    sget v5, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->SHADOW_SAMPLE_COUNT:I

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageY:F

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->createRL(Ljava/lang/String;FFFFIF)Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    move-result-object v8

    .line 350
    .local v8, "pageScrollShadow":Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;
    const/4 v0, 0x0

    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1, v3, v3, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v8, v0, v1}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setDrawPositionOffset(ILcom/smartisanos/smengine/math/Vector3f;)V

    .line 351
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/view/DragLayer;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 352
    invoke-virtual {v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->updateGeometricState()V

    .line 353
    return-object v8
.end method

.method private getBackgroundColor()V
    .locals 2

    .prologue
    .line 339
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "themeId":Ljava/lang/String;
    const-string v1, "smartisan_theme_green"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "smartisan_theme_cyan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "smartisan_theme_light_wood"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "smartisan_theme_yellow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    :cond_0
    const v1, 0x3f266666    # 0.65f

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundColor:F

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_1
    const v1, 0x3f19999a    # 0.6f

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundColor:F

    goto :goto_0
.end method

.method private resetBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 422
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 423
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 424
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 425
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 427
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 429
    :cond_0
    return-void
.end method


.method public onEndScroll()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 101
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 102
    .local v0, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 103
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2, v10}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 104
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 105
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 107
    :cond_1
    invoke-virtual {v2, v8, v8, v8}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 108
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v5, v9, v8, v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v2, v9, v5}, Lcom/smartisanos/launcher/view/Page;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 112
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_2

    .line 113
    invoke-virtual {v2, v10}, Lcom/smartisanos/launcher/view/Page;->showOrHideGaussianBatchBackground(Z)V

    .line 117
    :cond_2
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v3

    .line 118
    .local v3, "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 119
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, v7}, Lcom/smartisanos/launcher/view/Cell;->setSceneNodeForceRender(Z)V

    .line 120
    invoke-virtual {v1, v7}, Lcom/smartisanos/launcher/view/Cell;->setAllRectToRenderTarget(Z)V

    goto :goto_0

    .line 123
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v3    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_3
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v4, :cond_4

    .line 124
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v4, v7}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 126
    :cond_4
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowRL:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    if-eqz v4, :cond_5

    .line 127
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowRL:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    invoke-virtual {v4, v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setVisibility(Z)V

    .line 129
    :cond_5
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    if-eqz v4, :cond_6

    .line 130
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    invoke-virtual {v4, v7}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setVisibility(Z)V

    .line 132
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/DragLayer;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 133
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->resetBackground()V

    .line 134
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->disableBatchPageLightEffect()V

    .line 135
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->removeEmptyPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 306
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowRL:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowRL:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 310
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowRL:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->clear(Z)V

    .line 311
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowRL:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 315
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->clear(Z)V

    .line 316
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_3

    .line 319
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 320
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 321
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    .line 322
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 323
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 324
    iput-object v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    .line 326
    :cond_3
    return-void
.end method

.method public onStartScroll()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 42
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v4

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/view/MainView;->getScrollCamera(II)Lcom/smartisanos/smengine/Camera;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/DragLayer;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 43
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->adjustBackground()V

    .line 44
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->createEmptyPage()V

    .line 45
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 46
    .local v0, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 47
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2, v8}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 48
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 49
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getBatchShadow()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 54
    :cond_1
    sget-boolean v5, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v5, :cond_2

    .line 55
    invoke-virtual {v2, v8}, Lcom/smartisanos/launcher/view/Page;->showOrHideGaussianBatchBackground(Z)V

    .line 59
    :cond_2
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v3

    .line 60
    .local v3, "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 61
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, v9}, Lcom/smartisanos/launcher/view/Cell;->setSceneNodeForceRender(Z)V

    .line 62
    invoke-virtual {v1, v9}, Lcom/smartisanos/launcher/view/Cell;->setAllRectToRenderTarget(Z)V

    goto :goto_0

    .line 65
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v3    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_3
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowRL:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    if-nez v4, :cond_4

    .line 66
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->createPageScrollShadowRL()Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowRL:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    .line 68
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->canDownUpScroll()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    if-nez v4, :cond_5

    .line 69
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->createPageScrollShadowDU()Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    .line 71
    :cond_5
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->isScrollLeftRight()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 72
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowRL:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    invoke-virtual {v4, v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setVisibility(Z)V

    .line 73
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    if-eqz v4, :cond_6

    .line 74
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    invoke-virtual {v4, v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setVisibility(Z)V

    .line 82
    :cond_6
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v10, v10, v5}, Lcom/smartisanos/launcher/view/MainView;->enableBatchPageLightEffect(FFF)V

    .line 83
    return-void

    .line 77
    :cond_7
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowRL:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    invoke-virtual {v4, v8}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setVisibility(Z)V

    .line 78
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    if-eqz v4, :cond_6

    .line 79
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    invoke-virtual {v4, v9}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setVisibility(Z)V

    goto :goto_1
.end method

.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onThemeChanged()V

    .line 331
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->removeEmptyPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mEmptyPage:Lcom/smartisanos/launcher/view/Page;

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->getBackgroundColor()V

    .line 336
    return-void
.end method

.method public pressedHomeKey()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->pressedHomeKey()V

    .line 140
    return-void
.end method

.method public updateVisiblePageStatus()V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->isScrollLeftRight()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->updateVisiblePageStatusRL()V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->updateVisiblePageStatusUD()V

    goto :goto_0
.end method

.method public updateVisiblePageStatusRL()V
    .locals 24

    .prologue
    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mScrollProcress:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPageIndex:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v12, v17, v18

    .line 218
    .local v12, "progress":F
    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v19

    const/high16 v20, 0x3f000000    # 0.5f

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    const/16 v18, 0x0

    mul-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v14, v17, v18

    .line 219
    .local v14, "scale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageWidth:F

    move/from16 v17, v0

    mul-float v10, v17, v14

    .line 220
    .local v10, "pageWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageHeight:F

    move/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v14, v18

    mul-float v5, v17, v18

    .line 221
    .local v5, "extY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageY:F

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v18, v5, v18

    sub-float v11, v17, v18

    .line 222
    .local v11, "pageY":F
    const/high16 v17, 0x40000000    # 2.0f

    div-float v13, v10, v17

    .line 223
    .local v13, "r":F
    const/16 v17, 0x0

    cmpl-float v17, v12, v17

    if-ltz v17, :cond_5

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 227
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 229
    const-wide v18, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    float-to-double v0, v12

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v2, v0

    .line 230
    .local v2, "angle":F
    mul-float v17, v12, v10

    sub-float v6, v13, v17

    .line 231
    .local v6, "moveX":F
    float-to-double v0, v6

    move-wide/from16 v18, v0

    float-to-double v0, v2

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    float-to-double v0, v13

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .line 232
    .local v15, "x":F
    float-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    float-to-double v0, v13

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v16, v0

    .line 233
    .local v16, "z":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v14, v1}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v15, v11, v1}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    new-instance v18, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/Page;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 238
    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 239
    .local v8, "p":D
    float-to-double v0, v2

    move-wide/from16 v18, v0

    rem-double v18, v18, v8

    move-wide/from16 v0, v18

    double-to-float v2, v0

    .line 240
    const/16 v17, 0x0

    cmpl-float v17, v2, v17

    if-ltz v17, :cond_4

    .line 241
    sget v17, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v2

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v18, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v3, v0

    .line 245
    .local v3, "animIndex":I
    :goto_0
    sget v17, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v17

    if-lt v3, v0, :cond_1

    const/4 v3, 0x0

    .line 246
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowRL:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setDrawAnimIndex(II)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 249
    .end local v2    # "angle":F
    .end local v3    # "animIndex":I
    .end local v6    # "moveX":F
    .end local v8    # "p":D
    .end local v15    # "x":F
    .end local v16    # "z":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 251
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, v12

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v2, v0

    .line 252
    .restart local v2    # "angle":F
    mul-float v17, v12, v10

    sub-float v6, v13, v17

    .line 253
    .restart local v6    # "moveX":F
    float-to-double v0, v6

    move-wide/from16 v18, v0

    float-to-double v0, v2

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    float-to-double v0, v13

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .line 254
    .restart local v15    # "x":F
    float-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    float-to-double v0, v13

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v16, v0

    .line 255
    .restart local v16    # "z":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v14, v1}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v15, v11, v1}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    new-instance v18, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/Page;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 297
    .end local v2    # "angle":F
    .end local v6    # "moveX":F
    .end local v15    # "x":F
    .end local v16    # "z":F
    :cond_3
    :goto_1
    const/high16 v17, 0x40000000    # 2.0f

    mul-float v17, v17, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 298
    .local v7, "newProgress":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mBackgroundColor:F

    move/from16 v17, v0

    const v18, 0x3ecccccd    # 0.4f

    mul-float v18, v18, v7

    sub-float v4, v17, v18

    .line 299
    .local v4, "bgAlpha":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v17

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 300
    return-void

    .line 243
    .end local v4    # "bgAlpha":F
    .end local v7    # "newProgress":F
    .restart local v2    # "angle":F
    .restart local v6    # "moveX":F
    .restart local v8    # "p":D
    .restart local v15    # "x":F
    .restart local v16    # "z":F
    :cond_4
    float-to-double v0, v2

    move-wide/from16 v18, v0

    add-double v18, v18, v8

    sget v17, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    div-double v18, v18, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v3, v0

    .restart local v3    # "animIndex":I
    goto/16 :goto_0

    .line 261
    .end local v2    # "angle":F
    .end local v3    # "animIndex":I
    .end local v6    # "moveX":F
    .end local v8    # "p":D
    .end local v15    # "x":F
    .end local v16    # "z":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 263
    const/high16 v17, -0x40800000    # -1.0f

    sub-float v17, v17, v12

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v2, v0

    .line 264
    .restart local v2    # "angle":F
    neg-float v0, v13

    move/from16 v17, v0

    mul-float v18, v12, v10

    sub-float v6, v17, v18

    .line 265
    .restart local v6    # "moveX":F
    float-to-double v0, v6

    move-wide/from16 v18, v0

    float-to-double v0, v2

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    float-to-double v0, v13

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .line 266
    .restart local v15    # "x":F
    float-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    float-to-double v0, v13

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v16, v0

    .line 267
    .restart local v16    # "z":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v14, v1}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v15, v11, v1}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    new-instance v18, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/Page;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 272
    .end local v2    # "angle":F
    .end local v6    # "moveX":F
    .end local v15    # "x":F
    .end local v16    # "z":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 274
    const-wide v18, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    float-to-double v0, v12

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v2, v0

    .line 275
    .restart local v2    # "angle":F
    neg-float v0, v13

    move/from16 v17, v0

    mul-float v18, v12, v10

    sub-float v6, v17, v18

    .line 276
    .restart local v6    # "moveX":F
    float-to-double v0, v6

    move-wide/from16 v18, v0

    float-to-double v0, v2

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    float-to-double v0, v13

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .line 277
    .restart local v15    # "x":F
    float-to-double v0, v2

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    float-to-double v0, v13

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v16, v0

    .line 278
    .restart local v16    # "z":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    const/high16 v18, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v14, v1}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v15, v11, v1}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    new-instance v18, Lcom/smartisanos/smengine/math/Vector3f;

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    invoke-direct/range {v18 .. v21}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/launcher/view/Page;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 282
    const-wide v8, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 283
    .restart local v8    # "p":D
    float-to-double v0, v2

    move-wide/from16 v18, v0

    rem-double v18, v18, v8

    move-wide/from16 v0, v18

    double-to-float v2, v0

    .line 284
    const/16 v17, 0x0

    cmpl-float v17, v2, v17

    if-ltz v17, :cond_9

    .line 285
    sget v17, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v2

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v18, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v3, v0

    .line 289
    .restart local v3    # "animIndex":I
    :goto_2
    sget v17, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v17

    if-lt v3, v0, :cond_7

    const/4 v3, 0x0

    .line 290
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowRL:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setDrawAnimIndex(II)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 293
    .end local v2    # "angle":F
    .end local v3    # "animIndex":I
    .end local v6    # "moveX":F
    .end local v8    # "p":D
    .end local v15    # "x":F
    .end local v16    # "z":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    goto/16 :goto_1

    .line 287
    .restart local v2    # "angle":F
    .restart local v6    # "moveX":F
    .restart local v8    # "p":D
    .restart local v15    # "x":F
    .restart local v16    # "z":F
    :cond_9
    float-to-double v0, v2

    move-wide/from16 v18, v0

    add-double v18, v18, v8

    sget v17, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->SHADOW_SAMPLE_COUNT:I

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    div-double v18, v18, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v3, v0

    .restart local v3    # "animIndex":I
    goto :goto_2
.end method

.method public updateVisiblePageStatusUD()V
    .locals 20

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mScrollProcress:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPageIndex:I

    int-to-float v14, v14

    sub-float v9, v13, v14

    .line 153
    .local v9, "progress":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageHeight:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float v10, v13, v14

    .line 154
    .local v10, "r":F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageHeight:F

    .line 155
    .local v8, "pageHeight":F
    sget v13, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v4, v13

    .line 156
    .local v4, "distance":F
    const/4 v13, 0x0

    cmpl-float v13, v9, v13

    if-ltz v13, :cond_4

    .line 157
    const-wide v14, 0x400921fb54442d18L    # Math.PI

    float-to-double v0, v9

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    double-to-float v2, v14

    .line 158
    .local v2, "angle":F
    neg-float v13, v10

    mul-float v14, v9, v8

    add-float v5, v13, v14

    .line 159
    .local v5, "moveY":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    if-eq v13, v14, :cond_0

    .line 160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 162
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v13, :cond_2

    .line 163
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 164
    float-to-double v14, v5

    float-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    float-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-float v11, v14

    .line 165
    .local v11, "y":F
    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    neg-double v14, v14

    float-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v12, v14

    .line 166
    .local v12, "z":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageY:F

    add-float/2addr v15, v11

    invoke-virtual {v13, v14, v15, v12}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    neg-float v14, v2

    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/view/Page;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 169
    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 170
    .local v6, "p":D
    float-to-double v14, v2

    rem-double/2addr v14, v6

    double-to-float v2, v14

    .line 171
    float-to-double v14, v2

    sub-double v14, v6, v14

    sget v13, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->SHADOW_SAMPLE_COUNT:I

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    div-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v3, v14

    .line 173
    .local v3, "animIndex":I
    sget v13, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->SHADOW_SAMPLE_COUNT:I

    if-lt v3, v13, :cond_1

    const/4 v3, 0x0

    .line 174
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v3}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setDrawAnimIndex(II)V

    .line 175
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 177
    .end local v3    # "animIndex":I
    .end local v6    # "p":D
    .end local v11    # "y":F
    .end local v12    # "z":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v13, :cond_3

    .line 178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 179
    float-to-double v14, v5

    float-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    float-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    double-to-float v11, v14

    .line 180
    .restart local v11    # "y":F
    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    neg-double v14, v14

    float-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v12, v14

    .line 181
    .restart local v12    # "z":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageY:F

    add-float/2addr v15, v11

    invoke-virtual {v13, v14, v15, v12}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 182
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    const-wide v14, 0x3ff921fb54442d18L    # 1.5707963267948966

    float-to-double v0, v2

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    double-to-float v14, v14

    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/view/Page;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 214
    .end local v11    # "y":F
    .end local v12    # "z":F
    :cond_3
    :goto_0
    return-void

    .line 186
    .end local v2    # "angle":F
    .end local v5    # "moveY":F
    :cond_4
    const-wide v14, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    float-to-double v0, v9

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v14, v14, v16

    double-to-float v2, v14

    .line 187
    .restart local v2    # "angle":F
    mul-float v13, v9, v8

    add-float v5, v10, v13

    .line 188
    .restart local v5    # "moveY":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v13, :cond_5

    .line 189
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 190
    float-to-double v14, v5

    float-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    float-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-float v11, v14

    .line 191
    .restart local v11    # "y":F
    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    neg-double v14, v14

    float-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v12, v14

    .line 192
    .restart local v12    # "z":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageY:F

    add-float/2addr v15, v11

    invoke-virtual {v13, v14, v15, v12}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 193
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    float-to-double v14, v2

    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v14, v14, v16

    double-to-float v14, v14

    new-instance v15, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/view/Page;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 196
    .end local v11    # "y":F
    .end local v12    # "z":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v13, :cond_7

    .line 197
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 198
    float-to-double v14, v5

    float-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    float-to-double v0, v10

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    double-to-float v11, v14

    .line 199
    .restart local v11    # "y":F
    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    neg-double v14, v14

    float-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-float v12, v14

    .line 200
    .restart local v12    # "z":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageY:F

    add-float/2addr v15, v11

    invoke-virtual {v13, v14, v15, v12}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    new-instance v14, Lcom/smartisanos/smengine/math/Vector3f;

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v13, v2, v14}, Lcom/smartisanos/launcher/view/Page;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 204
    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 205
    .restart local v6    # "p":D
    float-to-double v14, v2

    rem-double/2addr v14, v6

    double-to-float v2, v14

    .line 206
    sget v13, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->SHADOW_SAMPLE_COUNT:I

    int-to-float v13, v13

    mul-float/2addr v13, v2

    float-to-double v14, v13

    div-double/2addr v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v3, v14

    .line 207
    .restart local v3    # "animIndex":I
    sget v13, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->SHADOW_SAMPLE_COUNT:I

    if-lt v3, v13, :cond_6

    const/4 v3, 0x0

    .line 208
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPageScrollShadowDU:Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v3}, Lcom/smartisanos/launcher/animations/PageScrollShadowRotatePage;->setDrawAnimIndex(II)V

    .line 210
    .end local v3    # "animIndex":I
    .end local v6    # "p":D
    .end local v11    # "y":F
    .end local v12    # "z":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    if-eq v13, v14, :cond_3

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationRotatePage;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    goto/16 :goto_0
.end method
