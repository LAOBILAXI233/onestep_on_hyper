.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$11;
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

.field final synthetic val$headerClipBottom:I


.method constructor <init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V
    .locals 0

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    iput p2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$11;->val$headerClipBottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1157
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1159
    .local v0, "y":I
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$700(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->setHeaderPadding(I)V

    .line 1160
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$300(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    move-result-object v1

    iget v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$11;->val$headerClipBottom:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->setClipBottom(I)V

    .line 1162
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$2900(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1163
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$300(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    move-result-object v1

    div-int/lit8 v2, v0, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->setTranslationY(F)V

    .line 1165
    :cond_0
    return-void
.end method
