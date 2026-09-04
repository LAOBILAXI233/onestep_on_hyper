.class public Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
.super Landroid/support/v7/widget/RecyclerView$LayoutParams;
.source "StaggeredGridLayoutManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


.field public static final INVALID_SPAN_ID:I = -0x1


.field mFullSpan:Z

.field mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;


.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1878
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 1879
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1874
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1875
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .prologue
    .line 1890
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutParams;)V

    .line 1891
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1886
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1887
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1882
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1883
    return-void
.end method


.method public final getSpanIndex()I
    .locals 1

    .prologue
    .line 1922
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    if-nez v0, :cond_0

    .line 1923
    const/4 v0, -0x1

    .line 1925
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    goto :goto_0
.end method

.method public isFullSpan()Z
    .locals 1

    .prologue
    .line 1912
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    return v0
.end method

.method public setFullSpan(Z)V
    .locals 0
    .param p1, "fullSpan"    # Z

    .prologue
    .line 1902
    iput-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 1903
    return-void
.end method
