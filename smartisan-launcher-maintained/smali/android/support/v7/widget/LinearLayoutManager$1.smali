.class Landroid/support/v7/widget/LinearLayoutManager$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "LinearLayoutManager.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/LinearLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/LinearLayoutManager;


.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 403
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager$1;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 1
    .param p1, "targetPosition"    # I

    .prologue
    .line 406
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager$1;->this$0:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method
