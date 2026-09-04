.class public Lcom/smartisan/pullToRefresh/PullToRefreshScrollView;
.super Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
.source "PullToRefreshScrollView.java"


.field private mHeaderScrollView:Lcom/smartisan/pullToRefresh/HeaderScrollView;


.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshScrollView;->hideLoadMore()V

    .line 14
    return-void
.end method


.method protected addMoreView(Landroid/view/View;)V
    .locals 0
    .param p1, "footerView"    # Landroid/view/View;

    .prologue
    .line 66
    return-void
.end method

.method protected addNoMoreView(Landroid/view/View;)V
    .locals 0
    .param p1, "footerView"    # Landroid/view/View;

    .prologue
    .line 76
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 18
    instance-of v0, p1, Lcom/smartisan/pullToRefresh/RefreshHeaderView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/smartisan/pullToRefresh/IHeaderBaseView;

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshScrollView;->mHeaderScrollView:Lcom/smartisan/pullToRefresh/HeaderScrollView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisan/pullToRefresh/HeaderScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 23
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected canPredicateWhenPullDown()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshScrollView;->mHeaderScrollView:Lcom/smartisan/pullToRefresh/HeaderScrollView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/HeaderScrollView;->getScrollDistance()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected canPredicateWhenPullUpLoad()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected canPredicateWhenPullUpRefresh()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method protected createRefreshableView(Landroid/util/AttributeSet;Z)Lcom/smartisan/pullToRefresh/IHeaderBaseView;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "pullUpRefresh"    # Z

    .prologue
    .line 58
    new-instance v0, Lcom/smartisan/pullToRefresh/HeaderScrollView;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/smartisan/pullToRefresh/HeaderScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshScrollView;->mHeaderScrollView:Lcom/smartisan/pullToRefresh/HeaderScrollView;

    .line 59
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshScrollView;->mHeaderScrollView:Lcom/smartisan/pullToRefresh/HeaderScrollView;

    return-object v0
.end method

.method public getRefreshableView()Lcom/smartisan/pullToRefresh/HeaderScrollView;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshScrollView;->mHeaderScrollView:Lcom/smartisan/pullToRefresh/HeaderScrollView;

    return-object v0
.end method

.method public bridge synthetic getRefreshableView()Lcom/smartisan/pullToRefresh/IHeaderBaseView;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshScrollView;->getRefreshableView()Lcom/smartisan/pullToRefresh/HeaderScrollView;

    move-result-object v0

    return-object v0
.end method

.method protected isBottom(Z)Z
    .locals 1
    .param p1, "pullUpRefresh"    # Z

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method protected isTop()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshScrollView;->mHeaderScrollView:Lcom/smartisan/pullToRefresh/HeaderScrollView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/HeaderScrollView;->getScrollDistance()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeMoreView(Landroid/view/View;)V
    .locals 0
    .param p1, "footerView"    # Landroid/view/View;

    .prologue
    .line 71
    return-void
.end method

.method protected removeNoMoreView(Landroid/view/View;)V
    .locals 0
    .param p1, "footerView"    # Landroid/view/View;

    .prologue
    .line 81
    return-void
.end method
