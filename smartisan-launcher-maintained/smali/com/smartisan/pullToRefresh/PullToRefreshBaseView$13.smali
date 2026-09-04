.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$13;
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

.field final synthetic val$footerClipTop:I


.method constructor <init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V
    .locals 0

    .prologue
    .line 1212
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$13;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    iput p2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$13;->val$footerClipTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1215
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1217
    .local v0, "y":I
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$13;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1600(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/IFooterBaseView;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/smartisan/pullToRefresh/IFooterBaseView;->setFooterPadding(I)V

    .line 1219
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$13;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$200(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/RefreshFooterView;

    move-result-object v1

    neg-int v2, v0

    iget v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$13;->val$footerClipTop:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/smartisan/pullToRefresh/RefreshFooterView;->setClipTop(I)V

    .line 1221
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$13;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$2900(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1222
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$13;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$200(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/RefreshFooterView;

    move-result-object v1

    neg-int v2, v0

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/smartisan/pullToRefresh/RefreshFooterView;->setTranslationY(F)V

    .line 1224
    :cond_0
    return-void
.end method
