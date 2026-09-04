.class public Lcom/smartisan/pullToRefresh/HeaderScrollView;
.super Landroid/widget/ScrollView;
.source "HeaderScrollView.java"

.implements Lcom/smartisan/pullToRefresh/IHeaderBaseView;


.field private headContentHeight:I

.field private mHeader:Landroid/view/View;

.field private mInnerLayout:Landroid/widget/LinearLayout;

.field private mListener:Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;

.field private mRefreshAnim:Landroid/view/animation/Animation;


.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/16 v0, 0x87

    iput v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->headContentHeight:I

    .line 26
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/HeaderScrollView;->initView()V

    .line 27
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 30
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mInnerLayout:Landroid/widget/LinearLayout;

    .line 31
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mInnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/smartisan/pullToRefresh/R$layout;->pull_to_refresh:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    .line 33
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/smartisan/pullToRefresh/HeaderScrollView;->measureView(Landroid/view/View;)V

    .line 34
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->headContentHeight:I

    .line 35
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    iget v1, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->headContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 36
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lcom/smartisan/pullToRefresh/HeaderScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 37
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mInnerLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-super {p0, v0, v3, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/smartisan/pullToRefresh/R$anim;->refresh_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mRefreshAnim:Landroid/view/animation/Animation;

    .line 41
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mRefreshAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 42
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 51
    .local v3, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v3, :cond_0

    .line 52
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .end local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 54
    .restart local v3    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    :cond_0
    const/high16 v4, -0x80000000

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 58
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 61
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 67
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 68
    return-void

    .line 64
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method


.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mInnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 114
    .local v0, "ret":Z
    return v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->headContentHeight:I

    return v0
.end method

.method public getHeaderTop()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getScrollDistance()I
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderScrollView;->getScrollY()I

    move-result v0

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "headerBottom":I
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderScrollView;->getScrollY()I

    move-result v1

    if-gtz v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderScrollView;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/HeaderScrollView;->getHeaderHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mListener:Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mListener:Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;

    invoke-interface {v1, v0}, Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;->headerClipBottomChanged(I)V

    .line 110
    :cond_1
    return-void
.end method

.method public scrollToTop()Z
    .locals 1

    .prologue
    .line 92
    const/16 v0, 0x21

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/HeaderScrollView;->fullScroll(I)Z

    move-result v0

    return v0
.end method

.method public setHeaderPadding(I)V
    .locals 2
    .param p1, "top"    # I

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 73
    return-void
.end method

.method public setRefreshHeaderListener(Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/HeaderScrollView;->mListener:Lcom/smartisan/pullToRefresh/RefreshHeaderView$RefreshHeaderListener;

    .line 98
    return-void
.end method
