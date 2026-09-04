.class Lcom/smartisanos/launcher/view/DockView$5;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "DockView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/DockView;->handleSortButtonClick(Lcom/smartisanos/smengine/SceneNode;)V
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
    .line 499
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView$5;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 7

    .prologue
    .line 502
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    .line 503
    .local v0, "mv":Lcom/smartisanos/launcher/view/MainView;
    if-nez v0, :cond_0

    .line 533
    :goto_0
    return-void

    .line 506
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v5

    iget v3, v5, Lcom/smartisanos/launcher/view/StatusBar;->mSortType:I

    .line 507
    .local v3, "sortType":I
    const/4 v1, -0x1

    .line 508
    .local v1, "resId":I
    packed-switch v3, :pswitch_data_0

    .line 526
    :goto_1
    const/4 v4, 0x0

    .line 527
    .local v4, "text":Ljava/lang/String;
    if-lez v1, :cond_1

    .line 528
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 530
    :cond_1
    new-instance v2, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 531
    .local v2, "showTextTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v5

    const v6, 0x3ee66666    # 0.45f

    invoke-virtual {v5, v2, v6, v4}, Lcom/smartisanos/launcher/view/StatusBar;->showTextOnStatusBar(Lcom/smartisanos/smengine/AnimationTimeLine;FLjava/lang/String;)V

    .line 532
    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto :goto_0

    .line 510
    .end local v2    # "showTextTimeLine":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v4    # "text":Ljava/lang/String;
    :pswitch_0
    sget v1, Lcom/smartisanos/launcher/ResIds$string;->confirm_sort_by_color_dialog_title_1:I

    .line 511
    goto :goto_1

    .line 514
    :pswitch_1
    sget v1, Lcom/smartisanos/launcher/ResIds$string;->confirm_sort_by_install_dialog_title_1:I

    .line 515
    goto :goto_1

    .line 518
    :pswitch_2
    sget v1, Lcom/smartisanos/launcher/ResIds$string;->confirm_sort_by_usage_dialog_title_1:I

    .line 519
    goto :goto_1

    .line 522
    :pswitch_3
    sget v1, Lcom/smartisanos/launcher/ResIds$string;->confirm_sort_by_category_dialog_title_1:I

    goto :goto_1

    .line 508
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
