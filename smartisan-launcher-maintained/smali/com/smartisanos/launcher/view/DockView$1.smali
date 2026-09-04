.class Lcom/smartisanos/launcher/view/DockView$1;
.super Lcom/smartisanos/smengine/Event;
.source "DockView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/DockView;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/DockView;


.method constructor <init>(Lcom/smartisanos/launcher/view/DockView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/DockView;
    .param p2, "type"    # I

    .prologue
    .line 320
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView$1;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$1;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DockView;->access$100(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/DotView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/DotView;->setVisibility(Z)V

    .line 324
    return-void
.end method
