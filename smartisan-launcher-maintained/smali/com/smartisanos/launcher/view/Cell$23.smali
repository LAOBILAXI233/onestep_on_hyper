.class Lcom/smartisanos/launcher/view/Cell$23;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->hideCellIntoPageEditModeAnimationCover(Lcom/smartisanos/smengine/AnimationTimeLine;F)V
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
    .line 4345
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$23;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4352
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$23;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setUseBackgroundUVGaussian(Z)V

    .line 4353
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$23;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 4354
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$23;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 4355
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$23;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iput-boolean v2, v0, Lcom/smartisanos/launcher/view/Cell;->mIsEditModeAnim:Z

    .line 4356
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 4347
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$23;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/Cell;->mIsEditModeAnim:Z

    .line 4348
    return-void
.end method
