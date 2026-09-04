.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/k;
.super Ljava/lang/Object;
.source "UploadCrashTask.java"

.implements Ljava/lang/Runnable;


.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/k;->a:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/k;->b:Ljava/lang/String;

    .line 34
    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 38
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/k;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/k;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    sget-boolean v2, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->b:Z

    if-eqz v2, :cond_7

    .line 47
    :try_start_0
    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/k;->b:Ljava/lang/String;

    invoke-static {v2}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;->a(Ljava/lang/String;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;

    move-result-object v0

    .line 48
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "imei"

    .line 49
    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :goto_1
    if-eqz v0, :cond_2

    .line 56
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "zkk"

    .line 57
    invoke-virtual {v0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_2
    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->b(Ljava/util/List;)V

    .line 61
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/k;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/j;->c(Ljava/util/List;Landroid/content/Context;)V

    .line 64
    :try_start_1
    new-instance v0, Ljava/net/URI;

    const-string v2, "http://tqt.weibo.cn/upload.php?method=crash.upload"

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 65
    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 67
    invoke-static/range {v0 .. v5}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Ljava/lang/String;[BIZZLjava/io/File;)Landroid/os/Bundle;

    move-result-object v0

    .line 70
    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/k;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/b/a;->a(Landroid/os/Bundle;Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/b/a/a;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_3

    iget v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    if-nez v1, :cond_3

    iget-object v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->c:[B

    if-nez v1, :cond_0

    .line 75
    :cond_3
    if-eqz v0, :cond_4

    iget v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 77
    :cond_4
    if-eqz v0, :cond_5

    iget v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 79
    :cond_5
    if-eqz v0, :cond_6

    iget v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    .line 81
    :cond_6
    if-eqz v0, :cond_0

    iget v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget v1, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v0, v0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 53
    :cond_7
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "imei"

    iget-object v4, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/b/k;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 87
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 50
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method
