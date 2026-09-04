.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$5;
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
    .line 986
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$5;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 989
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 990
    .local v0, "y":I
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$5;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$2300(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V

    .line 991
    return-void
.end method
