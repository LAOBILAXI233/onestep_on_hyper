.class public Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;
.source "ObjectArrayDeserializer.java"

.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;


.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase",
        "<[",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;"
    }
.end annotation


.field private static final serialVersionUID:J = 0x1L


.field protected final _arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;

.field protected final _elementClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected _elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

.field protected final _untyped:Z

.field protected final _unwrapSingle:Ljava/lang/Boolean;


.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;
    .param p3, "elemTypeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .param p4, "unwrapSingle"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "elemDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 89
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;

    .line 90
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    .line 91
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_untyped:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_untyped:Z

    .line 93
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 94
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 95
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_unwrapSingle:Ljava/lang/Boolean;

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
    .locals 2
    .param p1, "arrayType"    # Lcom/fasterxml/jackson/databind/type/ArrayType;
    .param p3, "elemTypeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "elemDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 76
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;

    .line 77
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    .line 78
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_untyped:Z

    .line 79
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 80
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_unwrapSingle:Ljava/lang/Boolean;

    .line 82
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 6
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 128
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->findFormatFeature(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object v2

    .line 131
    .local v2, "unwrapSingle":Ljava/lang/Boolean;
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->findConvertingContentDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 132
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 133
    .local v3, "vt":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v0, :cond_1

    .line 134
    invoke-virtual {p1, v3, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 139
    .local v1, "elemTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v1

    .line 142
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->withResolved(Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;

    move-result-object v4

    return-object v4

    .line 136
    .end local v1    # "elemTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :cond_1
    invoke-virtual {p1, v0, p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    goto :goto_0
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
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Object;
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z

    move-result v9

    if-nez v9, :cond_0

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->handleNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Object;

    move-result-object v5

    .line 218
    :goto_0
    return-object v5

    .line 182
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->leaseObjectBuffer()Lcom/fasterxml/jackson/databind/util/ObjectBuffer;

    move-result-object v0

    .line 183
    .local v0, "buffer":Lcom/fasterxml/jackson/databind/util/ObjectBuffer;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;

    move-result-object v1

    .line 184
    .local v1, "chunk":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 186
    .local v3, "ix":I
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 189
    .local v7, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    .local v6, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v6, v9, :cond_3

    .line 193
    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v9, :cond_1

    .line 194
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v9, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v8

    .line 200
    .local v8, "value":Ljava/lang/Object;
    :goto_2
    array-length v9, v1

    if-lt v3, v9, :cond_5

    .line 201
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .line 202
    const/4 v3, 0x0

    move v4, v3

    .line 204
    .end local v3    # "ix":I
    .local v4, "ix":I
    :goto_3
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "ix":I
    .restart local v3    # "ix":I
    aput-object v8, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 206
    .end local v6    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .end local v8    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->bufferedSize()I

    move-result v9

    add-int/2addr v9, v3

    invoke-static {v2, v1, v9}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v9

    throw v9

    .line 195
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_1
    if-nez v7, :cond_2

    .line 196
    :try_start_1
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v9, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 198
    .end local v8    # "value":Ljava/lang/Object;
    :cond_2
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v9, p1, p2, v7}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .restart local v8    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 212
    .end local v8    # "value":Ljava/lang/Object;
    :cond_3
    iget-boolean v9, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_untyped:Z

    if-eqz v9, :cond_4

    .line 213
    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    .line 217
    .local v5, "result":[Ljava/lang/Object;
    :goto_4
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->returnObjectBuffer(Lcom/fasterxml/jackson/databind/util/ObjectBuffer;)V

    goto :goto_0

    .line 215
    .end local v5    # "result":[Ljava/lang/Object;
    :cond_4
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v3, v9}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "result":[Ljava/lang/Object;
    goto :goto_4

    .end local v5    # "result":[Ljava/lang/Object;
    .restart local v8    # "value":Ljava/lang/Object;
    :cond_5
    move v4, v3

    .end local v3    # "ix":I
    .restart local v4    # "ix":I
    goto :goto_3
.end method

.method protected deserializeFromBase64(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Byte;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/JsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B

    move-result-object v0

    .line 244
    .local v0, "b":[B
    array-length v4, v0

    new-array v3, v4, [Ljava/lang/Byte;

    .line 245
    .local v3, "result":[Ljava/lang/Byte;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 246
    aget-byte v4, v0, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-object v3
.end method

.method public bridge synthetic deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)[Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "typeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getContentDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    return-object v0
.end method

.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method protected handleNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 255
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 257
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    .line 259
    const/4 v5, 0x0

    .line 296
    .end local v2    # "str":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 264
    :cond_0
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_unwrapSingle:Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_unwrapSingle:Ljava/lang/Boolean;

    if-nez v7, :cond_2

    sget-object v7, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v0, v5

    .line 267
    .local v0, "canWrap":Z
    :goto_1
    if-nez v0, :cond_4

    .line 269
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 270
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v5, :cond_3

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    const-class v6, Ljava/lang/Byte;

    if-ne v5, v6, :cond_3

    .line 273
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->deserializeFromBase64(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Byte;

    move-result-object v5

    goto :goto_0

    .end local v0    # "canWrap":Z
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_2
    move v0, v6

    .line 264
    goto :goto_1

    .line 275
    .restart local v0    # "canWrap":Z
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_3
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p2, v5, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    goto :goto_0

    .line 277
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 280
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v7, :cond_5

    .line 281
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v7, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    .line 290
    .local v4, "value":Ljava/lang/Object;
    :goto_2
    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_untyped:Z

    if-eqz v7, :cond_7

    .line 291
    new-array v1, v5, [Ljava/lang/Object;

    .line 295
    .local v1, "result":[Ljava/lang/Object;
    :goto_3
    aput-object v4, v1, v6

    move-object v5, v1

    .line 296
    goto :goto_0

    .line 282
    .end local v1    # "result":[Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_5
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-nez v7, :cond_6

    .line 283
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v7, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 285
    .end local v4    # "value":Ljava/lang/Object;
    :cond_6
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    invoke-virtual {v7, p1, p2, v8}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 293
    :cond_7
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, [Ljava/lang/Object;

    .restart local v1    # "result":[Ljava/lang/Object;
    goto :goto_3
.end method

.method public isCachable()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public withDeserializer(Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;
    .locals 1
    .param p1, "elemTypeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "elemDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_unwrapSingle:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->withResolved(Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public withResolved(Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;
    .locals 1
    .param p1, "elemTypeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .param p3, "unwrapSingle"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "elemDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_unwrapSingle:Ljava/lang/Boolean;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-ne p1, v0, :cond_0

    .line 119
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Ljava/lang/Boolean;)V

    move-object p0, v0

    goto :goto_0
.end method
