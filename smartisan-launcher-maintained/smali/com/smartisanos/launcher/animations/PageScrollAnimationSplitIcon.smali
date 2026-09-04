.class public Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;
.super Lcom/smartisanos/launcher/animations/PageScrollAnimation;
.source "PageScrollAnimationSplitIcon.java"


.field private final MAX_SPLIT_CELL_X:F

.field private final MAX_SPLIT_CROSS_X:F

.field private final MAX_SPLIT_PAGE_X:F

.field private mBackgroundColor:F

.field private mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

.field private mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

.field private mPointDownTime:J

.field private mPreChangeProgress:F

.field private mPreSplitX:F

.field private mStartScrollProgress:F

.field private mTouchRow:I


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    .line 32
    const/high16 v0, 0x43fa0000    # 500.0f

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->MAX_SPLIT_PAGE_X:F

    .line 33
    const/high16 v0, 0x42a00000    # 80.0f

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->MAX_SPLIT_CELL_X:F

    .line 34
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->MAX_SPLIT_CROSS_X:F

    .line 35
    const/4 v0, 0x2

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    .line 41
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundColor:F

    .line 45
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->getBackgroundColor()V

    .line 46
    return-void
.end method

.method private adustBackground()V
    .locals 17

    .prologue
    .line 442
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v3, v12

    .line 443
    .local v3, "bgWidth":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v1, v12

    .line 444
    .local v1, "bgHeight":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v5, v12

    .line 445
    .local v5, "bgZ":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v6, v12

    .line 446
    .local v6, "cameraZ":F
    add-float v12, v5, v6

    mul-float/2addr v12, v3

    div-float v4, v12, v6

    .line 447
    .local v4, "bgWidthNew":F
    add-float v12, v5, v6

    mul-float/2addr v12, v1

    div-float v2, v12, v6

    .line 449
    .local v2, "bgHeightNew":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v12}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    .line 450
    .local v9, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    sget v13, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    add-float v8, v12, v13

    .line 451
    .local v8, "pageY":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float v8, v12, v8

    .line 452
    add-float v12, v5, v6

    mul-float/2addr v12, v8

    div-float/2addr v12, v6

    sub-float v11, v8, v12

    .line 453
    .local v11, "y":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 454
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 455
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundColor:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundColor:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundColor:F

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 456
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-nez v12, :cond_0

    .line 457
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    .line 458
    .local v10, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v3

    div-float v4, v12, v6

    .line 459
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x429a0000    # 77.0f

    sub-float v11, v12, v13

    .line 460
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v11

    div-float/2addr v12, v6

    add-float v11, v8, v12

    .line 461
    const/high16 v12, 0x431b0000    # 155.0f

    const/high16 v13, 0x41200000    # 10.0f

    sub-float v13, v5, v13

    add-float/2addr v13, v6

    mul-float/2addr v12, v13

    div-float v2, v12, v6

    .line 462
    const-string v12, "TextureModularColorMaterial"

    invoke-static {v12}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 463
    .local v7, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    const-string v12, "background_shadow_top"

    neg-float v13, v5

    const/high16 v14, 0x41200000    # 10.0f

    add-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static {v12, v4, v2, v13, v14}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    .line 464
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const-string v13, "page_scroll_shadow_top.png"

    invoke-static {v13}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 467
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 468
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 469
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 470
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 471
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 472
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 473
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 475
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    neg-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x41800000    # 16.0f

    add-float v11, v12, v13

    .line 476
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v11

    div-float/2addr v12, v6

    add-float v11, v8, v12

    .line 477
    const/high16 v12, 0x42000000    # 32.0f

    const/high16 v13, 0x41200000    # 10.0f

    sub-float v13, v5, v13

    add-float/2addr v13, v6

    mul-float/2addr v12, v13

    div-float v2, v12, v6

    .line 478
    const-string v12, "TextureModularColorMaterial"

    invoke-static {v12}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 479
    const-string v12, "background_shadow_bottom"

    neg-float v13, v5

    const/high16 v14, 0x41200000    # 10.0f

    add-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static {v12, v4, v2, v13, v14}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    .line 480
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const-string v13, "page_scroll_shadow_bottom.png"

    invoke-static {v13}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 481
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 483
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 484
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 485
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 486
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 487
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 488
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 489
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 495
    .end local v7    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v10    # "rootNode":Lcom/smartisanos/smengine/SceneNode;
    :goto_0
    return-void

    .line 491
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 492
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    goto :goto_0
.end method

