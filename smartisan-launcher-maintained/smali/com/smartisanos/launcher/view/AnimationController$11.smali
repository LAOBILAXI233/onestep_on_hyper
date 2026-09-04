.class Lcom/smartisanos/launcher/view/AnimationController$11;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "AnimationController.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/AnimationController;->uninstallCellFromAdb(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/AnimationTimeLine;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/AnimationController;

.field final synthetic val$pclist:Ljava/util/ArrayList;


.method constructor <init>(Lcom/smartisanos/launcher/view/AnimationController;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/AnimationController;

    .prologue
    .line 1906
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController$11;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/AnimationController$11;->val$pclist:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 6

    .prologue
    .line 1912
    iget-object v3, p0, Lcom/smartisanos/launcher/view/AnimationController$11;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

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

    .line 1913
    .local v0, "p":Lcom/smartisanos/launcher/view/Page;
    move-object v1, v0

    .line 1917
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v5, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v4, v5, :cond_0

    .line 1918
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v2

    .line 1919
    .local v2, "tv":Lcom/smartisanos/launcher/view/TitleView;
    if-eqz v2, :cond_0

    .line 1920
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleShadowWithBatch(Z)V

    goto :goto_0

    .line 1926
    .end local v0    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v2    # "tv":Lcom/smartisanos/launcher/view/TitleView;
    :cond_1
    return-void
.end method

.method public onComplete()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1930
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 1932
    iget-object v4, p0, Lcom/smartisanos/launcher/view/AnimationController$11;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/AnimationController;->access$1200(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;->animationPageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 1933
    .local v0, "p":Lcom/smartisanos/launcher/view/Page;
    move-object v1, v0

    .line 1938
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v6, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v5, v6, :cond_0

    .line 1939
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v3

    .line 1940
    .local v3, "tv":Lcom/smartisanos/launcher/view/TitleView;
    if-eqz v3, :cond_0

    .line 1944
    invoke-virtual {v3, v7}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleShadowWithBatch(Z)V

    goto :goto_0

    .line 1948
    .end local v0    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v3    # "tv":Lcom/smartisanos/launcher/view/TitleView;
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/AnimationController$11;->val$pclist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 1949
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2, v7}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 1950
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 1951
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/Cell;->setIsInAnimationProgress(Z)V

    goto :goto_1

    .line 1954
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/launcher/view/AnimationController$11;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/view/AnimationController;->access$1202(Lcom/smartisanos/launcher/view/AnimationController;Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;)Lcom/smartisanos/launcher/view/MultiPageHasEmptyCellRevertAnimation;

    .line 1956
    return-void
.end method
