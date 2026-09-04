.class public Ltqt/weibo/cn/tqtsdk/b/a/a;
.super Ljava/lang/Object;
.source "SynReturnFromNet.java"


.field public a:Ljava/lang/String;

.field public b:I

.field public c:[B

.field public d:Ljava/io/File;

.field public e:Ljava/lang/String;


.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Ltqt/weibo/cn/tqtsdk/b/a/a;->a:Ljava/lang/String;

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Ltqt/weibo/cn/tqtsdk/b/a/a;->b:I

    .line 8
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/b/a/a;->c:[B

    .line 9
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/b/a/a;->d:Ljava/io/File;

    .line 10
    iput-object v1, p0, Ltqt/weibo/cn/tqtsdk/b/a/a;->e:Ljava/lang/String;

    return-void
.end method
