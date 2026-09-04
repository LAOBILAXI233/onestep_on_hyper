.class Lcom/smartisanos/launcher/view/AnimationController$9;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "AnimationController.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/AnimationController;->cellLinkedAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/AnimationController;


.method constructor <init>(Lcom/smartisanos/launcher/view/AnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/AnimationController;

    .prologue
    .line 1456
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController$9;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 9

    .prologue
    .line 1459
    iget-object v6, p0, Lcom/smartisanos/launcher/view/AnimationController$9;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/AnimationController;->access$800(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageAnimation;

    move-result-object v6

    iget-object v6, v6, Lcom/smartisanos/launcher/view/MultiPageAnimation;->animationPageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 1460
    .local v0, "p":Lcom/smartisanos/launcher/view/Page;
    move-object v1, v0

    .line 1463
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    sget v7, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v8, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v7, v8, :cond_0

    .line 1464
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v7

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 1465
    .local v2, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v5

    .line 1466
    .local v5, "tv":Lcom/smartisanos/launcher/view/TitleView;
    if-eqz v5, :cond_1

    .line 1467
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleShadowWithBatch(Z)V

    .line 1468
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    .line 1469
    .local v4, "titleShadow":Lcom/smartisanos/smengine/SceneNode;
    iget v7, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_BACK_SHADOW_LAYER:I

    add-int/lit8 v7, v7, -0x2f

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 1471
    .end local v4    # "titleShadow":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getShadowRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    .line 1472
    .local v3, "pageShadow":Lcom/smartisanos/smengine/RectNode;
    if-eqz v3, :cond_0

    .line 1473
    iget v7, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_OUTER_SHADOW_LAYER:I

    add-int/lit8 v7, v7, -0x2f

    invoke-virtual {v3, v7}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    goto :goto_0

    .line 1480
    .end local v0    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v2    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    .end local v3    # "pageShadow":Lcom/smartisanos/smengine/RectNode;
    .end local v5    # "tv":Lcom/smartisanos/launcher/view/TitleView;
    :cond_2
    iget-object v6, p0, Lcom/smartisanos/launcher/view/AnimationController$9;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/AnimationController;->access$900(Lcom/smartisanos/launcher/view/AnimationController;)V

    .line 1481
    return-void
.end method

.method public onComplete()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1484
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 1485
    iget-object v7, p0, Lcom/smartisanos/launcher/view/AnimationController$9;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/AnimationController;->access$800(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageAnimation;

    move-result-object v7

    iget-object v7, v7, Lcom/smartisanos/launcher/view/MultiPageAnimation;->animationPageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 1486
    .local v0, "p":Lcom/smartisanos/launcher/view/Page;
    move-object v1, v0

    .line 1489
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 1490
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v9, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v8, v9, :cond_0

    .line 1491
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v8

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 1492
    .local v2, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v6

    .line 1493
    .local v6, "tv":Lcom/smartisanos/launcher/view/TitleView;
    if-eqz v6, :cond_1

    .line 1494
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v5

    .line 1495
    .local v5, "titleShadow":Lcom/smartisanos/smengine/SceneNode;
    iget v8, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_BACK_SHADOW_LAYER:I

    invoke-virtual {v5, v8}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 1496
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleShadowWithBatch(Z)V

    .line 1498
    .end local v5    # "titleShadow":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getShadowRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    .line 1499
    .local v3, "pageShadow":Lcom/smartisanos/smengine/RectNode;
    if-eqz v3, :cond_0

    .line 1500
    iget v8, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_IN_SWITCH_PAGE_MODE_OUTER_SHADOW_LAYER:I

    invoke-virtual {v3, v8}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    goto :goto_0

    .line 1507
    .end local v0    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v2    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    .end local v3    # "pageShadow":Lcom/smartisanos/smengine/RectNode;
    .end local v6    # "tv":Lcom/smartisanos/launcher/view/TitleView;
    :cond_2
    iget-object v7, p0, Lcom/smartisanos/launcher/view/AnimationController$9;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/AnimationController;->access$1000(Lcom/smartisanos/launcher/view/AnimationController;)V

    .line 1509
    iget-object v7, p0, Lcom/smartisanos/launcher/view/AnimationController$9;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/AnimationController;->access$800(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageAnimation;

    move-result-object v7

    iget-object v7, v7, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    .line 1511
    .local v4, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/view/Cell;->setIsInAnimationProgress(Z)V

    goto :goto_1

    .line 1513
    .end local v4    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    iget-object v7, p0, Lcom/smartisanos/launcher/view/AnimationController$9;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/AnimationController;->access$800(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageAnimation;

    move-result-object v7

    iput-boolean v10, v7, Lcom/smartisanos/launcher/view/MultiPageAnimation;->mIsPlaying:Z

    .line 1514
    iget-object v7, p0, Lcom/smartisanos/launcher/view/AnimationController$9;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/AnimationController;->access$000(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/PageView;->resetCollisionListenerForPageCell()V

    .line 1515
    iget-object v7, p0, Lcom/smartisanos/launcher/view/AnimationController$9;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/view/AnimationController;->access$802(Lcom/smartisanos/launcher/view/AnimationController;Lcom/smartisanos/launcher/view/MultiPageAnimation;)Lcom/smartisanos/launcher/view/MultiPageAnimation;

    .line 1516
    return-void
.end method
