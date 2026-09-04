.class Landroid/support/v4/app/ServiceCompat$BaseServiceCompatImpl;
.super Ljava/lang/Object;
.source "ServiceCompat.java"

.implements Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ServiceCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseServiceCompatImpl"
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public stopForeground(Landroid/app/Service;I)V
    .locals 1
    .param p1, "service"    # Landroid/app/Service;
    .param p2, "flags"    # I

    .prologue
    .line 91
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 92
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
