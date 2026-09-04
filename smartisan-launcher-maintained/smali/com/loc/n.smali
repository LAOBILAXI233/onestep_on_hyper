.class public Lcom/loc/n;
.super Ljava/lang/Object;
.source "AuthManager.java"


.field public static a:I

.field public static b:Ljava/lang/String;

.field private static c:Lcom/loc/v;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/loc/n;->a:I

    const-string v0, ""

    sput-object v0, Lcom/loc/n;->b:Ljava/lang/String;

    const-string v0, "http://apiinit.amap.com/v3/log/init"

    sput-object v0, Lcom/loc/n;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/loc/n;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/loc/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v0, "resType"

    const-string v2, "json"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "encode"

    const-string v2, "UTF-8"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/loc/o;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ts"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "key"

    invoke-static {p0}, Lcom/loc/m;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resType=json&encode=UTF-8&key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/loc/m;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "scode"

    invoke-static {p0, v0, v2}, Lcom/loc/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, "Auth"

    const-string v3, "gParams"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/loc/m;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/loc/v;)Z
    .locals 2

    const-class v0, Lcom/loc/n;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/loc/n;->a(Landroid/content/Context;Lcom/loc/v;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/Context;Lcom/loc/v;Z)Z
    .locals 8

    const/4 v0, 0x1

    sput-object p1, Lcom/loc/n;->c:Lcom/loc/v;

    :try_start_0
    invoke-static {}, Lcom/loc/n;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "User-Agent"

    sget-object v4, Lcom/loc/n;->c:Lcom/loc/v;

    iget-object v4, v4, Lcom/loc/v;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "X-INFO"

    sget-object v4, Lcom/loc/n;->c:Lcom/loc/v;

    const/4 v5, 0x0

    invoke-static {p0, v4, v5, p2}, Lcom/loc/o;->a(Landroid/content/Context;Lcom/loc/v;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "logversion"

    const-string v4, "2.1"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "platinfo"

    const-string v4, "platform=Android&sdkversion=%s&product=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/loc/n;->c:Lcom/loc/v;

    iget-object v7, v7, Lcom/loc/v;->a:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lcom/loc/n;->c:Lcom/loc/v;

    iget-object v7, v7, Lcom/loc/v;->c:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/loc/bo;->a()Lcom/loc/bo;

    move-result-object v3

    new-instance v4, Lcom/loc/x;

    invoke-direct {v4}, Lcom/loc/x;-><init>()V

    invoke-static {p0}, Lcom/loc/t;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/loc/x;->a(Ljava/net/Proxy;)V

    invoke-virtual {v4, v2}, Lcom/loc/x;->a(Ljava/util/Map;)V

    invoke-static {p0}, Lcom/loc/n;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/loc/x;->b(Ljava/util/Map;)V

    invoke-virtual {v4, v1}, Lcom/loc/x;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/loc/bo;->b(Lcom/loc/bs;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/loc/n;->a([B)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Auth"

    const-string v3, "getAuth"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a([B)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "status"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_5

    const/4 v2, 0x1

    sput v2, Lcom/loc/n;->a:I

    :cond_2
    :goto_2
    const-string v2, "info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "info"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/loc/n;->b:Ljava/lang/String;

    :cond_3
    sget v2, Lcom/loc/n;->a:I

    if-nez v2, :cond_4

    const-string v2, "AuthFailure"

    sget-object v3, Lcom/loc/n;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget v2, Lcom/loc/n;->a:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Auth"

    const-string v3, "lData"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez v2, :cond_2

    const/4 v2, 0x0

    :try_start_2
    sput v2, Lcom/loc/n;->a:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v2, "Auth"

    const-string v3, "lData"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
