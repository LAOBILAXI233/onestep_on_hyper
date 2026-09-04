.class Lcom/smartisanos/launcher/view/DockView$3;
.super Lcom/smartisanos/smengine/Event;
.source "DockView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/DockView;->createLongClickEvent(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/DockView;

.field final synthetic val$view:Lcom/smartisanos/smengine/SceneNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/DockView;ILcom/smartisanos/smengine/SceneNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/DockView;
    .param p2, "type"    # I

    .prologue
    .line 393
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView$3;->this$0:Lcom/smartisanos/launcher/view/DockView;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/DockView$3;->val$view:Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    .line 396
    invoke-static {}, Lcom/smartisanos/launcher/view/DockView;->access$300()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "##### do long click"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 397
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView$3;->val$view:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v4, :cond_1

    .line 398
    const/4 v2, -0x1

    .line 399
    .local v2, "index":I
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView$3;->val$view:Lcom/smartisanos/smengine/SceneNode;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DockView$3;->this$0:Lcom/smartisanos/launcher/view/DockView;

    iget-object v5, v5, Lcom/smartisanos/launcher/view/DockView;->mApplyUsageFrequencySortButton:Lcom/smartisanos/smengine/RectNode;

    if-ne v4, v5, :cond_2

    .line 400
    const/4 v2, 0x0

    .line 408
    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-le v2, v4, :cond_1

    .line 409
    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->SHOW_BUBBLE_FOR_SORT:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    .line 410
    .local v1, "animType":Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;
    const v0, 0x3e3851ec    # 0.18f

    .line 411
    .local v0, "animTime":F
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v3, "params":Ljava/util/List;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView$3;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v4, v1, v0, v3}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    .line 416
    .end local v0    # "animTime":F
    .end local v1    # "animType":Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;
    .end local v2    # "index":I
    .end local v3    # "params":Ljava/util/List;
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView$3;->this$0:Lcom/smartisanos/launcher/view/DockView;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/view/DockView;->access$402(Lcom/smartisanos/launcher/view/DockView;Z)Z

    .line 417
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView$3;->this$0:Lcom/smartisanos/launcher/view/DockView;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/smartisanos/launcher/view/DockView;->mLongClick:Lcom/smartisanos/smengine/Event;

    .line 418
    return-void

    .line 401
    .restart local v2    # "index":I
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView$3;->val$view:Lcom/smartisanos/smengine/SceneNode;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DockView$3;->this$0:Lcom/smartisanos/launcher/view/DockView;

    iget-object v5, v5, Lcom/smartisanos/launcher/view/DockView;->mApplyColorSortButton:Lcom/smartisanos/smengine/RectNode;

    if-ne v4, v5, :cond_3

    .line 402
    const/4 v2, 0x1

    goto :goto_0

    .line 403
    :cond_3
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView$3;->val$view:Lcom/smartisanos/smengine/SceneNode;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DockView$3;->this$0:Lcom/smartisanos/launcher/view/DockView;

    iget-object v5, v5, Lcom/smartisanos/launcher/view/DockView;->mApplyInstallTimeSortButton:Lcom/smartisanos/smengine/RectNode;

    if-ne v4, v5, :cond_4

    .line 404
    const/4 v2, 0x2

    goto :goto_0

    .line 405
    :cond_4
    iget-object v4, p0, Lcom/smartisanos/launcher/view/DockView$3;->val$view:Lcom/smartisanos/smengine/SceneNode;

    iget-object v5, p0, Lcom/smartisanos/launcher/view/DockView$3;->this$0:Lcom/smartisanos/launcher/view/DockView;

    iget-object v5, v5, Lcom/smartisanos/launcher/view/DockView;->mApplyCategorySortButton:Lcom/smartisanos/smengine/RectNode;

    if-ne v4, v5, :cond_0

    .line 406
    const/4 v2, 0x3

    goto :goto_0
.end method
