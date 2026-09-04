.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;
.super Ljava/lang/Object;
.source "CrashCollectorManager.java"


.field private static sManager:Ltqt/weibo/cn/tqtsdk/a/a/b;

.field private static volatile svReferences:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;->svReferences:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized destroyManager()V
    .locals 3

    .prologue
    .line 43
    const-class v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;->sManager:Ltqt/weibo/cn/tqtsdk/a/a/b;

    if-nez v0, :cond_1

    .line 44
    const/4 v0, 0x0

    sput v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;->svReferences:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 49
    :cond_1
    :try_start_1
    sget v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;->svReferences:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;->svReferences:I

    .line 52
    sget v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;->svReferences:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 53
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;->sManager:Ltqt/weibo/cn/tqtsdk/a/a/b;

    invoke-interface {v0}, Ltqt/weibo/cn/tqtsdk/a/a/b;->a()V

    .line 54
    const/4 v0, 0x0

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;->sManager:Ltqt/weibo/cn/tqtsdk/a/a/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/a/a/b;
    .locals 2

    .prologue
    .line 24
    const-class v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;

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
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;->sManager:Ltqt/weibo/cn/tqtsdk/a/a/b;

    if-nez v0, :cond_1

    .line 29
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;

    invoke-direct {v0, p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;->sManager:Ltqt/weibo/cn/tqtsdk/a/a/b;

    .line 33
    :cond_1
    sget v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;->svReferences:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;->svReferences:I

    .line 35
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/CrashCollectorManager;->sManager:Ltqt/weibo/cn/tqtsdk/a/a/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
