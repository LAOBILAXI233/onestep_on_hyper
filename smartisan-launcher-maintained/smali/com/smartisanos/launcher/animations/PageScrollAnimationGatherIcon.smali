.class public Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;
.super Lcom/smartisanos/launcher/animations/PageScrollAnimation;
.source "PageScrollAnimationGatherIcon.java"


.field private mBackgroundColor:F

.field private mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

.field private mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;-><init>()V

    .line 28
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundColor:F

    .line 32
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->getBackgroundColor()V

    .line 33
    return-void
.end method

.method private adustBackground()V
    .locals 17

    .prologue
    .line 305
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v3, v12

    .line 306
    .local v3, "bgWidth":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    int-to-float v1, v12

    .line 307
    .local v1, "bgHeight":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->bgZ:I

    int-to-float v5, v12

    .line 308
    .local v5, "bgZ":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->mainCameraZ:I

    int-to-float v6, v12

    .line 309
    .local v6, "cameraZ":F
    add-float v12, v5, v6

    mul-float/2addr v12, v3

    div-float v4, v12, v6

    .line 310
    .local v4, "bgWidthNew":F
    add-float v12, v5, v6

    mul-float/2addr v12, v1

    div-float v2, v12, v6

    .line 312
    .local v2, "bgHeightNew":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v12}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v9

    .line 313
    .local v9, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    sget v13, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v14, 0x3f000000    # 0.5f

    mul-float/2addr v13, v14

    add-float v8, v12, v13

    .line 314
    .local v8, "pageY":F
    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float v8, v12, v8

    .line 315
    add-float v12, v5, v6

    mul-float/2addr v12, v8

    div-float/2addr v12, v6

    sub-float v11, v8, v12

    .line 316
    .local v11, "y":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 317
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 318
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundColor:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundColor:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundColor:F

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 319
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-nez v12, :cond_0

    .line 320
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    .line 321
    .local v10, "rootNode":Lcom/smartisanos/smengine/SceneNode;
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v3

    div-float v4, v12, v6

    .line 322
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x429a0000    # 77.0f

    sub-float v11, v12, v13

    .line 323
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v11

    div-float/2addr v12, v6

    add-float v11, v8, v12

    .line 324
    const/high16 v12, 0x431b0000    # 155.0f

    const/high16 v13, 0x41200000    # 10.0f

    sub-float v13, v5, v13

    add-float/2addr v13, v6

    mul-float/2addr v12, v13

    div-float v2, v12, v6

    .line 325
    const-string v12, "TextureModularColorMaterial"

    invoke-static {v12}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 326
    .local v7, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    const-string v12, "background_shadow_top"

    neg-float v13, v5

    const/high16 v14, 0x41200000    # 10.0f

    add-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static {v12, v4, v2, v13, v14}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    .line 327
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const-string v13, "page_scroll_shadow_top.png"

    invoke-static {v13}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 330
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 331
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 332
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 333
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 334
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 335
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 336
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 338
    iget v12, v9, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    neg-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    const/high16 v13, 0x41800000    # 16.0f

    add-float v11, v12, v13

    .line 339
    const/high16 v12, 0x41200000    # 10.0f

    sub-float v12, v5, v12

    add-float/2addr v12, v6

    mul-float/2addr v12, v11

    div-float/2addr v12, v6

    add-float v11, v8, v12

    .line 340
    const/high16 v12, 0x42000000    # 32.0f

    const/high16 v13, 0x41200000    # 10.0f

    sub-float v13, v5, v13

    add-float/2addr v13, v6

    mul-float/2addr v12, v13

    div-float v2, v12, v6

    .line 341
    const-string v12, "TextureModularColorMaterial"

    invoke-static {v12}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v7

    .line 342
    const-string v12, "background_shadow_bottom"

    neg-float v13, v5

    const/high16 v14, 0x41200000    # 10.0f

    add-float/2addr v13, v14

    const/4 v14, 0x1

    invoke-static {v12, v4, v2, v13, v14}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    .line 343
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const-string v13, "page_scroll_shadow_bottom.png"

    invoke-static {v13}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v7}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v12 .. v16}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 346
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12, v11}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 347
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v10, v12}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 351
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 352
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v12}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 358
    .end local v7    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v10    # "rootNode":Lcom/smartisanos/smengine/SceneNode;
    :goto_0
    return-void

    .line 354
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 355
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    goto :goto_0
.end method

