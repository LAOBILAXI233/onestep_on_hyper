.class Lcom/smartisanos/launcher/view/SwitchPageNode$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "SwitchPageNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/SwitchPageNode;->pageBackToCenterAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/SwitchPageNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$3;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBegin()V

    .line 374
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$700()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "#### switchPageNode pageBackToCenterAnimation on begin"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 375
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 377
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 378
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$3;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$1300(Lcom/smartisanos/launcher/view/SwitchPageNode;Z)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$3;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$1000(Lcom/smartisanos/launcher/view/SwitchPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->hidePageShadow()V

    .line 385
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$3;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$1000(Lcom/smartisanos/launcher/view/SwitchPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleShadowWithBatch(Z)V

    .line 388
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$3;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$1002(Lcom/smartisanos/launcher/view/SwitchPageNode;Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;

    .line 389
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$3;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$602(Lcom/smartisanos/launcher/view/SwitchPageNode;Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;

    .line 390
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 391
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$3;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$1402(Lcom/smartisanos/launcher/view/SwitchPageNode;Z)Z

    .line 392
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$3;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$1502(Lcom/smartisanos/launcher/view/SwitchPageNode;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 395
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->updatePageIndex()V

    .line 396
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->createPageObjectNameList()V

    .line 397
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REFRESH:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 400
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 401
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$700()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "#### switchPageNode pageBackToCenterAnimation on complete"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 403
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 404
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$3;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$1600(Lcom/smartisanos/launcher/view/SwitchPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(I)V

    .line 407
    return-void
.end method
