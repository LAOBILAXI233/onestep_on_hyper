.class Lcom/smartisanos/launcher/view/Cell$27;
.super Lcom/smartisanos/smengine/Event;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->longPressCommonInvoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "type"    # I

    .prologue
    .line 5681
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$27;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 5683
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$27;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundGaussianRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 5684
    return-void
.end method
