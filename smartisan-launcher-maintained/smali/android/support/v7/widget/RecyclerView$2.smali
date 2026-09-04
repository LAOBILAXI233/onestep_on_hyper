.class Landroid/support/v7/widget/RecyclerView$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->runPendingAnimations()V

    .line 262
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$2;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->access$502(Landroid/support/v7/widget/RecyclerView;Z)Z

    .line 263
    return-void
.end method
