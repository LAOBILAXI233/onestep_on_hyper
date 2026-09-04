.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

.implements Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$Gesture;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PullUpRefresh"
.end annotation


.field private activated:Z

.field final synthetic this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V
    .locals 1

    .prologue
    .line 492
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->activated:Z

    return-void
.end method

.method static synthetic access$2200(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->activated:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;
    .param p1, "x1"    # Z

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->activated:Z

    return p1
.end method

.method private predicate(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1500(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->canPredicateWhenPullUpRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 501
    :goto_0
    return v0

    .line 499
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 501
    :cond_2
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->activated:Z

    goto :goto_0
.end method


.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 506
    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->predicate(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 541
    :goto_0
    return v0

    .line 510
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v0, v1

    .line 541
    goto :goto_0

    .line 512
    :pswitch_0
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$600(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;F)V

    goto :goto_1

    .line 517
    :pswitch_1
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1600(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/IFooterBaseView;

    move-result-object v2

    invoke-interface {v2}, Lcom/smartisan/pullToRefresh/IFooterBaseView;->getFooterBottom()I

    move-result v2

    if-gtz v2, :cond_3

    .line 518
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v2, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$102(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)I

    .line 522
    :goto_2
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    iget-object v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v3}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$800(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;II)V

    .line 523
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 525
    :cond_2
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$900(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1700(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;F)V

    .line 526
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1800(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    goto :goto_1

    .line 520
    :cond_3
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v2, v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$102(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)I

    goto :goto_2

    .line 531
    :pswitch_2
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1200(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 532
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1300(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    .line 534
    :cond_4
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 535
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-virtual {v2, v1, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->showRefreshing(ZI)V

    goto :goto_1

    .line 536
    :cond_5
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)I

    move-result v2

    if-nez v2, :cond_1

    .line 537
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpRefresh;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v2, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1400(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V

    goto :goto_1

    .line 510
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
