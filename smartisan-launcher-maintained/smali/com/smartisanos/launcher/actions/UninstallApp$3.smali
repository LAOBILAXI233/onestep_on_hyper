.class Lcom/smartisanos/launcher/actions/UninstallApp$3;
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
    .line 180
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$3;->this$0:Lcom/smartisanos/launcher/actions/UninstallApp;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const v8, 0x3e99999a    # 0.3f

    .line 183
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TrashView;->isTrashAnimRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v5

    const-string v6, "cancelActionEvent return by uninstall anim is running."

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 185
    :cond_0
    invoke-static {v7}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$102(Z)Z

    .line 246
    :cond_1
    :goto_0
    return-void

    .line 189
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v4

    .line 190
    .local v4, "trash":Lcom/smartisanos/launcher/view/TrashView;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 191
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-nez v0, :cond_3

    .line 192
    invoke-static {v7}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$102(Z)Z

    .line 193
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v5

    const-string v6, "DEBUG"

    const-string v7, "NegativeButton click ==> error cell is null !!!"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v5

    const/16 v6, 0x400

    invoke-virtual {v5, v6, v9}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 197
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v5

    const-string v6, "DEBUG"

    const-string v7, "NegativeButton click ==> revertCollideStatus !"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 199
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, "params":Ljava/util/ArrayList;
    new-instance v3, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 203
    .local v3, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/TrashView;->revertCollideStatus()V

    .line 207
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getCellAnimation()Lcom/smartisanos/launcher/animations/CellAnimation;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/smartisanos/launcher/animations/CellAnimation;->setIsCancelAction(Z)V

    .line 208
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getCellAnimation()Lcom/smartisanos/launcher/animations/CellAnimation;

    move-result-object v5

    invoke-virtual {v5, v3, v8}, Lcom/smartisanos/launcher/animations/CellAnimation;->stopRock(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 209
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    sget-object v6, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->RELAYOUT_BY_UP:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    .line 210
    invoke-virtual {v5, v6, v8, v1}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 211
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    sget-object v6, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->CELL_BROADED:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    .line 212
    invoke-virtual {v5, v6, v8, v1}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 213
    sget-object v5, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_REDUCE:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v4, v5, v8, v1}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 214
    sget-object v5, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FALL:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v4, v5, v8, v1}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 217
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    if-nez v5, :cond_5

    .line 219
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyScreen(F)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v2

    .line 220
    .local v2, "removePageAnim":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v2, :cond_5

    .line 221
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 224
    .end local v2    # "removePageAnim":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_5
    new-instance v5, Lcom/smartisanos/launcher/actions/UninstallApp$3$1;

    invoke-direct {v5, p0, v0}, Lcom/smartisanos/launcher/actions/UninstallApp$3$1;-><init>(Lcom/smartisanos/launcher/actions/UninstallApp$3;Lcom/smartisanos/launcher/view/Cell;)V

    invoke-virtual {v3, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 245
    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto/16 :goto_0
.end method
