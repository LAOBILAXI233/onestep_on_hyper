.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;
.super Ljava/lang/Object;
.source "LogManager.java"


.field private static a:Ltqt/weibo/cn/tqtsdk/a/a/b;

.field private static volatile b:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->b:I

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;
    .locals 2

    .prologue
    .line 24
    const-class v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 35
    :goto_0
    monitor-exit v1

    return-object v0

    .line 28
    :cond_0
    :try_start_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a:Ltqt/weibo/cn/tqtsdk/a/a/b;

    if-nez v0, :cond_1

    .line 29
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;

    invoke-direct {v0, p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a:Ltqt/weibo/cn/tqtsdk/a/a/b;

    .line 33
    :cond_1
    sget v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->b:I

    .line 35
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/e;->a:Ltqt/weibo/cn/tqtsdk/a/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
