.class final Ltqt/weibo/cn/tqtsdk/kit/b/p$3;
.super Ltqt/weibo/cn/tqtsdk/kit/b/p$c;
.source "StreamUtils.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltqt/weibo/cn/tqtsdk/kit/b/p;->a(Ljava/io/InputStream;Ljava/lang/Long;Ljava/lang/Long;Ltqt/weibo/cn/tqtsdk/kit/b/p$d;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic a:[[B

.field final synthetic b:Ljava/io/ByteArrayOutputStream;

.field final synthetic c:Ltqt/weibo/cn/tqtsdk/kit/b/p$d;


.method constructor <init>([[BLjava/io/ByteArrayOutputStream;Ltqt/weibo/cn/tqtsdk/kit/b/p$d;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/kit/b/p$3;->a:[[B

    iput-object p2, p0, Ltqt/weibo/cn/tqtsdk/kit/b/p$3;->b:Ljava/io/ByteArrayOutputStream;

    iput-object p3, p0, Ltqt/weibo/cn/tqtsdk/kit/b/p$3;->c:Ltqt/weibo/cn/tqtsdk/kit/b/p$d;

    invoke-direct {p0}, Ltqt/weibo/cn/tqtsdk/kit/b/p$c;-><init>()V

    return-void
.end method


.method public a(I)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/kit/b/p$3;->c:Ltqt/weibo/cn/tqtsdk/kit/b/p$d;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/kit/b/p$3;->c:Ltqt/weibo/cn/tqtsdk/kit/b/p$d;

    invoke-interface {v0, p1}, Ltqt/weibo/cn/tqtsdk/kit/b/p$d;->a(I)V

    .line 104
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .prologue
    .line 94
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 95
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/kit/b/p$3;->a:[[B

    const/4 v1, 0x0

    iget-object v2, p0, Ltqt/weibo/cn/tqtsdk/kit/b/p$3;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 97
    :cond_0
    return-void
.end method