.method private getBackgroundColor()V
    .locals 2

    .prologue
    .line 296
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getCurrentTheme(Landroid/content/Context;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v0

    .line 297
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

    .line 298
    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundColor:F

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_1
    const v1, 0x3f333333    # 0.7f

    iput v1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundColor:F

    goto :goto_0
.end method

.method private getIndex(II)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 273
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 274
    .local v0, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v1, p1

    add-int/2addr v1, p2

    return v1
.end method

.method private getPosition(Lcom/smartisanos/smengine/math/Vector4f;IF)V
    .locals 16
    .param p1, "result"    # Lcom/smartisanos/smengine/math/Vector4f;
    .param p2, "index"    # I
    .param p3, "progress"    # F

    .prologue
    .line 147
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v9

    .line 148
    .local v9, "tmpVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v8, v9, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 149
    .local v8, "src":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v7, v9, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    .line 150
    .local v7, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    sget v10, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v10}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    .line 151
    .local v6, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v4, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    .line 152
    .local v4, "cellW":F
    iget v3, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    .line 153
    .local v3, "cellH":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 154
    .local v2, "alpha":F
    sget v10, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 155
    packed-switch p2, :pswitch_data_0

    .line 262
    :goto_0
    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 263
    sget-object v10, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v5, v10, p2

    .line 264
    .local v5, "des":Lcom/smartisanos/smengine/math/Vector3f;
    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v8, v10}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/smartisanos/smengine/math/Vector3f;->addLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 265
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v14, p3

    float-to-double v14, v14

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    add-double/2addr v10, v12

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    double-to-float v0, v10

    move/from16 p3, v0

    .line 266
    move/from16 v0, p3

    invoke-virtual {v8, v0}, Lcom/smartisanos/smengine/math/Vector3f;->multLocal(F)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/smartisanos/smengine/math/Vector3f;->addLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 267
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v2

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v12, v12, p3

    mul-float/2addr v11, v12

    sub-float v2, v10, v11

    .line 268
    iget v10, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v11, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v12, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12, v2}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 269
    invoke-virtual {v9}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 270
    return-void

    .line 157
    .end local v5    # "des":Lcom/smartisanos/smengine/math/Vector3f;
    :pswitch_0
    neg-float v10, v4

    const v11, 0x3f2aaaab

    mul-float/2addr v10, v11

    const v11, 0x3f2c8591

    mul-float/2addr v11, v3

    add-int/lit8 v12, p2, -0x8

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 158
    const v2, 0x3f19999a    # 0.6f

    .line 159
    goto :goto_0

    .line 161
    :pswitch_1
    const/4 v10, 0x0

    const v11, 0x3f2c8591

    mul-float/2addr v11, v3

    add-int/lit8 v12, p2, -0x8

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 162
    const v2, 0x3f266666    # 0.65f

    .line 163
    goto :goto_0

    .line 165
    :pswitch_2
    const v10, 0x3f2aaaab

    mul-float/2addr v10, v4

    const v11, 0x3f2c8591

    mul-float/2addr v11, v3

    add-int/lit8 v12, p2, -0x8

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 166
    const v2, 0x3f333333    # 0.7f

    .line 167
    goto :goto_0

    .line 169
    :pswitch_3
    neg-float v10, v4

    const v11, 0x3f2aaaab

    mul-float/2addr v10, v11

    const/4 v11, 0x0

    add-int/lit8 v12, p2, -0x8

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 170
    const/high16 v2, 0x3f400000    # 0.75f

    .line 171
    goto/16 :goto_0

    .line 173
    :pswitch_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    add-int/lit8 v12, p2, -0x8

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 174
    const v2, 0x3f4ccccd    # 0.8f

    .line 175
    goto/16 :goto_0

    .line 177
    :pswitch_5
    const v10, 0x3f2aaaab

    mul-float/2addr v10, v4

    const/4 v11, 0x0

    add-int/lit8 v12, p2, -0x8

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 178
    const v2, 0x3f59999a    # 0.85f

    .line 179
    goto/16 :goto_0

    .line 181
    :pswitch_6
    neg-float v10, v4

    const v11, 0x3f2aaaab

    mul-float/2addr v10, v11

    neg-float v11, v3

    const v12, 0x3f2c8591

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0x8

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 182
    const v2, 0x3f666666    # 0.9f

    .line 183
    goto/16 :goto_0

    .line 185
    :pswitch_7
    const/4 v10, 0x0

    neg-float v11, v3

    const v12, 0x3f2c8591

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0x8

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 186
    const v2, 0x3f733333    # 0.95f

    .line 187
    goto/16 :goto_0

    .line 189
    :pswitch_8
    const v10, 0x3f2aaaab

    mul-float/2addr v10, v4

    neg-float v11, v3

    const v12, 0x3f2c8591

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0x8

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 190
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 195
    :cond_0
    packed-switch p2, :pswitch_data_1

    goto/16 :goto_0

    .line 197
    :pswitch_9
    neg-float v10, v4

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v11

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v11, v3

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 198
    const/high16 v2, 0x3f200000    # 0.625f

    .line 199
    goto/16 :goto_0

    .line 201
    :pswitch_a
    neg-float v10, v4

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v11, v3

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 202
    const v2, 0x3f266666    # 0.65f

    .line 203
    goto/16 :goto_0

    .line 205
    :pswitch_b
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v4

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v11, v3

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 206
    const v2, 0x3f2ccccd    # 0.675f

    .line 207
    goto/16 :goto_0

    .line 209
    :pswitch_c
    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v4

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v11, v3

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 210
    const v2, 0x3f333333    # 0.7f

    .line 211
    goto/16 :goto_0

    .line 213
    :pswitch_d
    neg-float v10, v4

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v11

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v11, v3

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 214
    const v2, 0x3f39999a    # 0.725f

    .line 215
    goto/16 :goto_0

    .line 217
    :pswitch_e
    neg-float v10, v4

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v11, v3

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 218
    const/high16 v2, 0x3f400000    # 0.75f

    .line 219
    goto/16 :goto_0

    .line 221
    :pswitch_f
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v4

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v11, v3

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 222
    const v2, 0x3f466666    # 0.775f

    .line 223
    goto/16 :goto_0

    .line 225
    :pswitch_10
    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v4

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v11, v3

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 226
    const v2, 0x3f4ccccd    # 0.8f

    .line 227
    goto/16 :goto_0

    .line 229
    :pswitch_11
    neg-float v10, v4

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v11

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    neg-float v11, v3

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 230
    const v2, 0x3f533333    # 0.825f

    .line 231
    goto/16 :goto_0

    .line 233
    :pswitch_12
    neg-float v10, v4

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    neg-float v11, v3

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 234
    const v2, 0x3f59999a    # 0.85f

    .line 235
    goto/16 :goto_0

    .line 237
    :pswitch_13
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v4

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    neg-float v11, v3

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 238
    const/high16 v2, 0x3f600000    # 0.875f

    .line 239
    goto/16 :goto_0

    .line 241
    :pswitch_14
    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v4

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    neg-float v11, v3

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 242
    const v2, 0x3f666666    # 0.9f

    .line 243
    goto/16 :goto_0

    .line 245
    :pswitch_15
    neg-float v10, v4

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v11

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    neg-float v11, v3

    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float/2addr v11, v12

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 246
    const v2, 0x3f6ccccd    # 0.925f

    .line 247
    goto/16 :goto_0

    .line 249
    :pswitch_16
    neg-float v10, v4

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v10, v11

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    neg-float v11, v3

    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float/2addr v11, v12

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 250
    const v2, 0x3f733333    # 0.95f

    .line 251
    goto/16 :goto_0

    .line 253
    :pswitch_17
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v4

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    neg-float v11, v3

    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float/2addr v11, v12

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 254
    const v2, 0x3f79999a    # 0.975f

    .line 255
    goto/16 :goto_0

    .line 257
    :pswitch_18
    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v4

    const v11, 0x3f3425ed

    mul-float/2addr v10, v11

    neg-float v11, v3

    const/high16 v12, 0x3fc00000    # 1.5f

    mul-float/2addr v11, v12

    const v12, 0x3f3a0dfd

    mul-float/2addr v11, v12

    add-int/lit8 v12, p2, -0xf

    int-to-float v12, v12

    invoke-virtual {v8, v10, v11, v12}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 258
    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 195
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method private resetBackground()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 361
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setTranslateY(F)V

    .line 362
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 363
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getBackground()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 364
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 366
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 368
    :cond_0
    return-void
