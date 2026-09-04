.class Lcom/smartisanos/launcher/animations/PageViewAnimation$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "PageViewAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/PageViewAnimation;->switchPageViewByMode(Lcom/smartisanos/launcher/view/Page;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

.field final synthetic val$pList:Ljava/util/List;


.method constructor <init>(Lcom/smartisanos/launcher/animations/PageViewAnimation;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/PageViewAnimation;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->val$pList:Ljava/util/List;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 473
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "### switchPageViewByMode mode onBegin SHOW_MULTI_PAGE,begin increase dockview layer"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 474
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/DockView;->setLayerStatus(I)V

    .line 475
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/StatusBar;->setLayerStatus(I)V

    .line 476
    iget-object v2, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->val$pList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 477
    .local v0, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    .line 478
    .local v1, "title":Lcom/smartisanos/launcher/view/TitleView;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 479
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TitleView;->updateGaussianMeshName()V

    .line 480
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 481
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TitleView;->setNeedDisplay()V

    goto :goto_0

    .line 485
    .end local v0    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v1    # "title":Lcom/smartisanos/launcher/view/TitleView;
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_3

    .line 488
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/PageView;->showOrHideGaussianBatchBackground(Z)V

    .line 491
    :cond_3
    return-void
.end method

.method public onComplete()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 495
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$200(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/AnimationTimeLine;->clearAllAnmiation()V

    .line 496
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v8

    const-string v9, "### switchPageViewByMode mode onComplete SHOW_MULTI_PAGE,begin decrease dockview layer"

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 497
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/smartisanos/launcher/view/DockView;->setLayerStatus(I)V

    .line 498
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/smartisanos/launcher/view/StatusBar;->setLayerStatus(I)V

    .line 499
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    .line 500
    .local v2, "dv":Lcom/smartisanos/launcher/view/DockView;
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/PageView;->forceUpdateGeometricState()V

    .line 503
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/MainView;->getAllCellsWorldTranslateMultiPageMode()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 504
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$400(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 505
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$400(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    .line 506
    .local v5, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 507
    .local v0, "allcells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 508
    new-instance v7, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 509
    .local v7, "worldPos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 510
    .local v1, "c":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, v7}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 511
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/MainView;->getAllCellsWorldTranslateMultiPageMode()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 504
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v7    # "worldPos":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 517
    .end local v0    # "allcells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v4    # "j":I
    .end local v5    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    sget v8, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    sput v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    .line 518
    const/4 v6, 0x1

    .line 519
    .local v6, "pageInScreen":I
    const/4 v8, 0x3

    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v8, v9, :cond_3

    .line 520
    const/16 v6, 0x9

    .line 522
    :cond_3
    const/4 v8, 0x2

    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-eq v8, v9, :cond_4

    const/4 v8, 0x5

    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v8, v9, :cond_5

    .line 524
    :cond_4
    const/4 v6, 0x4

    .line 526
    :cond_5
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v9

    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$400(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    iget v8, v8, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    div-int/2addr v8, v6

    invoke-virtual {v9, v8, v10}, Lcom/smartisanos/launcher/view/PageView;->initOrReleaseScreen(IZ)V

    .line 528
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v9

    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$400(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v9, v8}, Lcom/smartisanos/launcher/view/PageView;->resetPagesTranslate(Lcom/smartisanos/launcher/view/Page;)V

    .line 530
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$400(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 531
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v8, v10}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$502(Lcom/smartisanos/launcher/animations/PageViewAnimation;Z)Z

    .line 534
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v8

    const/high16 v9, -0x40800000    # -1.0f

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/view/PageView;->updateScrollAnimationProgress(F)V

    .line 536
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->resetDockCellBoundingRect()V

    .line 537
    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v8}, Lcom/smartisanos/launcher/data/Constants;->updatePageCellCenterPoints(I)V

    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v8}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$300(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/PageView;->refreshAllRenderTargetContent()V

    .line 538
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v8

    const-string v9, "DEBUG"

    const-string v10, "SHOW_MULTI_PAGE onComplete finish !"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_6
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v8

    const-string v9, "mSomethingIsFloat = false when switch page mode complete"

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 541
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9, v11}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 542
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$202(Lcom/smartisanos/launcher/animations/PageViewAnimation;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 543
    iget-object v8, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v8, v11}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$102(Lcom/smartisanos/launcher/animations/PageViewAnimation;Z)Z

    .line 544
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 545
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 546
    sget-boolean v8, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v8, :cond_8

    .line 547
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/MainView;->clearExtraMesh()V

    .line 549
    :cond_8
    return-void
.end method