.method private caculateTouchRow()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x1

    .line 101
    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    .line 102
    .local v1, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v3, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_spacing_v:F

    iget v4, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    add-float v0, v3, v4

    .line 103
    .local v0, "cellOccupiedH":F
    sget v3, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/DragLayer;->getDownStartY()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPageY:F

    sub-float v2, v3, v4

    .line 104
    .local v2, "touchY":F
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v3, v5, :cond_2

    .line 105
    div-float v3, v0, v6

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 106
    iput v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    .line 123
    :goto_0
    return-void

    .line 107
    :cond_0
    neg-float v3, v0

    div-float/2addr v3, v6

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    .line 108
    iput v8, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    goto :goto_0

    .line 110
    :cond_1
    iput v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    goto :goto_0

    .line 113
    :cond_2
    cmpl-float v3, v2, v0

    if-lez v3, :cond_3

    .line 114
    iput v7, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    goto :goto_0

    .line 115
    :cond_3
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    .line 116
    iput v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    goto :goto_0

    .line 117
    :cond_4
    neg-float v3, v0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_5

    .line 118
    const/4 v3, 0x3

    iput v3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    goto :goto_0

    .line 120
    :cond_5
    iput v8, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    goto :goto_0
.end method

.method private getBackgroundColor()V
    .locals 2

    .prologue
    .line 433
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v0

    .line 434
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

    .line 435
    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundColor:F

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_1
    const v1, 0x3f333333    # 0.7f

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundColor:F

    goto :goto_0
.end method

.method private getIndex(II)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 410
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 411
    .local v0, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    return v1
.end method

.method private resetBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 498
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 499
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 500
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 501
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 503
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 505
    :cond_0
    return-void
.end method

