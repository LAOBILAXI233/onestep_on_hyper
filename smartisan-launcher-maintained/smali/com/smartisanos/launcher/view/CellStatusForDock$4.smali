.class Lcom/smartisanos/launcher/view/CellStatusForDock$4;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "CellStatusForDock.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CellStatusForDock;->cellCollideUpLogic(I)V
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
    .line 863
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$4;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$4;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$502(Lcom/smartisanos/launcher/view/CellStatusForDock;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 872
    return-void
.end method

.method public onKill()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$4;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$502(Lcom/smartisanos/launcher/view/CellStatusForDock;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 867
    return-void
.end method
