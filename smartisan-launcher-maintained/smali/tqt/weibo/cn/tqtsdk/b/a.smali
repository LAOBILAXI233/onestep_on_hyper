.class public Ltqt/weibo/cn/tqtsdk/b/a;
.super Ljava/lang/Object;
.source "Network.java"


.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[B)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 248
    const/4 v4, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    invoke-static/range {v0 .. v7}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BIZZLjava/io/File;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BIZZLjava/io/File;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[BIZZ",
            "Ljava/io/File;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 200
    if-eqz p2, :cond_0

    .line 201
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

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

    .line 202
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 203
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_0
    :try_start_0
    const-string v0, "http"

    const/4 v2, -0x1

    const-string v1, "UTF-8"

    .line 210
    invoke-static {v3, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    .line 209
    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move-object v5, p7

    invoke-static/range {v0 .. v5}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Ljava/lang/String;[BIZZLjava/io/File;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 218
    :goto_1
    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    .line 218
    goto :goto_1
.end method

.method public static a(Ljava/lang/String;[BIZZLjava/io/File;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 167
    const-string v2, "http_method"

    if-nez p1, :cond_3

    const-string v0, "GET"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "http_url"

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    if-eqz p1, :cond_0

    .line 172
    array-length v0, p1

    new-array v0, v0, [B

    .line 173
    array-length v2, p1

    invoke-static {p1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    const-string v2, "http_post_data"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 179
    :cond_0
    if-lez p2, :cond_1

    .line 180
    const-string v0, "limit_bytes"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    :cond_1
    if-eqz p3, :cond_2

    .line 185
    const-string v0, "2file"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    const-string v0, "dl_replace"

    invoke-virtual {v1, v0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 191
    const-string v0, "file"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 193
    :cond_2
    return-object v1

    .line 167
    :cond_3
    const-string v0, "POST"

    goto :goto_0
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Ljava/net/URL;Landroid/content/Context;)Ljava/net/HttpURLConnection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x7

    .line 369
    .line 372
    const/4 v0, 0x0

    .line 373
    :try_start_0
    const-string v1, "http_post_data"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 374
    const-string v0, "http_post_data"

    .line 375
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    move-object v3, v0

    .line 379
    :goto_0
    invoke-static {p3}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 380
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    .line 381
    const-string v0, "https"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    move v1, v0

    .line 382
    :goto_1
    if-ne v1, v2, :cond_2

    .line 383
    const/16 v0, 0x2f

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 384
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v5, "http://10.0.0.172"

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 390
    const-string v5, "X-Online-Host"

    .line 391
    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {v0, v5, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_2
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 416
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 417
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 421
    :goto_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 423
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 424
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 425
    const-string v1, "Accept"

    const-string v2, "*, */*"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v1, "accept-charset"

    const-string v2, "utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    if-eqz v3, :cond_0

    .line 431
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 432
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 433
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 434
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 441
    :cond_0
    return-object v0

    :cond_1
    move v1, v2

    .line 381
    goto :goto_1

    .line 393
    :cond_2
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_2

    .line 397
    :cond_3
    invoke-static {p3}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->f(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 398
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 399
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 401
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 403
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 404
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 407
    invoke-virtual {p2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_2

    .line 409
    :cond_4
    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_2

    .line 419
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 436
    :catch_0
    move-exception v0

    .line 437
    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 438
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_6
    move-object v3, v0

    goto/16 :goto_0
.end method

.method public static a(Landroid/os/Bundle;)Ljava/net/URL;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 272
    .line 274
    :try_start_0
    const-string v1, "http_host"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    const-string v0, "http_host"

    .line 280
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    const-string v0, "http_path"

    .line 282
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 285
    const-string v2, "http_get_args"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 286
    const-string v0, "http_get_args"

    .line 287
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    move-object v4, v0

    .line 289
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 290
    if-eqz v4, :cond_0

    .line 291
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 293
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v7, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 297
    :cond_0
    :try_start_1
    const-string v0, "http"

    const/4 v2, -0x1

    const-string v4, "UTF-8"

    .line 298
    invoke-static {v5, v4}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 297
    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 312
    :cond_1
    :goto_2
    return-object v0

    .line 300
    :cond_2
    const-string v1, "http_url"

    .line 301
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    new-instance v0, Ljava/net/URL;

    const-string v1, "http_url"

    .line 303
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 308
    :catch_1
    move-exception v0

    .line 309
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_3
    move-object v4, v0

    goto :goto_0
.end method

.method private static a(Landroid/os/Bundle;I)Ltqt/weibo/cn/tqtsdk/b/a/a;
    .locals 1

    .prologue
    .line 824
    invoke-static {p0, p1}, Ltqt/weibo/cn/tqtsdk/b/a;->b(Landroid/os/Bundle;I)Ltqt/weibo/cn/tqtsdk/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/b/a/a;
    .locals 25

    .prologue
    .line 445
    invoke-static/range {p1 .. p1}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 447
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Ltqt/weibo/cn/tqtsdk/b/a;->b(Landroid/os/Bundle;I)Ltqt/weibo/cn/tqtsdk/b/a/a;

    move-result-object v4

    .line 768
    :goto_0
    return-object v4

    .line 454
    :cond_0
    const/4 v4, -0x1

    .line 455
    const-string v5, "limit_bytes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 456
    const-string v4, "limit_bytes"

    .line 457
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move v5, v4

    .line 461
    :goto_1
    const-string v4, "2file"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 465
    const/4 v4, 0x0

    .line 469
    const-wide/16 v6, -0x1

    .line 473
    const/4 v8, 0x0

    .line 475
    if-eqz v20, :cond_21

    .line 477
    const-string v4, "file"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 478
    const-string v9, "2sd"

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 479
    const-string v10, "download_length"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 480
    const-string v6, "download_length"

    .line 481
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 483
    :cond_1
    const-string v10, "dl_replace"

    const/4 v11, 0x0

    .line 484
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 489
    if-nez v4, :cond_2

    .line 490
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 493
    :cond_2
    if-eqz v9, :cond_4

    .line 494
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/kit/b/o;->a()Z

    move-result v9

    if-nez v9, :cond_3

    .line 496
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Ltqt/weibo/cn/tqtsdk/b/a;->b(Landroid/os/Bundle;I)Ltqt/weibo/cn/tqtsdk/b/a/a;

    move-result-object v4

    goto :goto_0

    .line 499
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    .line 500
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 501
    new-instance v11, Landroid/os/StatFs;

    invoke-direct {v11, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v12, v9

    .line 503
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v14, v9

    .line 504
    const-wide/16 v16, -0x1

    cmp-long v9, v6, v16

    if-eqz v9, :cond_4

    mul-long/2addr v12, v14

    cmp-long v6, v6, v12

    if-ltz v6, :cond_4

    .line 506
    const/16 v4, 0xb

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Ltqt/weibo/cn/tqtsdk/b/a;->b(Landroid/os/Bundle;I)Ltqt/weibo/cn/tqtsdk/b/a/a;

    move-result-object v4

    goto/16 :goto_0

    .line 511
    :cond_4
    if-eqz v20, :cond_9

    .line 512
    if-eqz v10, :cond_7

    .line 513
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 514
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 515
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-object v6, v4

    move v4, v8

    .line 532
    :goto_2
    const/4 v11, 0x0

    .line 533
    const/4 v9, 0x0

    .line 534
    const/4 v8, 0x0

    .line 535
    const/4 v7, 0x0

    .line 539
    :try_start_0
    const-string v10, "http_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 542
    invoke-static/range {p0 .. p0}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Landroid/os/Bundle;)Ljava/net/URL;

    move-result-object v16

    .line 543
    if-eqz v20, :cond_a

    if-eqz v4, :cond_a

    .line 550
    new-instance v4, Ltqt/weibo/cn/tqtsdk/b/a/a;

    invoke-direct {v4}, Ltqt/weibo/cn/tqtsdk/b/a/a;-><init>()V

    .line 551
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ltqt/weibo/cn/tqtsdk/b/a/a;->a:Ljava/lang/String;

    .line 552
    iput-object v6, v4, Ltqt/weibo/cn/tqtsdk/b/a/a;->d:Ljava/io/File;

    .line 553
    const/4 v5, 0x0

    iput v5, v4, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    .line 555
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Ltqt/weibo/cn/tqtsdk/b/a/a;Landroid/os/Bundle;)V

    .line 557
    if-eqz v7, :cond_20

    .line 558
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 559
    const/4 v5, 0x0

    .line 562
    :goto_3
    const/4 v6, 0x2

    :try_start_1
    new-array v6, v6, [Ljava/io/InputStream;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    const/4 v7, 0x1

    aput-object v9, v6, v7

    .line 563
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/io/OutputStream;

    const/4 v10, 0x0

    aput-object v8, v7, v10

    .line 564
    invoke-static {v6, v7}, Ltqt/weibo/cn/tqtsdk/b/a;->a([Ljava/io/InputStream;[Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 752
    :catch_0
    move-exception v4

    move-object v6, v8

    move-object v7, v9

    move-object v8, v11

    .line 753
    :goto_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 754
    new-instance v4, Ltqt/weibo/cn/tqtsdk/b/a/a;

    invoke-direct {v4}, Ltqt/weibo/cn/tqtsdk/b/a/a;-><init>()V

    .line 755
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Ltqt/weibo/cn/tqtsdk/b/a/a;->a:Ljava/lang/String;

    .line 756
    const/4 v9, 0x1

    iput v9, v4, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    .line 758
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Ltqt/weibo/cn/tqtsdk/b/a/a;Landroid/os/Bundle;)V

    .line 760
    if-eqz v5, :cond_5

    .line 761
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 765
    :cond_5
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/io/InputStream;

    const/4 v9, 0x0

    aput-object v8, v5, v9

    const/4 v8, 0x1

    aput-object v7, v5, v8

    .line 766
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/io/OutputStream;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    .line 767
    invoke-static {v5, v7}, Ltqt/weibo/cn/tqtsdk/b/a;->a([Ljava/io/InputStream;[Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .line 516
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 517
    invoke-static {v4}, Ltqt/weibo/cn/tqtsdk/kit/b/g;->a(Ljava/io/File;)V

    move-object v6, v4

    move v4, v8

    goto/16 :goto_2

    .line 521
    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 522
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 523
    const/4 v6, 0x1

    move/from16 v24, v6

    move-object v6, v4

    move/from16 v4, v24

    goto/16 :goto_2

    .line 524
    :cond_8
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 525
    invoke-static {v4}, Ltqt/weibo/cn/tqtsdk/kit/b/g;->a(Ljava/io/File;)V

    :cond_9
    move-object v6, v4

    move v4, v8

    goto/16 :goto_2

    .line 569
    :cond_a
    const-wide/16 v14, 0x0

    .line 570
    const/4 v4, 0x0

    .line 571
    if-eqz v20, :cond_b

    .line 572
    :try_start_2
    new-instance v4, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ".tqtdownload"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 576
    :cond_b
    const/16 v12, 0x1f4

    .line 577
    const/4 v10, 0x0

    move-wide/from16 v18, v14

    .line 578
    :goto_5
    const/4 v14, 0x4

    if-ge v10, v14, :cond_f

    .line 580
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-static {v0, v13, v1, v2}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/net/URL;Landroid/content/Context;)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 583
    if-eqz v20, :cond_c

    .line 584
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 585
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v18

    .line 586
    const-string v14, "RANGE"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "bytes="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_c
    move-wide/from16 v14, v18

    .line 592
    :try_start_4
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->connect()V

    .line 593
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-result v12

    .line 620
    const/4 v10, 0x5

    move-wide/from16 v18, v14

    goto :goto_5

    .line 594
    :catch_1
    move-exception v17

    .line 595
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v10, v0, :cond_e

    .line 596
    add-int/lit8 v10, v10, 0x1

    .line 597
    if-eqz v7, :cond_d

    .line 598
    :try_start_5
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 599
    const/4 v7, 0x0

    .line 602
    :cond_d
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/io/InputStream;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v11, v17, v18

    const/16 v18, 0x1

    aput-object v9, v17, v18

    .line 603
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/io/OutputStream;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    .line 604
    invoke-static/range {v17 .. v18}, Ltqt/weibo/cn/tqtsdk/b/a;->a([Ljava/io/InputStream;[Ljava/io/OutputStream;)V

    move-wide/from16 v18, v14

    .line 605
    goto :goto_5

    .line 607
    :cond_e
    if-eqz v7, :cond_1f

    .line 608
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 609
    const/4 v5, 0x0

    .line 613
    :goto_6
    const/4 v4, 0x2

    :try_start_6
    new-array v4, v4, [Ljava/io/InputStream;

    const/4 v6, 0x0

    aput-object v11, v4, v6

    const/4 v6, 0x1

    aput-object v9, v4, v6

    .line 614
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/OutputStream;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    .line 615
    invoke-static {v4, v6}, Ltqt/weibo/cn/tqtsdk/b/a;->a([Ljava/io/InputStream;[Ljava/io/OutputStream;)V

    .line 616
    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Landroid/os/Bundle;I)Ltqt/weibo/cn/tqtsdk/b/a/a;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 623
    :cond_f
    const/16 v10, 0xc8

    if-eq v12, v10, :cond_10

    const/16 v10, 0xce

    if-eq v12, v10, :cond_10

    .line 625
    if-eqz v7, :cond_1e

    .line 626
    :try_start_7
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 627
    const/4 v5, 0x0

    .line 630
    :goto_7
    const/4 v4, 0x2

    :try_start_8
    new-array v4, v4, [Ljava/io/InputStream;

    const/4 v6, 0x0

    aput-object v11, v4, v6

    const/4 v6, 0x1

    aput-object v9, v4, v6

    .line 631
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/OutputStream;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    .line 632
    invoke-static {v4, v6}, Ltqt/weibo/cn/tqtsdk/b/a;->a([Ljava/io/InputStream;[Ljava/io/OutputStream;)V

    .line 633
    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Landroid/os/Bundle;I)Ltqt/weibo/cn/tqtsdk/b/a/a;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v4

    goto/16 :goto_0

    .line 638
    :cond_10
    const/4 v13, 0x0

    .line 639
    if-eqz v20, :cond_1d

    .line 640
    :try_start_9
    new-instance v4, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ".tqtdownload"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v4

    .line 644
    :goto_8
    const/4 v4, 0x0

    .line 645
    if-eqz v20, :cond_16

    .line 647
    new-instance v10, Ljava/io/BufferedOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v14, 0x1

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v10, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    move-object/from16 v16, v4

    .line 655
    :goto_9
    :try_start_a
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    move-result-object v12

    .line 657
    :try_start_b
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 659
    :try_start_c
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->getInstance()Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ltqt/weibo/cn/tqtsdk/kit/policy/NetworkPolicy;->getBufferSize(Landroid/content/Context;)I

    move-result v4

    .line 661
    const/4 v8, -0x1

    if-eq v5, v8, :cond_11

    if-ge v5, v4, :cond_11

    move v4, v5

    .line 664
    :cond_11
    new-array v0, v4, [B

    move-object/from16 v21, v0

    .line 666
    const-wide/16 v14, 0x0

    .line 668
    if-eqz v20, :cond_12

    .line 669
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 670
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 676
    :cond_12
    const-string v4, "Content-Length"

    .line 677
    invoke-virtual {v7, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 679
    if-eqz v4, :cond_17

    .line 680
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    add-long v8, v8, v18

    .line 688
    :goto_a
    const/4 v4, 0x0

    .line 690
    :cond_13
    :goto_b
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    move-result v18

    .line 693
    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_18

    .line 694
    :try_start_d
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .line 721
    :cond_14
    if-nez v20, :cond_1c

    .line 722
    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object v5, v4

    .line 726
    :goto_c
    if-eqz v20, :cond_15

    .line 727
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 732
    :cond_15
    new-instance v4, Ltqt/weibo/cn/tqtsdk/b/a/a;

    invoke-direct {v4}, Ltqt/weibo/cn/tqtsdk/b/a/a;-><init>()V

    .line 733
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Ltqt/weibo/cn/tqtsdk/b/a/a;->a:Ljava/lang/String;

    .line 734
    if-eqz v20, :cond_1a

    .line 735
    iput-object v6, v4, Ltqt/weibo/cn/tqtsdk/b/a/a;->d:Ljava/io/File;

    .line 739
    :goto_d
    const-string v5, "Date"

    invoke-virtual {v7, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Ltqt/weibo/cn/tqtsdk/b/a/a;->e:Ljava/lang/String;

    .line 740
    const/4 v5, 0x0

    iput v5, v4, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    .line 742
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Ltqt/weibo/cn/tqtsdk/b/a/a;Landroid/os/Bundle;)V

    .line 744
    if-eqz v7, :cond_1b

    .line 745
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 746
    const/4 v5, 0x0

    .line 748
    :goto_e
    const/4 v6, 0x2

    :try_start_f
    new-array v6, v6, [Ljava/io/InputStream;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    const/4 v7, 0x1

    aput-object v11, v6, v7

    .line 749
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/io/OutputStream;

    const/4 v8, 0x0

    aput-object v10, v7, v8

    .line 750
    invoke-static {v6, v7}, Ltqt/weibo/cn/tqtsdk/b/a;->a([Ljava/io/InputStream;[Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2

    goto/16 :goto_0

    .line 752
    :catch_2
    move-exception v4

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    goto/16 :goto_4

    .line 650
    :cond_16
    :try_start_10
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 651
    new-instance v10, Ljava/io/BufferedOutputStream;

    invoke-direct {v10, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    move-object/from16 v16, v4

    goto/16 :goto_9

    .line 683
    :cond_17
    const-wide/16 v8, -0x1

    goto :goto_a

    .line 697
    :cond_18
    const/16 v19, 0x0

    :try_start_11
    move-object/from16 v0, v21

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v10, v0, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    .line 698
    add-int v4, v4, v18

    .line 704
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v5, v0, :cond_19

    int-to-long v0, v5

    move-wide/from16 v22, v0

    cmp-long v19, v14, v22

    if-gez v19, :cond_14

    .line 711
    :cond_19
    const-wide/16 v22, -0x1

    cmp-long v19, v8, v22

    if-eqz v19, :cond_13

    .line 712
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v14, v14, v18

    goto/16 :goto_b

    .line 699
    :catch_3
    move-exception v4

    .line 700
    const/4 v4, 0x4

    :try_start_12
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Ltqt/weibo/cn/tqtsdk/b/a;->b(Landroid/os/Bundle;I)Ltqt/weibo/cn/tqtsdk/b/a/a;

    move-result-object v4

    goto/16 :goto_0

    .line 737
    :cond_1a
    iput-object v5, v4, Ltqt/weibo/cn/tqtsdk/b/a/a;->c:[B
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    goto :goto_d

    .line 752
    :catch_4
    move-exception v4

    move-object v5, v7

    move-object v6, v10

    move-object v8, v12

    move-object v7, v11

    goto/16 :goto_4

    :catch_5
    move-exception v4

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v11

    goto/16 :goto_4

    :catch_6
    move-exception v4

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v11

    goto/16 :goto_4

    :catch_7
    move-exception v4

    move-object v5, v7

    move-object v6, v10

    move-object v8, v11

    move-object v7, v9

    goto/16 :goto_4

    :catch_8
    move-exception v4

    move-object v5, v7

    move-object v6, v10

    move-object v8, v12

    move-object v7, v9

    goto/16 :goto_4

    :cond_1b
    move-object v5, v7

    goto/16 :goto_e

    :cond_1c
    move-object v5, v13

    goto/16 :goto_c

    :cond_1d
    move-object/from16 v17, v4

    goto/16 :goto_8

    :cond_1e
    move-object v5, v7

    goto/16 :goto_7

    :cond_1f
    move-object v5, v7

    goto/16 :goto_6

    :cond_20
    move-object v5, v7

    goto/16 :goto_3

    :cond_21
    move-object v6, v4

    move v4, v8

    goto/16 :goto_2

    :cond_22
    move v5, v4

    goto/16 :goto_1
.end method

.method private static a(Ltqt/weibo/cn/tqtsdk/b/a/a;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 798
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 799
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/b/a/a;->d:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 800
    const-string v1, "file"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/b/a/a;->d:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 804
    :cond_0
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/b/a/a;->c:[B

    if-eqz v1, :cond_1

    .line 805
    const-string v1, "http_bytes_data"

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/b/a/a;->c:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 809
    :cond_1
    return-void
.end method

.method private static a([Ljava/io/InputStream;[Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 773
    if-eqz p0, :cond_1

    .line 774
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    .line 775
    if-eqz v3, :cond_0

    .line 777
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    :catch_0
    move-exception v3

    .line 779
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 784
    :cond_1
    if-eqz p1, :cond_3

    .line 785
    array-length v1, p1

    :goto_2
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    .line 786
    if-eqz v2, :cond_2

    .line 788
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 785
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 789
    :catch_1
    move-exception v2

    .line 790
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 795
    :cond_3
    return-void
.end method

.method private static b(Landroid/os/Bundle;I)Ltqt/weibo/cn/tqtsdk/b/a/a;
    .locals 1

    .prologue
    .line 828
    new-instance v0, Ltqt/weibo/cn/tqtsdk/b/a/a;

    invoke-direct {v0}, Ltqt/weibo/cn/tqtsdk/b/a/a;-><init>()V

    .line 829
    iput p1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    .line 831
    invoke-static {v0, p0}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Ltqt/weibo/cn/tqtsdk/b/a/a;Landroid/os/Bundle;)V

    .line 832
    return-object v0
.end method
