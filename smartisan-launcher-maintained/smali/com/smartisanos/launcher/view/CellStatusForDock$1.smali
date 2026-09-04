.class Lcom/smartisanos/launcher/view/CellStatusForDock$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "CellStatusForDock.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CellStatusForDock;->handleOnUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

.field final synthetic val$collidedUpCell:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/CellStatusForDock;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/CellStatusForDock;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$1;->val$collidedUpCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 529
    sput-object v3, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 531
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$1;->val$collidedUpCell:Lcom/smartisanos/launcher/view/Cell;

    if-nez v0, :cond_0

    .line 532
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->cleanPageViewWhenCellOnUpNoDelay()V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 535
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->setLockStatus()V

    .line 536
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "Cell onTouchEvent mSomethingIsFloat set false"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 537
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 539
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$202(Lcom/smartisanos/launcher/view/CellStatusForDock;Z)Z

    .line 540
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REFRESH:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 541
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/PageView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 542
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/DockView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 543
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$302(Lcom/smartisanos/launcher/view/CellStatusForDock;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 545
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "#### cell up on dock,printCellLayer."

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->printCellLayer(Lcom/smartisanos/smengine/SceneNode;)V

    .line 547
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_3

    .line 553
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setDrawWithPostEffect(Z)V

    .line 554
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/MainView;->setUsePostEffect(Z)V

    .line 561
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->restoreFromPending()V

    .line 562
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 563
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 564
    return-void
.end method
