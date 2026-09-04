.class Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$3;
.super Ljava/lang/Object;
.source "SwipeListView.java"

.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->playDeleteAnimation(Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;


.method constructor <init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$3;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 319
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 320
    .local v0, "curValue":I
    iget-object v1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$3;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$300(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->superScrollTo(II)V

    .line 321
    return-void
.end method
