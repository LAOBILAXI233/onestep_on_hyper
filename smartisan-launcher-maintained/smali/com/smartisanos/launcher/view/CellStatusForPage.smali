.class public Lcom/smartisanos/launcher/view/CellStatusForPage;
.super Ljava/lang/Object;
.source "CellStatusForPage.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;,
        Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;,
        Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;
    }
.end annotation


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private MAX_RE_COLLIDE_DISTANCE:F

.field protected collisionListener:Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;

.field isDraw:Z

.field private mCell:Lcom/smartisanos/launcher/view/Cell;

.field private mIconBeginPosition:Lcom/smartisanos/smengine/math/Vector3f;

.field private mMutiselect_first_notice_toast:Landroid/widget/Toast;

.field private mNeedMoveX:F

.field private mNeedMoveY:F

.field private mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

.field private mPreCellIndex:I

.field private mPrePageIndex:I

.field private onUpRunning:Z

.field private pageCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

.field protected singleTapListener:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

.field protected touchListener:Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/CellStatusForPage;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 4
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mPreCellIndex:I

    .line 42
    iput v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mPrePageIndex:I

    .line 44
    new-instance v0, Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;-><init>(Lcom/smartisanos/launcher/view/CellStatusForPage;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;

    .line 45
    new-instance v0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;-><init>(Lcom/smartisanos/launcher/view/CellStatusForPage;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->singleTapListener:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    .line 46
    new-instance v0, Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;

    invoke-direct {v0, p0, v3}, Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;-><init>(Lcom/smartisanos/launcher/view/CellStatusForPage;Lcom/smartisanos/launcher/view/CellStatusForPage$1;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->collisionListener:Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;

    .line 47
    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->MAX_RE_COLLIDE_DISTANCE:F

    .line 48
    iput-object v3, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->pageCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 49
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->onUpRunning:Z

    .line 565
    iput v1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mNeedMoveX:F

    .line 566
    iput v1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mNeedMoveY:F

    .line 585
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->isDraw:Z

    .line 62
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    .line 63
    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method

.method static synthetic access$202(Lcom/smartisanos/launcher/view/CellStatusForPage;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->pageCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/CellStatusForPage;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->onUpRunning:Z

    return v0
.end method

.method static synthetic access$302(Lcom/smartisanos/launcher/view/CellStatusForPage;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->onUpRunning:Z

    return p1
.end method

.method static synthetic access$400()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/smartisanos/launcher/view/CellStatusForPage;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/view/CellStatusForPage;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->handleOnUP()V

    return-void
.end method

.method static synthetic access$600(Lcom/smartisanos/launcher/view/CellStatusForPage;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mMutiselect_first_notice_toast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$602(Lcom/smartisanos/launcher/view/CellStatusForPage;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mMutiselect_first_notice_toast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$700(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/smengine/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/smartisanos/launcher/view/CellStatusForPage;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;

    .prologue
    .line 35
    iget v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mPreCellIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/smartisanos/launcher/view/CellStatusForPage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mPreCellIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/smartisanos/launcher/view/CellStatusForPage;)I
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;

    .prologue
    .line 35
    iget v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mPrePageIndex:I

    return v0
.end method

.method static synthetic access$902(Lcom/smartisanos/launcher/view/CellStatusForPage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mPrePageIndex:I

    return p1
.end method

.method private getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

    if-nez v0, :cond_0

    .line 553
    invoke-static {}, Lcom/smartisanos/smengine/NotificationManager;->getCurrentNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

    .line 555
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

    return-object v0
.end method

.method private handleLongPress()Z
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v13, 0x0

    const v12, 0x3e4ccccd    # 0.2f

    const/4 v9, 0x1

    .line 436
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/smartisanos/launcher/view/CellStatusForPage;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "page cell handle longpress"

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 438
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 492
    :goto_0
    return v8

    .line 443
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    .line 444
    .local v2, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    .line 445
    .local v1, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    .line 446
    .local v4, "pageView":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v6

    .line 448
    .local v6, "trashView":Lcom/smartisanos/launcher/view/TrashView;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 449
    sget-object v10, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->pageCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-nez v10, :cond_3

    .line 450
    new-instance v8, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v8}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    sput-object v8, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 457
    iget-object v8, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->saveInitPos()V

    .line 458
    iget-object v8, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    sget-object v10, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v8, v10, v12}, Lcom/smartisanos/launcher/view/Cell;->showBackgroundOverlay(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 460
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/World;->getInputManager()Lcom/smartisanos/smengine/InputManager;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/smartisanos/smengine/InputManager;->setBatchMode(Z)V

    .line 462
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->doNotCreateEmptyPage()Z

    move-result v8

    if-nez v8, :cond_2

    .line 463
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->createEmptyScreen()V

    .line 465
    :cond_2
    invoke-virtual {v1, v13}, Lcom/smartisanos/launcher/view/DockView;->setCollidedUpCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 466
    iget-object v8, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    iput-boolean v9, v8, Lcom/smartisanos/launcher/view/Cell;->FLOAT_STATUS:Z

    .line 467
    iget-object v8, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/Cell;->setInteractionState(I)V

    .line 469
    iget-object v8, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 470
    .local v7, "v":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v8, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->getSaveData()Lcom/smartisanos/launcher/view/Cell$SaveData;

    move-result-object v8

    new-instance v10, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v10, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(Lcom/smartisanos/smengine/math/Vector3f;)V

    iput-object v10, v8, Lcom/smartisanos/launcher/view/Cell$SaveData;->oldLocation:Lcom/smartisanos/smengine/math/Vector3f;

    .line 471
    iget-object v8, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Cell;->longPressCommonInvoke()V

    .line 472
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v8

    sget v10, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {v8, v10}, Lcom/smartisanos/launcher/view/TrashView;->updateTrashByMode(I)V

    .line 474
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v5, "params":Ljava/util/ArrayList;
    sget-object v8, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    sget-object v8, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_APPEAR:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v6, v8, v12, v5}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 477
    sget-object v8, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->RELAYOUT_BY_LONG_PRESSED:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v1, v8, v12, v5}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 478
    sget-object v8, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->CELL_NARROWED:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v1, v8, v12, v5}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 479
    sget-object v8, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 482
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/smartisanos/launcher/view/TrashView;->setWaitingUninstallCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 483
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {v1, v8, v9, v13}, Lcom/smartisanos/launcher/view/DockView;->getDockCellArea(IZLcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/smengine/BoundingRect;

    move-result-object v8

    iput-object v8, v1, Lcom/smartisanos/launcher/view/DockView;->dockCellAreaRect:Lcom/smartisanos/smengine/BoundingRect;

    .line 484
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getDockCellCount()I

    move-result v0

    .line 485
    .local v0, "cellCount":I
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    iget v3, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    .line 486
    .local v3, "maxCellCount":I
    if-ge v0, v3, :cond_4

    .line 487
    add-int/lit8 v0, v0, 0x1

    .line 491
    :goto_1
    iget-object v8, v1, Lcom/smartisanos/launcher/view/DockView;->dockCellAreaRect:Lcom/smartisanos/smengine/BoundingRect;

    invoke-virtual {v1, v0, v8}, Lcom/smartisanos/launcher/view/DockView;->calculateCellsLocation(ILcom/smartisanos/smengine/BoundingRect;)V

    move v8, v9

    .line 492
    goto/16 :goto_0

    .line 452
    .end local v0    # "cellCount":I
    .end local v3    # "maxCellCount":I
    .end local v5    # "params":Ljava/util/ArrayList;
    .end local v7    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_3
    invoke-virtual {v4, v13}, Lcom/smartisanos/launcher/view/PageView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 453
    sget-object v9, Lcom/smartisanos/launcher/view/CellStatusForPage;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    const-string v11, "handleLongPress() return by cellLongPressAnimationTimeLine is not null !"

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    .restart local v0    # "cellCount":I
    .restart local v3    # "maxCellCount":I
    .restart local v5    # "params":Ljava/util/ArrayList;
    .restart local v7    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private handleOnUP()V
    .locals 11

    .prologue
    const/16 v10, 0x20

    const/4 v9, 0x0

    const v8, 0x3e99999a    # 0.3f

    .line 92
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/smartisanos/launcher/view/CellStatusForPage;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CellStatusForPage onUp ! cell name ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/Cell;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->pageCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v4, :cond_1

    .line 94
    sget-object v4, Lcom/smartisanos/launcher/view/CellStatusForPage;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "page cell up error !!! pageCellUpAnimation is not null !"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 97
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    .line 98
    .local v1, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    .line 99
    .local v0, "dockView":Lcom/smartisanos/launcher/view/DockView;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    .line 101
    .local v2, "pageView":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->forceUpdateGeometricState()V

    .line 102
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->disableAllPageForceRender()V

    .line 103
    iget-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/view/PageView;->sIsInstanceFromPageView(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v4

    if-nez v4, :cond_3

    .line 105
    iput-boolean v9, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->onUpRunning:Z

    .line 106
    iget-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4, v9}, Lcom/smartisanos/launcher/view/Cell;->convertToPageCell(Z)V

    .line 108
    iget-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getCellDockStatus()Lcom/smartisanos/launcher/view/CellStatusForDock;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/CellStatusForDock;->translateCellToDock()V

    .line 206
    :cond_2
    :goto_0
    return-void

    .line 112
    :cond_3
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->resetPreCollideUpIndex()V

    .line 113
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->resetPreCollideMoveIndex()V

    .line 115
    iget-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    iput-boolean v9, v4, Lcom/smartisanos/launcher/view/Cell;->FLOAT_STATUS:Z

    .line 117
    sget-object v4, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v4, :cond_4

    .line 119
    sget-object v4, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 120
    const/4 v4, 0x0

    sput-object v4, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 123
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 124
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v4

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 125
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/FloatPageNode;->forceFinishFloatPageAnimation()V

    .line 128
    :cond_5
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/AnimationController;->clearAllAnimationEventInQueue()V

    .line 130
    iget-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->coverHide()V

    .line 133
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getInputManager()Lcom/smartisanos/smengine/InputManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/smartisanos/smengine/InputManager;->setBatchMode(Z)V

    .line 136
    new-instance v4, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->pageCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 137
    iget-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->pageCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v4, v5, v8}, Lcom/smartisanos/launcher/view/Cell;->hideLongPressAppName(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v3, "params":Ljava/util/ArrayList;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->pageCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v4, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->RELAYOUT_BY_UP:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v4, v8, v3}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 142
    sget-object v4, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->CELL_BROADED:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    invoke-virtual {v0, v4, v8, v3}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 143
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v4

    sget-object v5, Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;->TRASH_FALL:Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;

    invoke-virtual {v4, v5, v8, v3}, Lcom/smartisanos/launcher/view/TrashView;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V

    .line 145
    iget-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->pageCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/AnimationController;->cellUpOnPage()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 147
    iget-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->pageCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v5, Lcom/smartisanos/launcher/view/CellStatusForPage$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/smartisanos/launcher/view/CellStatusForPage$1;-><init>(Lcom/smartisanos/launcher/view/CellStatusForPage;Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/launcher/view/MainView;)V

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 199
    iget-object v4, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->pageCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 200
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 203
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 204
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->showStatusBar()V

    goto/16 :goto_0
.end method


.method public cellIsUpAnimation()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->onUpRunning:Z

    return v0
.end method

.method public endDragIcon(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 640
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    if-nez v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 643
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

    .line 644
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/view/CellStatusForPage;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "## Poweroff first!!!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 646
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->onUpRunning:Z

    .line 647
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/view/MainView;->setScreenXYForFastUp(FF)V

    .line 648
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->handleOnUP()V

    goto :goto_0
.end method

.method public forceFinishCellUpAnim()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->pageCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->pageCellUpAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 55
    :cond_0
    return-void
.end method

.method public forceInvokeUp()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->onUpRunning:Z

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->handleOnUP()V

    .line 88
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->forceFinishCellUpAnim()V

    goto :goto_0
.end method

.method public getCollisionListener()Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->collisionListener:Lcom/smartisanos/launcher/view/CellStatusForPage$CollisionListenerForPageCell;

    return-object v0
.end method

.method public getSingleTapListener()Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->singleTapListener:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    return-object v0
.end method

.method public getTouchListener()Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;

    return-object v0
.end method

.method public initDragIcon()V
    .locals 0

    .prologue
    .line 583
    return-void
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 5
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 496
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 497
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/launcher/view/CellStatusForPage;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constants.sPageMode ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], Constants.MULTI_PAGE_MODE ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_0
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v1, v2, :cond_1

    .line 499
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 500
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->singleTapListener:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    if-eqz v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->singleTapListener:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->onClick(Lcom/smartisanos/smengine/TouchEvent;)V

    .line 548
    :cond_1
    :goto_0
    return v0

    .line 508
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 511
    :sswitch_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;

    if-eqz v2, :cond_1

    .line 512
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;->onMove(Lcom/smartisanos/smengine/TouchEvent;)V

    move v0, v1

    .line 513
    goto :goto_0

    .line 519
    :sswitch_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;

    if-eqz v2, :cond_1

    .line 520
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;->onMove(Lcom/smartisanos/smengine/TouchEvent;)V

    move v0, v1

    .line 521
    goto :goto_0

    .line 527
    :sswitch_2
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 528
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->handleLongPress()Z

    goto :goto_0

    .line 533
    :sswitch_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->singleTapListener:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->singleTapListener:Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->onClick(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 541
    :sswitch_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;

    if-eqz v2, :cond_1

    .line 542
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->touchListener:Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/CellStatusForPage$TouchListenerForPageCell;->onUp(Lcom/smartisanos/smengine/TouchEvent;)V

    move v0, v1

    .line 543
    goto :goto_0

    .line 508
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public resetCollisionListenerForPageCell()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mPrePageIndex:I

    .line 78
    iput v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mPreCellIndex:I

    .line 79
    return-void
.end method

.method public startDragIcon(Lcom/smartisanos/launcher/view/Cell;)Z
    .locals 3
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    const/4 v0, 0x1

    .line 570
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    .line 572
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->handleLongPress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 576
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateDragIcon(FFFF)V
    .locals 15
    .param p1, "changeX"    # F
    .param p2, "changeY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 597
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    iget v11, v11, Lcom/smartisanos/launcher/view/Cell;->mDragPointX:F

    sub-float v11, p3, v11

    sget v12, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    sub-float v2, v11, v12

    .line 598
    .local v2, "curX":F
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    iget-object v12, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    iget v12, v12, Lcom/smartisanos/launcher/view/Cell;->mDragPointY:F

    add-float v12, v12, p4

    sub-float v3, v11, v12

    .line 600
    .local v3, "curY":F
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    cmpl-float v11, v3, v11

    if-lez v11, :cond_4

    .line 601
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v3, v11

    .line 606
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v7

    .line 607
    .local v7, "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual {v7}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v9

    .line 608
    .local v9, "tinv":Lcom/smartisanos/smengine/math/Transform;
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v8

    .line 609
    .local v8, "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v6, v8, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 610
    .local v6, "resultL":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v4, v8, Lcom/smartisanos/smengine/util/TempVars;->vect2:Lcom/smartisanos/smengine/math/Vector3f;

    .line 611
    .local v4, "inputL":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v11, 0x0

    invoke-virtual {v4, v2, v3, v11}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 612
    invoke-virtual {v9, v4, v6}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    .line 613
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/CameraManager;->getCurrentCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/Camera;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v1

    .line 614
    .local v1, "cameraZ":F
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v11

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    const v14, 0x3f866666    # 1.05f

    invoke-virtual {v11, v12, v13, v1, v14}, Lcom/smartisanos/launcher/view/PageView;->createZFromScale(FFFF)F

    move-result v10

    .line 615
    .local v10, "upZ":F
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    iget v12, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v13, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-virtual {v11, v12, v13, v10}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 616
    invoke-virtual {v8}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 617
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 619
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Cell;->isAway()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 620
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v12, 0x0

    const v13, 0x3dcccccd    # 0.1f

    invoke-virtual {v11, v12, v13}, Lcom/smartisanos/launcher/view/Cell;->hideLongPressAppName(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 623
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v11

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 624
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v11

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v11

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 626
    :cond_2
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Cell;->coverShow()V

    .line 630
    :cond_3
    iget-object v11, p0, Lcom/smartisanos/launcher/view/CellStatusForPage;->mCell:Lcom/smartisanos/launcher/view/Cell;

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/smartisanos/launcher/view/Cell;->whichSide(F)I

    move-result v5

    .line 631
    .local v5, "result":I
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v11

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/smartisanos/launcher/view/PageView;->changeScreen(I)V

    .line 632
    return-void

    .line 602
    .end local v1    # "cameraZ":F
    .end local v4    # "inputL":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v5    # "result":I
    .end local v6    # "resultL":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v7    # "t":Lcom/smartisanos/smengine/math/Transform;
    .end local v8    # "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    .end local v9    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    .end local v10    # "upZ":F
    :cond_4
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    cmpg-float v11, v3, v11

    if-gez v11, :cond_0

    .line 603
    sget v11, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v3, v11

    goto/16 :goto_0
.end method
