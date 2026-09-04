.class Lcom/smartisan/pullToRefresh/PullToRefreshListView$1;
.super Ljava/lang/Object;
.source "PullToRefreshListView.java"

.implements Landroid/widget/AbsListView$OnScrollListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/pullToRefresh/PullToRefreshListView;->createRefreshableView(Landroid/util/AttributeSet;Z)Lcom/smartisan/pullToRefresh/IHeaderBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/PullToRefreshListView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/PullToRefreshListView;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView$1;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 118
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView$1;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshListView;

    iget-object v2, v2, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView$1;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshListView;

    iget-object v2, v2, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 122
    :cond_0
    return-void

    .line 119
    :cond_1
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView$1;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshListView;

    iget-object v2, v2, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 120
    .local v1, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I

    .prologue
    .line 110
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView$1;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshListView;

    iget-object v2, v2, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView$1;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshListView;

    iget-object v2, v2, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 114
    :cond_0
    return-void

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView$1;->this$0:Lcom/smartisan/pullToRefresh/PullToRefreshListView;

    iget-object v2, v2, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/AbsListView$OnScrollListener;

    .line 112
    .local v1, "listener":Landroid/widget/AbsListView$OnScrollListener;
    invoke-interface {v1, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    goto :goto_0
.end method
