.class Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;
.super Ljava/lang/Object;
.source "WBAgentExecutor.java"


.field private static TIMEOUT:J

.field private static mExecutor:Ljava/util/concurrent/ExecutorService;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 8
    sput-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 10
    const-wide/16 v0, 0x5

    sput-wide v0, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;->TIMEOUT:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 13
    const-class v1, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 17
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v1

    return-void

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized shutDownExecutor()V
    .locals 5

    .prologue
    .line 22
    const-class v1, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    sget-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 25
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    sget-wide v2, Lcom/sina/weibo/sdk/statistic/WBAgentExecutor;->TIMEOUT:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :goto_0
    monitor-exit v1

    return-void

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0
.end method
