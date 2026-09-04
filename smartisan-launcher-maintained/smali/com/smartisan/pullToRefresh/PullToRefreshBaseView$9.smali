.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$9;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->finishRefreshing(I)V
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
    .line 1073
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$9;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    iput p2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$9;->val$refreshMethod:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$9;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    iget v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$9;->val$refreshMethod:I

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$1400(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;I)V

    .line 1077
    return-void
.end method
