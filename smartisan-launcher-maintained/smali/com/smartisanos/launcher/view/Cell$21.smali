.class Lcom/smartisanos/launcher/view/Cell$21;
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
    .line 4218
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$21;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4225
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$21;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 4226
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$21;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setUseBackgroundUVGaussian(Z)V

    .line 4227
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$21;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setShowCellIntoPageEditModeAnimationCover(Z)V

    .line 4230
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$21;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setShowCellIntoPageEditModeCover(Z)V

    .line 4231
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$21;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 4232
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$21;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/Cell;->mIsEditModeAnim:Z

    .line 4233
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 4220
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$21;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/Cell;->mIsEditModeAnim:Z

    .line 4221
    return-void
.end method
