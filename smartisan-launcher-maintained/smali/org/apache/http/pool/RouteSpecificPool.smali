.class abstract Lorg/apache/http/pool/RouteSpecificPool;
.super Ljava/lang/Object;
.source "RouteSpecificPool.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "E:",
        "Lorg/apache/http/pool/PoolEntry",
        "<TT;TC;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field private final available:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final leased:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final pending:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/apache/http/pool/PoolEntryFuture",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final route:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    .local p1, "route":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/http/pool/RouteSpecificPool;->route:Ljava/lang/Object;

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    .line 52
    return-void
.end method


.method public add(Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TE;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    .local p1, "conn":Ljava/lang/Object;, "TC;"
    invoke-virtual {p0, p1}, Lorg/apache/http/pool/RouteSpecificPool;->createEntry(Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;

    move-result-object v0

    .line 131
    .local v0, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    iget-object v1, p0, Lorg/apache/http/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    return-object v0
.end method

.method protected abstract createEntry(Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TE;"
        }
    .end annotation
.end method

.method public free(Lorg/apache/http/pool/PoolEntry;Z)V
    .locals 4
    .param p2, "reusable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    .local p1, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    const-string v1, "Pool entry"

    invoke-static {p1, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    iget-object v1, p0, Lorg/apache/http/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 123
    .local v0, "found":Z
    const-string v1, "Entry %s has not been leased from this pool"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 124
    if-eqz p2, :cond_0

    .line 125
    iget-object v1, p0, Lorg/apache/http/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 127
    :cond_0
    return-void
.end method

.method public getAllocatedCount()I
    .locals 2

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lorg/apache/http/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getAvailableCount()I
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getFree(Ljava/lang/Object;)Lorg/apache/http/pool/PoolEntry;
    .locals 3
    .param p1, "state"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v2, p0, Lorg/apache/http/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 78
    if-eqz p1, :cond_1

    .line 79
    iget-object v2, p0, Lorg/apache/http/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/pool/PoolEntry;

    .line 82
    .local v0, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 84
    iget-object v2, p0, Lorg/apache/http/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v0    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    return-object v0

    .line 89
    :cond_1
    iget-object v2, p0, Lorg/apache/http/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 90
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/pool/PoolEntry;

    .line 92
    .restart local v0    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 94
    iget-object v2, p0, Lorg/apache/http/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v0    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastUsed()Lorg/apache/http/pool/PoolEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/pool/PoolEntry;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLeasedCount()I
    .locals 1

    .prologue
    .line 61
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getPendingCount()I
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public final getRoute()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->route:Ljava/lang/Object;

    return-object v0
.end method

.method public nextPending()Lorg/apache/http/pool/PoolEntryFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/http/pool/PoolEntryFuture",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/pool/PoolEntryFuture;

    return-object v0
.end method

.method public queue(Lorg/apache/http/pool/PoolEntryFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/PoolEntryFuture",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    .local p1, "future":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TE;>;"
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public remove(Lorg/apache/http/pool/PoolEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    .local p1, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    const-string v0, "Pool entry"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 155
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    iget-object v3, p0, Lorg/apache/http/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/pool/PoolEntryFuture;

    .line 156
    .local v1, "future":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TE;>;"
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/apache/http/pool/PoolEntryFuture;->cancel(Z)Z

    goto :goto_0

    .line 158
    .end local v1    # "future":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TE;>;"
    :cond_0
    iget-object v3, p0, Lorg/apache/http/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 159
    iget-object v3, p0, Lorg/apache/http/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/pool/PoolEntry;

    .line 160
    .local v0, "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->close()V

    goto :goto_1

    .line 162
    .end local v0    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :cond_1
    iget-object v3, p0, Lorg/apache/http/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 163
    iget-object v3, p0, Lorg/apache/http/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/pool/PoolEntry;

    .line 164
    .restart local v0    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->close()V

    goto :goto_2

    .line 166
    .end local v0    # "entry":Lorg/apache/http/pool/PoolEntry;, "TE;"
    :cond_2
    iget-object v3, p0, Lorg/apache/http/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 167
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v1, "[route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Lorg/apache/http/pool/RouteSpecificPool;->route:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "][leased: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget-object v1, p0, Lorg/apache/http/pool/RouteSpecificPool;->leased:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, "][available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Lorg/apache/http/pool/RouteSpecificPool;->available:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "][pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v1, p0, Lorg/apache/http/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unqueue(Lorg/apache/http/pool/PoolEntryFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/PoolEntryFuture",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lorg/apache/http/pool/RouteSpecificPool;, "Lorg/apache/http/pool/RouteSpecificPool<TT;TC;TE;>;"
    .local p1, "future":Lorg/apache/http/pool/PoolEntryFuture;, "Lorg/apache/http/pool/PoolEntryFuture<TE;>;"
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/apache/http/pool/RouteSpecificPool;->pending:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
