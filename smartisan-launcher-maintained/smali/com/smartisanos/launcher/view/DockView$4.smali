.class Lcom/smartisanos/launcher/view/DockView$4;
.super Ljava/lang/Object;
.source "DockView.java"

.implements Lcom/smartisanos/smengine/SceneNode$OnTouchListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/DockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/DockView;


.method constructor <init>(Lcom/smartisanos/launcher/view/DockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView$4;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onTouch(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 6
    .param p1, "v"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "event"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 437
    if-nez p1, :cond_1

    .line 472
    :cond_0
    :goto_0
    return v4

    .line 441
    :cond_1
    invoke-virtual {p2}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 442
    invoke-static {}, Lcom/smartisanos/launcher/view/DockView;->access$300()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "### action down"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView$4;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/DockView;->access$500(Lcom/smartisanos/launcher/view/DockView;)V

    .line 444
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView$4;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v2, p1}, Lcom/smartisanos/launcher/view/DockView;->access$600(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/smengine/SceneNode;)V

    .line 445
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView$4;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v2, v4}, Lcom/smartisanos/launcher/view/DockView;->access$402(Lcom/smartisanos/launcher/view/DockView;Z)Z

    goto :goto_0

    .line 446
    :cond_2
    invoke-virtual {p2}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 447
    invoke-static {}, Lcom/smartisanos/launcher/view/DockView;->access$300()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "### action move"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_3
    invoke-virtual {p2}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 450
    invoke-static {}, Lcom/smartisanos/launcher/view/DockView;->access$300()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "### action up"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 451
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView$4;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/DockView;->access$500(Lcom/smartisanos/launcher/view/DockView;)V

    .line 452
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView$4;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/DockView;->access$400(Lcom/smartisanos/launcher/view/DockView;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 454
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView$4;->this$0:Lcom/smartisanos/launcher/view/DockView;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/DockView;->mSortBubble:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_0

    .line 455
    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->HIDE_BUBBLE_FOR_SORT:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    .line 456
    .local v1, "animType":Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;
    const v0, 0x3e3851ec    # 0.18f

    .line 457
    .local v0, "animTime":F
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView$4;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2, v1, v0, v5}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    goto :goto_0

    .line 461
    .end local v0    # "animTime":F
    .end local v1    # "animType":Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView$4;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v2, p1}, Lcom/smartisanos/launcher/view/DockView;->access$700(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0

    .line 462
    :cond_5
    invoke-virtual {p2}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 463
    invoke-static {}, Lcom/smartisanos/launcher/view/DockView;->access$300()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "### action cancel"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView$4;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/DockView;->access$500(Lcom/smartisanos/launcher/view/DockView;)V

    .line 465
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView$4;->this$0:Lcom/smartisanos/launcher/view/DockView;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/DockView;->mSortBubble:Lcom/smartisanos/smengine/RectNode;

    if-eqz v2, :cond_0

    .line 466
    sget-object v1, Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;->HIDE_BUBBLE_FOR_SORT:Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;

    .line 467
    .restart local v1    # "animType":Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;
    const v0, 0x3e3851ec    # 0.18f

    .line 468
    .restart local v0    # "animTime":F
    iget-object v2, p0, Lcom/smartisanos/launcher/view/DockView$4;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v2, v1, v0, v5}, Lcom/smartisanos/launcher/view/DockView;->handleAnimation(Lcom/smartisanos/launcher/animations/DockViewAnimation$DOCK_VIEW_ANIMATION;FLjava/util/List;)V

    goto/16 :goto_0
.end method
