.class public Lcom/smartisanos/launcher/view/AnimationController$PushDown2AnimationListener;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "AnimationController.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/AnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PushDown2AnimationListener"
.end annotation


.field private pc:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "pageCell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    .line 395
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDown2AnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    .line 396
    return-void
.end method


.method public onBegin()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 401
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDown2AnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 402
    .local v0, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v1

    .line 403
    .local v1, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget v2, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_OUTER_SHADOW:I

    add-int/lit8 v2, v2, -0x2f

    invoke-virtual {v0, v2, v4}, Lcom/smartisanos/launcher/view/Page;->setBatchShadowLayer(IZ)V

    .line 404
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_0

    .line 405
    iget v2, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_GAUSSIAN_BACKGROUND_LAYER:I

    add-int/lit8 v2, v2, -0x2f

    invoke-virtual {v0, v2, v4}, Lcom/smartisanos/launcher/view/Page;->setGaussianRectLayer(IZ)V

    .line 407
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 412
    iget-object v2, p0, Lcom/smartisanos/launcher/view/AnimationController$PushDown2AnimationListener;->pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 413
    .local v0, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v1

    .line 414
    .local v1, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget v2, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_OUTER_SHADOW:I

    add-int/lit8 v2, v2, -0x2f

    invoke-virtual {v0, v2, v4}, Lcom/smartisanos/launcher/view/Page;->setBatchShadowLayer(IZ)V

    .line 415
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_0

    .line 416
    iget v2, v1, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_GAUSSIAN_BACKGROUND_LAYER:I

    add-int/lit8 v2, v2, -0x2f

    invoke-virtual {v0, v2, v4}, Lcom/smartisanos/launcher/view/Page;->setGaussianRectLayer(IZ)V

    .line 418
    :cond_0
    return-void
.end method
