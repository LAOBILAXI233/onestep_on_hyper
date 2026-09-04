.class public Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
.super Ljava/lang/Object;
.source "SystemPreInstallApps.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/data/SystemPreInstallApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APP"
.end annotation


.field public cmp:Ljava/lang/String;

.field public oldNames:[Ljava/lang/String;

.field public pkg:Ljava/lang/String;

.field private realName:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_pkg"    # Ljava/lang/String;
    .param p2, "_cmp"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    .line 490
    iput-object p2, p0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->cmp:Ljava/lang/String;

    .line 491
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "_pkg"    # Ljava/lang/String;
    .param p2, "_cmp"    # Ljava/lang/String;
    .param p3, "_oldNames"    # [Ljava/lang/String;

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput-object p1, p0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    .line 495
    iput-object p2, p0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->cmp:Ljava/lang/String;

    .line 496
    iput-object p3, p0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->oldNames:[Ljava/lang/String;

    .line 497
    return-void
.end method


.method public getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->cmp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->realName:Ljava/lang/String;

    return-object v0
.end method

.method public setRealName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmp"    # Ljava/lang/String;

    .prologue
    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->realName:Ljava/lang/String;

    .line 515
    return-void
.end method
