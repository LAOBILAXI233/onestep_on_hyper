.class public Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;
.super Ljava/lang/Object;
.source "SmartisanManager.java"


.field private static sManager:Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

.field private static volatile svReferences:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->svReferences:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized destroyManager()V
    .locals 3

    .prologue
    .line 41
    const-class v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->sManager:Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    if-nez v0, :cond_1

    .line 42
    const/4 v0, 0x0

    sput v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->svReferences:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 47
    :cond_1
    :try_start_1
    sget v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->svReferences:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->svReferences:I

    .line 50
    sget v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->svReferences:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 51
    const/4 v0, 0x0

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->sManager:Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getManager(Landroid/content/Context;)Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;
    .locals 2

    .prologue
    .line 22
    const-class v1, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 33
    :goto_0
    monitor-exit v1

    return-object v0

    .line 26
    :cond_0
    :try_start_0
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->sManager:Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    if-nez v0, :cond_1

    .line 27
    new-instance v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;

    invoke-direct {v0, p0}, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->sManager:Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;

    .line 31
    :cond_1
    sget v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->svReferences:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->svReferences:I

    .line 33
    sget-object v0, Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/SmartisanManager;->sManager:Ltqt/weibo/cn/tqtsdk/log/tqt/log/manager/ISmartisanManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
