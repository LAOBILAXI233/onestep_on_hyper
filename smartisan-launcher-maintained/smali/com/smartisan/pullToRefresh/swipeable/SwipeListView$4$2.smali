.class Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$2;
.super Ljava/lang/Object;
.source "SwipeListView.java"

.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 347
    iput-object p1, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 368
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;

    iget-object v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;

    iget-object v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;

    iget-object v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$400(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->setAdapterAnimating(Z)V

    .line 359
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;

    iget-object v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$400(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListAdapter;->setOpenedChild(Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)V

    .line 360
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;

    iget-object v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$300(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;

    iget-object v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$300(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;->setTag(Ljava/lang/Object;)V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4$2;->this$1:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;

    iget-object v0, v0, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;

    invoke-static {v0, v2}, Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;->access$302(Lcom/smartisan/pullToRefresh/swipeable/SwipeListView;Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;)Lcom/smartisan/pullToRefresh/swipeable/SwipeListItemView;

    .line 364
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 372
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 350
    return-void
.end method
