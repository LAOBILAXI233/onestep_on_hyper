.class Lcom/smartisan/pullToRefresh/PullToRefreshListView$2;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

.implements Landroid/widget/AbsListView$OnScrollListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/pullToRefresh/PullToRefreshListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/PullToRefreshListView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView$2;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 230
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "state"    # I

    .prologue
    .line 219
    const-string v0, "pull"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView$2;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->isBottom(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    if-nez p2, :cond_0

    .line 222
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView$2;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->releaseToLoad()V

    .line 225
    :cond_0
    return-void
.end method
