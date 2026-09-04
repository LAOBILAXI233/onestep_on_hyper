.class Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;
.super Ljava/lang/Object;
.source "PagerTitleStrip.java"

.implements Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PagerTitleStripImplBase"
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public setSingleLineAllCaps(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 93
    return-void
.end method