.end method


.method public onEndScroll()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 58
    iget-object v6, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    .local v0, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 60
    .local v3, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v3, v13}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 61
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v4

    .line 62
    .local v4, "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 63
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v8

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->getIndex(II)I

    move-result v2

    .line 64
    .local v2, "index":I
    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v5, v8, v2

    .line 65
    .local v5, "v":Lcom/smartisanos/smengine/math/Vector3f;
    iget v8, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v9, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 66
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v8, :cond_1

    .line 67
    invoke-virtual {v1, v12}, Lcom/smartisanos/launcher/view/Cell;->setUseBackgroundUVGaussian(Z)V

    .line 69
    :cond_1
    invoke-virtual {v1, v13}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 70
    invoke-virtual {v1, v12}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(I)V

    .line 71
    invoke-virtual {v1, v12}, Lcom/smartisanos/launcher/view/Cell;->setShowOuterShadow(Z)V

    .line 72
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->hideOuterShadow()V

    .line 73
    invoke-virtual {v1, v11, v11, v11, v11}, Lcom/smartisanos/launcher/view/Cell;->setColor(FFFF)V

    goto :goto_0

    .line 76
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "index":I
    .end local v3    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v4    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v5    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/view/DragLayer;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 77
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->resetBackground()V

    .line 78
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 279
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 281
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 282
    iput-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowTop:Lcom/smartisanos/smengine/RectNode;

    .line 283
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 284
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 285
    iput-object v2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mBackgroundShadowBottom:Lcom/smartisanos/smengine/RectNode;

    .line 287
    :cond_0
    return-void
