.class Lcom/smartisanos/launcher/view/Cell$18;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->hideAppNameAndFlagAnimation(Lcom/smartisanos/smengine/AnimationTimeLine;ZFFZFFZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 4120
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$18;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 0

    .prologue
    .line 4125
    return-void
.end method

.method public onComplete()V
    .locals 3

    .prologue
    .line 4130
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$18;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setShowAppName(Z)V

    .line 4133
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$18;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Cell;->mAppNameRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4134
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$18;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 4135
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4136
    .local v0, "co":F
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$18;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    instance-of v1, v1, Lcom/smartisanos/launcher/view/Page;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$18;->this$0:Lcom/smartisanos/launcher/view/Cell;

    .line 4137
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 4138
    const/4 v0, 0x0

    .line 4140
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$18;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Cell;->mAppNameRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 4141
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$18;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/smartisanos/launcher/view/Cell;->mAppNameAnim:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .line 4142
    return-void
.end method
