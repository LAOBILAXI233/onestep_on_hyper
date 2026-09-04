.class public Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;
.super Ljava/lang/Object;
.source "CellStatusForPage.java"

.implements Lcom/smartisanos/smengine/SceneNode$SingleTapListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/CellStatusForPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SingleTapListenerForPageCell"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;


.method public constructor <init>(Lcom/smartisanos/launcher/view/CellStatusForPage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v8, 0x1

    .line 278
    iget-object v6, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    .line 279
    .local v2, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 281
    iget-object v6, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    .line 286
    .local v4, "pw":Lcom/smartisanos/launcher/view/PageView;
    iget-object v6, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    sget v7, Lcom/smartisanos/launcher/view/Cell;->CELL_IN_MULTI_SELECT:I

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/view/Cell;->getCellHasAnimationStatus(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v4, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MultiSelectNode;->multiSelectListFull()Z

    move-result v6

    if-nez v6, :cond_2

    .line 287
    iget-object v6, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->setCellSelected()I

    move-result v1

    .line 288
    .local v1, "count":I
    if-ne v1, v8, :cond_0

    .line 289
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    new-instance v7, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell$1;

    invoke-direct {v7, p0}, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell$1;-><init>(Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;)V

    invoke-virtual {v6, v7}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 300
    .end local v1    # "count":I
    :cond_2
    iget-object v6, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    sget v7, Lcom/smartisanos/launcher/view/Cell;->CELL_IN_MULTI_SELECT:I

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/view/Cell;->getCellHasAnimationStatus(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 301
    iget-object v6, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->clearCellSelected()I

    goto :goto_0

    .line 302
    :cond_3
    iget-object v6, v4, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MultiSelectNode;->multiSelectListFull()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 303
    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v6, v8, :cond_4

    .line 304
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    new-instance v7, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell$2;

    invoke-direct {v7, p0}, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell$2;-><init>(Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;)V

    invoke-virtual {v6, v7}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 312
    :cond_4
    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 313
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    new-instance v7, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell$3;

    invoke-direct {v7, p0}, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell$3;-><init>(Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;)V

    invoke-virtual {v6, v7}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 324
    .end local v4    # "pw":Lcom/smartisanos/launcher/view/PageView;
    :cond_5
    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->getClickAction(I)Lcom/smartisanos/launcher/data/Constants$ClickAction;

    move-result-object v0

    .line 325
    .local v0, "action":Lcom/smartisanos/launcher/data/Constants$ClickAction;
    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v7, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 326
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$400()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    const-string v7, "DEBUG"

    const-string v8, "set action to Constants.ClickAction.SWITCH_PAGE"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_6
    sget-object v0, Lcom/smartisanos/launcher/data/Constants$ClickAction;->SWITCH_PAGE:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    .line 329
    :cond_7
    sget-object v6, Lcom/smartisanos/launcher/data/Constants$ClickAction;->OPEN_APP:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    if-eq v0, v6, :cond_8

    .line 330
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 331
    :cond_8
    if-eqz v2, :cond_0

    .line 339
    iget-object v6, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    iget-boolean v6, v6, Lcom/smartisanos/launcher/view/Cell;->APP_CAN_EXEC:Z

    if-nez v6, :cond_9

    .line 340
    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$400()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    const-string v7, "DEBUG"

    const-string v8, "can\'t execute app by APP_CAN_EXEC is false !"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :cond_9
    new-instance v5, Lcom/smartisanos/launcher/actions/StartActivity;

    iget-object v6, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/smartisanos/launcher/actions/StartActivity;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    .line 344
    .local v5, "startActivity":Lcom/smartisanos/launcher/actions/StartActivity;
    invoke-virtual {v5}, Lcom/smartisanos/launcher/actions/StartActivity;->launch()V

    goto/16 :goto_0

    .line 345
    .end local v5    # "startActivity":Lcom/smartisanos/launcher/actions/StartActivity;
    :cond_a
    sget-object v6, Lcom/smartisanos/launcher/data/Constants$ClickAction;->SWITCH_PAGE:Lcom/smartisanos/launcher/data/Constants$ClickAction;

    if-ne v0, v6, :cond_c

    .line 347
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_b

    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$400()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    const-string v7, "DEBUG"

    const-string v8, "Constants.ClickAction.SWITCH_PAGE"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_b
    iget-object v6, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$SingleTapListenerForPageCell;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v6}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 349
    .local v3, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 352
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;)Z

    goto/16 :goto_0

    .line 355
    .end local v3    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_c
    invoke-static {}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$400()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown click action, name ==> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->getActionName(Lcom/smartisanos/launcher/data/Constants$ClickAction;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
