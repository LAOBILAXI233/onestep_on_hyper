.class Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$1;
.super Ljava/lang/Object;
.source "LogManager.java"

.implements Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$a;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;


.method constructor <init>(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$1;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public a(ZLjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 287
    if-eqz p1, :cond_0

    .line 289
    :try_start_0
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$1;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$1;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {p2}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/d;->a(Ljava/util/ArrayList;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->a(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;I)I

    .line 290
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$1;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    iget-object v1, p0, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a$1;->a:Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;

    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->b(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;)I

    move-result v1

    int-to-long v2, v1

    invoke-static {p2}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/b;->a(Ljava/util/ArrayList;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v1, v2

    invoke-static {v0, v1}, Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;->b(Ltqt/weibo/cn/tqtsdk/log/a/a/b/a;I)I

    .line 292
    invoke-static {p2}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/e;->a(Ljava/util/ArrayList;)J

    .line 293
    invoke-static {p2}, Ltqt/weibo/cn/tqtsdk/log/a/a/a/f;->a(Ljava/util/ArrayList;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    goto :goto_0
.end method
