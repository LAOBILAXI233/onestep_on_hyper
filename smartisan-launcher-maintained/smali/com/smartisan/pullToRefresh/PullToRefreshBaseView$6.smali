.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$6;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 993
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$6;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1009
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$6;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$2400(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$6;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$2500(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$6;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$2400(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1003
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$6;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$2602(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;J)J

    .line 1005
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1013
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 997
    return-void
.end method
