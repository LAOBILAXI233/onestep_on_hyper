.class Landroid/support/v4/widget/TextViewCompat$Api23TextViewCompatImpl;
.super Landroid/support/v4/widget/TextViewCompat$JbMr2TextViewCompatImpl;
.source "TextViewCompat.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23TextViewCompatImpl"
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$JbMr2TextViewCompatImpl;-><init>()V

    return-void
.end method


.method public setTextAppearance(Landroid/widget/TextView;I)V
    .locals 0
    .param p1, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 166
    invoke-static {p1, p2}, Landroid/support/v4/widget/TextViewCompatApi23;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 167
    return-void
.end method
