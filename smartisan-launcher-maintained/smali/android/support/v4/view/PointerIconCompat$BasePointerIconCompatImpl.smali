.class Landroid/support/v4/view/PointerIconCompat$BasePointerIconCompatImpl;
.super Ljava/lang/Object;
.source "PointerIconCompat.java"

.implements Landroid/support/v4/view/PointerIconCompat$PointerIconCompatImpl;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/PointerIconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BasePointerIconCompatImpl"
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public create(Landroid/graphics/Bitmap;FF)Ljava/lang/Object;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "hotSpotX"    # F
    .param p3, "hotSpotY"    # F

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemIcon(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public load(Landroid/content/res/Resources;I)Ljava/lang/Object;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceId"    # I

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method
