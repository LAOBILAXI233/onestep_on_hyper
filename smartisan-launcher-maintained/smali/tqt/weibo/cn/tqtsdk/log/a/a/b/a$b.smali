.class Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;
.super Landroid/os/AsyncTask;
.source "LogManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


.field final synthetic a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

.field private b:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$a;)V
    .locals 2

    .prologue
    .line 409
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;->b:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$a;

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;->c:Ljava/util/ArrayList;

    .line 410
    iput-object p2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;->b:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$a;

    .line 411
    return-void
.end method


.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10

    .prologue
    const/4 v5, 0x7

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 415
    .line 417
    const/4 v6, 0x0

    .line 418
    const/4 v7, 0x0

    .line 422
    :try_start_0
    new-instance v8, Ljava/net/URL;

    const-string v0, "http://m.beacon.sina.com.cn/mstat"

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->c(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 424
    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    .line 425
    const-string v0, "https"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8

    move v3, v0

    .line 426
    :goto_0
    if-ne v3, v5, :cond_4

    .line 427
    const/16 v0, 0x2f

    invoke-virtual {v9, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 428
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v8, "http://10.0.0.172"

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 430
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    new-instance v8, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :try_start_1
    const-string v8, "X-Online-Host"

    .line 436
    invoke-virtual {v9, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-virtual {v0, v8, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    move-object v3, v0

    .line 461
    :goto_2
    :try_start_2
    const-string v0, "POST"

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 463
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 465
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 466
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 470
    const-string v0, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    invoke-virtual {v3, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v0, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v3, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v0, "Charset"

    const-string v5, "UTF-8"

    invoke-virtual {v3, v0, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    iget-object v5, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;->c:Ljava/util/ArrayList;

    invoke-static {v0, v5}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 487
    const-string v5, "utf-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 490
    const-string v5, "Content-Encoding"

    const-string v8, "gzip"

    invoke-virtual {v3, v5, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const-string v5, "Accept-Encoding"

    const-string v8, "gzip"

    invoke-virtual {v3, v5, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/c;->a([B)[B

    move-result-object v0

    .line 494
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 495
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 496
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 498
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    .line 500
    const/16 v5, 0xc8

    if-ne v0, v5, :cond_7

    move v0, v4

    .line 523
    :goto_3
    if-eqz v2, :cond_0

    .line 525
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 530
    :cond_0
    :goto_4
    if-eqz v2, :cond_1

    .line 532
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 537
    :cond_1
    :goto_5
    if-eqz v3, :cond_2

    .line 538
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 542
    :cond_2
    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    move v3, v5

    .line 425
    goto/16 :goto_0

    .line 438
    :cond_4
    :try_start_5
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 441
    :cond_5
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    .line 442
    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->c(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->f(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 443
    const/4 v3, 0x0

    aget-object v3, v0, v3

    .line 444
    const/4 v5, 0x1

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 446
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, -0x1

    if-eq v0, v5, :cond_6

    .line 448
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v3, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 450
    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v3, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 453
    invoke-virtual {v8, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 454
    goto/16 :goto_2

    .line 455
    :cond_6
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, v0

    goto/16 :goto_2

    :cond_7
    move v0, v1

    .line 505
    goto :goto_3

    .line 518
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 523
    :goto_7
    if-eqz v2, :cond_8

    .line 525
    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 530
    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    .line 532
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 537
    :cond_9
    :goto_9
    if-eqz v0, :cond_d

    .line 538
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto :goto_6

    .line 523
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_a
    if-eqz v2, :cond_a

    .line 525
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 530
    :cond_a
    :goto_b
    if-eqz v2, :cond_b

    .line 532
    :try_start_9
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 537
    :cond_b
    :goto_c
    if-eqz v3, :cond_c

    .line 538
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw v0

    .line 526
    :catch_1
    move-exception v1

    goto :goto_4

    .line 533
    :catch_2
    move-exception v1

    goto :goto_5

    .line 526
    :catch_3
    move-exception v3

    goto :goto_8

    .line 533
    :catch_4
    move-exception v2

    goto :goto_9

    .line 526
    :catch_5
    move-exception v1

    goto :goto_b

    .line 533
    :catch_6
    move-exception v1

    goto :goto_c

    .line 523
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_a

    .line 518
    :catch_7
    move-exception v3

    goto :goto_7

    :catch_8
    move-exception v0

    move-object v0, v3

    goto :goto_7

    :cond_d
    move v0, v1

    goto/16 :goto_6
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 546
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;->b:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$a;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1, v2}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$a;->a(ZLjava/util/ArrayList;)V

    .line 547
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 405
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
