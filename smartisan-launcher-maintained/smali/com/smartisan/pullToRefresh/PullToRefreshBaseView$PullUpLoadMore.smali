.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

.implements Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$Gesture;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PullUpLoadMore"
.end annotation


.field private activated:Z

.field private isAnimating:Z

.field final synthetic this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 549
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->activated:Z

    .line 551
    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->isAnimating:Z

    return-void
.end method

.method static synthetic access$2100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->activated:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;
    .param p1, "x1"    # Z

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->activated:Z

    return p1
.end method

.method private predicate(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1900(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1900(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/ConversationListFooterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/ConversationListFooterView;->isShowFooter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->isAnimating:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->canPredicateWhenPullUpLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 558
    :goto_0
    return v0

    .line 554
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 556
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 558
    :cond_2
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->activated:Z

    goto :goto_0
.end method


.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->predicate(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 563
    const/4 v0, 0x0

    .line 635
    :goto_0
    return v0

    .line 565
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 635
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 567
    :pswitch_1
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$600(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;F)V

    goto :goto_1

    .line 590
    :pswitch_2
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1200(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$PullUpLoadMore;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1300(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    goto :goto_1

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
