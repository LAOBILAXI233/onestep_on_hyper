.class public Lcom/smartisan/pullToRefresh/HeaderListView;
.super Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;
.source "HeaderListView.java"

.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/smartisan/pullToRefresh/IHeaderBaseView;
.implements Lcom/smartisan/pullToRefresh/IFooterBaseView;


.field private mFooter:Landroid/view/View;

.field private mFooterListener:Lcom/smartisan/pullToRefresh/RefreshFooterView$RefreshFooterListener;

.field private mHeader:Landroid/view/View;

.field private mListener:Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;

.field private mScrollState:I

.field private refreshContentHeight:I


.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/16 v0, 0x87

    iput v0, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->refreshContentHeight:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mScrollState:I

    .line 29
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->initView()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/16 v0, 0x87

    iput v0, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->refreshContentHeight:I

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mScrollState:I

    .line 34
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->initView()V

    .line 35
    return-void
.end method

.method private initView()V
    .locals 7

    .prologue
    const v6, 0x106000d

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getDividerHeight()I

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/smartisan/pullToRefresh/HeaderListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/smartisan/pullToRefresh/R$layout;->pull_to_refresh:I

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mHeader:Landroid/view/View;

    .line 42
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mHeader:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/smartisan/pullToRefresh/HeaderListView;->measureView(Landroid/view/View;)V

    .line 43
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->refreshContentHeight:I

    .line 44
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mHeader:Landroid/view/View;

    iget v2, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->refreshContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 45
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 46
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v1, v4, v3}, Lcom/smartisan/pullToRefresh/HeaderListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 49
    const/4 v0, 0x1

    .line 50
    .local v0, "mPullUpRefreshEnabled":Z
    if-eqz v0, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getDividerHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/smartisan/pullToRefresh/HeaderListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/smartisan/pullToRefresh/R$layout;->pull_to_refresh:I

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mFooter:Landroid/view/View;

    .line 55
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mFooter:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/smartisan/pullToRefresh/HeaderListView;->measureView(Landroid/view/View;)V

    .line 56
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mFooter:Landroid/view/View;

    iget v2, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->refreshContentHeight:I

    mul-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 57
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mFooter:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 58
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v1, v4, v3}, Lcom/smartisan/pullToRefresh/HeaderListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 61
    :cond_2
    invoke-virtual {p0, v3}, Lcom/smartisan/pullToRefresh/HeaderListView;->setHeaderDividersEnabled(Z)V

    .line 62
    invoke-virtual {p0, v3}, Lcom/smartisan/pullToRefresh/HeaderListView;->setFooterDividersEnabled(Z)V

    .line 64
    invoke-super {p0, p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 65
    return-void
.end method

.method private isScrolling()Z
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mScrollState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 69
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 70
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 72
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    :cond_0
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v6, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 76
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 79
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 85
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 86
    return-void

    .line 82
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method


.method public addFooter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mFooter:Landroid/view/View;

    iget v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->refreshContentHeight:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 188
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/HeaderListView;->addFooterView(Landroid/view/View;)V

    .line 189
    return-void
.end method

.method public getFooterBottom()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getFooterHeight()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->refreshContentHeight:I

    return v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->refreshContentHeight:I

    return v0
.end method

.method public getHeaderTop()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getScrollDistance()I
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "headerBottom":I
    if-nez p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/smartisan/pullToRefresh/HeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getHeaderHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mListener:Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mListener:Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;

    invoke-interface {v1, v0}, Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;->headerClipBottomChanged(I)V

    .line 163
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 151
    iput p2, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mScrollState:I

    .line 152
    return-void
.end method

.method public removeFooter()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/HeaderListView;->removeFooterView(Landroid/view/View;)Z

    .line 184
    return-void
.end method

.method public scrollToBottom()Z
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/HeaderListView;->setSelection(I)V

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public scrollToTop()Z
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/HeaderListView;->setSelection(I)V

    .line 170
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setFooterPadding(I)V
    .locals 4
    .param p1, "bottom"    # I

    .prologue
    const/4 v3, 0x0

    .line 112
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mFooter:Landroid/view/View;

    invoke-virtual {v1, v3, v3, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 113
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getFooterHeight()I

    move-result v1

    add-int v0, p1, v1

    .line 116
    .local v0, "bottomPadding":I
    if-gez v0, :cond_0

    .line 117
    const/4 v0, 0x0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3, v3, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 121
    .end local v0    # "bottomPadding":I
    :cond_1
    return-void
.end method

.method public setHeaderPadding(I)V
    .locals 4
    .param p1, "top"    # I

    .prologue
    const/4 v3, 0x0

    .line 98
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v3, p1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 100
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getHeaderHeight()I

    move-result v1

    add-int v0, p1, v1

    .line 103
    .local v0, "topPadding":I
    if-gez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 108
    .end local v0    # "topPadding":I
    :cond_1
    return-void
.end method

.method public setRefreshFooterListener(Lcom/smartisan/pullToRefresh/RefreshFooterView$RefreshFooterListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/smartisan/pullToRefresh/RefreshFooterView$RefreshFooterListener;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mFooterListener:Lcom/smartisan/pullToRefresh/RefreshFooterView$RefreshFooterListener;

    .line 146
    return-void
.end method

.method public setRefreshHeaderListener(Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;)V
    .locals 0
    .param p1, "l"    # Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/HeaderListView;->mListener:Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;

    .line 142
    return-void
.end method
