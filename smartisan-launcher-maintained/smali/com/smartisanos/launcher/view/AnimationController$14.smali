.class Lcom/smartisanos/launcher/view/AnimationController$14;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "AnimationController.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/AnimationController;->cellPullWhenCellIntoDockFromPage()Z
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
    .line 2484
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController$14;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 6

    .prologue
    .line 2487
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController$14;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/AnimationController;->access$1200(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->animationPageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 2488
    .local v0, "p":Lcom/smartisanos/launcher/view/Page;
    move-object v1, v0

    .line 2492
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v5, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v4, v5, :cond_0

    .line 2493
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v2

    .line 2494
    .local v2, "tv":Lcom/smartisanos/launcher/view/TitleView;
    if-eqz v2, :cond_0

    .line 2495
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleShadowWithBatch(Z)V

    goto :goto_0

    .line 2501
    .end local v0    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v2    # "tv":Lcom/smartisanos/launcher/view/TitleView;
    :cond_1
    return-void
.end method

.method public onComplete()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2504
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 2506
    iget-object v5, p0, Lcom/smartisanos/launcher/view/AnimationController$14;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/AnimationController;->access$1200(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->animationPageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 2507
    .local v0, "p":Lcom/smartisanos/launcher/view/Page;
    move-object v1, v0

    .line 2511
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v7, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v6, v7, :cond_0

    .line 2512
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v4

    .line 2513
    .local v4, "tv":Lcom/smartisanos/launcher/view/TitleView;
    if-eqz v4, :cond_0

    .line 2514
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    .line 2516
    .local v3, "titleShadow":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v4, v9}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleShadowWithBatch(Z)V

    goto :goto_0

    .line 2521
    .end local v0    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v3    # "titleShadow":Lcom/smartisanos/smengine/SceneNode;
    .end local v4    # "tv":Lcom/smartisanos/launcher/view/TitleView;
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/launcher/view/AnimationController$14;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/AnimationController;->access$1200(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 2522
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2, v9}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 2523
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->layoutIcon()V

    .line 2524
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 2525
    invoke-virtual {v2, v8}, Lcom/smartisanos/launcher/view/Cell;->setIsInAnimationProgress(Z)V

    goto :goto_1

    .line 2527
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    iget-object v5, p0, Lcom/smartisanos/launcher/view/AnimationController$14;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/AnimationController;->access$1200(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    move-result-object v5

    iput-boolean v8, v5, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->mIsPlaying:Z

    .line 2528
    iget-object v5, p0, Lcom/smartisanos/launcher/view/AnimationController$14;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/smartisanos/launcher/view/AnimationController;->access$1202(Lcom/smartisanos/launcher/view/AnimationController;Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    .line 2529
    return-void
.end method
