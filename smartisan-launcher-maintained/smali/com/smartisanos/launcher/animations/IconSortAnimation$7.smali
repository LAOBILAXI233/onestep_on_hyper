.class Lcom/smartisanos/launcher/animations/IconSortAnimation$7;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "IconSortAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/IconSortAnimation;->getGaussianBackAnim(Z)Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

.field final synthetic val$show:Z


.method constructor <init>(Lcom/smartisanos/launcher/animations/IconSortAnimation;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/IconSortAnimation;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$7;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$7;->val$show:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 628
    iget-boolean v2, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$7;->val$show:Z

    if-eqz v2, :cond_1

    .line 629
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/StatusBar;->setUseStaticGaussian(Z)V

    .line 630
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/DockView;->setUseStaticGaussian(Z)V

    .line 631
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$7;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$500(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 632
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$7;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v2}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$500(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    .line 633
    .local v1, "p":Lcom/smartisanos/launcher/view/PageWithRenderTarget;
    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setUseStaticGaussian(Z)V

    .line 634
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 635
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TitleView;->getGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 636
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleShadowWithBatch(Z)V

    .line 638
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setIsEnableBlend(Z)V

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    .end local v0    # "i":I
    .end local v1    # "p":Lcom/smartisanos/launcher/view/PageWithRenderTarget;
    :cond_1
    return-void
.end method
