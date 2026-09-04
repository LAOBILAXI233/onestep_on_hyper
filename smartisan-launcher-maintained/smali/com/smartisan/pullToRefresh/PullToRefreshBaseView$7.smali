.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$7;
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
    .line 1040
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$7;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1043
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1044
    .local v0, "y":I
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$7;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$300(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    move-result-object v1

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->setTranslationY(F)V

    .line 1045
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$7;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$700(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x2

    invoke-interface {v1, v2}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->setHeaderPadding(I)V

    .line 1046
    return-void
.end method
