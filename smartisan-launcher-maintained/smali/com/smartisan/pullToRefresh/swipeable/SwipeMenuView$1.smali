.class Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$1;
.super Ljava/lang/Object;
.source "SwipeMenuView.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

.field final synthetic val$temp:I


.method constructor <init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;I)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    iput p2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$1;->val$temp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->access$000(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->access$000(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->access$200(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;->access$100(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$1;->val$temp:I

    invoke-interface {v0, v1, v2, v3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;->onMenuViewClick(Lcom/smartisan/pullToRefresh/swipeable/SwipeMenuView;Ljava/util/List;I)V

    .line 89
    :cond_0
    return-void
.end method
