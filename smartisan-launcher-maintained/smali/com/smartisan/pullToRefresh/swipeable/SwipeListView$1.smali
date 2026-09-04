.class Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$1;
.super Ljava/lang/Object;
.source "SwipeListView.java"

.implements Landroid/view/GestureDetector$OnGestureListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$002(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;I)I

    .line 100
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 133
    invoke-static {p3, p4}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->isItemScroll(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$002(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;I)I

    .line 138
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$002(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;I)I

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$002(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;I)I

    .line 129
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 116
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$000(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$000(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)I

    move-result v0

    if-eq v0, v3, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    .line 117
    neg-float v0, p3

    neg-float v1, p4

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->isItemScroll(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$002(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;I)I

    .line 123
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0, v3}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$002(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;I)I

    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 106
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$1;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$002(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;I)I

    .line 111
    const/4 v0, 0x0

    return v0
.end method
