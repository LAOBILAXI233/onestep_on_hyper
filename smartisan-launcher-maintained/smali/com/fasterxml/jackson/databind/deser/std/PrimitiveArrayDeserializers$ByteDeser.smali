.class final Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;
.super Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;
.source "PrimitiveArrayDeserializers.java"


.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ByteDeser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers",
        "<[B>;"
    }
.end annotation


.field private static final serialVersionUID:J = 0x1L


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 277
    const-class v0, [B

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;
    .param p2, "unwrapSingle"    # Ljava/lang/Boolean;

    .prologue
    .line 279
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;-><init>(Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;Ljava/lang/Boolean;)V

    .line 280
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
    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[B

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[B
    .locals 11
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    .line 293
    .local v8, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v10, :cond_0

    .line 294
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v10

    invoke-virtual {p1, v10}, Lcom/fasterxml/jackson/core/JsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v10

    .line 336
    :goto_0
    return-object v10

    .line 297
    :cond_0
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v10, :cond_2

    .line 298
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v7

    .line 299
    .local v7, "ob":Ljava/lang/Object;
    if-nez v7, :cond_1

    const/4 v10, 0x0

    goto :goto_0

    .line 300
    :cond_1
    instance-of v10, v7, [B

    if-eqz v10, :cond_2

    .line 301
    check-cast v7, [B

    .end local v7    # "ob":Ljava/lang/Object;
    check-cast v7, [B

    move-object v10, v7

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z

    move-result v10

    if-nez v10, :cond_3

    .line 305
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;->handleNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getArrayBuilders()Lcom/fasterxml/jackson/databind/util/ArrayBuilders;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->getByteBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;

    move-result-object v1

    .line 308
    .local v1, "builder":Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;->resetAndStart()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 309
    .local v2, "chunk":[B
    const/4 v4, 0x0

    .line 312
    .local v4, "ix":I
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v8, v10, :cond_7

    .line 315
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v8, v10, :cond_4

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v10, :cond_5

    .line 317
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getByteValue()B

    move-result v9

    .line 327
    .local v9, "value":B
    :goto_2
    array-length v10, v2

    if-lt v4, v10, :cond_8

    .line 328
    invoke-virtual {v1, v2, v4}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;->appendCompletedChunk(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, [B

    move-object v2, v0

    .line 329
    const/4 v4, 0x0

    move v5, v4

    .line 331
    .end local v4    # "ix":I
    .local v5, "ix":I
    :goto_3
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "ix":I
    .restart local v4    # "ix":I
    aput-byte v9, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 333
    .end local v9    # "value":B
    :catch_0
    move-exception v3

    .line 334
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;->bufferedSize()I

    move-result v10

    add-int/2addr v10, v4

    invoke-static {v3, v2, v10}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v10

    throw v10

    .line 320
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v10, :cond_6

    .line 321
    const/4 v9, 0x0

    .restart local v9    # "value":B
    goto :goto_2

    .line 323
    .end local v9    # "value":B
    :cond_6
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {p2, v10, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    .line 324
    .local v6, "n":Ljava/lang/Number;
    invoke-virtual {v6}, Ljava/lang/Number;->byteValue()B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .restart local v9    # "value":B
    goto :goto_2

    .line 336
    .end local v6    # "n":Ljava/lang/Number;
    .end local v9    # "value":B
    :cond_7
    invoke-virtual {v1, v2, v4}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;->completeAndClearBuffer(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    goto/16 :goto_0

    .restart local v9    # "value":B
    :cond_8
    move v5, v4

    .end local v4    # "ix":I
    .restart local v5    # "ix":I
    goto :goto_3
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
    .line 271
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;->handleSingleElementUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[B

    move-result-object v0

    return-object v0
.end method

.method protected handleSingleElementUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[B
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 345
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_1

    .line 347
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getByteValue()B

    move-result v2

    .line 356
    .local v2, "value":B
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte v2, v3, v4

    .end local v2    # "value":B
    :goto_1
    return-object v3

    .line 350
    :cond_1
    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v3, :cond_2

    .line 351
    const/4 v3, 0x0

    goto :goto_1

    .line 353
    :cond_2
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v3, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 354
    .local v0, "n":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v2

    .restart local v2    # "value":B
    goto :goto_0
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
    .line 284
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;-><init>(Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$ByteDeser;Ljava/lang/Boolean;)V

    return-object v0
.end method
