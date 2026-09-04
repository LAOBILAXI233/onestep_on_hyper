.class Lcom/smartisanos/launcher/view/Cell$15;
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


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 3978
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$15;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 2

    .prologue
    .line 3981
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$15;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$15;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Cell;->mAppNameRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 3982
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$15;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->layoutAppNameRect()V

    .line 3983
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$15;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 3984
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$15;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setShowAppName(Z)V

    .line 3985
    return-void
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 3989
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$15;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/Cell;->mAppNameAnim:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .line 3990
    return-void
.end method
