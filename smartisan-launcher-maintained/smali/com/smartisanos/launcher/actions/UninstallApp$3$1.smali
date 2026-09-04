.class Lcom/smartisanos/launcher/actions/UninstallApp$3$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "UninstallApp.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/UninstallApp$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/actions/UninstallApp$3;

.field final synthetic val$cell:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/actions/UninstallApp$3;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/actions/UninstallApp$3;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$3$1;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$3;

    iput-object p2, p0, Lcom/smartisanos/launcher/actions/UninstallApp$3$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$3$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->restoreFromPending()V

    .line 228
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 229
    invoke-static {v2}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$102(Z)Z

    .line 230
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/MainView;->setUsePostEffect(Z)V

    .line 231
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 232
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 234
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "cancelActionEvent set mUninstallDialog to be null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 235
    :cond_0
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/actions/UninstallApp$3$1$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/actions/UninstallApp$3$1$1;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp$3$1;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method
