.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 1167
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    iput p2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;->val$refreshMethod:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1191
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 1179
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    iput-boolean v1, v0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->mIsSyncing:Z

    .line 1180
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$002(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;Z)Z

    .line 1181
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$102(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)I

    .line 1182
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$2500(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1183
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$300(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$700(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    move-result-object v1

    invoke-interface {v1}, Lcom/smartisan/pullToRefresh/IHeaderBaseView;->getHeaderHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->setClipBottom(I)V

    .line 1184
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V

    .line 1185
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)I

    move-result v1

    iget v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;->val$refreshMethod:I

    invoke-static {v0, v1, v2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$800(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;II)V

    .line 1186
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$12;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$2300(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V

    .line 1187
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1175
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1171
    return-void
.end method
