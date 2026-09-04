.class Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;
.super Ljava/lang/Object;
.source "GridViewWithHeaderAndFooter.java"

.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewGridAdapter"
.end annotation


.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field private mCacheFirstHeaderView:Z

.field private mCachePlaceHoldView:Z

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z

.field private mNumColumns:I

.field private mRowHeight:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 3
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;>;"
    .local p2, "footViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v2, Landroid/database/DataSetObservable;

    invoke-direct {v2}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 487
    iput v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    .line 488
    const/4 v2, -0x1

    iput v2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mRowHeight:I

    .line 491
    iput-boolean v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    .line 493
    iput-boolean v1, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCacheFirstHeaderView:Z

    .line 496
    iput-object p3, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 497
    instance-of v2, p3, Landroid/widget/Filterable;

    iput-boolean v2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mIsFilterable:Z

    .line 498
    if-nez p1, :cond_0

    .line 499
    sget-object v2, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 504
    :goto_0
    if-nez p2, :cond_1

    .line 505
    sget-object v2, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 509
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 510
    invoke-direct {p0, v2}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    iput-boolean v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 511
    return-void

    .line 501
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    goto :goto_0

    .line 507
    :cond_1
    iput-object p2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_1

    :cond_2
    move v0, v1

    .line 510
    goto :goto_2
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 548
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;

    .line 549
    .local v0, "info":Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;
    iget-boolean v2, v0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_0

    .line 550
    const/4 v1, 0x0

    .line 554
    .end local v0    # "info":Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getAdapterAndPlaceHolderCount()I
    .locals 4

    .prologue
    .line 600
    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget v2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method