.method private updateCellLocation16(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 11
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v6, 0x43c80000    # 400.0f

    const/high16 v7, 0x40400000    # 3.0f

    .line 294
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v3

    .line 295
    .local v3, "row":I
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v0

    .line 296
    .local v0, "col":I
    invoke-direct {p0, v3, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->getIndex(II)I

    move-result v2

    .line 297
    .local v2, "index":I
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v4, v5, v2

    .line 298
    .local v4, "v":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v1, 0x0

    .line 299
    .local v1, "detalX":F
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    if-nez v5, :cond_5

    .line 300
    if-nez v3, :cond_2

    .line 301
    const/4 v1, 0x0

    .line 340
    :cond_0
    :goto_0
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_14

    .line 341
    if-nez v0, :cond_11

    .line 342
    const/4 v5, 0x0

    add-float/2addr v1, v5

    .line 361
    :cond_1
    :goto_1
    iget v5, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float/2addr v5, v1

    iget v6, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {p1, v5, v6, v7}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 362
    return-void

    .line 302
    :cond_2
    if-ne v3, v8, :cond_3

    .line 303
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float v1, v5, v7

    goto :goto_0

    .line 304
    :cond_3
    if-ne v3, v9, :cond_4

    .line 305
    const/high16 v5, 0x44480000    # 800.0f

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float v1, v5, v7

    goto :goto_0

    .line 306
    :cond_4
    if-ne v3, v10, :cond_0

    .line 307
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float v1, v6, v5

    goto :goto_0

    .line 309
    :cond_5
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    if-ne v5, v8, :cond_9

    .line 310
    if-nez v3, :cond_6

    .line 311
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float v1, v5, v7

    goto :goto_0

    .line 312
    :cond_6
    if-ne v3, v8, :cond_7

    .line 313
    const/4 v1, 0x0

    goto :goto_0

    .line 314
    :cond_7
    if-ne v3, v9, :cond_8

    .line 315
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float v1, v5, v7

    goto :goto_0

    .line 316
    :cond_8
    if-ne v3, v10, :cond_0

    .line 317
    const/high16 v5, 0x44480000    # 800.0f

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float v1, v5, v7

    goto :goto_0

    .line 319
    :cond_9
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    if-ne v5, v9, :cond_d

    .line 320
    if-nez v3, :cond_a

    .line 321
    const/high16 v5, 0x44480000    # 800.0f

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float v1, v5, v7

    goto :goto_0

    .line 322
    :cond_a
    if-ne v3, v8, :cond_b

    .line 323
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float v1, v5, v7

    goto :goto_0

    .line 324
    :cond_b
    if-ne v3, v9, :cond_c

    .line 325
    const/4 v1, 0x0

    goto :goto_0

    .line 326
    :cond_c
    if-ne v3, v10, :cond_0

    .line 327
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float v1, v5, v7

    goto :goto_0

    .line 329
    :cond_d
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    if-ne v5, v10, :cond_0

    .line 330
    if-nez v3, :cond_e

    .line 331
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float v1, v6, v5

    goto :goto_0

    .line 332
    :cond_e
    if-ne v3, v8, :cond_f

    .line 333
    const/high16 v5, 0x44480000    # 800.0f

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float v1, v5, v7

    goto/16 :goto_0

    .line 334
    :cond_f
    if-ne v3, v9, :cond_10

    .line 335
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float v1, v5, v7

    goto/16 :goto_0

    .line 336
    :cond_10
    if-ne v3, v10, :cond_0

    .line 337
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 343
    :cond_11
    if-ne v0, v8, :cond_12

    .line 344
    const/high16 v5, 0x43200000    # 160.0f

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v1, v5

    goto/16 :goto_1

    .line 345
    :cond_12
    if-ne v0, v9, :cond_13

    .line 346
    const/high16 v5, 0x43a00000    # 320.0f

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v1, v5

    goto/16 :goto_1

    .line 347
    :cond_13
    if-ne v0, v10, :cond_1

    .line 348
    const/high16 v5, 0x43f00000    # 480.0f

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v1, v5

    goto/16 :goto_1

    .line 351
    :cond_14
    if-nez v0, :cond_15

    .line 352
    const/high16 v5, 0x43f00000    # 480.0f

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v1, v5

    goto/16 :goto_1

    .line 353
    :cond_15
    if-ne v0, v8, :cond_16

    .line 354
    const/high16 v5, 0x43a00000    # 320.0f

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v1, v5

    goto/16 :goto_1

    .line 355
    :cond_16
    if-ne v0, v9, :cond_17

    .line 356
    const/high16 v5, 0x43200000    # 160.0f

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v1, v5

    goto/16 :goto_1

    .line 357
    :cond_17
    if-ne v0, v10, :cond_1

    .line 358
    const/4 v5, 0x0

    add-float/2addr v1, v5

    goto/16 :goto_1
.end method

.method private updateCellLocation9(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 11
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    const/high16 v10, 0x42a00000    # 80.0f

    const/4 v9, 0x0

    const/high16 v6, 0x43480000    # 200.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 195
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v3

    .line 196
    .local v3, "row":I
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v0

    .line 197
    .local v0, "col":I
    invoke-direct {p0, v3, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->getIndex(II)I

    move-result v2

    .line 198
    .local v2, "index":I
    sget-object v5, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v4, v5, v2

    .line 199
    .local v4, "v":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v1, 0x0

    .line 200
    .local v1, "detalX":F
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    if-nez v5, :cond_4

    .line 201
    if-nez v3, :cond_2

    .line 202
    const/4 v1, 0x0

    .line 225
    :cond_0
    :goto_0
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    cmpl-float v5, v5, v9

    if-lez v5, :cond_c

    .line 226
    if-nez v0, :cond_a

    .line 227
    const/high16 v5, 0x43200000    # 160.0f

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    .line 242
    :cond_1
    :goto_1
    iget v5, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float/2addr v5, v1

    iget v6, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v7, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {p1, v5, v6, v7}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 243
    return-void

    .line 203
    :cond_2
    if-ne v3, v7, :cond_3

    .line 204
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float v1, v6, v5

    goto :goto_0

    .line 205
    :cond_3
    if-ne v3, v8, :cond_0

    .line 206
    const/high16 v5, 0x43c80000    # 400.0f

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float v1, v5, v6

    goto :goto_0

    .line 208
    :cond_4
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    if-ne v5, v7, :cond_7

    .line 209
    if-nez v3, :cond_5

    .line 210
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float v1, v6, v5

    goto :goto_0

    .line 211
    :cond_5
    if-ne v3, v7, :cond_6

    .line 212
    const/4 v1, 0x0

    goto :goto_0

    .line 213
    :cond_6
    if-ne v3, v8, :cond_0

    .line 214
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float v1, v6, v5

    goto :goto_0

    .line 216
    :cond_7
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mTouchRow:I

    if-ne v5, v8, :cond_0

    .line 217
    if-nez v3, :cond_8

    .line 218
    const/high16 v5, 0x43c80000    # 400.0f

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float v1, v5, v6

    goto :goto_0

    .line 219
    :cond_8
    if-ne v3, v7, :cond_9

    .line 220
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float v1, v6, v5

    goto :goto_0

    .line 221
    :cond_9
    if-ne v3, v8, :cond_0

    .line 222
    const/4 v1, 0x0

    goto :goto_0

    .line 228
    :cond_a
    if-ne v0, v7, :cond_b

    .line 229
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v10

    sub-float/2addr v1, v5

    goto :goto_1

    .line 230
    :cond_b
    if-ne v0, v8, :cond_1

    .line 231
    sub-float/2addr v1, v9

    goto :goto_1

    .line 234
    :cond_c
    if-nez v0, :cond_d

    .line 235
    sub-float/2addr v1, v9

    goto :goto_1

    .line 236
    :cond_d
    if-ne v0, v7, :cond_e

    .line 237
    iget v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v10

    sub-float/2addr v1, v5

    goto :goto_1

    .line 238
    :cond_e
    if-ne v0, v8, :cond_1

    .line 239
    const/high16 v5, 0x43200000    # 160.0f

    iget v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    goto :goto_1
.end method

.method private updatePageTranslate(Z)V
    .locals 2
    .param p1, "onTouch"    # Z

    .prologue
    .line 139
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->updatePageTranslate9(Z)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->updatePageTranslate16(Z)V

    goto :goto_0
.end method

.method private updatePageTranslate16(Z)V
    .locals 18
    .param p1, "onTouch"    # Z

    .prologue
    .line 246
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mScrollProcress:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mCurrentPageIndex:I

    int-to-float v15, v15

    sub-float v13, v14, v15

    .line 247
    .local v13, "progress":F
    sget v14, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const/high16 v16, 0x43fa0000    # 500.0f

    mul-float v15, v15, v16

    add-float v11, v14, v15

    .line 248
    .local v11, "pageSpan":F
    if-eqz p1, :cond_2

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 250
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPointDownTime:J

    sub-long v8, v6, v14

    .line 251
    .local v8, "dTime":J
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mScrollProcress:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mStartScrollProgress:F

    sub-float v3, v14, v15

    .line 252
    .local v3, "changeProgress":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreChangeProgress:F

    sub-float v5, v3, v14

    .line 253
    .local v5, "dProgress":F
    const/4 v14, 0x0

    cmpl-float v14, v5, v14

    if-eqz v14, :cond_2

    .line 254
    long-to-float v14, v8

    div-float/2addr v14, v5

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x459c4000    # 5000.0f

    div-float v12, v14, v15

    .line 255
    .local v12, "para":F
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v12, v14

    if-lez v14, :cond_0

    const/high16 v12, 0x3f800000    # 1.0f

    .line 256
    :cond_0
    mul-float v14, v12, v12

    mul-float/2addr v12, v14

    .line 257
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float v15, v5, v12

    add-float/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    .line 258
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_3

    .line 259
    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    .line 263
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iput v3, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreChangeProgress:F

    .line 266
    .end local v3    # "changeProgress":F
    .end local v5    # "dProgress":F
    .end local v6    # "currentTime":J
    .end local v8    # "dTime":J
    .end local v12    # "para":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v14, :cond_5

    .line 267
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v4

    .line 268
    .local v4, "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 269
    .local v2, "cell":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->updateCellLocation16(Lcom/smartisanos/launcher/view/Cell;)V

    goto :goto_1

    .line 260
    .end local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v4    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .restart local v3    # "changeProgress":F
    .restart local v5    # "dProgress":F
    .restart local v6    # "currentTime":J
    .restart local v8    # "dTime":J
    .restart local v12    # "para":F
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    const/high16 v15, -0x40800000    # -1.0f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    .line 261
    const/high16 v14, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    goto :goto_0

    .line 271
    .end local v3    # "changeProgress":F
    .end local v5    # "dProgress":F
    .end local v6    # "currentTime":J
    .end local v8    # "dTime":J
    .end local v12    # "para":F
    .restart local v4    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    const/high16 v15, -0x40800000    # -1.0f

    sub-float/2addr v15, v13

    mul-float/2addr v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPageY:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 272
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Page;->forceUpdateGeometricState()V

    .line 274
    .end local v4    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v14, :cond_7

    .line 275
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v4

    .line 276
    .restart local v4    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 277
    .restart local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->updateCellLocation16(Lcom/smartisanos/launcher/view/Cell;)V

    goto :goto_2

    .line 279
    .end local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    neg-float v15, v13

    mul-float/2addr v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPageY:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Page;->forceUpdateGeometricState()V

    .line 282
    .end local v4    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v14, :cond_9

    .line 283
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 284
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v10

    .line 285
    .local v10, "nextPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 286
    .restart local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->updateCellLocation16(Lcom/smartisanos/launcher/view/Cell;)V

    goto :goto_3

    .line 288
    .end local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float/2addr v15, v13

    mul-float/2addr v15, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPageY:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 289
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Page;->forceUpdateGeometricState()V

    .line 291
    .end local v10    # "nextPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_9
    return-void
.end method

.method private updatePageTranslate9(Z)V
    .locals 19
    .param p1, "onTouch"    # Z

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mScrollProcress:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mCurrentPageIndex:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v14, v15, v16

    .line 148
    .local v14, "progress":F
    sget v15, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    const/high16 v17, 0x43fa0000    # 500.0f

    mul-float v16, v16, v17

    add-float v11, v15, v16

    .line 149
    .local v11, "pageSpan":F
    if-eqz p1, :cond_2

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 151
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPointDownTime:J

    move-wide/from16 v16, v0

    sub-long v8, v6, v16

    .line 152
    .local v8, "dTime":J
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mScrollProcress:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mStartScrollProgress:F

    move/from16 v16, v0

    sub-float v3, v15, v16

    .line 153
    .local v3, "changeProgress":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreChangeProgress:F

    sub-float v5, v3, v15

    .line 154
    .local v5, "dProgress":F
    const/4 v15, 0x0

    cmpl-float v15, v5, v15

    if-eqz v15, :cond_2

    .line 155
    long-to-float v15, v8

    div-float/2addr v15, v5

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    const v16, 0x459c4000    # 5000.0f

    div-float v12, v15, v16

    .line 156
    .local v12, "para":F
    const/high16 v15, 0x3f800000    # 1.0f

    cmpl-float v15, v12, v15

    if-lez v15, :cond_0

    const/high16 v12, 0x3f800000    # 1.0f

    .line 157
    :cond_0
    mul-float v15, v12, v12

    mul-float/2addr v12, v15

    .line 158
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    mul-float v16, v5, v12

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    .line 159
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_3

    .line 160
    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    .line 164
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iput v3, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreChangeProgress:F

    .line 167
    .end local v3    # "changeProgress":F
    .end local v5    # "dProgress":F
    .end local v6    # "currentTime":J
    .end local v8    # "dTime":J
    .end local v12    # "para":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v15, :cond_5

    .line 168
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v13

    .line 169
    .local v13, "prePageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 170
    .local v2, "cell":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->updateCellLocation9(Lcom/smartisanos/launcher/view/Cell;)V

    goto :goto_1

    .line 161
    .end local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v13    # "prePageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .restart local v3    # "changeProgress":F
    .restart local v5    # "dProgress":F
    .restart local v6    # "currentTime":J
    .restart local v8    # "dTime":J
    .restart local v12    # "para":F
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    const/high16 v16, -0x40800000    # -1.0f

    cmpg-float v15, v15, v16

    if-gez v15, :cond_1

    .line 162
    const/high16 v15, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    goto :goto_0

    .line 172
    .end local v3    # "changeProgress":F
    .end local v5    # "dProgress":F
    .end local v6    # "currentTime":J
    .end local v8    # "dTime":J
    .end local v12    # "para":F
    .restart local v13    # "prePageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    const/high16 v16, -0x40800000    # -1.0f

    sub-float v16, v16, v14

    mul-float v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPageY:F

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 173
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Page;->forceUpdateGeometricState()V

    .line 176
    .end local v13    # "prePageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v15, :cond_7

    .line 177
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v4

    .line 178
    .local v4, "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 179
    .restart local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->updateCellLocation9(Lcom/smartisanos/launcher/view/Cell;)V

    goto :goto_2

    .line 181
    .end local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    neg-float v0, v14

    move/from16 v16, v0

    mul-float v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPageY:F

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 182
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Page;->forceUpdateGeometricState()V

    .line 184
    .end local v4    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v15, :cond_9

    .line 185
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v10

    .line 186
    .local v10, "nextPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 187
    .restart local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->updateCellLocation9(Lcom/smartisanos/launcher/view/Cell;)V

    goto :goto_3

    .line 189
    .end local v2    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v16, v14

    mul-float v16, v16, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPageY:F

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 190
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/Page;->forceUpdateGeometricState()V

    .line 192
    .end local v10    # "nextPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_9
    return-void
.end method


.method public onAnimationChanged([F)V
    .locals 2
    .param p1, "progress"    # [F

    .prologue
    const/4 v1, 0x0

    .line 127
    aget v0, p1, v1

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mScrollProcress:F

    .line 128
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    .line 129
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->updateVisiblePage(Z)V

    .line 130
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->updatePageTranslate(Z)V

    .line 131
    return-void
.end method

.method public onEndScroll()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 78
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 79
    .local v0, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 80
    .local v4, "page":Lcom/smartisanos/launcher/view/Page;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 81
    invoke-virtual {v4, v11}, Lcom/smartisanos/launcher/view/Page;->setSceneNodeForceRender(Z)V

    .line 82
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v2

    .line 83
    .local v2, "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 84
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, v11}, Lcom/smartisanos/launcher/view/Cell;->setSceneNodeForceRender(Z)V

    .line 85
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v8

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->getIndex(II)I

    move-result v3

    .line 86
    .local v3, "index":I
    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v5, v8, v3

    .line 87
    .local v5, "v":Lcom/smartisanos/smengine/math/Vector3f;
    iget v8, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v9, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    goto :goto_0

    .line 90
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "currentPageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v3    # "index":I
    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v5    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/view/DragLayer;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 91
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->resetBackground()V

    .line 92
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 416
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 418
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 419
    iput-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    .line 420
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 421
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 422
    iput-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    .line 424
    :cond_0
    return-void
.end method

.method public onStartScroll()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 58
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v4

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/view/MainView;->getScrollCamera(II)Lcom/smartisanos/smengine/Camera;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/DragLayer;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 59
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->adustBackground()V

    .line 60
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 61
    .local v0, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 62
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 63
    invoke-virtual {v2, v9}, Lcom/smartisanos/launcher/view/Page;->setSceneNodeForceRender(Z)V

    .line 64
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v3

    .line 65
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

    .line 66
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, v9}, Lcom/smartisanos/launcher/view/Cell;->setSceneNodeForceRender(Z)V

    goto :goto_0

    .line 69
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v3    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_1
    iput v8, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    .line 70
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->caculateTouchRow()V

    .line 71
    iget v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mScrollProcress:F

    iput v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mStartScrollProgress:F

    .line 72
    iput v8, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreChangeProgress:F

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPointDownTime:J

    .line 74
    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .prologue
    .line 428
    invoke-super {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onThemeChanged()V

    .line 429
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->getBackgroundColor()V

    .line 430
    return-void
.end method

.method public playEndScrollAnimation(FF)V
    .locals 7
    .param p1, "fromPage"    # F
    .param p2, "toPage"    # F

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 96
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->killAnimation()V

    .line 97
    new-array v1, v2, [F

    aput p1, v1, v3

    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    aput v0, v1, v5

    new-array v2, v2, [F

    aput p2, v2, v3

    const/4 v0, 0x0

    aput v0, v2, v5

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->playAnimation([F[FLaurelienribon/tweenengine/TweenEquation;FZLjava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method public pressedHomeKey()V
    .locals 10

    .prologue
    const/16 v4, 0x80

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v9, 0x0

    .line 366
    invoke-virtual {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->startScroll()F

    .line 367
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mScrollProcress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 368
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 369
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 370
    new-array v1, v2, [F

    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mScrollProcress:F

    aput v0, v1, v9

    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreSplitX:F

    aput v0, v1, v5

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v4, 0x3eb851ec    # 0.36f

    new-instance v6, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon$1;

    invoke-direct {v6, p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon$1;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->playAnimation([F[FLaurelienribon/tweenengine/TweenEquation;FZLjava/lang/Runnable;)V

    .line 381
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v1, v9}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 407
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 384
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 385
    const/high16 v0, -0x3de00000    # -40.0f

    iget v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPageGroupSpanX:F

    div-float v8, v0, v1

    .line 386
    .local v8, "toProgress":F
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v7, v3, v0

    .line 387
    .local v7, "splitX":F
    new-array v1, v2, [F

    fill-array-data v1, :array_1

    new-array v2, v2, [F

    aput v8, v2, v9

    aput v7, v2, v5

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    const v4, 0x3dcccccd    # 0.1f

    new-instance v6, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon$2;

    invoke-direct {v6, p0, v8, v7}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon$2;-><init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;FF)V

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->playAnimation([F[FLaurelienribon/tweenengine/TweenEquation;FZLjava/lang/Runnable;)V

    .line 405
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v1, v9}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    goto :goto_0

    .line 370
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 387
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public startScroll()F
    .locals 2

    .prologue
    .line 50
    iget v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mScrollProcress:F

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mStartScrollProgress:F

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPreChangeProgress:F

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->mPointDownTime:J

    .line 53
    invoke-super {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->startScroll()F

    move-result v0

    return v0
.end method

.method public updateVisiblePageStatus()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationSplitIcon;->updatePageTranslate(Z)V

    .line 136
    return-void
.end method
