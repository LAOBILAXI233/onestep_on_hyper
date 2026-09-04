.class final Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;
.super Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;
.source "PrimitiveArrayDeserializers.java"


.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ShortDeser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers",
        "<[S>;"
    }
.end annotation


.field private static final serialVersionUID:J = 0x1L


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 366
    const-class v0, [S

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;
    .param p2, "unwrapSingle"    # Ljava/lang/Boolean;

    .prologue
    .line 368
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;-><init>(Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;Ljava/lang/Boolean;)V

    .line 369
    return-void
.end method


.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[S

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[S
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z

    move-result v7

    if-nez v7, :cond_0

    .line 380
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;->handleNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [S

    .line 398
    :goto_0
    return-object v7

    .line 382
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getArrayBuilders()Lcom/fasterxml/jackson/databind/util/ArrayBuilders;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->getShortBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;

    move-result-object v1

    .line 383
    .local v1, "builder":Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;->resetAndStart()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    .line 384
    .local v2, "chunk":[S
    const/4 v4, 0x0

    .line 387
    .local v4, "ix":I
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v8, :cond_1

    .line 388
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;->_parseShortPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)S

    move-result v6

    .line 389
    .local v6, "value":S
    array-length v7, v2

    if-lt v4, v7, :cond_2

    .line 390
    invoke-virtual {v1, v2, v4}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;->appendCompletedChunk(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [S

    move-object v2, v0

    .line 391
    const/4 v4, 0x0

    move v5, v4

    .line 393
    .end local v4    # "ix":I
    .local v5, "ix":I
    :goto_2
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ix":I
    .restart local v4    # "ix":I
    aput-short v6, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 395
    .end local v6    # "value":S
    :catch_0
    move-exception v3

    .line 396
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;->bufferedSize()I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v3, v2, v7}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v7

    throw v7

    .line 398
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v1, v2, v4}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;->completeAndClearBuffer(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [S

    goto :goto_0

    .restart local v6    # "value":S
    :cond_2
    move v5, v4

    .end local v4    # "ix":I
    .restart local v5    # "ix":I
    goto :goto_2
.end method

.method protected bridge synthetic handleSingleElementUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;->handleSingleElementUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[S

    move-result-object v0

    return-object v0
.end method

.method protected handleSingleElementUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[S
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;->_parseShortPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)S

    move-result v2

    aput-short v2, v0, v1

    return-object v0
.end method

.method protected withResolved(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;
    .locals 1
    .param p1, "unwrapSingle"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 373
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;-><init>(Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ShortDeser;Ljava/lang/Boolean;)V

    return-object v0
.end method
