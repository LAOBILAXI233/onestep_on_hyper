.class public final Ltqt/weibo/cn/tqtsdk/a/b/b;
.super Ljava/lang/Object;
.source "UpdateApiPacker.java"


.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v2, -0x1

    const/4 v5, 0x0

    .line 29
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "city"

    invoke-direct {v0, v1, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-static {v4, p1}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->a(Ljava/util/List;Landroid/content/Context;)V

    .line 36
    const-string v0, "http"

    const-string v1, "forecast.sina.cn"

    const-string v3, "app/update.php"

    const-string v6, "UTF-8"

    .line 38
    invoke-static {v4, v6}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-static/range {v0 .. v5}, Lorg/apache/http/client/utils/URIUtils;->createURI(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    move v6, v2

    move v8, v7

    move-object v9, v5

    invoke-static/range {v4 .. v9}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Ljava/lang/String;[BIZZLjava/io/File;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