.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 590
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getFootersCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 833
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFootersCount()I
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeadersCount()I
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 631
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v5

    iget v6, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v3, v5, v6

    .line 632
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_1

    .line 633
    iget v5, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v5, p1, v5

    if-nez v5, :cond_0

    .line 634
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v5, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v4, v4, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;->data:Ljava/lang/Object;

    .line 658
    :cond_0
    :goto_0
    return-object v4

    .line 640
    :cond_1
    sub-int v1, p1, v3

    .line 641
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 642
    .local v0, "adapterCount":I
    iget-object v5, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_2

    .line 643
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result v0

    .line 644
    if-ge v1, v0, :cond_2

    .line 645
    iget-object v5, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 646
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 654
    :cond_2
    sub-int v2, v1, v0

    .line 655
    .local v2, "footerPosition":I
    iget v5, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v5, v2, v5

    if-nez v5, :cond_0

    .line 656
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v4, v4, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v3

    iget v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v2, v3, v4

    .line 665
    .local v2, "numHeadersAndPlaceholders":I
    iget-object v3, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_0

    if-lt p1, v2, :cond_0

    .line 666
    sub-int v1, p1, v2

    .line 667
    .local v1, "adjPosition":I
    iget-object v3, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 668
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_0

    .line 669
    iget-object v3, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 672
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 745
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v7

    iget v8, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v4, v7, v8

    .line 746
    .local v4, "numHeadersAndPlaceholders":I
    iget-object v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v7, :cond_5

    move v1, v6

    .line 747
    .local v1, "adapterViewTypeStart":I
    :goto_0
    const/4 v5, -0x2

    .line 748
    .local v5, "type":I
    iget-boolean v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    if-eqz v7, :cond_1

    .line 750
    if-ge p1, v4, :cond_1

    .line 751
    if-nez p1, :cond_0

    .line 752
    iget-boolean v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCacheFirstHeaderView:Z

    if-eqz v7, :cond_0

    .line 753
    iget-object v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v1

    iget-object v8, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v7, 0x1

    .line 756
    :cond_0
    iget v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v7, p1, v7

    if-eqz v7, :cond_1

    .line 757
    iget v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int v7, p1, v7

    add-int/lit8 v7, v7, 0x1

    add-int v5, v1, v7

    .line 763
    :cond_1
    sub-int v2, p1, v4

    .line 764
    .local v2, "adjPosition":I
    const/4 v0, 0x0

    .line 765
    .local v0, "adapterCount":I
    iget-object v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_2

    .line 766
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result v0

    .line 767
    if-ltz v2, :cond_2

    if-ge v2, v0, :cond_2

    .line 768
    iget-object v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 769
    iget-object v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 778
    :cond_2
    :goto_1
    iget-boolean v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    if-eqz v7, :cond_3

    .line 780
    sub-int v3, v2, v0

    .line 781
    .local v3, "footerPosition":I
    if-ltz v3, :cond_3

    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getCount()I

    move-result v7

    if-ge v3, v7, :cond_3

    iget v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v7, v3, v7

    if-eqz v7, :cond_3

    .line 782
    iget-object v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int v8, v3, v8

    add-int/lit8 v8, v8, 0x1

    add-int v5, v7, v8

    .line 785
    .end local v3    # "footerPosition":I
    :cond_3
    sget-boolean v7, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;->DEBUG:Z

    if-eqz v7, :cond_4

    .line 786
    const-string v7, "GridViewHeaderAndFooter"

    const-string v8, "getItemViewType: pos: %s, result: %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x2

    iget-boolean v10, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v6, 0x3

    iget-boolean v10, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCacheFirstHeaderView:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_4
    return v5

    .line 746
    .end local v0    # "adapterCount":I
    .end local v1    # "adapterViewTypeStart":I
    .end local v2    # "adjPosition":I
    .end local v5    # "type":I
    :cond_5
    iget-object v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    goto/16 :goto_0

    .line 771
    .restart local v0    # "adapterCount":I
    .restart local v1    # "adapterViewTypeStart":I
    .restart local v2    # "adjPosition":I
    .restart local v5    # "type":I
    :cond_6
    iget-boolean v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    if-eqz v7, :cond_2

    .line 772
    iget-object v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v1

    add-int/lit8 v5, v7, 0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 682
    sget-boolean v6, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 683
    const-string v7, "GridViewHeaderAndFooter"

    const-string v8, "getView: %s, reused: %s"

    const/4 v6, 0x2

    new-array v9, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    const/4 v10, 0x1

    if-nez p2, :cond_1

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v6

    iget v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v5, v6, v7

    .line 687
    .local v5, "numHeadersAndPlaceholders":I
    if-ge p1, v5, :cond_4

    .line 688
    iget-object v6, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int v7, p1, v7

    .line 689
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v4, v6, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 690
    .local v4, "headerViewContainer":Landroid/view/View;
    iget v6, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v6, p1, v6

    if-nez v6, :cond_2

    .line 736
    .end local v4    # "headerViewContainer":Landroid/view/View;
    :goto_1
    return-object v4

    .line 683
    .end local v5    # "numHeadersAndPlaceholders":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 693
    .restart local v4    # "headerViewContainer":Landroid/view/View;
    .restart local v5    # "numHeadersAndPlaceholders":I
    :cond_2
    if-nez p2, :cond_3

    .line 694
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 698
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_3
    const/4 v6, 0x4

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 699
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v4, p2

    .line 700
    goto :goto_1

    .line 704
    .end local v4    # "headerViewContainer":Landroid/view/View;
    :cond_4
    sub-int v1, p1, v5

    .line 705
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 706
    .local v0, "adapterCount":I
    iget-object v6, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v6, :cond_7

    .line 707
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result v0

    .line 708
    if-ge v1, v0, :cond_7

    .line 709
    iget-object v6, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 710
    iget-object v6, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 712
    :cond_5
    if-nez p2, :cond_6

    .line 713
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 715
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_6
    const/4 v6, 0x4

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 716
    iget v6, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mRowHeight:I

    invoke-virtual {p2, v6}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v4, p2

    .line 717
    goto :goto_1

    .line 722
    :cond_7
    sub-int v3, v1, v0

    .line 723
    .local v3, "footerPosition":I
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getCount()I

    move-result v6

    if-ge v3, v6, :cond_a

    .line 724
    iget-object v6, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    iget v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int v7, v3, v7

    .line 725
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-object v2, v6, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 726
    .local v2, "footViewContainer":Landroid/view/View;
    iget v6, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v6, p1, v6

    if-nez v6, :cond_8

    move-object v4, v2

    .line 727
    goto :goto_1

    .line 729
    :cond_8
    if-nez p2, :cond_9

    .line 730
    new-instance p2, Landroid/view/View;

    .end local p2    # "convertView":Landroid/view/View;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p2, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 734
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_9
    const/4 v6, 0x4

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 735
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setMinimumHeight(I)V

    move-object v4, p2

    .line 736
    goto/16 :goto_1

    .line 739
    .end local v2    # "footViewContainer":Landroid/view/View;
    :cond_a
    new-instance v6, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v6, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v6
