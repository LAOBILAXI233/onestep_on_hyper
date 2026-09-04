.class Lcom/smartisanos/launcher/view/TrashView$2;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "TrashView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/TrashView;->handleUninstallFinish(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/TrashView;

.field final synthetic val$cellsOnPage:Ljava/util/List;

.field final synthetic val$finishCallback:Ljava/lang/Runnable;

.field final synthetic val$removedCells:Ljava/util/List;


.method constructor <init>(Lcom/smartisanos/launcher/view/TrashView;Ljava/util/List;Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/TrashView;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/TrashView$2;->val$cellsOnPage:Ljava/util/List;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/TrashView$2;->val$removedCells:Ljava/util/List;

    iput-object p4, p0, Lcom/smartisanos/launcher/view/TrashView$2;->val$finishCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const v10, 0x3e99999a    # 0.3f

    .line 439
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TrashView;->access$100(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 440
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    .line 441
    .local v3, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v5

    .line 442
    .local v5, "pageView":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    .line 445
    .local v1, "dockView":Lcom/smartisanos/launcher/view/DockView;
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TrashView;->access$200(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 446
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TrashView;->access$200(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 448
    :cond_0
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    new-instance v8, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v8}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/view/TrashView;->access$202(Lcom/smartisanos/launcher/view/TrashView;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 449
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TrashView;->access$100(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    .line 450
    .local v2, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v2, :cond_1

    .line 451
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->isDockItem()Z

    move-result v7

    if-nez v7, :cond_2

    .line 452
    new-instance v4, Lcom/smartisanos/smengine/Notification;

    invoke-direct {v4}, Lcom/smartisanos/smengine/Notification;-><init>()V

    .line 453
    .local v4, "n":Lcom/smartisanos/smengine/Notification;
    new-instance v7, Ljava/lang/Integer;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 454
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TrashView;->access$200(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 455
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->val$cellsOnPage:Ljava/util/List;

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 456
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 457
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v7

    const-string v8, "relayoutByUninstall"

    invoke-virtual {v7, v8, v4}, Lcom/smartisanos/smengine/NotificationManager;->postNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V

    .line 463
    .end local v4    # "n":Lcom/smartisanos/smengine/Notification;
    :goto_0
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TrashView;->access$100(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 464
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TrashView;->access$100(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->deleteTextureForCell()V

    .line 465
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TrashView;->access$100(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/smartisanos/launcher/view/Cell;->clear(Z)V

    .line 466
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/TrashView;->access$300()Lcom/smartisanos/launcher/LOG;

    move-result-object v7

    const-string v8, "A140"

    const-string v9, "waitingUninstallApp clear !!!"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v6, "params":Ljava/util/ArrayList;
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TrashView;->access$200(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    sget-object v7, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->RELAYOUT_BY_UP:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v1, v7, v10, v6}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 471
    sget-object v7, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->CELL_BROADED:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v1, v7, v10, v6}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 472
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v7

    sget-object v8, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_REDUCE:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v7, v8, v10, v6}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 474
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v7

    sget-object v8, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FALL:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v7, v8, v10, v6}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 477
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v7

    new-instance v8, Lcom/smartisanos/launcher/view/TrashView$2$1;

    invoke-direct {v8, p0}, Lcom/smartisanos/launcher/view/TrashView$2$1;-><init>(Lcom/smartisanos/launcher/view/TrashView$2;)V

    invoke-virtual {v7, v8}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 483
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TrashView;->access$200(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v7

    new-instance v8, Lcom/smartisanos/launcher/view/TrashView$2$2;

    invoke-direct {v8, p0}, Lcom/smartisanos/launcher/view/TrashView$2$2;-><init>(Lcom/smartisanos/launcher/view/TrashView$2;)V

    invoke-virtual {v7, v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 505
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TrashView;->access$200(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 520
    .end local v1    # "dockView":Lcom/smartisanos/launcher/view/DockView;
    .end local v2    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v3    # "mainView":Lcom/smartisanos/launcher/view/MainView;
    .end local v5    # "pageView":Lcom/smartisanos/launcher/view/PageView;
    .end local v6    # "params":Ljava/util/ArrayList;
    :goto_1
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/view/TrashView;->access$402(Lcom/smartisanos/launcher/view/TrashView;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 522
    return-void

    .line 459
    .restart local v1    # "dockView":Lcom/smartisanos/launcher/view/DockView;
    .restart local v2    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .restart local v3    # "mainView":Lcom/smartisanos/launcher/view/MainView;
    .restart local v5    # "pageView":Lcom/smartisanos/launcher/view/PageView;
    :cond_2
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TrashView;->access$100(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/smartisanos/launcher/view/DockView;->removeDockCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 460
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->this$0:Lcom/smartisanos/launcher/view/TrashView;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/TrashView;->access$200(Lcom/smartisanos/launcher/view/TrashView;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v7

    invoke-virtual {v1, v7, v10}, Lcom/smartisanos/launcher/view/DockView;->reLayoutCellByMode(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    goto/16 :goto_0

    .line 507
    .end local v1    # "dockView":Lcom/smartisanos/launcher/view/DockView;
    .end local v2    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v3    # "mainView":Lcom/smartisanos/launcher/view/MainView;
    .end local v5    # "pageView":Lcom/smartisanos/launcher/view/PageView;
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v7

    const/high16 v8, 0x10000

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 508
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->val$removedCells:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 509
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->val$removedCells:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 510
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 511
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->deleteTextureForCell()V

    .line 512
    invoke-virtual {v0, v11}, Lcom/smartisanos/launcher/view/Cell;->clear(Z)V

    goto :goto_2

    .line 515
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_4
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->val$finishCallback:Ljava/lang/Runnable;

    if-eqz v7, :cond_5

    .line 516
    iget-object v7, p0, Lcom/smartisanos/launcher/view/TrashView$2;->val$finishCallback:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 518
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/PageView;->cleanPageViewWhenCellOnUpNoDelay()V

    goto :goto_1
.end method
