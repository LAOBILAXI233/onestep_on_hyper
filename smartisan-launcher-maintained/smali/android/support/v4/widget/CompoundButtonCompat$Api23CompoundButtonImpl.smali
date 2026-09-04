.class Landroid/support/v4/widget/CompoundButtonCompat$Api23CompoundButtonImpl;
.super Landroid/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;
.source "CompoundButtonCompat.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/CompoundButtonCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23CompoundButtonImpl"
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;-><init>()V

    return-void
.end method


.method public getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "button"    # Landroid/widget/CompoundButton;

    .prologue
    .line 107
    invoke-static {p1}, Landroid/support/v4/widget/CompoundButtonCompatApi23;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
