.class Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutPageWithRenderTargetAnimationListener;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MultiSelectFadeinFadeoutAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FadeinFadeOutPageWithRenderTargetAnimationListener"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutPageWithRenderTargetAnimationListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBegin()V

    .line 78
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutPageWithRenderTargetAnimationListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->access$000(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 79
    .local v0, "pg":Lcom/smartisanos/launcher/view/Page;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Page;->setIsEnableBlend(Z)V

    .line 80
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    goto :goto_0

    .line 82
    .end local v0    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 87
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutPageWithRenderTargetAnimationListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    iput-boolean v3, v1, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mIsPlaying:Z

    .line 88
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutPageWithRenderTargetAnimationListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->access$000(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 89
    .local v0, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 90
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v2, :cond_0

    .line 93
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Page;->setIsEnableBlend(Z)V

    goto :goto_0

    .line 96
    .end local v0    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutPageWithRenderTargetAnimationListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->access$100(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/AnimationController;->setHasAnimationPlaying(Z)V

    .line 97
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutPageWithRenderTargetAnimationListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->access$000(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 98
    return-void
.end method
