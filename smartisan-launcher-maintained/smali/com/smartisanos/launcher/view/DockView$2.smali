.class Lcom/smartisanos/launcher/view/DockView$2;
.super Ljava/lang/Object;
.source "DockView.java"

.implements Lcom/smartisanos/smengine/SceneNode$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/DockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/DockView;


.method constructor <init>(Lcom/smartisanos/launcher/view/DockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView$2;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 11
    .param p1, "v"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/high16 v10, 0x80000

    const/4 v9, 0x0

    .line 335
    if-nez p1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getInstance()Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    move-result-object v3

    .line 339
    .local v3, "sortAction":Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    const/4 v0, 0x0

    .line 340
    .local v0, "clicked":Z
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DockView$2;->this$0:Lcom/smartisanos/launcher/view/DockView;

    iget-object v6, v6, Lcom/smartisanos/launcher/view/DockView;->mSortConfirmButton:Lcom/smartisanos/smengine/RectNode;

    if-ne p1, v6, :cond_3

    .line 341
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DockView$2;->this$0:Lcom/smartisanos/launcher/view/DockView;

    const/4 v7, 0x1

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v8

    iget v8, v8, Lcom/smartisanos/launcher/view/StatusBar;->mSortType:I

    invoke-static {v6, v7, v8}, Lcom/smartisanos/launcher/view/DockView;->access$200(Lcom/smartisanos/launcher/view/DockView;ZI)V

    .line 342
    const/4 v0, 0x1

    .line 344
    invoke-static {}, Lcom/smartisanos/launcher/view/DockView;->access$300()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    const-string v7, "onClick mSortConfirmButton"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v6

    invoke-virtual {v6, v10, v9}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 346
    const/16 v6, 0x65

    iput v6, v3, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    .line 347
    const v4, 0x3e99999a    # 0.3f

    .line 348
    .local v4, "time":F
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    .local v2, "params":Ljava/util/List;
    new-instance v5, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 350
    .local v5, "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 352
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 353
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DockView$2;->this$0:Lcom/smartisanos/launcher/view/DockView;

    sget-object v7, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->ICON_SORT_CONFIRM_ANIM:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v6, v7, v4, v2}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 354
    new-instance v6, Lcom/smartisanos/launcher/view/DockView$2$1;

    invoke-direct {v6, p0}, Lcom/smartisanos/launcher/view/DockView$2$1;-><init>(Lcom/smartisanos/launcher/view/DockView$2;)V

    invoke-virtual {v5, v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 364
    invoke-virtual {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 365
    sget-object v6, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REFRESH:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v6}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 381
    .end local v2    # "params":Ljava/util/List;
    .end local v4    # "time":F
    .end local v5    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    .line 383
    .local v1, "mainView":Lcom/smartisanos/launcher/view/MainView;
    new-instance v5, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 384
    .restart local v5    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/view/StatusBar;->hideTextOnStatusBar(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 385
    const v6, 0x3ee66666    # 0.45f

    invoke-virtual {v1, v5, v6, v9}, Lcom/smartisanos/launcher/view/MainView;->showStatusBarText(Lcom/smartisanos/smengine/AnimationTimeLine;FI)V

    .line 386
    invoke-virtual {v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto/16 :goto_0

    .line 367
    .end local v1    # "mainView":Lcom/smartisanos/launcher/view/MainView;
    .end local v5    # "timeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DockView$2;->this$0:Lcom/smartisanos/launcher/view/DockView;

    iget-object v6, v6, Lcom/smartisanos/launcher/view/DockView;->mSortCancelButton:Lcom/smartisanos/smengine/RectNode;

    if-ne p1, v6, :cond_2

    .line 368
    iget-object v6, p0, Lcom/smartisanos/launcher/view/DockView$2;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/launcher/view/StatusBar;->mSortType:I

    invoke-static {v6, v9, v7}, Lcom/smartisanos/launcher/view/DockView;->access$200(Lcom/smartisanos/launcher/view/DockView;ZI)V

    .line 369
    const/4 v0, 0x1

    .line 371
    invoke-static {}, Lcom/smartisanos/launcher/view/DockView;->access$300()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    const-string v7, "onClick mSortCancelButton"

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v6

    invoke-virtual {v6, v10, v9}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 373
    const/16 v6, 0x64

    iput v6, v3, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    .line 374
    iget-object v6, v3, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->bakData:Lcom/smartisanos/launcher/actions/sort/SortResult;

    if-nez v6, :cond_4

    .line 375
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "mSortCancelButton error, bakData is null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 377
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 378
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 379
    invoke-virtual {v3}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->beginSortIcon()V

    goto :goto_1
.end method
