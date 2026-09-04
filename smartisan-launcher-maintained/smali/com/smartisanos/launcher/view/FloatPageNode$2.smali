.class Lcom/smartisanos/launcher/view/FloatPageNode$2;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "FloatPageNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/FloatPageNode;->pageBackAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/FloatPageNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/FloatPageNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/FloatPageNode;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 5

    .prologue
    const v4, 0x3e4ccccd    # 0.2f

    .line 333
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$500()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "#### float page back animation on begin"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 334
    :cond_0
    sget v1, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 335
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TitleView;->getRenderRect()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 336
    .local v0, "titleScale":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TitleView;->getRenderRect()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v2, v4

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 338
    .end local v0    # "titleScale":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    return-void
.end method

.method public onComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 341
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$500()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "#### float page back animation on complete"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$600(Lcom/smartisanos/launcher/view/FloatPageNode;)V

    .line 346
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1, v3}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$102(Lcom/smartisanos/launcher/view/FloatPageNode;Z)Z

    .line 347
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$200(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/AnimationController;->setHasAnimationPlaying(Z)V

    .line 351
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->hidePageShadow()V

    .line 354
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 355
    .local v0, "cellCount":I
    if-nez v0, :cond_5

    .line 356
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v3}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 368
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TitleView;->showEditIcon()V

    .line 373
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(I)V

    .line 374
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1, v3}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$702(Lcom/smartisanos/launcher/view/FloatPageNode;Z)Z

    .line 375
    if-nez v0, :cond_2

    .line 376
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->setTitleEmpty()V

    .line 379
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->hideCoverBackground()V

    .line 381
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->hidePageBackground()V

    .line 384
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_3

    .line 385
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1, v3}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$800(Lcom/smartisanos/launcher/view/FloatPageNode;Z)V

    .line 389
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->hideFloatPageNode()V

    .line 390
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$500()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "## page back animation finish, set floatPageNode = null."

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 392
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/TitleView;->setDrawTitleTextWithBatch(Z)V

    .line 393
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 394
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 395
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 396
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 398
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$402(Lcom/smartisanos/launcher/view/FloatPageNode;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 400
    return-void

    .line 358
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$300(Lcom/smartisanos/launcher/view/FloatPageNode;)I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 359
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1, v4, v3, v3, v3}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 360
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/TitleView;->setEyeState(Z)V

    goto/16 :goto_0

    .line 361
    :cond_6
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$300(Lcom/smartisanos/launcher/view/FloatPageNode;)I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 362
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1, v5, v3, v3, v3}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 363
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$2;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/TitleView;->setLockState(Z)V

    goto/16 :goto_0
.end method
