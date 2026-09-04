.class Lcom/smartisanos/launcher/view/Cell$22;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->showCellIntoPageEditModeAnimationCover(Lcom/smartisanos/smengine/AnimationTimeLine;F)V
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
    .line 4263
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$22;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 0

    .prologue
    .line 4267
    return-void
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 4272
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$22;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mActiveIconView:Lcom/smartisanos/launcher/view/ActiveIconView;

    if-eqz v0, :cond_0

    .line 4284
    :goto_0
    return-void

    .line 4277
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$22;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setShowCellIntoPageEditModeAnimationCover(Z)V

    .line 4278
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$22;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mCellIntoPageEditModeAnimationCover:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4279
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$22;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 4282
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$22;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setShowCellIntoPageEditModeCover(Z)V

    goto :goto_0
.end method
