.class public final Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/a;
.super Ljava/lang/Object;
.source "ApiCollectInfo.java"


.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 108
    const/4 v1, 0x0

    new-array v7, v1, [B

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 111
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "content"

    move-object/from16 v0, p1

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    :try_start_0
    const-string v2, "utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 122
    :goto_0
    const/4 v1, 0x1

    new-array v14, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v14, v1

    .line 124
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/b/b/f;->a()Ltqt/weibo/cn/tqtsdk/b/b/f;

    move-result-object v1

    const-string v3, "http"

    const-string v4, "forecast.sina.cn"

    const-string v5, "app/action.php"

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/a$1;

    invoke-direct {v11, v14}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/a$1;-><init>([Ljava/lang/Object;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v13}, Ltqt/weibo/cn/tqtsdk/b/b/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BIZLjava/io/File;Ltqt/weibo/cn/tqtsdk/b/b/e;Ltqt/weibo/cn/tqtsdk/b/b/a;Z)V

    .line 153
    const/4 v1, 0x0

    aget-object v1, v14, v1

    return-object v1

    .line 116
    :catch_0
    move-exception v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
