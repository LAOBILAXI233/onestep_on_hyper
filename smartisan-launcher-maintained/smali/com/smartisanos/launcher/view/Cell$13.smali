.class Lcom/smartisanos/launcher/view/Cell$13;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->transparentCellForCellReturnToInvisiblePageInMultiPageMode(Lcom/smartisanos/smengine/AnimationTimeLine;FZ)V
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
    .line 3682
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$13;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 2

    .prologue
    .line 3685
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$13;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 3686
    return-void
.end method
