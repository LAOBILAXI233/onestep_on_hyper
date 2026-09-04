.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$8;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->showRefreshing(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V
    .locals 0

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$8;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1057
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1058
    .local v0, "y":I
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$8;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$200(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/RefreshFooterView;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/smartisan/pullToRefresh/RefreshFooterView;->setTranslationY(F)V

    .line 1060
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$8;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1600(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/IFooterBaseView;

    move-result-object v1

    neg-int v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Lcom/smartisan/pullToRefresh/IFooterBaseView;->setFooterPadding(I)V

    .line 1061
    return-void
.end method
