.class Lcom/smartisanos/launcher/animations/IconSortAnimation$6;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "IconSortAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/IconSortAnimation;->prepareFinishIconSort()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/animations/IconSortAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/IconSortAnimation;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 15

    .prologue
    .line 493
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$500(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 494
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$500(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->setNeedDrawSpecialCube(Z)V

    .line 497
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v3

    .line 498
    .local v3, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$500(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/TitleView;->getRenderRect()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v10

    iget v11, v3, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_VIEW_RENDER_RECT_LAYER:I

    invoke-virtual {v10, v11}, Lcom/smartisanos/smengine/SceneNode;->setLayer(I)V

    .line 499
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$500(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    iget v11, v3, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->TITLE_BACK_SHADOW_LAYER:I

    invoke-virtual {v10, v11}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 501
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$500(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    iget-object v11, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v11}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$600(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v11

    iget v11, v11, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v12, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v12}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$600(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v12

    iget v12, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11, v12, v13}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 502
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$500(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/TitleView;->getBackShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 503
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$500(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 505
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$500(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleShadowWithBatch(Z)V

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 507
    .end local v3    # "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    :cond_0
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->removeSpecialCube()V

    .line 508
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$402(Lcom/smartisanos/launcher/animations/IconSortAnimation;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 510
    const/4 v2, 0x0

    :goto_1
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$700(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 511
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$700(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 512
    .local v1, "c":Lcom/smartisanos/launcher/view/Cell;
    const/4 v10, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v1, v10, v11}, Lcom/smartisanos/launcher/view/Cell;->showCellIntoPageEditModeAnimationCover(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 513
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/smartisanos/launcher/view/Cell;->setShowCellIntoPageEditModeAnimationCover(Z)V

    .line 510
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 515
    .end local v1    # "c":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v10}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$700(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 516
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getInstance()Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    move-result-object v7

    .line 517
    .local v7, "sortAction":Lcom/smartisanos/launcher/actions/sort/HandleIconSort;
    iget v8, v7, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    .line 518
    .local v8, "sortActionType":I
    sget-boolean v10, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v10, :cond_3

    .line 519
    iget-object v10, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$100(Lcom/smartisanos/launcher/animations/IconSortAnimation;Z)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    .line 520
    .local v0, "backTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    new-instance v10, Lcom/smartisanos/launcher/animations/IconSortAnimation$6$1;

    invoke-direct {v10, p0, v8}, Lcom/smartisanos/launcher/animations/IconSortAnimation$6$1;-><init>(Lcom/smartisanos/launcher/animations/IconSortAnimation$6;I)V

    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 549
    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 583
    .end local v0    # "backTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_2
    :goto_2
    return-void

    .line 551
    :cond_3
    iget v9, v7, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortType:I

    .line 552
    .local v9, "type":I
    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 553
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v5

    .line 554
    .local v5, "screenCount":I
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    .line 555
    .local v4, "pv":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v10

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(II)V

    .line 556
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v10

    add-int/lit8 v11, v5, -0x1

    const v12, 0x3eb851ec    # 0.36f

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v6

    .line 557
    .local v6, "scrollto":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual {v6}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 559
    .end local v4    # "pv":Lcom/smartisanos/launcher/view/PageView;
    .end local v5    # "screenCount":I
    .end local v6    # "scrollto":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v10

    const/high16 v11, 0x100000

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 560
    sparse-switch v8, :sswitch_data_0

    .line 580
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown sort action ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 566
    :sswitch_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    goto :goto_2

    .line 571
    :sswitch_1
    invoke-static {}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$800()Lcom/smartisanos/launcher/LOG;

    move-result-object v10

    const-string v11, "unLockHardKey for sort confirm finish"

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 573
    iget v10, v7, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->actionType:I

    const/16 v11, 0x64

    if-ne v10, v11, :cond_2

    .line 574
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 575
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    goto/16 :goto_2

    .line 560
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
    .end sparse-switch
.end method
