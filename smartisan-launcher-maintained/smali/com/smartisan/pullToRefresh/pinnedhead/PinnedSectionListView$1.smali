.class Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;
.super Ljava/lang/Object;
.source "PinnedSectionListView.java"

.implements Landroid/widget/AbsListView$OnScrollListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 118
    iget-object v6, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    iget-object v6, v6, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v6, :cond_0

    .line 119
    iget-object v6, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    iget-object v6, v6, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v6, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 123
    :cond_0
    move v1, p2

    .line 124
    .local v1, "firstVisibleAdapterItem":I
    move v5, p3

    .line 127
    .local v5, "visibleAdapterItemCount":I
    iget-object v6, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    invoke-virtual {v6}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 128
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    if-gez v1, :cond_2

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    invoke-static {v0, v6}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v2

    .line 133
    .local v2, "isFirstVisibleItemSection":Z
    if-eqz v2, :cond_4

    .line 134
    iget-object v6, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 135
    .local v4, "sectionView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    invoke-virtual {v7}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->getPaddingTop()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 136
    iget-object v6, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    invoke-virtual {v6}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->destroyPinnedShadow()V

    goto :goto_0

    .line 138
    :cond_3
    iget-object v6, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    invoke-virtual {v6, v1, v1, v5}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_0

    .line 142
    .end local v4    # "sectionView":Landroid/view/View;
    :cond_4
    iget-object v6, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    invoke-virtual {v6, v1}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result v3

    .line 143
    .local v3, "sectionPosition":I
    const/4 v6, -0x1

    if-le v3, v6, :cond_5

    .line 144
    iget-object v6, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    invoke-virtual {v6, v3, v1, v5}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_0

    .line 146
    :cond_5
    iget-object v6, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    invoke-virtual {v6}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->destroyPinnedShadow()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    iget-object v0, v0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$1;->this$0:Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;

    iget-object v0, v0, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 113
    :cond_0
    return-void
.end method
