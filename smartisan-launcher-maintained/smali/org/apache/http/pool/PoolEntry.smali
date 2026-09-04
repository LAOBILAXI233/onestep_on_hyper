.class public abstract Lorg/apache/http/pool/PoolEntry;
.super Ljava/lang/Object;
.source "PoolEntry.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


.field private final conn:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field private final created:J

.field private expiry:J
    .annotation build Lorg/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final route:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile state:Ljava/lang/Object;

.field private updated:J
    .annotation build Lorg/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final validUnit:J


.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TC;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lorg/apache/http/pool/PoolEntry;, "Lorg/apache/http/pool/PoolEntry<TT;TC;>;"
    .local p2, "route":Ljava/lang/Object;, "TT;"
    .local p3, "conn":Ljava/lang/Object;, "TC;"
    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/http/pool/PoolEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p4, "timeToLive"    # J
    .param p6, "tunit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TC;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/http/pool/PoolEntry;, "Lorg/apache/http/pool/PoolEntry<TT;TC;>;"
    .local p2, "route":Ljava/lang/Object;, "TT;"
    .local p3, "conn":Ljava/lang/Object;, "TC;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "Route"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string v0, "Connection"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    const-string v0, "Time unit"

    invoke-static {p6, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lorg/apache/http/pool/PoolEntry;->id:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lorg/apache/http/pool/PoolEntry;->route:Ljava/lang/Object;

    .line 86
    iput-object p3, p0, Lorg/apache/http/pool/PoolEntry;->conn:Ljava/lang/Object;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/http/pool/PoolEntry;->created:J

    .line 88
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    .line 89
    iget-wide v0, p0, Lorg/apache/http/pool/PoolEntry;->created:J

    invoke-virtual {p6, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/http/pool/PoolEntry;->validUnit:J

    .line 93
    :goto_0
    iget-wide v0, p0, Lorg/apache/http/pool/PoolEntry;->validUnit:J

    iput-wide v0, p0, Lorg/apache/http/pool/PoolEntry;->expiry:J

    .line 94
    return-void

    .line 91
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/apache/http/pool/PoolEntry;->validUnit:J

    goto :goto_0
.end method


.method public abstract close()V
.end method

.method public getConnection()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lorg/apache/http/pool/PoolEntry;, "Lorg/apache/http/pool/PoolEntry<TT;TC;>;"
    iget-object v0, p0, Lorg/apache/http/pool/PoolEntry;->conn:Ljava/lang/Object;

    return-object v0
.end method

.method public getCreated()J
    .locals 2

    .prologue
    .line 120
    .local p0, "this":Lorg/apache/http/pool/PoolEntry;, "Lorg/apache/http/pool/PoolEntry<TT;TC;>;"
    iget-wide v0, p0, Lorg/apache/http/pool/PoolEntry;->created:J

    return-wide v0
.end method

.method public declared-synchronized getExpiry()J
    .locals 2

    .prologue
    .line 140
    .local p0, "this":Lorg/apache/http/pool/PoolEntry;, "Lorg/apache/http/pool/PoolEntry<TT;TC;>;"
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/http/pool/PoolEntry;->expiry:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lorg/apache/http/pool/PoolEntry;, "Lorg/apache/http/pool/PoolEntry<TT;TC;>;"
    iget-object v0, p0, Lorg/apache/http/pool/PoolEntry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getRoute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/http/pool/PoolEntry;, "Lorg/apache/http/pool/PoolEntry<TT;TC;>;"
    iget-object v0, p0, Lorg/apache/http/pool/PoolEntry;->route:Ljava/lang/Object;

    return-object v0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lorg/apache/http/pool/PoolEntry;, "Lorg/apache/http/pool/PoolEntry<TT;TC;>;"
    iget-object v0, p0, Lorg/apache/http/pool/PoolEntry;->state:Ljava/lang/Object;

    return-object v0
.end method

.method public declared-synchronized getUpdated()J
    .locals 2

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/http/pool/PoolEntry;, "Lorg/apache/http/pool/PoolEntry<TT;TC;>;"
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/http/pool/PoolEntry;->updated:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getValidUnit()J
    .locals 2

    .prologue
    .line 124
    .local p0, "this":Lorg/apache/http/pool/PoolEntry;, "Lorg/apache/http/pool/PoolEntry<TT;TC;>;"
    iget-wide v0, p0, Lorg/apache/http/pool/PoolEntry;->validUnit:J

    return-wide v0
.end method

.method public abstract isClosed()Z
.end method

.method public declared-synchronized isExpired(J)Z
    .locals 3
    .param p1, "now"    # J

    .prologue
    .line 156
    .local p0, "this":Lorg/apache/http/pool/PoolEntry;, "Lorg/apache/http/pool/PoolEntry<TT;TC;>;"
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/http/pool/PoolEntry;->expiry:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/Object;

    .prologue
    .line 132
    .local p0, "this":Lorg/apache/http/pool/PoolEntry;, "Lorg/apache/http/pool/PoolEntry<TT;TC;>;"
    iput-object p1, p0, Lorg/apache/http/pool/PoolEntry;->state:Ljava/lang/Object;

    .line 133
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/http/pool/PoolEntry;, "Lorg/apache/http/pool/PoolEntry<TT;TC;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "[id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntry;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "][route:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntry;->route:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, "][state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-object v1, p0, Lorg/apache/http/pool/PoolEntry;->state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized updateExpiry(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "tunit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 144
    .local p0, "this":Lorg/apache/http/pool/PoolEntry;, "Lorg/apache/http/pool/PoolEntry<TT;TC;>;"
    monitor-enter p0

    :try_start_0
    const-string v2, "Time unit"

    invoke-static {p3, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/http/pool/PoolEntry;->updated:J

    .line 147
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 148
    iget-wide v2, p0, Lorg/apache/http/pool/PoolEntry;->updated:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 152
    .local v0, "newExpiry":J
    :goto_0
    iget-wide v2, p0, Lorg/apache/http/pool/PoolEntry;->validUnit:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/http/pool/PoolEntry;->expiry:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 150
    .end local v0    # "newExpiry":J
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .restart local v0    # "newExpiry":J
    goto :goto_0

    .line 144
    .end local v0    # "newExpiry":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
