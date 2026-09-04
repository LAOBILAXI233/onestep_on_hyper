.class public Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;
.super Landroid/widget/ListView;
.source "PinnedSectionListView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;,
        Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;
    }
.end annotation


.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private final mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

.field mRecycleSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

.field private mSectionsDistanceY:I

.field private mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mShadowHeight:I

.field private final mTouchPoint:Landroid/graphics/PointF;

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchTarget:Landroid/view/View;

.field mTranslateY:I


.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    .line 106
    new-instance v0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;

    invoke-direct {v0, p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;-><init>(Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 156
    new-instance v0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$2;

    invoke-direct {v0, p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$2;-><init>(Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 174
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->initView()V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 178
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    .line 106
    new-instance v0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;

    invoke-direct {v0, p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;-><init>(Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 156
    new-instance v0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$2;

    invoke-direct {v0, p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$2;-><init>(Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 179
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->initView()V

    .line 180
    return-void
.end method

.method private clearTouchTarget()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 532
    iput-object v1, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    .line 533
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 535
    iput-object v1, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    .line 537
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 184
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchSlop:I

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->initShadow(Z)V

    .line 186
    return-void
.end method

.method public static isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z
    .locals 1
    .param p0, "adapter"    # Landroid/widget/ListAdapter;
    .param p1, "viewType"    # I

    .prologue
    .line 556
    :goto_0
    instance-of v0, p0, Landroid/widget/WrapperListAdapter;

    if-eqz v0, :cond_0

    .line 557
    check-cast p0, Landroid/widget/WrapperListAdapter;

    .end local p0    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {p0}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .restart local p0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 559
    :cond_0
    if-nez p0, :cond_1

    .line 560
    const/4 v0, 0x0

    .line 562
    .end local p0    # "adapter":Landroid/widget/ListAdapter;
    :goto_1
    return v0

    .restart local p0    # "adapter":Landroid/widget/ListAdapter;
    :cond_1
    check-cast p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;

    .end local p0    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {p0, p1}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;->isItemViewTypePinned(I)Z

    move-result v0

    goto :goto_1
.end method

.method private isPinnedViewTouched(Landroid/view/View;FF)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 519
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 523
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 525
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTranslateY:I

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 526
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 527
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 528
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private performPinnedItemClick()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 540
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-nez v3, :cond_1

    .line 552
    :cond_0
    :goto_0
    return v1

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 543
    .local v0, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget v4, v4, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->position:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    iget-object v3, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v2, v3, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 545
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->playSoundEffect(I)V

    .line 546
    if-eqz v2, :cond_2

    .line 547
    invoke-virtual {v2, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 549
    :cond_2
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget v3, v1, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->position:I

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-wide v4, v1, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->id:J

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move v1, v6

    .line 550
    goto :goto_0
.end method


.method createPinnedShadow(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v10, 0x0

    .line 221
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mRecycleSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    .line 222
    .local v5, "pinnedShadow":Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mRecycleSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    .line 225
    if-nez v5, :cond_0

    new-instance v5, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    .end local v5    # "pinnedShadow":Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;
    invoke-direct {v5}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;-><init>()V

    .line 227
    .restart local v5    # "pinnedShadow":Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;
    :cond_0
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    iget-object v9, v5, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-interface {v8, p1, v9, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 230
    .local v6, "pinnedView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 231
    .local v3, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_1

    .line 232
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 233
    .restart local v3    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    :cond_1
    iget v8, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 237
    .local v0, "heightMode":I
    iget v8, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 239
    .local v1, "heightSize":I
    if-nez v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    .line 241
    :cond_2
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getListPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getListPaddingBottom()I

    move-result v9

    sub-int v4, v8, v9

    .line 242
    .local v4, "maxHeight":I
    if-le v1, v4, :cond_3

    move v1, v4

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getListPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getListPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 246
    .local v7, "ws":I
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 247
    .local v2, "hs":I
    invoke-virtual {v6, v7, v2}, Landroid/view/View;->measure(II)V

    .line 248
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v6, v10, v10, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 249
    iput v10, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTranslateY:I

    .line 252
    iput-object v6, v5, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 253
    iput p1, v5, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->position:I

    .line 254
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->id:J

    .line 257
    iput-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    .line 258
    return-void
.end method

.method destroyPinnedShadow()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mRecycleSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    .line 269
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 424
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-eqz v5, :cond_1

    .line 432
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getListPaddingLeft()I

    move-result v2

    .line 433
    .local v2, "pLeft":I
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getListPaddingTop()I

    move-result v3

    .line 434
    .local v3, "pTop":I
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v4, v5, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 437
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 439
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    add-int v0, v6, v5

    .line 441
    .local v0, "clipHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    add-int v6, v3, v0

    invoke-virtual {p1, v2, v3, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 443
    int-to-float v5, v2

    iget v6, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 444
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v5, v5, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v5, v6, v7}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 446
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mSectionsDistanceY:I

    if-lez v5, :cond_0

    .line 447
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v6, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v6, v6, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v7, v7, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v8, v8, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v9, v9, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    iget v10, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 451
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 454
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 456
    .end local v0    # "clipHeight":I
    .end local v2    # "pLeft":I
    .end local v3    # "pTop":I
    .end local v4    # "view":Landroid/view/View;
    :cond_1
    return-void

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 439
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "pLeft":I
    .restart local v3    # "pTop":I
    .restart local v4    # "view":Landroid/view/View;
    :cond_2
    iget v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mShadowHeight:I

    iget v7, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mSectionsDistanceY:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 463
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 464
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 465
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 467
    .local v0, "action":I
    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v5, v5, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-direct {p0, v5, v2, v3}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 473
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v5, v5, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    iput-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    .line 474
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v2, v5, Landroid/graphics/PointF;->x:F

    .line 475
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v3, v5, Landroid/graphics/PointF;->y:F

    .line 478
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    .line 481
    :cond_0
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 482
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-direct {p0, v5, v2, v3}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 483
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 486
    :cond_1
    if-ne v0, v4, :cond_3

    .line 487
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 488
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->performPinnedItemClick()Z

    .line 489
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->clearTouchTarget()V

    .line 515
    :cond_2
    :goto_0
    return v4

    .line 491
    :cond_3
    if-ne v0, v7, :cond_4

    .line 492
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_0

    .line 494
    :cond_4
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 495
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 498
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 499
    .local v1, "event":Landroid/view/MotionEvent;
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 500
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 501
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 504
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v5}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 505
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 506
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_0

    .line 515
    .end local v1    # "event":Landroid/view/MotionEvent;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method ensureShadowForPosition(III)V
    .locals 7
    .param p1, "sectionPosition"    # I
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 275
    const/4 v4, 0x2

    if-ge p3, v4, :cond_1

    .line 276
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->destroyPinnedShadow()V

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v4, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget v4, v4, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->position:I

    if-eq v4, p1, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->destroyPinnedShadow()V

    .line 285
    :cond_2
    iget-object v4, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-nez v4, :cond_3

    .line 286
    invoke-virtual {p0, p1}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->createPinnedShadow(I)V

    .line 290
    :cond_3
    add-int/lit8 v1, p1, 0x1

    .line 291
    .local v1, "nextPosition":I
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 292
    sub-int v4, v1, p2

    sub-int v4, p3, v4

    invoke-virtual {p0, v1, v4}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->findFirstVisibleSectionPosition(II)I

    move-result v2

    .line 294
    .local v2, "nextSectionPosition":I
    const/4 v4, -0x1

    if-le v2, v4, :cond_5

    .line 295
    sub-int v4, v2, p2

    invoke-virtual {p0, v4}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 296
    .local v3, "nextSectionView":Landroid/view/View;
    iget-object v4, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v4, v4, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getPaddingTop()I

    move-result v5

    add-int v0, v4, v5

    .line 297
    .local v0, "bottom":I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mSectionsDistanceY:I

    .line 298
    iget v4, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mSectionsDistanceY:I

    if-gez v4, :cond_4

    .line 300
    iget v4, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mSectionsDistanceY:I

    iput v4, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTranslateY:I

    goto :goto_0

    .line 303
    :cond_4
    iput v6, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTranslateY:I

    goto :goto_0

    .line 307
    .end local v0    # "bottom":I
    .end local v3    # "nextSectionView":Landroid/view/View;
    :cond_5
    iput v6, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mTranslateY:I

    .line 308
    const v4, 0x7fffffff

    iput v4, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mSectionsDistanceY:I

    goto :goto_0
.end method

.method findCurrentSectionPosition(I)I
    .locals 9
    .param p1, "fromPosition"    # I

    .prologue
    const/4 v7, -0x1

    .line 334
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 336
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-lt p1, v8, :cond_1

    move v2, v7

    .line 354
    :cond_0
    :goto_0
    return v2

    .line 338
    :cond_1
    instance-of v8, v0, Landroid/widget/SectionIndexer;

    if-eqz v8, :cond_2

    move-object v1, v0

    .line 340
    check-cast v1, Landroid/widget/SectionIndexer;

    .line 341
    .local v1, "indexer":Landroid/widget/SectionIndexer;
    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v4

    .line 342
    .local v4, "sectionPosition":I
    invoke-interface {v1, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    .line 343
    .local v2, "itemPosition":I
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 344
    .local v5, "typeView":I
    invoke-static {v0, v5}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 350
    .end local v1    # "indexer":Landroid/widget/SectionIndexer;
    .end local v2    # "itemPosition":I
    .end local v4    # "sectionPosition":I
    .end local v5    # "typeView":I
    :cond_2
    move v3, p1

    .local v3, "position":I
    :goto_1
    if-ltz v3, :cond_4

    .line 351
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 352
    .local v6, "viewType":I
    invoke-static {v0, v6}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v8

    if-eqz v8, :cond_3

    move v2, v3

    goto :goto_0

    .line 350
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .end local v6    # "viewType":I
    :cond_4
    move v2, v7

    .line 354
    goto :goto_0
.end method

.method findFirstVisibleSectionPosition(II)I
    .locals 7
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I

    .prologue
    const/4 v5, -0x1

    .line 315
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 317
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 318
    .local v1, "adapterDataCount":I
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getLastVisiblePosition()I

    move-result v6

    if-lt v6, v1, :cond_1

    move v3, v5

    .line 330
    :cond_0
    :goto_0
    return v3

    .line 321
    :cond_1
    add-int v6, p1, p2

    if-lt v6, v1, :cond_2

    .line 322
    sub-int p2, v1, p1

    .line 325
    :cond_2
    const/4 v2, 0x0

    .local v2, "childIndex":I
    :goto_1
    if-ge v2, p2, :cond_3

    .line 326
    add-int v3, p1, v2

    .line 327
    .local v3, "position":I
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    .line 328
    .local v4, "viewType":I
    invoke-static {v0, v4}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 325
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v3    # "position":I
    .end local v4    # "viewType":I
    :cond_3
    move v3, v5

    .line 330
    goto :goto_0
.end method

.method public initShadow(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    .line 201
    if-eqz p1, :cond_1

    .line 202
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x3

    new-array v2, v2, [I

    const-string v3, "#ffa0a0a0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "#50a0a0a0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "#00a0a0a0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 205
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mShadowHeight:I

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 210
    iput v4, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mShadowHeight:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 411
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 412
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-eqz v2, :cond_0

    .line 413
    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 414
    .local v0, "parentWidth":I
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v2, v2, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 415
    .local v1, "shadowWidth":I
    if-eq v0, v1, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->recreatePinnedShadow()V

    .line 419
    .end local v0    # "parentWidth":I
    .end local v1    # "shadowWidth":I
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 381
    new-instance v0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$3;

    invoke-direct {v0, p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$3;-><init>(Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;)V

    invoke-virtual {p0, v0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->post(Ljava/lang/Runnable;)Z

    .line 387
    return-void
.end method

.method recreatePinnedShadow()V
    .locals 4

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->destroyPinnedShadow()V

    .line 359
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 360
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getFirstVisiblePosition()I

    move-result v1

    .line 362
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0, v1}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result v2

    .line 363
    .local v2, "sectionPosition":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 367
    .end local v1    # "firstVisiblePosition":I
    .end local v2    # "sectionPosition":I
    :cond_0
    :goto_0
    return-void

    .line 364
    .restart local v1    # "firstVisiblePosition":I
    .restart local v2    # "sectionPosition":I
    :cond_1
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getLastVisiblePosition()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v2, v1, v3}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 400
    .local v0, "oldAdapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 401
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 404
    :cond_1
    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->destroyPinnedShadow()V

    .line 406
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 407
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-ne p1, v0, :cond_0

    .line 372
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0
.end method

.method public setShadowVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->initShadow(Z)V

    .line 192
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mPinnedSection:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;

    iget-object v0, v1, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 194
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->invalidate(IIII)V

    .line 196
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
