.class public Lcom/smartisan/pullToRefresh/PullToRefreshListView;
.super Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;
.source "PullToRefreshListView.java"


.field protected listenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFooterView:Landroid/view/View;

.field private mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;


.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/smartisan/pullToRefresh/PullToRefreshBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 200
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    .line 216
    new-instance v0, Lcom/smartisan/pullToRefresh/PullToRefreshListView$2;

    invoke-direct {v0, p0}, Lcom/smartisan/pullToRefresh/PullToRefreshListView$2;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshListView;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 29
    return-void
.end method


.method public addHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/HeaderListView;->addHeaderView(Landroid/view/View;)V

    .line 235
    return-void
.end method

.method protected addMoreView(Landroid/view/View;)V
    .locals 1
    .param p1, "footerView"    # Landroid/view/View;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mFooterView:Landroid/view/View;

    .line 179
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/HeaderListView;->addFooterView(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 181
    return-void
.end method

.method protected addNoMoreView(Landroid/view/View;)V
    .locals 3
    .param p1, "footerView"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/smartisan/pullToRefresh/HeaderListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 193
    return-void
.end method

.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 203
    if-nez p1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected canPredicateWhenPullDown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 141
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v1}, Lcom/smartisan/pullToRefresh/HeaderListView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v1, v0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method protected canPredicateWhenPullUpLoad()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->isBottom(Z)Z

    move-result v0

    return v0
.end method

.method protected canPredicateWhenPullUpRefresh()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 147
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v1}, Lcom/smartisan/pullToRefresh/HeaderListView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/HeaderListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/smartisan/pullToRefresh/HeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/HeaderListView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected createRefreshableView(Landroid/util/AttributeSet;Z)Lcom/smartisan/pullToRefresh/IHeaderBaseView;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "enableSwipe"    # Z

    .prologue
    .line 102
    if-eqz p2, :cond_0

    .line 103
    new-instance v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    new-instance v1, Lcom/smartisan/pullToRefresh/PullToRefreshListView$1;

    invoke-direct {v1, p0}, Lcom/smartisan/pullToRefresh/PullToRefreshListView$1;-><init>(Lcom/smartisan/pullToRefresh/PullToRefreshListView;)V

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/HeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 124
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/smartisan/pullToRefresh/HeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    goto :goto_0
.end method

.method public getRefreshableView()Lcom/smartisan/pullToRefresh/HeaderListView;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    return-object v0
.end method

.method public bridge synthetic getRefreshableView()Lcom/smartisan/pullToRefresh/IHeaderBaseView;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->getRefreshableView()Lcom/smartisan/pullToRefresh/HeaderListView;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeListView()Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    instance-of v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    check-cast v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isBottom(Z)Z
    .locals 5
    .param p1, "pullUpRefresh"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    if-eqz p1, :cond_2

    .line 159
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v3}, Lcom/smartisan/pullToRefresh/HeaderListView;->getLastVisiblePosition()I

    move-result v3

    iget-object v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v4}, Lcom/smartisan/pullToRefresh/HeaderListView;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 159
    goto :goto_0

    .line 161
    :cond_2
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v3}, Lcom/smartisan/pullToRefresh/HeaderListView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    iget-object v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v4}, Lcom/smartisan/pullToRefresh/HeaderListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/smartisan/pullToRefresh/HeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "last":Landroid/view/View;
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mFooterView:Landroid/view/View;

    if-ne v0, v3, :cond_3

    .line 164
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v4}, Lcom/smartisan/pullToRefresh/HeaderListView;->getMeasuredHeight()I

    move-result v4

    if-le v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "last":Landroid/view/View;
    :cond_3
    move v1, v2

    .line 168
    goto :goto_0
.end method

.method protected isTop()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public playDeleteAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    instance-of v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    check-cast v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->playDeleteAnimation(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    :cond_0
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/HeaderListView;->removeHeaderView(Landroid/view/View;)Z

    .line 239
    return-void
.end method

.method protected removeMoreView(Landroid/view/View;)V
    .locals 1
    .param p1, "footerView"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/HeaderListView;->removeFooterView(Landroid/view/View;)Z

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mFooterView:Landroid/view/View;

    .line 187
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 188
    return-void
.end method

.method protected removeNoMoreView(Landroid/view/View;)V
    .locals 1
    .param p1, "footerView"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/HeaderListView;->removeFooterView(Landroid/view/View;)Z

    .line 198
    return-void
.end method

.method public removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 210
    if-nez p1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 86
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 34
    instance-of v0, p1, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/HeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    new-instance v1, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;

    invoke-direct {v1, p1}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;-><init>(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/HeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setContentShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    instance-of v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    check-cast v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->setContentShadow(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :cond_0
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "emptyView"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/HeaderListView;->setEmptyView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method public setMenuBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    instance-of v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    check-cast v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->setMenuBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :cond_0
    return-void
.end method

.method public setMenuContainerHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    instance-of v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    check-cast v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->setMenuContainerHeight(I)V

    .line 75
    :cond_0
    return-void
.end method

.method public setMenuContainerWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    instance-of v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    check-cast v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->setMenuContainerWidth(I)V

    .line 69
    :cond_0
    return-void
.end method

.method public setMenuItemClickListener(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    instance-of v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    check-cast v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->setMenuItemClickListener(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;)V

    .line 51
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/HeaderListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/HeaderListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 98
    return-void
.end method

.method public setSwipeMenuCreator(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuCreator;)V
    .locals 1
    .param p1, "creator"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuCreator;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    instance-of v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisan/pullToRefresh/HeaderListView;

    check-cast v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->setSwipeMenuCreator(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuCreator;)V

    .line 45
    :cond_0
    return-void
.end method
