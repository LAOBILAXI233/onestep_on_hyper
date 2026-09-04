.class public Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;
.super Ljava/lang/Object;
.source "SystemPreInstallApps.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APP"
.end annotation


.field public categoryId:Ljava/lang/String;

.field public cmp:Ljava/lang/String;

.field public oldNames:[Ljava/lang/String;

.field public pkg:Ljava/lang/String;

.field private realName:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "_pkg"    # Ljava/lang/String;
    .param p3, "_cmp"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;->categoryId:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;->cmp:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "_pkg"    # Ljava/lang/String;
    .param p3, "_cmp"    # Ljava/lang/String;
    .param p4, "_oldNames"    # [Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;->categoryId:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;->cmp:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;->oldNames:[Ljava/lang/String;

    .line 65
    return-void
.end method


.method public getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;->cmp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;->realName:Ljava/lang/String;

    return-object v0
.end method

.method public setRealName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmp"    # Ljava/lang/String;

    .prologue
    .line 84
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

    iput-object v0, p0, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps$APP;->realName:Ljava/lang/String;

    .line 85
    return-void
.end method
