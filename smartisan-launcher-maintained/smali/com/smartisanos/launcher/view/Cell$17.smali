.class Lcom/smartisanos/launcher/view/Cell$17;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->showAppNameAndFlagAnimation(Lcom/smartisanos/smengine/AnimationTimeLine;ZFFZFFZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Cell;

.field final synthetic val$flagAlphaAlpha:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/SceneNodeTweenAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 4050
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$17;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Cell$17;->val$flagAlphaAlpha:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 4069
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$17;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mFlagMessageRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_1

    .line 4070
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$17;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mFlagMessageRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 4071
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$17;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mFlagMessageRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4072
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$17;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$17;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Cell;->mFlagMessageRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 4074
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$17;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 4076
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 4054
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$17;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mFlagMessageRect:Lcom/smartisanos/smengine/RectNode;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$17;->val$flagAlphaAlpha:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$17;->val$flagAlphaAlpha:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4055
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$17;->val$flagAlphaAlpha:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->kill()V

    .line 4065
    :goto_0
    return-void

    .line 4057
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$17;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mFlagMessageRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 4058
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$17;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$17;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Cell;->mFlagMessageRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 4063
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$17;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    goto :goto_0
.end method
