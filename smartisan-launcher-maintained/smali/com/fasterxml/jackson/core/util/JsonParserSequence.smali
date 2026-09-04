.class public Lcom/fasterxml/jackson/core/util/JsonParserSequence;
.super Lcom/fasterxml/jackson/core/util/JsonParserDelegate;
.source "JsonParserSequence.java"


.field protected final _checkForExistingToken:Z

.field protected _hasToken:Z

.field protected _nextParserIndex:I

.field protected final _parsers:[Lcom/fasterxml/jackson/core/JsonParser;


.method protected constructor <init>(Z[Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 3
    .param p1, "checkForExistingToken"    # Z
    .param p2, "parsers"    # [Lcom/fasterxml/jackson/core/JsonParser;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 68
    aget-object v2, p2, v0

    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 69
    iput-boolean p1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_checkForExistingToken:Z

    .line 70
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->hasCurrentToken()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_hasToken:Z

    .line 71
    iput-object p2, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    .line 72
    iput v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParserIndex:I

    .line 73
    return-void
.end method

.method protected constructor <init>([Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 1
    .param p1, "parsers"    # [Lcom/fasterxml/jackson/core/JsonParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;-><init>(Z[Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 61
    return-void
.end method

.method public static createFlattened(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/util/JsonParserSequence;
    .locals 1
    .param p0, "first"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "second"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->createFlattened(ZLcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    move-result-object v0

    return-object v0
.end method

.method public static createFlattened(ZLcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/util/JsonParserSequence;
    .locals 4
    .param p0, "checkForExistingToken"    # Z
    .param p1, "first"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "second"    # Lcom/fasterxml/jackson/core/JsonParser;

    .prologue
    .line 87
    instance-of v1, p1, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/fasterxml/jackson/core/JsonParser;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;-><init>(Z[Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 102
    .end local p1    # "first":Lcom/fasterxml/jackson/core/JsonParser;
    .end local p2    # "second":Lcom/fasterxml/jackson/core/JsonParser;
    :goto_0
    return-object v1

    .line 91
    .restart local p1    # "first":Lcom/fasterxml/jackson/core/JsonParser;
    .restart local p2    # "second":Lcom/fasterxml/jackson/core/JsonParser;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/core/JsonParser;>;"
    instance-of v1, p1, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-eqz v1, :cond_1

    .line 93
    check-cast p1, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    .end local p1    # "first":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    .line 97
    :goto_1
    instance-of v1, p2, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-eqz v1, :cond_2

    .line 98
    check-cast p2, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    .end local p2    # "second":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    .line 102
    :goto_2
    new-instance v2, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/fasterxml/jackson/core/JsonParser;

    invoke-direct {v2, p0, v1}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;-><init>(Z[Lcom/fasterxml/jackson/core/JsonParser;)V

    move-object v1, v2

    goto :goto_0

    .line 95
    .restart local p1    # "first":Lcom/fasterxml/jackson/core/JsonParser;
    .restart local p2    # "second":Lcom/fasterxml/jackson/core/JsonParser;
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 100
    .end local p1    # "first":Lcom/fasterxml/jackson/core/JsonParser;
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


.method protected addFlattenedActiveParsers(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "listToAddIn":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/core/JsonParser;>;"
    iget v3, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParserIndex:I

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v1, v3

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 119
    iget-object v3, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    aget-object v2, v3, v0

    .line 120
    .local v2, "p":Lcom/fasterxml/jackson/core/JsonParser;
    instance-of v3, v2, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    if-eqz v3, :cond_0

    .line 121
    check-cast v2, Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    .end local v2    # "p":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->addFlattenedActiveParsers(Ljava/util/List;)V

    .line 118
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .restart local v2    # "p":Lcom/fasterxml/jackson/core/JsonParser;
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    .end local v2    # "p":Lcom/fasterxml/jackson/core/JsonParser;
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->switchToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    return-void
.end method

.method public containedParsersCount()I
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v0, v0

    return v0
.end method

.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    if-nez v1, :cond_1

    .line 144
    const/4 v0, 0x0

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_hasToken:Z

    if-eqz v1, :cond_2

    .line 147
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_hasToken:Z

    .line 148
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->currentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 151
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->switchAndReturnNext()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    goto :goto_0
.end method

.method protected switchAndReturnNext()Lcom/fasterxml/jackson/core/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParserIndex:I

    iget-object v2, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 199
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    iget v2, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParserIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParserIndex:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    .line 200
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_checkForExistingToken:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->hasCurrentToken()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 204
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-eqz v0, :cond_0

    goto :goto_0

    .line 208
    .end local v0    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected switchToNext()Z
    .locals 3

    .prologue
    .line 189
    iget v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParserIndex:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_parsers:[Lcom/fasterxml/jackson/core/JsonParser;

    iget v1, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParserIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->_nextParserIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->delegate:Lcom/fasterxml/jackson/core/JsonParser;

    .line 191
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
