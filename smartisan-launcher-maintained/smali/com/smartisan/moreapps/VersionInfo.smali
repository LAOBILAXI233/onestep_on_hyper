.class public Lcom/smartisan/moreapps/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


.field private code:I

.field private name:Ljava/lang/String;

.field private updateUrl:Ljava/lang/String;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "needUpdate"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "updateUrl"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p2, p0, Lcom/smartisan/moreapps/VersionInfo;->name:Ljava/lang/String;

    .line 16
    iput p3, p0, Lcom/smartisan/moreapps/VersionInfo;->code:I

    .line 17
    iput-object p4, p0, Lcom/smartisan/moreapps/VersionInfo;->updateUrl:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static parse(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/smartisan/moreapps/VersionInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "version":Lcom/smartisan/moreapps/VersionInfo;
    if-eqz p1, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p1, v1, :cond_0

    .line 51
    new-instance v0, Lcom/smartisan/moreapps/VersionInfo;

    .end local v0    # "version":Lcom/smartisan/moreapps/VersionInfo;
    invoke-direct {v0}, Lcom/smartisan/moreapps/VersionInfo;-><init>()V

    .line 52
    .restart local v0    # "version":Lcom/smartisan/moreapps/VersionInfo;
    const-string v1, "version_name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisan/moreapps/VersionInfo;->name:Ljava/lang/String;

    .line 53
    const-string v1, "version_code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/smartisan/moreapps/VersionInfo;->code:I

    .line 54
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisan/moreapps/VersionInfo;->updateUrl:Ljava/lang/String;

    .line 56
    :cond_0
    return-object v0
.end method


.method public getCode()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/smartisan/moreapps/VersionInfo;->code:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/smartisan/moreapps/VersionInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/smartisan/moreapps/VersionInfo;->updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/smartisan/moreapps/VersionInfo;->code:I

    .line 38
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/smartisan/moreapps/VersionInfo;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "updateUrl"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/smartisan/moreapps/VersionInfo;->updateUrl:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoteVersion [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisan/moreapps/VersionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/smartisan/moreapps/VersionInfo;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisan/moreapps/VersionInfo;->updateUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
