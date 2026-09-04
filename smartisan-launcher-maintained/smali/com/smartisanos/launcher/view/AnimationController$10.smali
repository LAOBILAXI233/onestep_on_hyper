.class Lcom/smartisanos/launcher/view/AnimationController$10;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "AnimationController.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/AnimationController;->cellPushAnimation()V
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
    .line 1702
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController$10;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 8

    .prologue
    .line 1705
    iget-object v5, p0, Lcom/smartisanos/launcher/view/AnimationController$10;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/AnimationController;->access$1100(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->animationPageList:Ljava/util/ArrayList;

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

    .line 1706
    .local v0, "p":Lcom/smartisanos/launcher/view/Page;
    move-object v1, v0

    .line 1709
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v7, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v6, v7, :cond_0

    .line 1710
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v4

    .line 1711
    .local v4, "tv":Lcom/smartisanos/launcher/view/TitleView;
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v6

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 1712
    .local v2, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    if-eqz v4, :cond_0

    .line 1713
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleShadowWithBatch(Z)V

    .line 1714
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    .line 1715
    .local v3, "titleShadow":Lcom/smartisanos/smengine/SceneNode;
    iget v6, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_BACK_SHADOW_LAYER:I

    add-int/lit8 v6, v6, -0x2f

    invoke-virtual {v3, v6}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    goto :goto_0

    .line 1721
    .end local v0    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v2    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    .end local v3    # "titleShadow":Lcom/smartisanos/smengine/SceneNode;
    .end local v4    # "tv":Lcom/smartisanos/launcher/view/TitleView;
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/launcher/view/AnimationController$10;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v5}, Lcom/smartisanos/launcher/view/AnimationController;->access$900(Lcom/smartisanos/launcher/view/AnimationController;)V

    .line 1722
    return-void
.end method

.method public onComplete()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1725
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 1727
    iget-object v6, p0, Lcom/smartisanos/launcher/view/AnimationController$10;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/AnimationController;->access$1100(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    move-result-object v6

    iget-object v6, v6, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->animationPageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 1728
    .local v0, "p":Lcom/smartisanos/launcher/view/Page;
    move-object v1, v0

    .line 1731
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v7

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v2

    .line 1732
    .local v2, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    sget v7, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v8, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v7, v8, :cond_0

    .line 1733
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v5

    .line 1734
    .local v5, "tv":Lcom/smartisanos/launcher/view/TitleView;
    if-eqz v5, :cond_0

    .line 1735
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    .line 1736
    .local v4, "titleShadow":Lcom/smartisanos/smengine/SceneNode;
    iget v7, v2, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_BACK_SHADOW_LAYER:I

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 1737
    invoke-virtual {v5, v10}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleShadowWithBatch(Z)V

    goto :goto_0

    .line 1744
    .end local v0    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v2    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    .end local v4    # "titleShadow":Lcom/smartisanos/smengine/SceneNode;
    .end local v5    # "tv":Lcom/smartisanos/launcher/view/TitleView;
    :cond_1
    iget-object v6, p0, Lcom/smartisanos/launcher/view/AnimationController$10;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/AnimationController;->access$1000(Lcom/smartisanos/launcher/view/AnimationController;)V

    .line 1746
    iget-object v6, p0, Lcom/smartisanos/launcher/view/AnimationController$10;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/AnimationController;->access$1100(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    move-result-object v6

    iget-object v6, v6, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mAnimationCellList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 1747
    .local v3, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v3, v10}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 1748
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->layoutIcon()V

    .line 1749
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 1750
    invoke-virtual {v3, v9}, Lcom/smartisanos/launcher/view/Cell;->setIsInAnimationProgress(Z)V

    goto :goto_1

    .line 1753
    .end local v3    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    iget-object v6, p0, Lcom/smartisanos/launcher/view/AnimationController$10;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/AnimationController;->access$1100(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    move-result-object v6

    iput-boolean v9, v6, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;->mIsPlaying:Z

    .line 1754
    iget-object v6, p0, Lcom/smartisanos/launcher/view/AnimationController$10;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/AnimationController;->access$000(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/PageView;->resetCollisionListenerForPageCell()V

    .line 1755
    iget-object v6, p0, Lcom/smartisanos/launcher/view/AnimationController$10;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/view/AnimationController;->access$1102(Lcom/smartisanos/launcher/view/AnimationController;Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellAnimation;

    .line 1756
    return-void
.end method
