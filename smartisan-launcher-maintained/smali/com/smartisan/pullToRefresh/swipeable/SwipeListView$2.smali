.class Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$2;
.super Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;
.source "SwipeListView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$2;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-direct {p0, p2, p3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    return-void
.end method


.method public createMenuViews()Ljava/util/List;
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
    .line 233
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$2;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$100(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuCreator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$2;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$100(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuCreator;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuCreator;->create()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->createMenuViews()Ljava/util/List;

    move-result-object v0

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
    .line 238
    .local p2, "menuViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$2;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$200(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$2;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$200(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->getPosition()I

    move-result v1

    invoke-interface {v0, v1, p2, p3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$OnMenuItemClickListener;->onMenuItemClick(ILjava/util/List;I)V

    .line 241
    :cond_0
    return-void
.end method
