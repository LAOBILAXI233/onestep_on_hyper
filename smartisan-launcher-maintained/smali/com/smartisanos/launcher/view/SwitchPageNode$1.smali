.class Lcom/smartisanos/launcher/view/SwitchPageNode$1;
.super Lcom/smartisanos/smengine/Event;
.source "SwitchPageNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/SwitchPageNode;->createSwitchPageAnimationEvent()Lcom/smartisanos/smengine/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/SwitchPageNode;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;
    .param p2, "type"    # I

    .prologue
    .line 84
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$1;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$1;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$000(Lcom/smartisanos/launcher/view/SwitchPageNode;)V

    .line 88
    return-void
.end method
