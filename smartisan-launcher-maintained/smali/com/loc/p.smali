.class public Lcom/loc/p;
.super Ljava/lang/Object;
.source "ConfigManager.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/p$b;,
        Lcom/loc/p$a;
    }
.end annotation


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;)Lcom/loc/p$a;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/loc/bo;

    invoke-direct {v0}, Lcom/loc/bo;-><init>()V

    new-instance v1, Lcom/loc/p$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/loc/p$b;-><init>(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/loc/bo;->a(Lcom/loc/bs;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/p;->a([B)Lcom/loc/p$a;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "loadConfig"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v0, Lcom/loc/p$a;

    invoke-direct {v0}, Lcom/loc/p$a;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "loadConfig"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a([B)Lcom/loc/p$a;
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Lcom/loc/p$a;

    invoke-direct {v0}, Lcom/loc/p$a;-><init>()V

    if-eqz p0, :cond_0

    :try_start_0
    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-static {v3, v2}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "result"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "result"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v2, "exception"

    invoke-static {v3, v2}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "exception"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/p;->b(Lorg/json/JSONObject;)Z

    move-result v2

    :goto_1
    const-string v4, "common"

    invoke-static {v3, v4}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "common"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/p;->a(Lorg/json/JSONObject;)Z

    move-result v1

    :cond_2
    new-instance v4, Lcom/loc/p$a$a;

    invoke-direct {v4}, Lcom/loc/p$a$a;-><init>()V

    iput-boolean v2, v4, Lcom/loc/p$a$a;->a:Z

    iput-boolean v1, v4, Lcom/loc/p$a$a;->b:Z

    iput-object v4, v0, Lcom/loc/p$a;->g:Lcom/loc/p$a$a;

    const-string v1, "sdkupdate"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "sdkupdate"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/loc/p$a$c;

    invoke-direct {v2}, Lcom/loc/p$a$c;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/p;->a(Lorg/json/JSONObject;Lcom/loc/p$a$c;)V

    iput-object v2, v0, Lcom/loc/p$a;->h:Lcom/loc/p$a$c;

    :cond_3
    const-string v1, "sdkcoordinate"

    invoke-static {v3, v1}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "sdkcoordinate"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/loc/p$a$b;

    invoke-direct {v2}, Lcom/loc/p$a$b;-><init>()V

    invoke-static {v1, v2}, Lcom/loc/p;->a(Lorg/json/JSONObject;Lcom/loc/p$a$b;)V

    iput-object v2, v0, Lcom/loc/p$a;->i:Lcom/loc/p$a$b;

    :cond_4
    const-string v1, "callamap"

    invoke-static {v3, v1}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "callamap"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/p$a;->e:Lorg/json/JSONObject;

    :cond_5
    const-string v1, "ca"

    invoke-static {v3, v1}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "ca"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/p$a;->f:Lorg/json/JSONObject;

    :cond_6
    const-string v1, "locate"

    invoke-static {v3, v1}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "locate"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/p$a;->d:Lorg/json/JSONObject;

    :cond_7
    const-string v1, "callamappro"

    invoke-static {v3, v1}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "callamappro"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/p$a;->c:Lorg/json/JSONObject;

    :cond_8
    const-string v1, "opflag"

    invoke-static {v3, v1}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "opflag"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/p$a;->b:Lorg/json/JSONObject;

    :cond_9
    const-string v1, "amappushflag"

    invoke-static {v3, v1}, Lcom/loc/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "amappushflag"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/p$a;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ConfigManager"

    const-string v3, "loadConfig"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v2, "ConfigManager"

    const-string v3, "loadConfig"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const-string v2, "ConfigManager"

    const-string v3, "loadConfig"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    move v2, v1

    goto/16 :goto_1
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/loc/p$a$b;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "md5"

    invoke-static {p0, v0}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v0, p1, Lcom/loc/p$a$b;->b:Ljava/lang/String;

    iput-object v1, p1, Lcom/loc/p$a$b;->a:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "parseSDKCoordinate"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "parseSDKCoordinate"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Lcom/loc/p$a$c;)V
    .locals 4

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "md5"

    invoke-static {p0, v0}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-static {p0, v1}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sdkversion"

    invoke-static {p0, v2}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v1, p1, Lcom/loc/p$a$c;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/loc/p$a$c;->b:Ljava/lang/String;

    iput-object v2, p1, Lcom/loc/p$a$c;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "parseSDKUpdate"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "parseSDKUpdate"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v1, "commoninfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "com_isupload"

    invoke-static {v1, v2}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/p;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ConfigManager"

    const-string v3, "parseCommon"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "ConfigManager"

    const-string v3, "parseCommon"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v1, "exceptinfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ex_isupload"

    invoke-static {v1, v2}, Lcom/loc/p;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/p;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ConfigManager"

    const-string v3, "parseException"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "ConfigManager"

    const-string v3, "parseException"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