.end method

.method public onStartScroll()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 37
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->getInstance()Lcom/smartisanos/launcher/view/DragLayer;

    move-result-object v5

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/view/MainView;->getScrollCamera(II)Lcom/smartisanos/smengine/Camera;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/view/DragLayer;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 38
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->adustBackground()V

    .line 39
    iget-object v5, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 40
    .local v0, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 41
    .local v3, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v3, v9}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 42
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v4

    .line 43
    .local v4, "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 44
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, v9}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 45
    sget-boolean v7, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v7, :cond_1

    .line 46
    invoke-virtual {v1, v10}, Lcom/smartisanos/launcher/view/Cell;->setUseBackgroundUVGaussian(Z)V

    .line 48
    :cond_1
    invoke-virtual {v1, v10}, Lcom/smartisanos/launcher/view/Cell;->setShowOuterShadow(Z)V

    .line 49
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->showOuterShadow()V

    .line 50
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v7

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->getIndex(II)I

    move-result v2

    .line 51
    .local v2, "index":I
    const/4 v7, 0x4

    mul-int/lit8 v8, v2, 0xc

    add-int/lit8 v8, v8, -0x64

    invoke-virtual {v1, v7, v8}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(II)V

    goto :goto_0

    .line 54
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "index":I
    .end local v3    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v4    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_2
    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onThemeChanged()V

    .line 292
    invoke-direct {p0}, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->getBackgroundColor()V

    .line 293
    return-void
.end method

