.class Lcom/smartisanos/launcher/actions/UninstallApp$4;
.super Lcom/smartisanos/smengine/Event;
.source "UninstallApp.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/UninstallApp;->createCancelActionEvent(I)Lcom/smartisanos/smengine/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/actions/UninstallApp;


.method constructor <init>(Lcom/smartisanos/launcher/actions/UninstallApp;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/actions/UninstallApp;
    .param p2, "type"    # I

    .prologue
    .line 250
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$4;->this$0:Lcom/smartisanos/launcher/actions/UninstallApp;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 253
    invoke-super {p0}, Lcom/smartisanos/smengine/Event;->run()V

    .line 254
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/TrashView;->isTrashAnimRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 255
    invoke-static {v8}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$102(Z)Z

    .line 256
    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v7

    const-string v8, "REMOVE_MULTI_APPS isTrashAnimRunning"

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 315
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    .line 260
    .local v1, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    .line 261
    .local v0, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v6

    .line 262
    .local v6, "trash":Lcom/smartisanos/launcher/view/TrashView;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallApps()Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-result-object v2

    .line 263
    .local v2, "multiSelectNode":Lcom/smartisanos/launcher/view/MultiSelectNode;
    if-nez v2, :cond_1

    .line 264
    invoke-static {v8}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$102(Z)Z

    .line 265
    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v7

    const-string v8, "REMOVE_MULTI_APPS multiSelectNode"

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v7

    const/16 v8, 0x400

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 269
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 270
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 272
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/TrashView;->revertCollideStatus()V

    .line 274
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v3, "params":Ljava/util/ArrayList;
    new-instance v5, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 276
    .local v5, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const v4, 0x3e99999a    # 0.3f

    .line 279
    .local v4, "time":F
    sget-object v7, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->SETTING_BTN_SCALE_APPEAR:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v7, v4, v3}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 280
    sget-object v7, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_REDUCE:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v6, v7, v4, v3}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 281
    sget-object v7, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FALL:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v6, v7, v4, v3}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 283
    iget-object v7, p0, Lcom/smartisanos/launcher/actions/UninstallApp$4;->this$0:Lcom/smartisanos/launcher/actions/UninstallApp;

    invoke-static {v7}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$200(Lcom/smartisanos/launcher/actions/UninstallApp;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Lcom/smartisanos/launcher/view/MultiSelectNode;->uninstallCancelSendSomeCellsReturnToItOwnPage(Ljava/util/List;Lcom/smartisanos/smengine/AnimationTimeLine;)V

    .line 285
    new-instance v7, Lcom/smartisanos/launcher/actions/UninstallApp$4$1;

    invoke-direct {v7, p0}, Lcom/smartisanos/launcher/actions/UninstallApp$4$1;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp$4;)V

    invoke-virtual {v5, v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 314
    invoke-virtual {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto :goto_0
.end method