.end method

.method public getViewTypeCount()I
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 798
    iget-object v3, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v3, :cond_3

    move v0, v2

    .line 799
    .local v0, "count":I
    :goto_0
    iget-boolean v3, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCachePlaceHoldView:Z

    if-eqz v3, :cond_1

    .line 800
    iget-object v3, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v1, v3, v4

    .line 801
    .local v1, "offset":I
    iget-boolean v3, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mCacheFirstHeaderView:Z

    if-eqz v3, :cond_0

    .line 802
    add-int/lit8 v1, v1, 0x1

    .line 804
    :cond_0
    add-int/2addr v0, v1

    .line 806
    .end local v1    # "offset":I
    :cond_1
    sget-boolean v3, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 807
    const-string v3, "GridViewHeaderAndFooter"

    const-string v4, "getViewTypeCount: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_2
    return v0

    .line 798
    .end local v0    # "count":I
    :cond_3
    iget-object v3, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    goto :goto_0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 606
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getHeadersCount()I

    move-result v4

    iget v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    mul-int v3, v4, v7

    .line 607
    .local v3, "numHeadersAndPlaceholders":I
    if-ge p1, v3, :cond_2

    .line 608
    iget v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v4, p1, v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int v7, p1, v7

    .line 609
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-boolean v4, v4, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    move v5, v4

    .line 625
    :cond_0
    :goto_1
    return v5

    :cond_1
    move v4, v6

    .line 609
    goto :goto_0

    .line 613
    :cond_2
    sub-int v1, p1, v3

    .line 614
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 615
    .local v0, "adapterCount":I
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_4

    .line 616
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->getAdapterAndPlaceHolderCount()I

    move-result v0

    .line 617
    if-ge v1, v0, :cond_4

    .line 618
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    move v5, v6

    goto :goto_1

    .line 623
    :cond_4
    sub-int v2, v1, v0

    .line 624
    .local v2, "footerPosition":I
    iget v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    rem-int v4, v2, v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    iget v7, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    div-int v7, v2, v7

    .line 625
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;

    iget-boolean v4, v4, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;->isSelectable:Z

    if-nez v4, :cond_0

    :cond_5
    move v5, v6

    goto :goto_1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 843
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 815
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 818
    :cond_0
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 572
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 573
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;

    .line 574
    .local v1, "info":Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;
    iget-object v4, v1, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 575
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 576
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 577
    invoke-direct {p0, v4}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 578
    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 582
    .end local v1    # "info":Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;
    :goto_1
    return v3

    .line 572
    .restart local v1    # "info":Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 582
    goto :goto_1
.end method

.method public removeHeader(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 558
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 559
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;

    .line 560
    .local v1, "info":Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;
    iget-object v4, v1, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;->view:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 561
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 562
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 563
    invoke-direct {p0, v4}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 564
    iget-object v2, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 568
    .end local v1    # "info":Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;
    :goto_1
    return v3

    .line 558
    .restart local v1    # "info":Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$FixedViewInfo;
    :cond_2
    move v3, v2

    .line 568
    goto :goto_1
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 514
    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    if-eq v0, p1, :cond_0

    .line 518
    iput p1, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mNumColumns:I

    .line 519
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setRowHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 524
    iput p1, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mRowHeight:I

    .line 525
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 823
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/GridViewWithHeaderAndFooter$HeaderViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 826
    :cond_0
    return-void
.end method
