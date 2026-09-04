.class Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MultiSelectFadeinFadeoutAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FadeoutListener"
.end annotation


.field private mpc:Lcom/smartisanos/launcher/view/Cell;

.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;


.method public constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;
    .param p2, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;->mpc:Lcom/smartisanos/launcher/view/Cell;

    .line 122
    return-void
.end method


.method public onBegin()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBegin()V

    .line 126
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;->mpc:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setIsEnableBlend(Z)V

    .line 127
    return-void
.end method

.method public onComplete()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 130
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 131
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;->mpc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 132
    .local v0, "parent":Lcom/smartisanos/launcher/view/Page;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;->mpc:Lcom/smartisanos/launcher/view/Cell;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->access$200(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/Page;->changeCellIndexAndLocation(Lcom/smartisanos/launcher/view/Cell;I)V

    .line 133
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;->mpc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 135
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;->mpc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Cell;->setVisibilityForBatchDrawShadow(Z)V

    .line 136
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;->mpc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Cell;->setVisibilityForBatchDrawTarget(Z)V

    .line 138
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;->mpc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Cell;->setShowCellIntoPageEditModeCover(Z)V

    .line 140
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;->mpc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->reSetBackgroundNoAnimation()V

    .line 141
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;->mpc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 142
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->access$208(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)I

    .line 143
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->access$300()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#####################currentindex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeoutListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->access$200(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    return-void
.end method
