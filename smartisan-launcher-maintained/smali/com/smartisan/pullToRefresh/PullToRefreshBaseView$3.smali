.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$3;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

.implements Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$OnStatusChangeListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$3;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onStatusChange(II)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "refreshStyle"    # I

    .prologue
    .line 292
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 293
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$3;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$400(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$RefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$3;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$400(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$RefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$RefreshListener;->onPullDownToRefresh()V

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$3;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$400(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$RefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$3;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$400(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$RefreshListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$RefreshListener;->onPullUpTpRefresh()V

    goto :goto_0
.end method
