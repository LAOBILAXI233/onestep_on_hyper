.class public Lcom/fasterxml/jackson/databind/node/ObjectNode;
.super Lcom/fasterxml/jackson/databind/node/ContainerNode;
.source "ObjectNode.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/node/ContainerNode",
        "<",
        "Lcom/fasterxml/jackson/databind/node/ObjectNode;",
        ">;"
    }
.end annotation


.field protected final _children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V
    .locals 1
    .param p1, "nc"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;Ljava/util/Map;)V
    .locals 0
    .param p1, "nc"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "kids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/node/ContainerNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 33
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    .line 34
    return-void
.end method


.method protected _at(Lcom/fasterxml/jackson/core/JsonPointer;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "ptr"    # Lcom/fasterxml/jackson/core/JsonPointer;

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonPointer;->getMatchingProperty()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method protected _childrenEqual(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Z
    .locals 2
    .param p1, "other"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .prologue
    .line 825
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected _put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 861
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    return-object p0
.end method

.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->deepCopy()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 6

    .prologue
    .line 49
    new-instance v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_nodeFactory:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;-><init>(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)V

    .line 51
    .local v2, "ret":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 52
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    iget-object v4, v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonNode;->deepCopy()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 54
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :cond_0
    return-object v2
.end method

.method public elements()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 812
    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    .line 817
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 813
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_0

    .line 814
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v1, :cond_0

    .line 815
    check-cast p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_childrenEqual(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Z

    move-result v0

    goto :goto_0
.end method

.method public equals(Ljava/util/Comparator;Lcom/fasterxml/jackson/databind/JsonNode;)Z
    .locals 9
    .param p2, "o"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    const/4 v8, 0x0

    .line 164
    instance-of v7, p2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-nez v7, :cond_0

    move v7, v8

    .line 182
    :goto_0
    return v7

    :cond_0
    move-object v5, p2

    .line 167
    check-cast v5, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 168
    .local v5, "other":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    .line 169
    .local v3, "m1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    iget-object v4, v5, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    .line 171
    .local v4, "m2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .line 172
    .local v2, "len":I
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v7

    if-eq v7, v2, :cond_1

    move v7, v8

    .line 173
    goto :goto_0

    .line 176
    :cond_1
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 177
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 178
    .local v6, "v2":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v7, p1, v6}, Lcom/fasterxml/jackson/databind/JsonNode;->equals(Ljava/util/Comparator;Lcom/fasterxml/jackson/databind/JsonNode;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_3
    move v7, v8

    .line 179
    goto :goto_0

    .line 182
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local v6    # "v2":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public fieldNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public fields()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :goto_0
    return-object p0

    .line 246
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 247
    .local v2, "value":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v2, :cond_0

    .line 248
    check-cast v2, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .end local v2    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    move-object p0, v2

    goto :goto_0

    .line 251
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 258
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 259
    if-nez p2, :cond_0

    .line 260
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .restart local p2    # "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 268
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :cond_2
    return-object p2
.end method

.method public findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 195
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 203
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :goto_0
    return-object v3

    .line 198
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    .line 199
    .local v2, "value":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 200
    goto :goto_0

    .line 203
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local v2    # "value":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 210
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    if-nez p2, :cond_0

    .line 212
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .restart local p2    # "foundSoFar":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 219
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :cond_2
    return-object p2
.end method

.method public findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    .local p2, "foundSoFar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 226
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    if-nez p2, :cond_0

    .line 228
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "foundSoFar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .restart local p2    # "foundSoFar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/databind/JsonNode;->findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    .line 236
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :cond_2
    return-object p2
.end method

.method public bridge synthetic get(I)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->OBJECT:Lcom/fasterxml/jackson/databind/node/JsonNodeType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z
    .locals 1
    .param p1, "serializers"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic path(I)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->path(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic path(Ljava/lang/String;)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public path(I)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 106
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 113
    .local v0, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v0, :cond_0

    .line 116
    .end local v0    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_0
    return-object v0

    .restart local v0    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 474
    if-nez p2, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p2

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public put(Ljava/lang/String;D)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # D

    .prologue
    .line 739
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # F

    .prologue
    .line 719
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # I

    .prologue
    .line 669
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # J

    .prologue
    .line 693
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Boolean;

    .prologue
    .line 789
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Double;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Double;

    .prologue
    .line 749
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Float;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Float;

    .prologue
    .line 729
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(F)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Integer;

    .prologue
    .line 679
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Long;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Long;

    .prologue
    .line 709
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Short;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Short;

    .prologue
    .line 655
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(S)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 769
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/math/BigDecimal;

    .prologue
    .line 759
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;S)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # S

    .prologue
    .line 645
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->numberNode(S)Lcom/fasterxml/jackson/databind/node/NumericNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # Z

    .prologue
    .line 779
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;[B)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "v"    # [B

    .prologue
    .line 799
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;

    move-result-object v0

    goto :goto_0
.end method

.method public putAll(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "other"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->setAll(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonNode;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->setAll(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    return-object v0
.end method

.method public putArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    .line 594
    .local v0, "n":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 595
    return-object v0
.end method

.method public putNull(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 635
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    return-object p0
.end method

.method public putObject(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 611
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    .line 612
    .local v0, "n":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 613
    return-object v0
.end method

.method public putPOJO(Ljava/lang/String;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "pojo"    # Ljava/lang/Object;

    .prologue
    .line 620
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public putRawValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/util/RawValue;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "raw"    # Lcom/fasterxml/jackson/databind/util/RawValue;

    .prologue
    .line 627
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->rawValueNode(Lcom/fasterxml/jackson/databind/util/RawValue;)Lcom/fasterxml/jackson/databind/node/ValueNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public remove(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;"
        }
    .end annotation

    .prologue
    .line 501
    .local p1, "fieldNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 502
    return-object p0
.end method

.method public bridge synthetic removeAll()Lcom/fasterxml/jackson/databind/node/ContainerNode;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->removeAll()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public removeAll()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 515
    return-object p0
.end method

.method public replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 417
    if-nez p2, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p2

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    return-object v0
.end method

.method public retain(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "fieldNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 559
    return-object p0
.end method

.method public varargs retain([Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .param p1, "fieldNames"    # [Ljava/lang/String;

    .prologue
    .line 571
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->retain(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 5
    .param p1, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p2, :cond_2

    sget-object v4, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    .line 288
    .local v2, "trimEmptyArray":Z
    :goto_0
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject(Ljava/lang/Object;)V

    .line 289
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 295
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;

    .line 300
    .local v3, "value":Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 303
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1

    .line 286
    .end local v0    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "trimEmptyArray":Z
    .end local v3    # "value":Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 306
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "trimEmptyArray":Z
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 307
    return-void
.end method

.method public serializeWithType(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V
    .locals 5
    .param p1, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p3, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    if-eqz p2, :cond_2

    sget-object v4, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    .line 317
    .local v2, "trimEmptyArray":Z
    :goto_0
    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypePrefixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 318
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 319
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;

    .line 324
    .local v3, "value":Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
    if-eqz v2, :cond_1

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 328
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/node/BaseJsonNode;->serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_1

    .line 315
    .end local v0    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "trimEmptyArray":Z
    .end local v3    # "value":Lcom/fasterxml/jackson/databind/node/BaseJsonNode;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 331
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "trimEmptyArray":Z
    :cond_3
    invoke-virtual {p3, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->writeTypeSuffixForObject(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 332
    return-void
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/fasterxml/jackson/databind/JsonNode;

    .prologue
    .line 358
    if-nez p2, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object p2

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    return-object p0
.end method

.method public setAll(Lcom/fasterxml/jackson/databind/node/ObjectNode;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2
    .param p1, "other"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    iget-object v1, p1, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 400
    return-object p0
.end method

.method public setAll(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonNode;"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 378
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 379
    .local v2, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    if-nez v2, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v2

    .line 382
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 384
    .end local v0    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Lcom/fasterxml/jackson/databind/JsonNode;>;"
    .end local v2    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_1
    return-object p0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 837
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 838
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, "count":I
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 841
    .local v1, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    if-lez v0, :cond_0

    .line 842
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 845
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/fasterxml/jackson/databind/node/TextNode;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 846
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 847
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JsonNode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 849
    .end local v1    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    :cond_1
    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic with(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->with(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public with(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 5
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 131
    .local v0, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v0, :cond_1

    .line 132
    instance-of v2, v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    if-eqz v2, :cond_0

    .line 133
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 141
    .end local v0    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_0
    return-object v0

    .line 135
    .restart local v0    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has value that is not of type ObjectNode (but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v1

    .line 140
    .local v1, "result":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 141
    goto :goto_0
.end method

.method public bridge synthetic withArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->withArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public withArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 5
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 147
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 148
    .local v0, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    if-eqz v0, :cond_1

    .line 149
    instance-of v2, v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    if-eqz v2, :cond_0

    .line 150
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ArrayNode;

    .line 158
    .end local v0    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :goto_0
    return-object v0

    .line 152
    .restart local v0    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' has value that is not of type ArrayNode (but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v1

    .line 157
    .local v1, "result":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 158
    goto :goto_0
.end method

.method public without(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    return-object p0
.end method

.method public without(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/node/ObjectNode;"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "fieldNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/ObjectNode;->_children:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 450
    return-object p0
.end method
