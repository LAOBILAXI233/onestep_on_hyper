.class public final Landroid/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "GridLayoutManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSpanSizeLookup"
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


.method public getSpanIndex(II)I
    .locals 1
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .prologue
    .line 750
    rem-int v0, p1, p2

    return v0
.end method

.method public getSpanSize(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 745
    const/4 v0, 0x1

    return v0
.end method
