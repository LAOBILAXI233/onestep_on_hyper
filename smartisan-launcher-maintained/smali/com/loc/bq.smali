.class public Lcom/loc/bq;
.super Ljava/lang/Object;
.source "HttpUrlUtil.java"


.field private static a:Lcom/loc/br;


.field private b:I

.field private c:I

.field private d:Z

.field private e:Ljavax/net/ssl/SSLContext;

.field private f:Ljava/net/Proxy;

.field private volatile g:Z

.field private h:J

.field private i:J

.field private j:Ljavax/net/ssl/HostnameVerifier;


.method constructor <init>(IILjava/net/Proxy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/loc/bq;-><init>(IILjava/net/Proxy;Z)V

    return-void
.end method

.method constructor <init>(IILjava/net/Proxy;Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loc/bq;->g:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/loc/bq;->h:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/loc/bq;->i:J

    new-instance v0, Lcom/loc/bu;

    invoke-direct {v0, p0}, Lcom/loc/bu;-><init>(Lcom/loc/bq;)V

    iput-object v0, p0, Lcom/loc/bq;->j:Ljavax/net/ssl/HostnameVerifier;

    iput p1, p0, Lcom/loc/bq;->b:I

    iput p2, p0, Lcom/loc/bq;->c:I

    iput-object p3, p0, Lcom/loc/bq;->f:Ljava/net/Proxy;

    iput-boolean p4, p0, Lcom/loc/bq;->d:Z

    if-eqz p4, :cond_0

    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lcom/loc/bq;->e:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "HttpUrlUtil"

    const-string v2, "HttpUrlUtil"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "HttpUtil"

    const-string v2, "HttpUtil"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/net/HttpURLConnection;)Lcom/loc/bt;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_5

    new-instance v2, Lcom/loc/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_1
    :goto_3
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_4
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_3
    :goto_5
    if-eqz p1, :cond_4

    :try_start_6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    :cond_4
    :goto_6
    throw v0

    :cond_5
    :try_start_7
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v3

    :try_start_9
    new-instance v2, Ljava/io/PushbackInputStream;

    const/4 v0, 0x2

    invoke-direct {v2, v3, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/4 v0, 0x2

    :try_start_a
    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->read([B)I

    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->unread([B)V

    const/4 v6, 0x0

    aget-byte v6, v0, v6

    const/16 v7, 0x1f

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    aget-byte v0, v0, v6

    const/16 v6, -0x75

    if-ne v0, v6, :cond_6

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    move-object v1, v0

    :goto_7
    const/16 v0, 0x400

    :try_start_b
    new-array v0, v0, [B

    :goto_8
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_7

    :cond_7
    sget-object v0, Lcom/loc/bq;->a:Lcom/loc/br;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/loc/bq;->a:Lcom/loc/br;

    invoke-interface {v0}, Lcom/loc/br;->a()V

    :cond_8
    new-instance v0, Lcom/loc/bt;

    invoke-direct {v0}, Lcom/loc/bt;-><init>()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v0, Lcom/loc/bt;->a:[B

    iput-object v5, v0, Lcom/loc/bt;->b:Ljava/util/Map;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v4, :cond_9

    :try_start_c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_9
    :goto_9
    if-eqz v3, :cond_a

    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    :cond_a
    :goto_a
    if-eqz v2, :cond_b

    :try_start_e
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    :cond_b
    :goto_b
    if-eqz v1, :cond_c

    :try_start_f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    :cond_c
    :goto_c
    if-eqz p1, :cond_d

    :try_start_10
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b

    :cond_d
    :goto_d
    return-object v0

    :catch_2
    move-exception v4

    const-string v5, "HttpUrlUtil"

    const-string v6, "parseResult"

    invoke-static {v4, v5, v6}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v3

    const-string v4, "HttpUrlUtil"

    const-string v5, "parseResult"

    invoke-static {v3, v4, v5}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v1

    const-string v3, "HttpUrlUtil"

    const-string v4, "parseResult"

    invoke-static {v1, v3, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :catch_5
    move-exception v1

    const-string v2, "HttpUrlUtil"

    const-string v3, "parseResult"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :catch_6
    move-exception v1

    const-string v2, "HttpUrlUtil"

    const-string v3, "parseResult"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_6

    :catch_7
    move-exception v4

    const-string v5, "HttpUrlUtil"

    const-string v6, "parseResult"

    invoke-static {v4, v5, v6}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_8
    move-exception v3

    const-string v4, "HttpUrlUtil"

    const-string v5, "parseResult"

    invoke-static {v3, v4, v5}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :catch_9
    move-exception v2

    const-string v3, "HttpUrlUtil"

    const-string v4, "parseResult"

    invoke-static {v2, v3, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :catch_a
    move-exception v1

    const-string v2, "HttpUrlUtil"

    const-string v3, "parseResult"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    :catch_b
    move-exception v1

    const-string v2, "HttpUrlUtil"

    const-string v3, "parseResult"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_1

    :catch_c
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_0

    :catch_d
    move-exception v0

    move-object v2, v1

    goto/16 :goto_0

    :catch_e
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_0
.end method

.method static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const-string v4, "&"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Lcom/loc/br;)V
    .locals 0

    sput-object p0, Lcom/loc/bq;->a:Lcom/loc/br;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "csid"

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/loc/bq;->b:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v0, p0, Lcom/loc/bq;->c:I

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "HttpUrlUtil"

    const-string v2, "addHeaders"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


.method a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/loc/bt;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/loc/bt;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/loc/bq;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    if-eqz p3, :cond_0

    array-length v1, p3

    if-lez v1, :cond_0

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p3}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-direct {p0, v0}, Lcom/loc/bq;->a(Ljava/net/HttpURLConnection;)Lcom/loc/bt;
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    new-instance v0, Lcom/loc/l;

    const-string v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    new-instance v0, Lcom/loc/l;

    const-string v1, "url\u5f02\u5e38 - MalformedURLException"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    new-instance v0, Lcom/loc/l;

    const-string v1, "\u672a\u77e5\u4e3b\u673a - UnKnowHostException"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    new-instance v0, Lcom/loc/l;

    const-string v1, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    new-instance v0, Lcom/loc/l;

    const-string v1, "socket \u8fde\u63a5\u8d85\u65f6 - SocketTimeoutException"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v0, Lcom/loc/l;

    const-string v1, "IO \u64cd\u4f5c\u5f02\u5e38 - IOException"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6
    move-exception v0

    const-string v1, "HttpUrlUtil"

    const-string v2, "makePostReqeust"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/loc/l;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    invoke-static {}, Lcom/loc/q;->a()V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/bq;->f:Ljava/net/Proxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/loc/bq;->f:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lcom/loc/bq;->d:Z

    if-eqz v1, :cond_2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/loc/bq;->e:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, p0, Lcom/loc/bq;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :goto_1
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v1, v2, :cond_0

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/loc/bq;->a(Ljava/util/Map;Ljava/net/HttpURLConnection;)V

    if-eqz p3, :cond_3

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_1

    :cond_3
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    goto :goto_2
.end method

.method a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/loc/bq;->i:J

    return-void
.end method

.method a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/loc/bp$a;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/loc/bp$a;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v8, 0x400

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    if-nez p4, :cond_2

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v2, "makeDownloadGetRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-static {p3}, Lcom/loc/bq;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_3

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, p2, v4}, Lcom/loc/bq;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_2b
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2a
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_29
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1e
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/loc/bq;->i:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RANGE"

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v4, 0xc8

    if-eq v5, v4, :cond_7

    move v4, v0

    :goto_2
    const/16 v6, 0xce

    if-eq v5, v6, :cond_8

    :goto_3
    and-int/2addr v0, v4

    if-eqz v0, :cond_4

    new-instance v0, Lcom/loc/l;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f51\u7edc\u5f02\u5e38\u539f\u56e0\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u7f51\u7edc\u5f02\u5e38\u72b6\u6001\u7801\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/loc/bp$a;->a(Ljava/lang/Throwable;)V

    :cond_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_2c
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_28
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_27
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_25
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    const/16 v0, 0x400

    :try_start_4
    new-array v0, v0, [B

    :goto_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lcom/loc/bq;->g:Z

    if-nez v3, :cond_b

    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_b

    iget-wide v4, p0, Lcom/loc/bq;->h:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    iget-wide v4, p0, Lcom/loc/bq;->i:J

    iget-wide v6, p0, Lcom/loc/bq;->h:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_b

    :cond_5
    if-ne v3, v8, :cond_9

    iget-wide v4, p0, Lcom/loc/bq;->i:J

    invoke-interface {p4, v0, v4, v5}, Lcom/loc/bp$a;->a([BJ)V

    :goto_5
    iget-wide v4, p0, Lcom/loc/bq;->i:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/loc/bq;->i:J
    :try_end_4
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_28
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_27
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_25
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_6
    :try_start_5
    invoke-interface {p4, v0}, Lcom/loc/bp$a;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_d

    :cond_6
    :goto_7
    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v2, "makeDownloadGetRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    move v4, v3

    goto/16 :goto_2

    :cond_8
    move v0, v3

    goto/16 :goto_3

    :cond_9
    :try_start_8
    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-wide v6, p0, Lcom/loc/bq;->i:J

    invoke-interface {p4, v4, v6, v7}, Lcom/loc/bp$a;->a([BJ)V
    :try_end_8
    .catch Ljava/net/ConnectException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_28
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_27
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_25
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_8
    :try_start_9
    invoke-interface {p4, v0}, Lcom/loc/bp$a;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_a

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_f

    :cond_a
    :goto_9
    if-eqz v2, :cond_1

    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v2, "makeDownloadGetRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    :try_start_c
    iget-boolean v0, p0, Lcom/loc/bq;->g:Z

    if-eqz v0, :cond_d

    invoke-interface {p4}, Lcom/loc/bp$a;->b()V
    :try_end_c
    .catch Ljava/net/ConnectException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/net/SocketException; {:try_start_c .. :try_end_c} :catch_28
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_27
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_25
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_a
    if-eqz v1, :cond_c

    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_b

    :cond_c
    :goto_b
    if-eqz v2, :cond_1

    :try_start_e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v2, "makeDownloadGetRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    :try_start_f
    invoke-interface {p4}, Lcom/loc/bp$a;->c()V
    :try_end_f
    .catch Ljava/net/ConnectException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_28
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_27
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_26
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_25
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_a

    :catch_8
    move-exception v0

    :goto_c
    :try_start_10
    invoke-interface {p4, v0}, Lcom/loc/bp$a;->a(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v1, :cond_e

    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    :cond_e
    :goto_d
    if-eqz v2, :cond_1

    :try_start_12
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v2, "makeDownloadGetRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v2, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :catch_12
    move-exception v0

    move-object v2, v1

    :goto_e
    :try_start_13
    invoke-interface {p4, v0}, Lcom/loc/bp$a;->a(Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    if-eqz v1, :cond_f

    :try_start_14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_15

    :cond_f
    :goto_f
    if-eqz v2, :cond_1

    :try_start_15
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_13

    goto/16 :goto_1

    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v2, "makeDownloadGetRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :catch_16
    move-exception v0

    move-object v2, v1

    :goto_10
    :try_start_16
    invoke-interface {p4, v0}, Lcom/loc/bp$a;->a(Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-eqz v1, :cond_10

    :try_start_17
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_18
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_19

    :cond_10
    :goto_11
    if-eqz v2, :cond_1

    :try_start_18
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_17

    goto/16 :goto_1

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v2, "makeDownloadGetRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :catch_1a
    move-exception v0

    move-object v2, v1

    :goto_12
    :try_start_19
    invoke-interface {p4, v0}, Lcom/loc/bp$a;->a(Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    if-eqz v1, :cond_11

    :try_start_1a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1c
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_1d

    :cond_11
    :goto_13
    if-eqz v2, :cond_1

    :try_start_1b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1b

    goto/16 :goto_1

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v2, "makeDownloadGetRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :catch_1e
    move-exception v0

    move-object v2, v1

    :goto_14
    :try_start_1c
    invoke-interface {p4, v0}, Lcom/loc/bp$a;->a(Ljava/lang/Throwable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    if-eqz v1, :cond_12

    :try_start_1d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_20
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_21

    :cond_12
    :goto_15
    if-eqz v2, :cond_1

    :try_start_1e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1f

    goto/16 :goto_1

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v2, "makeDownloadGetRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v0, v1, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_16
    if-eqz v1, :cond_13

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_22
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_23

    :cond_13
    :goto_17
    if-eqz v2, :cond_14

    :try_start_20
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_24

    :cond_14
    :goto_18
    throw v0

    :catch_22
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const-string v3, "HttpUrlUtil"

    const-string v4, "makeDownloadGetRequest"

    invoke-static {v1, v3, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :catch_23
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v3, "HttpUrlUtil"

    const-string v4, "makeDownloadGetRequest"

    invoke-static {v1, v3, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :catch_24
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "HttpUrlUtil"

    const-string v3, "makeDownloadGetRequest"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :catchall_1
    move-exception v0

    goto :goto_16

    :catchall_2
    move-exception v0

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    goto :goto_16

    :catch_25
    move-exception v0

    goto :goto_14

    :catch_26
    move-exception v0

    goto/16 :goto_12

    :catch_27
    move-exception v0

    goto/16 :goto_10

    :catch_28
    move-exception v0

    goto/16 :goto_e

    :catch_29
    move-exception v0

    move-object v2, v1

    goto/16 :goto_c

    :catch_2a
    move-exception v0

    move-object v2, v1

    goto/16 :goto_8

    :catch_2b
    move-exception v0

    move-object v2, v1

    goto/16 :goto_6

    :catch_2c
    move-exception v0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_6
.end method

.method b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/loc/bq;->h:J

    return-void
.end method
