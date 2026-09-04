.class Lcom/smartisanos/launcher/receiver/DataDumpReceiver$4;
.super Lcom/smartisanos/smengine/Event;
.source "DataDumpReceiver.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;


.method constructor <init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/receiver/DataDumpReceiver;
    .param p2, "type"    # I

    .prologue
    .line 451
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$4;->this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$4;->this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    invoke-static {v0}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->access$100(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;)V

    .line 455
    return-void
.end method
