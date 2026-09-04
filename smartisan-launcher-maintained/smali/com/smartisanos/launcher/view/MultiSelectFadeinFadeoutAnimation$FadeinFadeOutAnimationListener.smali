.class Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutAnimationListener;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MultiSelectFadeinFadeoutAnimation.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FadeinFadeOutAnimationListener"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutAnimationListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 64
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutAnimationListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    iput-boolean v3, v1, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->mIsPlaying:Z

    .line 65
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutAnimationListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

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

    .line 66
    .local v0, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    goto :goto_0

    .line 68
    .end local v0    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutAnimationListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->access$100(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/AnimationController;->setHasAnimationPlaying(Z)V

    .line 69
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation$FadeinFadeOutAnimationListener;->this$0:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->access$000(Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 70
    return-void
.end method
