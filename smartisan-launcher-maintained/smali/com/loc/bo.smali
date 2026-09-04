.class public Lcom/loc/bo;
.super Ljava/lang/Object;
.source "BaseNetManager.java"


.field private static a:Lcom/loc/bo;


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/loc/bo;
    .locals 1

    sget-object v0, Lcom/loc/bo;->a:Lcom/loc/bo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/bo;

    invoke-direct {v0}, Lcom/loc/bo;-><init>()V

    sput-object v0, Lcom/loc/bo;->a:Lcom/loc/bo;

    :cond_0
    sget-object v0, Lcom/loc/bo;->a:Lcom/loc/bo;

    return-object v0
.end method


.method public a(Lcom/loc/bs;Z)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/loc/bo;->c(Lcom/loc/bs;)V

    iget-object v0, p1, Lcom/loc/bs;->c:Ljava/net/Proxy;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_2

    new-instance v0, Lcom/loc/bq;

    iget v2, p1, Lcom/loc/bs;->a:I

    iget v3, p1, Lcom/loc/bs;->b:I

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/loc/bq;-><init>(IILjava/net/Proxy;Z)V

    :goto_1
    invoke-virtual {p1}, Lcom/loc/bs;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/loc/bs;->a()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/bq;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/bs;->f()[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    return-object v0

    :cond_1
    iget-object v0, p1, Lcom/loc/bs;->c:Ljava/net/Proxy;

    move-object v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/loc/bq;

    iget v2, p1, Lcom/loc/bs;->a:I

    iget v3, p1, Lcom/loc/bs;->b:I

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/loc/bq;-><init>(IILjava/net/Proxy;Z)V
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/loc/l;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/loc/bs;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/loc/bo;->b(Lcom/loc/bs;Z)Lcom/loc/bt;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/loc/bt;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Lcom/loc/l;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Lcom/loc/bs;Z)Lcom/loc/bt;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/loc/bo;->c(Lcom/loc/bs;)V

    iget-object v0, p1, Lcom/loc/bs;->c:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/loc/bq;

    iget v2, p1, Lcom/loc/bs;->a:I

    iget v3, p1, Lcom/loc/bs;->b:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/loc/bq;-><init>(IILjava/net/Proxy;Z)V

    invoke-virtual {p1}, Lcom/loc/bs;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/loc/bs;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/loc/bs;->f()[B

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/loc/bq;->a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/loc/bt;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/loc/bs;->c:Ljava/net/Proxy;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/loc/l;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/loc/bs;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/loc/bo;->b(Lcom/loc/bs;Z)Lcom/loc/bt;
    :try_end_0
    .catch Lcom/loc/l; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/loc/bt;->a:[B

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "BaseNetManager"

    const-string v2, "makeSyncPostRequest"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/loc/l;

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Lcom/loc/bs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/loc/l;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/loc/l;

    const-string v1, "requeust is null"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/loc/bs;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Lcom/loc/bs;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/loc/l;

    const-string v1, "request url is empty"

    invoke-direct {v0, v1}, Lcom/loc/l;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method
