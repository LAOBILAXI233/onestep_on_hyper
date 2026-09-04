.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

.implements Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$Gesture;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PullDownRefresh"
.end annotation


.field private activated:Z

.field final synthetic this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V
    .locals 1

    .prologue
    .line 436
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->activated:Z

    return-void
.end method

.method static synthetic access$2000(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->activated:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;
    .param p1, "x1"    # Z

    .prologue
    .line 436
    iput-boolean p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->activated:Z

    return p1
.end method

.method private predicate(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 440
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$500(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->canPredicateWhenPullDown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 445
    :goto_0
    return v0

    .line 443
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 445
    :cond_2
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->activated:Z

    goto :goto_0
.end method


.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 450
    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->predicate(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 484
    :goto_0
    return v0

    .line 454
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    .line 484
    goto :goto_0

    .line 456
    :pswitch_0
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$600(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;F)V

    goto :goto_1

    .line 460
    :pswitch_1
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$700(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    move-result-object v2

    invoke-interface {v2}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->getHeaderTop()I

    move-result v2

    if-gtz v2, :cond_3

    .line 461
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v2, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$102(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)I

    .line 465
    :goto_2
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$800(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;II)V

    .line 466
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 468
    :cond_2
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$900(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1000(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;F)V

    .line 469
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    goto :goto_1

    .line 463
    :cond_3
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$102(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)I

    goto :goto_2

    .line 474
    :pswitch_2
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1200(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 475
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1300(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    .line 477
    :cond_4
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 478
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-virtual {v0, v1, v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->showRefreshing(ZI)V

    goto :goto_1

    .line 479
    :cond_5
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullDownRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1400(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V

    goto :goto_1

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
