.class public Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;
.super Ljava/lang/Object;
.source "ConfigOverrides.java"

.implements Ljava/io/Serializable;


.field private static final serialVersionUID:J = 0x1L


.field protected _overrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    .line 19
    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "overrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    .line 23
    return-void
.end method


.method protected _newMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public copy()Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;
    .locals 5

    .prologue
    .line 27
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 28
    new-instance v3, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    invoke-direct {v3}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;-><init>()V

    .line 34
    :goto_0
    return-object v3

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_newMap()Ljava/util/Map;

    move-result-object v2

    .line 31
    .local v2, "newOverrides":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;>;"
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;->copy()Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 34
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;>;"
    :cond_1
    new-instance v3, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    invoke-direct {v3, v2}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public findOrCreateOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_newMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    .line 49
    .local v0, "override":Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    if-nez v0, :cond_1

    .line 50
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    .end local v0    # "override":Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;-><init>()V

    .line 51
    .restart local v0    # "override":Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    return-object v0
.end method

.method public findOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->_overrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;

    goto :goto_0
.end method
