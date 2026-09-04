.class public Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;
.super Ljava/lang/Object;
.source "CellStatusForDock.java"

.implements Lcom/smartisanos/smengine/SceneNode$TouchListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/CellStatusForDock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TouchListenerForDockCell"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;


.method public constructor <init>(Lcom/smartisanos/launcher/view/CellStatusForDock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/CellStatusForDock;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onDown(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 655
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    const-string v2, "onDown begin"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    :cond_0
    return-void
.end method

.method public onMove(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 14
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v13, 0x0

    .line 613
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getDeltaX()F

    move-result v1

    .line 614
    .local v1, "deltax":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getDeltaY()F

    move-result v2

    .line 615
    .local v2, "deltay":F
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    if-nez v9, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    .line 619
    .local v4, "scale":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 620
    .local v6, "v":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    iget v10, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v11, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float v11, v1, v11

    add-float/2addr v10, v11

    iget v11, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v12, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    div-float v12, v2, v12

    add-float/2addr v11, v12

    iget v12, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v9, v10, v11, v12}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 621
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 623
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->forceFinishCellLongPressAnimation()V

    .line 624
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->isAway()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 625
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    const v10, 0x3dcccccd    # 0.1f

    invoke-virtual {v9, v13, v10}, Lcom/smartisanos/launcher/view/Cell;->hideLongPressAppName(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 628
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    .line 629
    .local v3, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v5

    .line 630
    .local v5, "trashView":Lcom/smartisanos/launcher/view/TrashView;
    if-eqz v5, :cond_0

    .line 631
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateX()F

    move-result v7

    .line 632
    .local v7, "x":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateY()F

    move-result v8

    .line 633
    .local v8, "y":F
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TrashView;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v9

    new-instance v10, Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v8, v11}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v9, v10}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 634
    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v9

    const-string v10, "######## into trash"

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 635
    new-instance v0, Lcom/smartisanos/smengine/CollisionData;

    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    invoke-direct {v0, v9, v5}, Lcom/smartisanos/smengine/CollisionData;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 636
    .local v0, "collideData":Lcom/smartisanos/smengine/CollisionData;
    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/TrashView;->enterTrash(Lcom/smartisanos/smengine/CollisionData;)I

    .line 637
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    if-nez v9, :cond_0

    .line 638
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v9

    const-string v10, "DEBUG"

    const-string v11, "setWaitingUninstallCell ... "

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :cond_3
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    if-nez v9, :cond_4

    .line 640
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    goto/16 :goto_0

    .line 641
    :cond_4
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    iget-object v10, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v10}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 642
    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    goto/16 :goto_0

    .line 646
    .end local v0    # "collideData":Lcom/smartisanos/smengine/CollisionData;
    :cond_5
    new-instance v0, Lcom/smartisanos/smengine/CollisionData;

    iget-object v9, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v9}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    invoke-direct {v0, v9, v5}, Lcom/smartisanos/smengine/CollisionData;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 647
    .restart local v0    # "collideData":Lcom/smartisanos/smengine/CollisionData;
    invoke-virtual {v5, v0}, Lcom/smartisanos/launcher/view/TrashView;->exitTrash(Lcom/smartisanos/smengine/CollisionData;)I

    .line 648
    invoke-virtual {v5, v13}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    goto/16 :goto_0
.end method

.method public onUp(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 595
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    if-nez v0, :cond_0

    .line 609
    :goto_0
    return-void

    .line 598
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/AnimationController;->isUnlockAnimationInit()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "## Poweroff first!!!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$300(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 603
    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "dockCellUpAnimation is not null, return !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on up info, time ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], X ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], Y ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 607
    :cond_3
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cell onUp pkg ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], appName ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 608
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$TouchListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$400(Lcom/smartisanos/launcher/view/CellStatusForDock;)V

    goto/16 :goto_0
.end method
