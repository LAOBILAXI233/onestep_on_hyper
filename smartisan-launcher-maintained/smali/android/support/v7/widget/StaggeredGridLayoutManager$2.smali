.class Landroid/support/v7/widget/StaggeredGridLayoutManager$2;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "StaggeredGridLayoutManager.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;->smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;


.method constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1698
    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 4
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 1701
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v1, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$400(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)I

    move-result v0

    .line 1702
    .local v0, "direction":I
    if-nez v0, :cond_0

    .line 1703
    const/4 v1, 0x0

    .line 1708
    :goto_0
    return-object v1

    .line 1705
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$2;->this$0:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->access$500(Landroid/support/v7/widget/StaggeredGridLayoutManager;)I

    move-result v1

    if-nez v1, :cond_1

    .line 1706
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, v0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 1708
    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, v0

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method
