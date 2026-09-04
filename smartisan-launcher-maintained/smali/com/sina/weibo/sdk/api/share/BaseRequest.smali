.class public abstract Lcom/sina/weibo/sdk/api/share/BaseRequest;
.super Lcom/sina/weibo/sdk/api/share/Base;
.source "BaseRequest.java"


.field private extendInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field public packageName:Ljava/lang/String;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/share/Base;-><init>()V

    return-void
.end method


.method abstract check(Landroid/content/Context;Lcom/sina/weibo/sdk/WeiboAppManager$WeiboInfo;Lcom/sina/weibo/sdk/api/share/VersionCheckHandler;)Z
.end method

.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 75
    const-string v0, "_weibo_transaction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/BaseRequest;->transaction:Ljava/lang/String;

    .line 76
    const-string v0, "_weibo_appPackage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/BaseRequest;->packageName:Ljava/lang/String;

    .line 78
    const-string v0, "extend_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 77
    iput-object v0, p0, Lcom/sina/weibo/sdk/api/share/BaseRequest;->extendInfo:Ljava/util/HashMap;

    .line 79
    return-void
.end method

.method public setExtendInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/BaseRequest;->extendInfo:Ljava/util/HashMap;

    .line 53
    return-void
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 62
    const-string v0, "_weibo_command_type"

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/api/share/BaseRequest;->getType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string v0, "_weibo_transaction"

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/BaseRequest;->transaction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "extend_info"

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/share/BaseRequest;->extendInfo:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 65
    return-void
.end method
