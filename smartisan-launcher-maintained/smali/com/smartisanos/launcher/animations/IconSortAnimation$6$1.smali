.class Lcom/smartisanos/launcher/animations/IconSortAnimation$6$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "IconSortAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$6;

.field final synthetic val$sortActionType:I


.method constructor <init>(Lcom/smartisanos/launcher/animations/IconSortAnimation$6;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/animations/IconSortAnimation$6;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6$1;->this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$6;

    iput p2, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6$1;->val$sortActionType:I

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 522
    iget-object v4, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6$1;->this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$6;

    iget-object v4, v4, Lcom/smartisanos/launcher/animations/IconSortAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v4}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$500(Lcom/smartisanos/launcher/animations/IconSortAnimation;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 523
    iget v4, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$6$1;->val$sortActionType:I

    sparse-switch v4, :sswitch_data_0

    .line 538
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v4

    const/high16 v5, 0x100000

    invoke-virtual {v4, v5, v8}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 539
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getInstance()Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    move-result-object v4

    iget v3, v4, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->sortType:I

    .line 540
    .local v3, "type":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 541
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v1

    .line 542
    .local v1, "screenCount":I
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    .line 543
    .local v0, "pv":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v4

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(II)V

    .line 544
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    const v6, 0x3eb851ec    # 0.36f

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v8, v7}, Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v2

    .line 545
    .local v2, "scrollto":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 547
    .end local v0    # "pv":Lcom/smartisanos/launcher/view/PageView;
    .end local v1    # "screenCount":I
    .end local v2    # "scrollto":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_0
    return-void

    .line 528
    .end local v3    # "type":I
    :sswitch_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    goto :goto_0

    .line 532
    :sswitch_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 533
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    goto :goto_0

    .line 523
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method
