.class Landroid/support/v7/widget/LinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1

.field static final SCOLLING_OFFSET_NaN:I = -0x80000000

.field static final TAG:Ljava/lang/String; = "LinearLayoutManager#LayoutState"


.field mAvailable:I

.field mCurrentPosition:I

.field mExtra:I

.field mIsPreLayout:Z

.field mItemDirection:I

.field mLayoutDirection:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1737
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1778
    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1785
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 1791
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void
.end method

.method private nextFromLimitedList()Landroid/view/View;
    .locals 8

    .prologue
    .line 1823
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 1824
    .local v4, "size":I
    const/4 v0, 0x0

    .line 1825
    .local v0, "closest":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const v1, 0x7fffffff

    .line 1826
    .local v1, "closestDistance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 1827
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 1828
    .local v5, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    if-nez v6, :cond_1

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1826
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1831
    :cond_1
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v6

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    mul-int v2, v6, v7

    .line 1832
    .local v2, "distance":I
    if-ltz v2, :cond_0

    .line 1835
    if-ge v2, v1, :cond_0

    .line 1836
    move-object v0, v5

    .line 1837
    move v1, v2

    .line 1838
    if-nez v2, :cond_0

    .line 1846
    .end local v2    # "distance":I
    .end local v5    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    if-eqz v0, :cond_3

    .line 1847
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v6

    iget v7, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v6, v7

    iput v6, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1848
    iget-object v6, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1850
    :goto_1
    return-object v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method


.method hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z
    .locals 2
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 1797
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log()V
    .locals 3

    .prologue
    .line 1854
    const-string v0, "LinearLayoutManager#LayoutState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ind:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", layoutDir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    return-void
.end method

.method next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 3
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;

    .prologue
    .line 1807
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1808
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->nextFromLimitedList()Landroid/view/View;

    move-result-object v0

    .line 1812
    :goto_0
    return-object v0

    .line 1810
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1811
    .local v0, "view":Landroid/view/View;
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    goto :goto_0
.end method
