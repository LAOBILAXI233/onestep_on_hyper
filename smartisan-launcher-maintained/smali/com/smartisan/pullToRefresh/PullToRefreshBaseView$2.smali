.class Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$2;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

.implements Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->initViews(Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$2;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public headerClipBottomChanged(I)V
    .locals 2
    .param p1, "bottom"    # I

    .prologue
    .line 270
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$2;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$000(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$2;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$100(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView$2;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->access$300(Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;)Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/RefreshHeaderView;->setClipBottom(I)V

    goto :goto_0
.end method
