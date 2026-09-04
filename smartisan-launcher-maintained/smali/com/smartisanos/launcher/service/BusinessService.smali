.class public Lcom/smartisanos/launcher/service/BusinessService;
.super Landroid/app/Service;
.source "BusinessService.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 15
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 29
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
