.class public Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;
.super Landroid/widget/LinearLayout;
.source "SwipeMenuView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;
    }
.end annotation


.field private mContext:Landroid/content/Context;

.field private mMenuContainer:Landroid/widget/LinearLayout;

.field private mMenuContainerHeight:I

.field private mMenuContainerWidth:I

.field private mMenuViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mSwipeListItemView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

.field private mSwipeMenuViewClickListener:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    .line 36
    iput v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    .line 36
    iput v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 47
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    .line 36
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    .line 48
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mContext:Landroid/content/Context;

    .line 49
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuViews:Ljava/util/List;

    .line 51
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .locals 3
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 55
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 35
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    .line 36
    iput v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    .line 56
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mContext:Landroid/content/Context;

    .line 57
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuViews:Ljava/util/List;

    .line 58
    iput p2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    .line 59
    iput p3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    .line 60
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->init()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mSwipeListItemView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mSwipeMenuViewClickListener:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;

    return-object v0
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v8, -0x2

    .line 64
    invoke-virtual {p0, v11}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->setOrientation(I)V

    .line 65
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->setGravity(I)V

    .line 67
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    .line 68
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    const/16 v9, 0x11

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 70
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v7, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    if-ltz v7, :cond_0

    iget-object v7, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mContext:Landroid/content/Context;

    iget v9, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    invoke-static {v7, v9}, Lcom/smartisan/pullToRefresh/DensityUtil;->dp2px(Landroid/content/Context;I)I

    move-result v7

    :goto_0
    iget v9, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    if-ltz v9, :cond_1

    iget-object v9, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    invoke-static {v9, v10}, Lcom/smartisan/pullToRefresh/DensityUtil;->dp2px(Landroid/content/Context;I)I

    move-result v9

    :goto_1
    invoke-direct {v0, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .local v0, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    .line 79
    .local v2, "index":I
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuViews:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 80
    .local v6, "view":Landroid/view/View;
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    move v5, v2

    .line 81
    .local v5, "temp":I
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    new-instance v7, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$1;

    invoke-direct {v7, p0, v5}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$1;-><init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;I)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {v6, v11}, Landroid/view/View;->setClickable(Z)V

    .line 92
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v2, v3

    .line 93
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_2

    .end local v0    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "index":I
    .end local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "temp":I
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    move v7, v8

    .line 70
    goto :goto_0

    :cond_1
    move v9, v8

    goto :goto_1

    .line 95
    .restart local v0    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "index":I
    .restart local v4    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    iget-object v7, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->addView(Landroid/view/View;)V

    .line 96
    return-void
.end method


.method public getLastMenuRightEdge()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    return v0
.end method

.method public getMenuItemBottomEdge()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    return v0
.end method

.method public getMenuItemTopEdge()I
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    return v0
.end method

.method public getMenuViews()Ljava/util/List;
    .locals 1
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
    .line 172
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuViews:Ljava/util/List;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mPosition:I

    return v0
.end method

.method public setMenuClickable(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 148
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 149
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 151
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setMenuContainerHeight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerHeight:I

    .line 166
    return-void
.end method

.method public setMenuContainerWidth(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 168
    iput p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mMenuContainerWidth:I

    .line 169
    return-void
.end method

.method public setOnSwipeMenuViewClickListener(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mSwipeMenuViewClickListener:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;

    .line 159
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mPosition:I

    .line 138
    return-void
.end method

.method public setSwipeListItemView(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)V
    .locals 0
    .param p1, "itemView"    # Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->mSwipeListItemView:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .line 134
    return-void
.end method
