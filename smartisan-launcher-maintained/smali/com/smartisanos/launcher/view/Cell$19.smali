.class Lcom/smartisanos/launcher/view/Cell$19;
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
    .line 4159
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$19;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 4162
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$19;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mFlagNewRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 4163
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$19;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mFlagNewRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 4164
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$19;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mFlagNewRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4166
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$19;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 4168
    :cond_0
    return-void
.end method
