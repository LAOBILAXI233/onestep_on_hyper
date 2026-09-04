.class Lcom/smartisanos/launcher/view/Page$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Page.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Page;->createEmptyCellReturnTimeLine(IIZFLcom/smartisanos/smengine/Animation$AnimationListener;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/launcher/view/Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Page;

.field final synthetic val$pc:Lcom/smartisanos/launcher/view/Cell;

.field final synthetic val$whenCreateCellAnimation:Lcom/smartisanos/smengine/Animation$AnimationListener;


.method constructor <init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/smengine/Animation$AnimationListener;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page$3;->this$0:Lcom/smartisanos/launcher/view/Page;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Page$3;->val$whenCreateCellAnimation:Lcom/smartisanos/smengine/Animation$AnimationListener;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/Page$3;->val$pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 735
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$3;->val$pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 736
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$3;->val$pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 737
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$3;->val$whenCreateCellAnimation:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$3;->val$whenCreateCellAnimation:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 741
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$3;->val$whenCreateCellAnimation:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$3;->val$whenCreateCellAnimation:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onStart()V

    .line 731
    :cond_0
    return-void
.end method
