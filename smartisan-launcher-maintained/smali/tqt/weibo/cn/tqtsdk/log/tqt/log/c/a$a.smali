.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;
.super Ljava/lang/Object;
.source "LogUtils.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;->a:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;->b:Ljava/lang/String;

    .line 92
    return-void
.end method


.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/c/a$a;->b:Ljava/lang/String;

    return-object v0
.end method
