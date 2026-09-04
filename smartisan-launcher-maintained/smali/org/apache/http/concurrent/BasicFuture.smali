.class public Lorg/apache/http/concurrent/BasicFuture;
.super Ljava/lang/Object;
.source "BasicFuture.java"

.implements Ljava/util/concurrent/Future;
.implements Lorg/apache/http/concurrent/Cancellable;


.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;",
        "Lorg/apache/http/concurrent/Cancellable;"
    }
.end annotation


.field private final callback:Lorg/apache/http/concurrent/FutureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/concurrent/FutureCallback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile cancelled:Z

.field private volatile completed:Z

.field private volatile ex:Ljava/lang/Exception;

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


.method public constructor <init>(Lorg/apache/http/concurrent/FutureCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/concurrent/FutureCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/apache/http/concurrent/BasicFuture;, "Lorg/apache/http/concurrent/BasicFuture<TT;>;"
    .local p1, "callback":Lorg/apache/http/concurrent/FutureCallback;, "Lorg/apache/http/concurrent/FutureCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    .line 56
    return-void
.end method

.method private getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/http/concurrent/BasicFuture;, "Lorg/apache/http/concurrent/BasicFuture<TT;>;"
    iget-object v0, p0, Lorg/apache/http/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object v1, p0, Lorg/apache/http/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lorg/apache/http/concurrent/BasicFuture;->result:Ljava/lang/Object;

    return-object v0
.end method


.method public cancel()Z
    .locals 1

    .prologue
    .line 151
    .local p0, "this":Lorg/apache/http/concurrent/BasicFuture;, "Lorg/apache/http/concurrent/BasicFuture<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/http/concurrent/BasicFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Lorg/apache/http/concurrent/BasicFuture;, "Lorg/apache/http/concurrent/BasicFuture<TT;>;"
    const/4 v0, 0x1

    .line 136
    monitor-enter p0

    .line 137
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-eqz v1, :cond_1

    .line 138
    const/4 v0, 0x0

    monitor-exit p0

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 140
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/concurrent/BasicFuture;->cancelled:Z

    .line 142
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 143
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v1, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v1}, Lorg/apache/http/concurrent/FutureCallback;->cancelled()V

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public completed(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/http/concurrent/BasicFuture;, "Lorg/apache/http/concurrent/BasicFuture<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-eqz v1, :cond_1

    .line 108
    const/4 v0, 0x0

    monitor-exit p0

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    .line 111
    iput-object p1, p0, Lorg/apache/http/concurrent/BasicFuture;->result:Ljava/lang/Object;

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 113
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object v1, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v1, p1}, Lorg/apache/http/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public failed(Ljava/lang/Exception;)Z
    .locals 2
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .local p0, "this":Lorg/apache/http/concurrent/BasicFuture;, "Lorg/apache/http/concurrent/BasicFuture<TT;>;"
    const/4 v0, 0x1

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-eqz v1, :cond_1

    .line 123
    const/4 v0, 0x0

    monitor-exit p0

    .line 132
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    .line 126
    iput-object p1, p0, Lorg/apache/http/concurrent/BasicFuture;->ex:Ljava/lang/Exception;

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v1, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lorg/apache/http/concurrent/BasicFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v1, p1}, Lorg/apache/http/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/http/concurrent/BasicFuture;, "Lorg/apache/http/concurrent/BasicFuture<TT;>;"
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 77
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/apache/http/concurrent/BasicFuture;->getResult()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/http/concurrent/BasicFuture;, "Lorg/apache/http/concurrent/BasicFuture<TT;>;"
    const-wide/16 v6, 0x0

    .line 82
    monitor-enter p0

    :try_start_0
    const-string v8, "Time unit"

    invoke-static {p3, v8}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 84
    .local v0, "msecs":J
    cmp-long v8, v0, v6

    if-gtz v8, :cond_0

    move-wide v2, v6

    .line 85
    .local v2, "startTime":J
    :goto_0
    move-wide v4, v0

    .line 86
    .local v4, "waitTime":J
    iget-boolean v8, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-eqz v8, :cond_1

    .line 87
    invoke-direct {p0}, Lorg/apache/http/concurrent/BasicFuture;->getResult()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 94
    :goto_1
    monitor-exit p0

    return-object v6

    .line 84
    .end local v2    # "startTime":J
    .end local v4    # "waitTime":J
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    .line 88
    .restart local v2    # "startTime":J
    .restart local v4    # "waitTime":J
    :cond_1
    cmp-long v8, v4, v6

    if-gtz v8, :cond_2

    .line 89
    new-instance v6, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v6}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .end local v0    # "msecs":J
    .end local v2    # "startTime":J
    .end local v4    # "waitTime":J
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 92
    .restart local v0    # "msecs":J
    .restart local v2    # "startTime":J
    .restart local v4    # "waitTime":J
    :cond_2
    :try_start_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 93
    iget-boolean v8, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    if-eqz v8, :cond_3

    .line 94
    invoke-direct {p0}, Lorg/apache/http/concurrent/BasicFuture;->getResult()Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 96
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    sub-long v4, v0, v8

    .line 97
    cmp-long v8, v4, v6

    if-gtz v8, :cond_2

    .line 98
    new-instance v6, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v6}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/http/concurrent/BasicFuture;, "Lorg/apache/http/concurrent/BasicFuture<TT;>;"
    iget-boolean v0, p0, Lorg/apache/http/concurrent/BasicFuture;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lorg/apache/http/concurrent/BasicFuture;, "Lorg/apache/http/concurrent/BasicFuture<TT;>;"
    iget-boolean v0, p0, Lorg/apache/http/concurrent/BasicFuture;->completed:Z

    return v0
.end method
