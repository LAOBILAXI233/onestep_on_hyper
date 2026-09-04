.class Lcom/smartisanos/launcher/view/CellStatusForDock$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "CellStatusForDock.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CellStatusForDock;->cellAreaRelayoutAnimStart(Lcom/smartisanos/launcher/view/Cell;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;


.method constructor <init>(Lcom/smartisanos/launcher/view/CellStatusForDock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/CellStatusForDock;

    .prologue
    .line 806
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$3;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 809
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$3;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/CellStatusForDock;->relayoutCellAreaCellsTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 810
    return-void
.end method
