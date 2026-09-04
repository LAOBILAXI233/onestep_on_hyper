.class public Lcom/loc/t;
.super Ljava/lang/Object;
.source "ProxyUtil.java"


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "null"

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ProxyUtil"

    const-string v2, "getDefHost"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/net/URI;

    const-string v2, "http://restapi.amap.com"

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/loc/t;->a(Landroid/content/Context;Ljava/net/URI;)Ljava/net/Proxy;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/loc/t;->b(Landroid/content/Context;)Ljava/net/Proxy;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ProxyUtil"

    const-string v3, "getProxy"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "ProxyUtil"

    const-string v3, "getProxy"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/net/URI;)Ljava/net/Proxy;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/loc/q;->m(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "ProxyUtil"

    const-string v3, "getProxySelectorCfg"

    invoke-static {v0, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "ProxyUtil"

    const-string v3, "getDefPort"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 12

    const/4 v10, 0x0

    const/16 v6, 0x50

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/loc/q;->m(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_10

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "apn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_4

    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/loc/t;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/loc/t;->b()I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    :try_start_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_11

    move v1, v9

    :goto_0
    if-nez v1, :cond_1

    :try_start_3
    const-string v3, "10.0.0.200"
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    if-ne v0, v8, :cond_2

    move v0, v6

    :cond_2
    move v8, v0

    :goto_1
    if-eqz v2, :cond_3

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    :goto_2
    :try_start_5
    invoke-static {v3, v8}, Lcom/loc/t;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {v3, v8}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    :goto_3
    return-object v0

    :cond_4
    if-eqz v0, :cond_10

    :try_start_6
    const-string v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/loc/t;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/loc/t;->b()I
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v1

    :try_start_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v0

    if-nez v0, :cond_f

    move v0, v9

    :goto_4
    if-nez v0, :cond_5

    :try_start_8
    const-string v3, "10.0.0.172"
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_5
    if-ne v1, v8, :cond_e

    move v8, v6

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ProxyUtil"

    const-string v2, "getHostProxy2"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v7

    move v2, v8

    move-object v3, v7

    :goto_5
    :try_start_9
    const-string v4, "ProxyUtil"

    const-string v5, "getHostProxy"

    invoke-static {v0, v4, v5}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/q;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/loc/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/loc/t;->b()I

    move-result v2

    const-string v5, "ctwap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v10, v9

    move-object v3, v0

    :cond_6
    if-nez v10, :cond_7

    const-string v3, "10.0.0.200"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_7
    if-ne v2, v8, :cond_d

    move v8, v6

    :goto_6
    if-eqz v1, :cond_3

    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string v1, "ProxyUtil"

    const-string v2, "getHostProxy2"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_8
    :try_start_b
    const-string v5, "wap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v2, v9

    :goto_7
    if-nez v2, :cond_9

    const-string v0, "10.0.0.200"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_9
    move v8, v6

    move-object v3, v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v2, v7

    move-object v3, v7

    :goto_8
    :try_start_c
    const-string v1, "ProxyUtil"

    const-string v4, "getHostProxy1"

    invoke-static {v0, v1, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v2, :cond_3

    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v0

    const-string v1, "ProxyUtil"

    const-string v2, "getHostProxy2"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v7

    :goto_9
    if-eqz v2, :cond_a

    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    :cond_a
    :goto_a
    throw v0

    :catch_5
    move-exception v1

    const-string v2, "ProxyUtil"

    const-string v3, "getHostProxy2"

    invoke-static {v1, v2, v3}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    :catch_6
    move-exception v0

    const-string v1, "ProxyUtil"

    const-string v2, "getHostProxy2"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    move-object v0, v7

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v3, v7

    goto :goto_8

    :catch_8
    move-exception v1

    move v8, v0

    move-object v3, v7

    move-object v0, v1

    goto :goto_8

    :catch_9
    move-exception v1

    move v8, v0

    move-object v0, v1

    goto :goto_8

    :catch_a
    move-exception v0

    move v8, v1

    move-object v3, v7

    goto :goto_8

    :catch_b
    move-exception v0

    move v8, v1

    goto :goto_8

    :catch_c
    move-exception v0

    move-object v1, v2

    move-object v3, v7

    move v2, v8

    goto/16 :goto_5

    :catch_d
    move-exception v1

    move-object v3, v7

    move-object v11, v2

    move v2, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_5

    :catch_e
    move-exception v1

    move-object v11, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v11

    goto/16 :goto_5

    :catch_f
    move-exception v0

    move-object v3, v7

    move v11, v1

    move-object v1, v2

    move v2, v11

    goto/16 :goto_5

    :catch_10
    move-exception v0

    move-object v11, v2

    move v2, v1

    move-object v1, v11

    goto/16 :goto_5

    :cond_c
    move v2, v10

    move-object v0, v3

    goto/16 :goto_7

    :cond_d
    move v8, v2

    goto/16 :goto_6

    :cond_e
    move v8, v1

    goto/16 :goto_1

    :cond_f
    move v0, v10

    move-object v3, v7

    goto/16 :goto_4

    :cond_10
    move-object v3, v7

    goto/16 :goto_1

    :cond_11
    move v1, v10

    move-object v3, v7

    goto/16 :goto_0
.end method
