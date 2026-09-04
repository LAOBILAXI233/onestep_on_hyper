.class Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;
.super Ljava/lang/Object;
.source "SwipeListView.java"

.implements Landroid/animation/Animator$AnimatorListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->playDeleteAnimation(Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


.method constructor <init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    iput-object p2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 379
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x1

    .line 334
    iget-object v2, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$300(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->getHeight()I

    move-result v1

    .line 335
    .local v1, "height":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    aput v4, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 336
    .local v0, "endAnimator":Landroid/animation/ValueAnimator;
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 337
    invoke-static {}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$500()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 338
    new-instance v2, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$1;

    invoke-direct {v2, p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$1;-><init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 347
    new-instance v2, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$2;

    invoke-direct {v2, p0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$2;-><init>(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 374
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 375
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 383
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$400(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->setAdapterAnimating(Z)V

    .line 327
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 330
    :cond_0
    return-void
.end method
