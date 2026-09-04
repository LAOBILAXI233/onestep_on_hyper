.class Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;
.super Ljava/lang/Object;
.source "CellStatusForDock.java"

.implements Lcom/smartisanos/smengine/SceneNode$SingleTapListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/CellStatusForDock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleTapListenerForDockCell"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;


.method constructor <init>(Lcom/smartisanos/launcher/view/CellStatusForDock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/CellStatusForDock;

    .prologue
    .line 659
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 662
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "DEBUG"

    const-string v4, "onClick begin"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    .line 664
    .local v0, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-nez v0, :cond_2

    .line 678
    :cond_1
    :goto_0
    return-void

    .line 667
    :cond_2
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v2, v3, :cond_3

    .line 668
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 669
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "DEBUG"

    const-string v4, "in MULTI_PAGE_MODE, setting button is done, so return !"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    iget-boolean v2, v2, Lcom/smartisanos/launcher/view/Cell;->APP_CAN_EXEC:Z

    if-nez v2, :cond_4

    .line 673
    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "DEBUG"

    const-string v4, "can\'t execute app by APP_CAN_EXEC is false !"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 676
    :cond_4
    new-instance v1, Lcom/smartisanos/launcher/actions/StartActivity;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellStatusForDock$SingleTapListenerForDockCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForDock;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/CellStatusForDock;->access$000(Lcom/smartisanos/launcher/view/CellStatusForDock;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/smartisanos/launcher/actions/StartActivity;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    .line 677
    .local v1, "startActivity":Lcom/smartisanos/launcher/actions/StartActivity;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/actions/StartActivity;->launch()V

    goto :goto_0
.end method
