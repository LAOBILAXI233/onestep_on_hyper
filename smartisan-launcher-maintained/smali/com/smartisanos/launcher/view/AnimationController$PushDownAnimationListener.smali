.class public Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "AnimationController.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/AnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushDownAnimationListener"
.end annotation


.field private pc:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "pageCell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    .line 296
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    .line 297
    return-void
.end method


.method public onBegin()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 301
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 302
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/Cell;->setVisibilityForBatchDrawShadow(Z)V

    .line 303
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_0

    .line 304
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 305
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/FloatPageNode;->getCurrentFloatPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 313
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 314
    .local v0, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v2

    if-nez v2, :cond_5

    .line 315
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(I)V

    .line 321
    :cond_1
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v1

    .line 322
    .local v1, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget v2, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_OUTER_SHADOW:I

    add-int/lit8 v2, v2, -0x2f

    invoke-virtual {v0, v2, v5}, Lcom/smartisanos/launcher/view/Page;->setBatchShadowLayer(IZ)V

    .line 326
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_3

    .line 327
    iget v2, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_GAUSSIAN_BACKGROUND_LAYER:I

    add-int/lit8 v2, v2, -0x2f

    invoke-virtual {v0, v2, v5}, Lcom/smartisanos/launcher/view/Page;->setGaussianRectLayer(IZ)V

    .line 330
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 332
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/Cell;->setPostEffectQueue(Z)V

    .line 335
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getBatchBackground()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 337
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getBatchBackground()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    iget v3, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_GAUSSIAN_BATCH_BACK_GROUND_LAYER:I

    add-int/lit8 v3, v3, -0x2f

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 342
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/Cell;->setCellIsPushDown(Z)V

    .line 343
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/Cell;->setVisibilityForBatchBackground(Z)V

    .line 344
    return-void

    .line 308
    .end local v0    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v1    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/Cell;->setUseBackgroundUVGaussian(Z)V

    .line 309
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    goto :goto_0

    .line 316
    .restart local v0    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 317
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2, v6}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(I)V

    goto :goto_1
.end method

.method public onComplete()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 349
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 350
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v3

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 351
    .local v2, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget v3, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_OUTER_SHADOW:I

    add-int/lit8 v3, v3, -0x2f

    invoke-virtual {v1, v3, v6}, Lcom/smartisanos/launcher/view/Page;->setBatchShadowLayer(IZ)V

    .line 355
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_1

    .line 356
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v0

    .line 357
    .local v0, "normalPageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget v3, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_GAUSSIAN_BACKGROUND_LAYER:I

    add-int/lit8 v3, v3, -0x2f

    invoke-virtual {v1, v3, v6}, Lcom/smartisanos/launcher/view/Page;->setGaussianRectLayer(IZ)V

    .line 359
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getBatchBackground()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 361
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getBatchBackground()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    iget v4, v0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_GAUSSIAN_BATCH_BACK_GROUND_LAYER:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 364
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 366
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/Cell;->setPostEffectQueue(Z)V

    .line 371
    .end local v0    # "normalPageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    :cond_1
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v3

    if-nez v3, :cond_4

    .line 372
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(I)V

    .line 376
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 377
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/Cell;->setCellIsPushDown(Z)V

    .line 378
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_3

    .line 379
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 380
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/FloatPageNode;->getCurrentFloatPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    if-ne v3, v4, :cond_5

    .line 387
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/view/Cell;->setVisibilityForBatchBackground(Z)V

    .line 388
    return-void

    .line 373
    :cond_4
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 374
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(I)V

    goto :goto_0

    .line 382
    :cond_5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/Cell;->setUseBackgroundUVGaussian(Z)V

    .line 383
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDownAnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/view/Cell;->setIsEnableBlend(Z)V

    goto :goto_1
.end method