.method public updateVisiblePageStatus()V
    .locals 15

    .prologue
    .line 82
    iget v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mScrollProcress:F

    iget v11, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mCurrentPageIndex:I

    int-to-float v11, v11

    sub-float v6, v10, v11

    .line 83
    .local v6, "progress":F
    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    int-to-float v4, v10

    .line 84
    .local v4, "pageSpan":F
    iget v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mScrollProcress:F

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    rem-float v5, v10, v11

    .line 85
    .local v5, "para":F
    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v10, v5, v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 86
    const/4 v8, 0x0

    .line 87
    .local v8, "split":F
    cmpl-float v10, v5, v8

    if-lez v10, :cond_1

    .line 88
    sub-float v10, v5, v8

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v8

    div-float v5, v10, v11

    .line 92
    :goto_0
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v0, v10, v5

    .line 93
    .local v0, "alpha":F
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v9

    .line 94
    .local v9, "tmpVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v7, v9, Lcom/smartisanos/smengine/util/TempVars;->vect41f:Lcom/smartisanos/smengine/math/Vector4f;

    .line 95
    .local v7, "result":Lcom/smartisanos/smengine/math/Vector4f;
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v10, :cond_0

    .line 96
    const/4 v10, 0x0

    cmpl-float v10, v6, v10

    if-lez v10, :cond_2

    .line 97
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 113
    :cond_0
    :goto_1
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v10, :cond_5

    .line 114
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 115
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v3

    .line 116
    .local v3, "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 117
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v11

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->getIndex(II)I

    move-result v2

    .line 118
    .local v2, "index":I
    invoke-direct {p0, v7, v2, v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->getPosition(Lcom/smartisanos/smengine/math/Vector4f;IF)V

    .line 119
    iget v11, v7, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v12, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v13, v7, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v1, v11, v12, v13}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 120
    iget v11, v7, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v12, v7, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v13, v7, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v1, v11, v12, v13, v14}, Lcom/smartisanos/launcher/view/Cell;->setColor(FFFF)V

    .line 121
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getDisplayOuterShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12, v13, v14, v0}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_2

    .line 90
    .end local v0    # "alpha":F
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "index":I
    .end local v3    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v7    # "result":Lcom/smartisanos/smengine/math/Vector4f;
    .end local v9    # "tmpVars":Lcom/smartisanos/smengine/util/TempVars;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 99
    .restart local v0    # "alpha":F
    .restart local v7    # "result":Lcom/smartisanos/smengine/math/Vector4f;
    .restart local v9    # "tmpVars":Lcom/smartisanos/smengine/util/TempVars;
    :cond_2
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 100
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v3

    .line 101
    .restart local v3    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 102
    .restart local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v11

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->getIndex(II)I

    move-result v2

    .line 103
    .restart local v2    # "index":I
    invoke-direct {p0, v7, v2, v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->getPosition(Lcom/smartisanos/smengine/math/Vector4f;IF)V

    .line 104
    iget v11, v7, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v12, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v13, v7, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v1, v11, v12, v13}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 105
    iget v11, v7, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v12, v7, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v13, v7, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v1, v11, v12, v13, v14}, Lcom/smartisanos/launcher/view/Cell;->setColor(FFFF)V

    .line 106
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getDisplayOuterShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12, v13, v14, v0}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_3

    .line 108
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "index":I
    :cond_3
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    const/high16 v11, -0x40800000    # -1.0f

    sub-float/2addr v11, v6

    mul-float/2addr v11, v4

    iget v12, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mPageY:F

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 109
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    goto/16 :goto_1

    .line 123
    :cond_4
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    neg-float v11, v6

    mul-float/2addr v11, v4

    iget v12, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mPageY:F

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 124
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 126
    .end local v3    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_5
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v10, :cond_7

    .line 127
    const/4 v10, 0x0

    cmpl-float v10, v6, v10

    if-lez v10, :cond_8

    .line 128
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 129
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v3

    .line 130
    .restart local v3    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 131
    .restart local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v11

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v12

    invoke-direct {p0, v11, v12}, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->getIndex(II)I

    move-result v2

    .line 132
    .restart local v2    # "index":I
    invoke-direct {p0, v7, v2, v5}, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->getPosition(Lcom/smartisanos/smengine/math/Vector4f;IF)V

    .line 133
    iget v11, v7, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v12, v7, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v13, v7, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v1, v11, v12, v13}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 134
    iget v11, v7, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v12, v7, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iget v13, v7, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v1, v11, v12, v13, v14}, Lcom/smartisanos/launcher/view/Cell;->setColor(FFFF)V

    .line 135
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getDisplayOuterShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12, v13, v14, v0}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    goto :goto_4

    .line 137
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v2    # "index":I
    :cond_6
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v6

    mul-float/2addr v11, v4

    iget v12, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mPageY:F

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 138
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 143
    .end local v3    # "pageCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_7
    :goto_5
    invoke-virtual {v9}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 144
    return-void

    .line 140
    :cond_8
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationGatherIcon;->mNextPage:Lcom/smartisanos/launcher/view/Page;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    goto :goto_5
.end method
