.class public abstract Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


.method findReferenceIndexFromCache(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 681
    const/4 v2, 0x0

    .line 682
    .local v2, "lo":I
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 684
    .local v0, "hi":I
    :goto_0
    if-gt v2, v0, :cond_1

    .line 685
    add-int v5, v2, v0

    ushr-int/lit8 v3, v5, 0x1

    .line 686
    .local v3, "mid":I
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 687
    .local v4, "midVal":I
    if-ge v4, p1, :cond_0

    .line 688
    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 690
    :cond_0
    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    .line 693
    .end local v3    # "mid":I
    .end local v4    # "midVal":I
    :cond_1
    add-int/lit8 v1, v2, -0x1

    .line 694
    .local v1, "index":I
    if-ltz v1, :cond_2

    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 695
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 697
    :goto_1
    return v5

    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method getCachedSpanIndex(II)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .prologue
    const/4 v3, -0x1

    .line 614
    iget-boolean v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v2, :cond_1

    .line 615
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    .line 623
    :cond_0
    :goto_0
    return v0

    .line 617
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 618
    .local v0, "existing":I
    if-ne v0, v3, :cond_0

    .line 621
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    .line 622
    .local v1, "value":I
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v1

    .line 623
    goto :goto_0
.end method

.method public getSpanGroupIndex(II)I
    .locals 6
    .param p1, "adapterPosition"    # I
    .param p2, "spanCount"    # I

    .prologue
    .line 711
    const/4 v4, 0x0

    .line 712
    .local v4, "span":I
    const/4 v0, 0x0

    .line 713
    .local v0, "group":I
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    .line 714
    .local v2, "positionSpanSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 715
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    .line 716
    .local v3, "size":I
    add-int/2addr v4, v3

    .line 717
    if-ne v4, p2, :cond_1

    .line 718
    const/4 v4, 0x0

    .line 719
    add-int/lit8 v0, v0, 0x1

    .line 714
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    :cond_1
    if-le v4, p2, :cond_0

    .line 722
    move v4, v3

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 726
    .end local v3    # "size":I
    :cond_2
    add-int v5, v4, v2

    if-le v5, p2, :cond_3

    .line 727
    add-int/lit8 v0, v0, 0x1

    .line 729
    :cond_3
    return v0
.end method

.method public getSpanIndex(II)I
    .locals 9
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 650
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v1

    .line 651
    .local v1, "positionSpanSize":I
    if-ne v1, p2, :cond_1

    move v4, v6

    .line 677
    :cond_0
    :goto_0
    return v4

    .line 654
    :cond_1
    const/4 v4, 0x0

    .line 655
    .local v4, "span":I
    const/4 v5, 0x0

    .line 657
    .local v5, "startPos":I
    iget-boolean v7, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 658
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v2

    .line 659
    .local v2, "prevKey":I
    if-ltz v2, :cond_2

    .line 660
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    add-int v4, v7, v8

    .line 661
    add-int/lit8 v5, v2, 0x1

    .line 664
    .end local v2    # "prevKey":I
    :cond_2
    move v0, v5

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_5

    .line 665
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    .line 666
    .local v3, "size":I
    add-int/2addr v4, v3

    .line 667
    if-ne v4, p2, :cond_4

    .line 668
    const/4 v4, 0x0

    .line 664
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 669
    :cond_4
    if-le v4, p2, :cond_3

    .line 671
    move v4, v3

    goto :goto_2

    .line 674
    .end local v3    # "size":I
    :cond_5
    add-int v7, v4, v1

    if-le v7, p2, :cond_0

    move v4, v6

    .line 677
    goto :goto_0
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 602
    return-void
.end method

.method public isSpanIndexCacheEnabled()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return v0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .locals 0
    .param p1, "cacheSpanIndices"    # Z

    .prologue
    .line 593
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 594
    return-void
.end method
