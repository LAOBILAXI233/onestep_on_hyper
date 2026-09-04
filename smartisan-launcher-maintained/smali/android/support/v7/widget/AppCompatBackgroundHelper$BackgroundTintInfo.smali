.class Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;
.super Landroid/support/v7/widget/TintInfo;
.source "AppCompatBackgroundHelper.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatBackgroundHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundTintInfo"
.end annotation


.field public mOriginalTintList:Landroid/content/res/ColorStateList;


.method constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    .line 226
    return-void
.end method


.method clear()V
    .locals 1

    .prologue
    .line 230
    invoke-super {p0}, Landroid/support/v7/widget/TintInfo;->clear()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    .line 232
    return-void
.end method
