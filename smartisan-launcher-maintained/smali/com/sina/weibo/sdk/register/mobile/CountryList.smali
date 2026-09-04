.class public Lcom/sina/weibo/sdk/register/mobile/CountryList;
.super Ljava/lang/Object;
.source "CountryList.java"

.implements Ljava/io/Serializable;


.field private static final serialVersionUID:J = 0x1L


.field public countries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/register/mobile/Country;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/register/mobile/CountryList;->initFromJsonStr(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method private initFromJsonStr(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/CountryList;->initFromJsonObject(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


.method public initFromJsonObject(Lorg/json/JSONObject;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    .prologue
    .line 36
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/CountryList;->countries:Ljava/util/List;

    .line 38
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 39
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 40
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 41
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 42
    const-string v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 44
    const-string v4, "rule"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 45
    const-string v4, "mcc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 46
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 47
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 51
    new-instance v1, Lcom/sina/weibo/sdk/register/mobile/Country;

    invoke-direct {v1, v0, v3}, Lcom/sina/weibo/sdk/register/mobile/Country;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v5}, Lcom/sina/weibo/sdk/register/mobile/Country;->setMccs([Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/CountryList;->countries:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 58
    new-instance v1, Lcom/sina/weibo/sdk/exception/WeiboException;

    invoke-direct {v1, v0}, Lcom/sina/weibo/sdk/exception/WeiboException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 48
    :cond_1
    :try_start_1
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
