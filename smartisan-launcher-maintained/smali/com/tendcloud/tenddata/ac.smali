.class public final Lcom/tendcloud/tenddata/ac;
.super Ljava/lang/Object;


.field public static final a:Ljava/lang/String; = "tdcv3.talkingdata.net"

.field private static b:Ljava/lang/String; = null

.field private static final c:Ljava/lang/String; = "http://tdcv3.talkingdata.net/g/d"

.field private static final d:Lcom/tendcloud/tenddata/ba;


.method static constructor <clinit>()V
    .locals 5

    const-string v0, "211.151.121.41"

    sput-object v0, Lcom/tendcloud/tenddata/ac;->b:Ljava/lang/String;

    new-instance v0, Lcom/tendcloud/tenddata/ba;

    const-string v1, ""

    const-string v2, "tdcv3.talkingdata.net"

    sget-object v3, Lcom/tendcloud/tenddata/ac;->b:Ljava/lang/String;

    const/16 v4, 0x1bb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tendcloud/tenddata/ba;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/tendcloud/tenddata/ac;->d:Lcom/tendcloud/tenddata/ba;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/tendcloud/tenddata/bl;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x0

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Lcom/tendcloud/tenddata/ad;

    invoke-direct {v4, v3}, Lcom/tendcloud/tenddata/ad;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v4, p0}, Lcom/tendcloud/tenddata/ad;->a(Lcom/tendcloud/tenddata/k;)Lcom/tendcloud/tenddata/ad;

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-object v6, Lcom/tendcloud/tenddata/ac;->d:Lcom/tendcloud/tenddata/ba;

    const-string v7, "http://tdcv3.talkingdata.net/g/d"

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Lcom/tendcloud/tenddata/ba;->b(Ljava/lang/String;[B)I

    move-result v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-string v6, "to"

    const-string v7, "analytics"

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "size"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "latency"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "code"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v1

    const-string v3, "__tx.sdk.send"

    invoke-static {v1, v3, v8, v2}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return v0

    :cond_0
    :try_start_1
    sget-boolean v3, Lcom/tendcloud/tenddata/TCAgent;->LOG_ON:Z

    if-eqz v3, :cond_1

    const-string v3, "TDLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Server response code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v1

    const-string v3, "__tx.sdk.send"

    invoke-static {v1, v3, v8, v2}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "error"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v1

    const-string v3, "__tx.sdk.send"

    invoke-static {v1, v3, v8, v2}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/tendcloud/tenddata/s;->h()Landroid/content/Context;

    move-result-object v1

    const-string v3, "__tx.sdk.send"

    invoke-static {v1, v3, v8, v2}, Lcom/tendcloud/tenddata/TCAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    throw v0
.end method
