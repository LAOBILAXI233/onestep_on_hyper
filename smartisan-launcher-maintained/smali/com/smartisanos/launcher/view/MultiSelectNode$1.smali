.class Lcom/smartisanos/launcher/view/MultiSelectNode$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MultiSelectNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MultiSelectNode;->multiSelectSpreadOutAnimation()Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 522
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 526
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 528
    .local v0, "pc":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_0

    .line 529
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Cell;->setShowOuterShadow(Z)V

    .line 530
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->hideOuterShadow()V

    .line 531
    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->setVisibilityForBatchDrawShadow(Z)V

    .line 534
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 536
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 537
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 539
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundAlphaRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 540
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundAlphaRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    goto :goto_0

    .line 547
    .end local v0    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$500(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Page;->setIsEnableBlend(Z)V

    .line 548
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$500(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 550
    return-void
.end method

.method public onComplete()V
    .locals 6

    .prologue
    const v5, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    .line 554
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 555
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$900(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    move-result-object v2

    iput-boolean v4, v2, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mIsPlaying:Z

    .line 557
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$500(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/Page;->setIsEnableBlend(Z)V

    .line 561
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1000(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 562
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1000(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 563
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1000(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 565
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 566
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 567
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/Page;->setSceneNodeForceRender(Z)V

    .line 571
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->hideMultiSelectSpreadOutCover()V

    .line 573
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(I)V

    .line 575
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v2

    if-nez v2, :cond_3

    .line 576
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->hideMultiSelectCover()V

    .line 581
    :goto_1
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 583
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 584
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 585
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_2

    .line 586
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1100(Lcom/smartisanos/launcher/view/MultiSelectNode;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 587
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Cell;->setUseBackgroundUVGaussian(Z)V

    .line 588
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Cell;->showGaussianIconRect(Z)V

    .line 589
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 590
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5, v5}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 591
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getForegroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5, v5}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 597
    :cond_1
    :goto_2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 565
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 578
    :cond_3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->hideMultiSelectCoverForActiveIcon()V

    .line 579
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Cell;->setShowMultiSelectCoverForActiveIcon(Z)V

    goto :goto_1

    .line 593
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1100(Lcom/smartisanos/launcher/view/MultiSelectNode;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 594
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Cell;->setDrawWithPostEffect(Z)V

    goto :goto_2

    .line 600
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_5
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_6

    .line 601
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1100(Lcom/smartisanos/launcher/view/MultiSelectNode;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 602
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/MainView;->setUsePostEffect(Z)V

    .line 606
    :cond_6
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1200(Lcom/smartisanos/launcher/view/MultiSelectNode;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 607
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 610
    :cond_7
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2, v4}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1102(Lcom/smartisanos/launcher/view/MultiSelectNode;Z)Z

    .line 611
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$1;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$902(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;)Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    .line 613
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->cleanPageViewWhenCellOnUpNoDelay()V

    .line 614
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->updatePageTitleAndCover()V

    .line 615
    return-void
.end method
