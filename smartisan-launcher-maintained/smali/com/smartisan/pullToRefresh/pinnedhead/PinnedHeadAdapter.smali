.class public Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;
.super Landroid/widget/BaseAdapter;
.source "PinnedHeadAdapter.java"

.implements Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;


.field private mAdapter:Landroid/widget/ListAdapter;


.method public constructor <init>(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 23
    return-void
.end method


.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isItemViewTypePinned(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 58
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedHeadAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 63
    return-void
.end method
