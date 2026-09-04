.class final Ltqt/weibo/cn/tqtsdk/b/b/d$4;
.super Ljava/lang/Object;
.source "HttpRunnable.java"

.implements Ltqt/weibo/cn/tqtsdk/kit/b/p$b;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltqt/weibo/cn/tqtsdk/b/b/d;->a(Landroid/content/Context;Ljava/lang/String;[BIZLjava/io/File;Ltqt/weibo/cn/tqtsdk/b/b/e;Ltqt/weibo/cn/tqtsdk/b/b/a;ZLtqt/weibo/cn/tqtsdk/b/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic a:Ltqt/weibo/cn/tqtsdk/b/b/e;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/net/HttpURLConnection;

.field final synthetic d:[Z


.method constructor <init>(Ltqt/weibo/cn/tqtsdk/b/b/e;Ljava/lang/String;Ljava/net/HttpURLConnection;[Z)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/b/b/d$4;->a:Ltqt/weibo/cn/tqtsdk/b/b/e;

    iput-object p2, p0, Ltqt/weibo/cn/tqtsdk/b/b/d$4;->b:Ljava/lang/String;

    iput-object p3, p0, Ltqt/weibo/cn/tqtsdk/b/b/d$4;->c:Ljava/net/HttpURLConnection;

    iput-object p4, p0, Ltqt/weibo/cn/tqtsdk/b/b/d$4;->d:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public a(I)V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/b/b/d$4;->a:Ltqt/weibo/cn/tqtsdk/b/b/e;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/b/b/d$4;->b:Ljava/lang/String;

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/b/b/d$4;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 381
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-interface {v0, v1, v2, p1}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 382
    return-void
.end method

.method public b(I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 387
    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    .line 388
    packed-switch p1, :pswitch_data_0

    .line 414
    :goto_0
    :pswitch_0
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/b/b/d$4;->a:Ltqt/weibo/cn/tqtsdk/b/b/e;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/b/b/d$4;->b:Ljava/lang/String;

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/b/b/d$4;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 415
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v4

    .line 414
    invoke-interface/range {v0 .. v5}, Ltqt/weibo/cn/tqtsdk/b/b/e;->a(Ljava/lang/String;Ljava/lang/String;I[BLjava/io/File;)V

    .line 416
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/b/b/d$4;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 417
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/b/b/d$4;->d:[Z

    aput-boolean v6, v0, v6

    .line 420
    :cond_0
    return-void

    .line 394
    :pswitch_1
    const/4 v3, -0x3

    .line 396
    goto :goto_0

    .line 398
    :pswitch_2
    const/4 v3, -0x5

    .line 400
    goto :goto_0

    .line 402
    :pswitch_3
    const/4 v3, -0x7

    .line 404
    goto :goto_0

    .line 406
    :pswitch_4
    const/4 v3, -0x8

    .line 408
    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
