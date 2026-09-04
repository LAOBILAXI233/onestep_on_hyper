.class Lcom/smartisanos/launcher/view/Cell$7;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->cellUpReturnToPage(Lcom/smartisanos/launcher/view/Page;F)Lcom/smartisanos/smengine/AnimationTimeLine;
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
    .line 1107
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$7;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 2

    .prologue
    .line 1110
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBegin()V

    .line 1111
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$7;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(I)V

    .line 1112
    return-void
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 1116
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$7;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setDrawWithPostEffect(Z)V

    .line 1119
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$7;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->layoutIcon()V

    .line 1120
    return-void
.end method
