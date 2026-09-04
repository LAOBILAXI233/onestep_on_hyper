.class Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;
.source "ViewCompat.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MarshmallowViewCompatImpl"
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 1758
    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;-><init>()V

    return-void
.end method


.method public getScrollIndicators(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1771
    invoke-static {p1}, Landroid/support/v4/view/ViewCompatMarshmallow;->getScrollIndicators(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 1777
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatMarshmallow;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1778
    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 1782
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatMarshmallow;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1783
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "indicators"    # I

    .prologue
    .line 1761
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatMarshmallow;->setScrollIndicators(Landroid/view/View;I)V

    .line 1762
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "indicators"    # I
    .param p3, "mask"    # I

    .prologue
    .line 1766
    invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatMarshmallow;->setScrollIndicators(Landroid/view/View;II)V

    .line 1767
    return-void
.end method
