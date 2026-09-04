.class Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$1;
.super Ljava/lang/Object;
.source "SwipeListView.java"

.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;


.method constructor <init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$1;->this$1:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 342
    .local v0, "curValue":I
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$1;->this$1:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;

    iget-object v1, v1, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$300(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$1;->this$1:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;

    iget-object v1, v1, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$300(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    move-result-object v1

    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    :cond_0
    return-void
.end method
