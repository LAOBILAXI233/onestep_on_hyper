.class abstract Lorg/apache/http/pool/PoolEntryFuture;
.super Ljava/lang/Object;
.source "PoolEntryFuture.java"

.implements Ljava/util/concurrent/Future;


.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TT;>;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/ThreadSafe;
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

.field private final condition:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


.method constructor <init>(Ljava/util/concurrent/locks/Lock;Lorg/apache/http/concurrent/FutureCallback;)V
    .locals 1
    .param p1, "lock"    # Ljava/util/concurrent/locks/Lock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/Lock;",
            "Lorg/apache/http/concurrent/FutureCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TT;>;"
    .local p2, "callback":Lorg/apache/http/concurrent/FutureCallback;, "Lorg/apache/http/concurrent/FutureCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    .line 55
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    .line 56
    iput-object p2, p0, Lorg/apache/http/pool/PoolEntryFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    .line 57
    return-void
.end method


.method public await(Ljava/util/Date;)Z
    .locals 3
    .param p1, "deadline"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TT;>;"
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 126
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->cancelled:Z

    if-eqz v1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/InterruptedException;

    const-string v2, "Operation interrupted"

    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    .line 131
    :try_start_1
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1, p1}, Ljava/util/concurrent/locks/Condition;->awaitUntil(Ljava/util/Date;)Z

    move-result v0

    .line 136
    .local v0, "success":Z
    :goto_0
    iget-boolean v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->cancelled:Z

    if-eqz v1, :cond_2

    .line 137
    new-instance v1, Ljava/lang/InterruptedException;

    const-string v2, "Operation interrupted"

    invoke-direct {v1, v2}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v0    # "success":Z
    :cond_1
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    const/4 v0, 0x1

    .restart local v0    # "success":Z
    goto :goto_0

    .line 141
    :cond_2
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TT;>;"
    const/4 v0, 0x1

    .line 60
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 62
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->completed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 73
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return v0

    .line 65
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->completed:Z

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->cancelled:Z

    .line 67
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_1

    .line 68
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v1}, Lorg/apache/http/concurrent/FutureCallback;->cancelled()V

    .line 70
    :cond_1
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 4
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
    .line 87
    .local p0, "this":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TT;>;"
    const-wide/16 v2, 0x0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/http/pool/PoolEntryFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "ex":Ljava/util/concurrent/TimeoutException;
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
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
    .line 96
    .local p0, "this":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TT;>;"
    const-string v1, "Time unit"

    invoke-static {p3, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 99
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->completed:Z

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v2, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_0
    return-object v1

    .line 102
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/http/pool/PoolEntryFuture;->getPoolEntry(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->result:Ljava/lang/Object;

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->completed:Z

    .line 104
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    iget-object v2, p0, Lorg/apache/http/pool/PoolEntryFuture;->result:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lorg/apache/http/concurrent/FutureCallback;->completed(Ljava/lang/Object;)V

    .line 107
    :cond_1
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->result:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    iget-object v2, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/io/IOException;
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->completed:Z

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->result:Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->callback:Lorg/apache/http/concurrent/FutureCallback;

    invoke-interface {v1, v0}, Lorg/apache/http/concurrent/FutureCallback;->failed(Ljava/lang/Exception;)V

    .line 114
    :cond_2
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method protected abstract getPoolEntry(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TT;>;"
    iget-boolean v0, p0, Lorg/apache/http/pool/PoolEntryFuture;->cancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TT;>;"
    iget-boolean v0, p0, Lorg/apache/http/pool/PoolEntryFuture;->completed:Z

    return v0
.end method

.method public wakeup()V
    .locals 2

    .prologue
    .line 147
    .local p0, "this":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TT;>;"
    iget-object v0, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 149
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/pool/PoolEntryFuture;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 153
    return-void

    .line 151
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/http/pool/PoolEntryFuture;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
