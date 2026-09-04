.class Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;
.super Ljava/lang/Object;
.source "CellStatusForPage.java"

.implements Lcom/smartisanos/smengine/SceneNode$CollideListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/CellStatusForPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollisionListenerForPageCell"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;


.method private constructor <init>(Lcom/smartisanos/launcher/view/CellStatusForPage;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/launcher/view/CellStatusForPage;Lcom/smartisanos/launcher/view/CellStatusForPage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;
    .param p2, "x1"    # Lcom/smartisanos/launcher/view/CellStatusForPage$1;

    .prologue
    .line 363
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;-><init>(Lcom/smartisanos/launcher/view/CellStatusForPage;)V

    return-void
.end method


.method public onCollideEnter(Lcom/smartisanos/smengine/CollisionData;)I
    .locals 10
    .param p1, "cd"    # Lcom/smartisanos/smengine/CollisionData;

    .prologue
    const/4 v9, 0x0

    .line 373
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/AnimationController;->hasAnimationPlaying()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 375
    iget-object v7, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$300(Lcom/smartisanos/launcher/view/CellStatusForPage;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 376
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/smartisanos/launcher/view/AnimationController;->forceHandleMyAnimation(Lcom/smartisanos/smengine/CollisionData;)V

    .line 426
    :cond_0
    :goto_0
    return v9

    .line 381
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/CollisionData;->getCollidedNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 382
    .local v0, "collided":Lcom/smartisanos/launcher/view/Cell;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 383
    .local v6, "selected":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v6, :cond_2

    .line 385
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getCellPageStatus()Lcom/smartisanos/launcher/view/CellStatusForPage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/CellStatusForPage;->cellIsUpAnimation()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 386
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/smartisanos/launcher/view/AnimationController;->forceHandleMyAnimation(Lcom/smartisanos/smengine/CollisionData;)V

    goto :goto_0

    .line 390
    :cond_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "### selected cell is null,collided is wrong"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 398
    :cond_3
    iget-object v7, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v7

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getTouchX()F

    move-result v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/view/Cell;->whichSide(F)I

    move-result v5

    .line 399
    .local v5, "result":I
    if-nez v5, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v7

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v8

    invoke-static {v7, v8}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v1

    .line 406
    .local v1, "collidedCellIndex":I
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 407
    .local v2, "collidedPage":Lcom/smartisanos/launcher/view/Page;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v3

    .line 409
    .local v3, "collidedPageIndex":I
    invoke-virtual {p1}, Lcom/smartisanos/smengine/CollisionData;->isFirstEnter()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 410
    new-instance v4, Lcom/smartisanos/smengine/Notification;

    invoke-direct {v4}, Lcom/smartisanos/smengine/Notification;-><init>()V

    .line 411
    .local v4, "n":Lcom/smartisanos/smengine/Notification;
    invoke-virtual {v4, p1}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 412
    iget-object v7, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$700(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v7

    const-string v8, "cellCollideEnter"

    invoke-virtual {v7, v8, v4}, Lcom/smartisanos/smengine/NotificationManager;->postNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V

    .line 413
    iget-object v7, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v7, v1}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$802(Lcom/smartisanos/launcher/view/CellStatusForPage;I)I

    .line 414
    iget-object v7, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v7, v3}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$902(Lcom/smartisanos/launcher/view/CellStatusForPage;I)I

    goto/16 :goto_0

    .line 417
    .end local v4    # "n":Lcom/smartisanos/smengine/Notification;
    :cond_4
    iget-object v7, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$800(Lcom/smartisanos/launcher/view/CellStatusForPage;)I

    move-result v7

    if-ne v1, v7, :cond_5

    iget-object v7, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$900(Lcom/smartisanos/launcher/view/CellStatusForPage;)I

    move-result v7

    if-eq v3, v7, :cond_0

    .line 418
    :cond_5
    new-instance v4, Lcom/smartisanos/smengine/Notification;

    invoke-direct {v4}, Lcom/smartisanos/smengine/Notification;-><init>()V

    .line 419
    .restart local v4    # "n":Lcom/smartisanos/smengine/Notification;
    invoke-virtual {v4, p1}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 420
    iget-object v7, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v7}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$700(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v7

    const-string v8, "cellCollideEnter"

    invoke-virtual {v7, v8, v4}, Lcom/smartisanos/smengine/NotificationManager;->postNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V

    .line 421
    iget-object v7, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v7, v1}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$802(Lcom/smartisanos/launcher/view/CellStatusForPage;I)I

    .line 422
    iget-object v7, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v7, v3}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$902(Lcom/smartisanos/launcher/view/CellStatusForPage;I)I

    goto/16 :goto_0
.end method

.method public onCollideExit(Lcom/smartisanos/smengine/CollisionData;)I
    .locals 1
    .param p1, "cd"    # Lcom/smartisanos/smengine/CollisionData;

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method
