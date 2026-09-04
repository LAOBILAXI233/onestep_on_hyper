.class final Lcom/smartisanos/launcher/actions/UninstallApp$2;
.super Lcom/smartisanos/smengine/Event;
.source "UninstallApp.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/UninstallApp;->cancelUninstallWithoutAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->isUninstallAppRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "uninstall is running ! nothing to do !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TrashView;->isTrashAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "trash animation is running, so return !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->sendWaitingUninstallAppBackNoAnim()V

    goto :goto_0
.end method
