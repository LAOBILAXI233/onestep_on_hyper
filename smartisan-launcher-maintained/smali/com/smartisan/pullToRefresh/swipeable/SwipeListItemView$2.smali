.class Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$2;
.super Ljava/lang/Object;
.source "SwipeListItemView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$2;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 343
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$2;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$900(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->computeScrollOffset()Z

    move-result v0

    .line 344
    .local v0, "notFinished":Z
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$2;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$2;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$900(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$MyOverScroller;->getCurrX()I

    move-result v2

    invoke-static {v1, v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->access$600(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;I)Z

    .line 345
    if-eqz v0, :cond_0

    .line 346
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView$2;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    invoke-virtual {v1, p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->post(Ljava/lang/Runnable;)Z

    .line 352
    :cond_0
    return-void
.end method
