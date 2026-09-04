.class Lcom/smartisanos/launcher/actions/UninstallApp$4$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "UninstallApp.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/UninstallApp$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/actions/UninstallApp$4;


.method constructor <init>(Lcom/smartisanos/launcher/actions/UninstallApp$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/actions/UninstallApp$4;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$4$1;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$4;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 288
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$4$1;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$4;

    iget-object v1, v1, Lcom/smartisanos/launcher/actions/UninstallApp$4;->this$0:Lcom/smartisanos/launcher/actions/UninstallApp;

    invoke-static {v1}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$200(Lcom/smartisanos/launcher/actions/UninstallApp;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$4$1;->this$1:Lcom/smartisanos/launcher/actions/UninstallApp$4;

    iget-object v1, v1, Lcom/smartisanos/launcher/actions/UninstallApp$4;->this$0:Lcom/smartisanos/launcher/actions/UninstallApp;

    invoke-static {v1}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$200(Lcom/smartisanos/launcher/actions/UninstallApp;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 290
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->restoreFromPending()V

    goto :goto_0

    .line 293
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallApps(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    .line 294
    invoke-static {v3}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$102(Z)Z

    .line 295
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/MainView;->setUsePostEffect(Z)V

    .line 296
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 297
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 299
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 300
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 301
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/launcher/actions/UninstallApp$4$1$1;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/actions/UninstallApp$4$1$1;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp$4$1;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 312
    return-void
.end method
