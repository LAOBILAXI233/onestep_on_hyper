.class public Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;
.super Ljava/lang/Object;
.source "SwipeListAdapter.java"

.implements Landroid/widget/WrapperListAdapter;
.implements Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;


.field private isAnimating:Z

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mContentShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mItemClickEnable:Z

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mMenuContainerHeight:I

.field private mMenuContainerWidth:I

.field private mMenuItemClickListener:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;

.field private mOpenedChild:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;


.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v1, -0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mItemClickEnable:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->isAnimating:Z

    .line 47
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mMenuContainerHeight:I

    .line 48
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mMenuContainerWidth:I

    .line 51
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 53
    return-void
.end method


.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public createMenuViews()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const v7, 0x106000b

    const/16 v6, 0xc8

    .line 57
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v3, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 60
    .local v0, "id":I
    new-instance v1, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    iget-object v4, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 63
    const-string v4, "text1"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setWidth(I)V

    .line 65
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setHeight(I)V

    .line 66
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v2, "textView2":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object v4, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 71
    const-string v4, "text2"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setWidth(I)V

    .line 73
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setHeight(I)V

    .line 74
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-object v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    return v0
.end method

.method public getOpenedChild()Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mOpenedChild:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 85
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    instance-of v5, v5, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    check-cast v5, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;

    iget-object v6, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/smartisan/pullToRefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;->isItemViewTypePinned(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 122
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p2

    .line 91
    check-cast v2, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .line 92
    .local v2, "itemView":Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 93
    :cond_1
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v5, p1, v9, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "contentView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->createMenuViews()Ljava/util/List;

    move-result-object v4

    .line 96
    .local v4, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    new-instance v3, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    iget v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mMenuContainerWidth:I

    iget v6, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mMenuContainerHeight:I

    invoke-direct {v3, v4, v5, v6}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;-><init>(Ljava/util/List;II)V

    .line 97
    .local v3, "menuView":Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    .line 98
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    :cond_2
    invoke-virtual {v3, p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->setOnSwipeMenuViewClickListener(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;)V

    .line 103
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mContentShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    .line 104
    new-instance v0, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, "contentShadow":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    iget-object v7, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mMenuContainerHeight:I

    invoke-static {v7, v8}, Lcom/smartisan/pullToRefresh/DensityUtil;->dp2px(Landroid/content/Context;I)I

    move-result v7

    const/16 v8, 0x10

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mContentShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    new-instance v2, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .end local v2    # "itemView":Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
    invoke-direct {v2, v1, v0, v3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;-><init>(Landroid/view/View;Landroid/view/View;Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;)V

    .line 111
    .end local v0    # "contentShadow":Landroid/widget/ImageView;
    .restart local v2    # "itemView":Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
    :goto_1
    invoke-virtual {v2, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->setPosition(I)V

    .line 113
    invoke-virtual {v2, v9}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->setTag(Ljava/lang/Object;)V

    .line 121
    .end local v1    # "contentView":Landroid/view/View;
    .end local v3    # "menuView":Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :goto_2
    invoke-virtual {v2, p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->setSwipeListAdapter(Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;)V

    goto :goto_0

    .line 109
    .restart local v1    # "contentView":Landroid/view/View;
    .restart local v3    # "menuView":Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;
    .restart local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_3
    new-instance v2, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .end local v2    # "itemView":Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
    invoke-direct {v2, v1, v3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;-><init>(Landroid/view/View;Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;)V

    .restart local v2    # "itemView":Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
    goto :goto_1

    .end local v1    # "contentView":Landroid/view/View;
    .end local v3    # "menuView":Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;
    .end local v4    # "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_4
    move-object v2, p2

    .line 115
    check-cast v2, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .line 116
    invoke-virtual {v2, p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->setPosition(I)V

    .line 118
    iget-object v5, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->getContentView()Landroid/view/View;

    move-result-object v6

    invoke-interface {v5, p1, v6, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isAdapterAnimating()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->isAnimating:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mItemClickEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuViewClick(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;Ljava/util/List;I)V
    .locals 2
    .param p1, "view"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, "menuViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mMenuItemClickListener:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mMenuItemClickListener:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    invoke-virtual {p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->getPosition()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;->onMenuItemClick(ILjava/util/List;I)V

    .line 192
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 144
    return-void
.end method

.method public setAdapterAnimating(Z)V
    .locals 0
    .param p1, "isAnimating"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->isAnimating:Z

    .line 228
    return-void
.end method

.method public setBgDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 200
    return-void
.end method

.method public setContentShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mContentShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    return-void
.end method

.method public setMenuContainerHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 207
    iput p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mMenuContainerHeight:I

    .line 208
    return-void
.end method

.method public setMenuContainerWidth(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mMenuContainerWidth:I

    .line 211
    return-void
.end method

.method public setMenuItemClickListener(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mMenuItemClickListener:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    .line 196
    return-void
.end method

.method public setOpenedChild(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)V
    .locals 0
    .param p1, "view"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mOpenedChild:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .line 215
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 149
    return-void
.end method
