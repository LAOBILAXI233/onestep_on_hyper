.class public Landroid/support/v7/app/NotificationCompat$Builder;
.super Landroid/support/v4/app/NotificationCompat$Builder;
.source "NotificationCompat.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    return-void
.end method


.method protected getExtender()Landroid/support/v4/app/NotificationCompat$BuilderExtender;
    .locals 2

    .prologue
    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 132
    new-instance v0, Landroid/support/v7/app/NotificationCompat$LollipopExtender;

    invoke-direct {v0}, Landroid/support/v7/app/NotificationCompat$LollipopExtender;-><init>()V

    .line 138
    :goto_0
    return-object v0

    .line 133
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 134
    new-instance v0, Landroid/support/v7/app/NotificationCompat$JellybeanExtender;

    invoke-direct {v0}, Landroid/support/v7/app/NotificationCompat$JellybeanExtender;-><init>()V

    goto :goto_0

    .line 135
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 136
    new-instance v0, Landroid/support/v7/app/NotificationCompat$IceCreamSandwichExtender;

    invoke-direct {v0}, Landroid/support/v7/app/NotificationCompat$IceCreamSandwichExtender;-><init>()V

    goto :goto_0

    .line 138
    :cond_2
    invoke-super {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtender()Landroid/support/v4/app/NotificationCompat$BuilderExtender;

    move-result-object v0

    goto :goto_0
.end method
