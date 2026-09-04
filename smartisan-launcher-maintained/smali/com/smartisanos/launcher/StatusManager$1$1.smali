.class Lcom/smartisanos/launcher/StatusManager$1$1;
.super Lcom/smartisanos/smengine/Event;
.source "StatusManager.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/StatusManager$1;->onLauncherStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/StatusManager$1;


.method constructor <init>(Lcom/smartisanos/launcher/StatusManager$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/StatusManager$1;
    .param p2, "type"    # I

    .prologue
    .line 126
    iput-object p1, p0, Lcom/smartisanos/launcher/StatusManager$1$1;->this$1:Lcom/smartisanos/launcher/StatusManager$1;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/smartisanos/launcher/StatusManager$1$1;->this$1:Lcom/smartisanos/launcher/StatusManager$1;

    iget-object v0, v0, Lcom/smartisanos/launcher/StatusManager$1;->this$0:Lcom/smartisanos/launcher/StatusManager;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/StatusManager;->canUpdateAndAddApp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/StatusManager$1$1;->this$1:Lcom/smartisanos/launcher/StatusManager$1;

    iget-object v0, v0, Lcom/smartisanos/launcher/StatusManager$1;->this$0:Lcom/smartisanos/launcher/StatusManager;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/StatusManager;->canUninstallApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->handleTaskList()V

    .line 132
    :cond_1
    return-void
.end method
