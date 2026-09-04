.class Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;
.super Lcom/sina/weibo/sdk/cmd/BaseCmd;
.source "AppInvokeCmd.java"


.field private appPackage:Ljava/lang/String;

.field private scheme:Ljava/lang/String;

.field private url:Ljava/lang/String;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/sina/weibo/sdk/cmd/BaseCmd;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/cmd/BaseCmd;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/cmd/BaseCmd;-><init>(Lorg/json/JSONObject;)V

    .line 39
    return-void
.end method


.method public getAppPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->appPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->url:Ljava/lang/String;

    return-object v0
.end method

.method public initFromJsonObj(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/sina/weibo/sdk/cmd/BaseCmd;->initFromJsonObj(Lorg/json/JSONObject;)V

    .line 44
    const-string v0, "package"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->appPackage:Ljava/lang/String;

    .line 45
    const-string v0, "scheme"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->scheme:Ljava/lang/String;

    .line 46
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->url:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setAppPackage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->appPackage:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->scheme:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;->url:Ljava/lang/String;

    .line 71
    return-void
.end method
