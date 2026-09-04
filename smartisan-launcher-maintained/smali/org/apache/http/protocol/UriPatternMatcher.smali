.class public Lorg/apache/http/protocol/UriPatternMatcher;
.super Ljava/lang/Object;
.source "UriPatternMatcher.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/apache/http/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/http/protocol/UriPatternMatcher;, "Lorg/apache/http/protocol/UriPatternMatcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    .line 61
    return-void
.end method


.method public declared-synchronized getObjects()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lorg/apache/http/protocol/UriPatternMatcher;, "Lorg/apache/http/protocol/UriPatternMatcher<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->map:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lookup(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/http/protocol/UriPatternMatcher;, "Lorg/apache/http/protocol/UriPatternMatcher<TT;>;"
    monitor-enter p0

    :try_start_0
    const-string v4, "Request path"

    invoke-static {p1, v4}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    iget-object v4, p0, Lorg/apache/http/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 124
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_2

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "bestMatch":Ljava/lang/String;
    iget-object v4, p0, Lorg/apache/http/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 128
    .local v3, "pattern":Ljava/lang/String;
    invoke-virtual {p0, v3, p1}, Lorg/apache/http/protocol/UriPatternMatcher;->matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    :cond_1
    iget-object v4, p0, Lorg/apache/http/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 134
    move-object v0, v3

    goto :goto_0

    .line 139
    .end local v0    # "bestMatch":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "pattern":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return-object v2

    .line 121
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method protected matchUriRequestPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lorg/apache/http/protocol/UriPatternMatcher;, "Lorg/apache/http/protocol/UriPatternMatcher<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 151
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    :goto_0
    return v1

    :cond_0
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "*"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method public declared-synchronized register(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/http/protocol/UriPatternMatcher;, "Lorg/apache/http/protocol/UriPatternMatcher<TT;>;"
    .local p2, "obj":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    const-string v0, "URI request pattern"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHandlers(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lorg/apache/http/protocol/UriPatternMatcher;, "Lorg/apache/http/protocol/UriPatternMatcher<TT;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    monitor-enter p0

    :try_start_0
    const-string v0, "Map of handlers"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 93
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setObjects(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/apache/http/protocol/UriPatternMatcher;, "Lorg/apache/http/protocol/UriPatternMatcher<TT;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    monitor-enter p0

    :try_start_0
    const-string v0, "Map of handlers"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 103
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    .local p0, "this":Lorg/apache/http/protocol/UriPatternMatcher;, "Lorg/apache/http/protocol/UriPatternMatcher<TT;>;"
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized unregister(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 80
    .local p0, "this":Lorg/apache/http/protocol/UriPatternMatcher;, "Lorg/apache/http/protocol/UriPatternMatcher<TT;>;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 84
    :goto_0
    monitor-exit p0

    return-void

    .line 83
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/protocol/UriPatternMatcher;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
