.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$10;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->doFinishRefreshing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

.field final synthetic val$refreshMethod:I


.method constructor <init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V
    .locals 0

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$10;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    iput p2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$10;->val$refreshMethod:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$10;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$2700(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1131
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1132
    .local v0, "y":I
    iget v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$10;->val$refreshMethod:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1133
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$10;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$2300(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V

    .line 1138
    .end local v0    # "y":I
    :cond_0
    :goto_0
    return-void

    .line 1135
    .restart local v0    # "y":I
    :cond_1
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$10;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$2800(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V

    goto :goto_0
.end method
