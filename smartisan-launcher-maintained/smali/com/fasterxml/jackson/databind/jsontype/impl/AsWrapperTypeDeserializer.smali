.class public Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;
.source "AsWrapperTypeDeserializer.java"

.implements Ljava/io/Serializable;


.field private static final serialVersionUID:J = 0x1L


.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "bt"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "idRes"    # Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
    .param p3, "typePropertyName"    # Ljava/lang/String;
    .param p4, "typeIdVisible"    # Z
    .param p5, "defaultImpl"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLcom/fasterxml/jackson/databind/JavaType;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    .line 37
    return-void
.end method


.method protected _deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 85
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->canReadTypeId()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 86
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTypeId()Ljava/lang/Object;

    move-result-object v3

    .line 87
    .local v3, "typeId":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 88
    invoke-virtual {p0, p1, p2, v3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_deserializeWithNativeTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 127
    .end local v3    # "typeId":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v4

    .line 92
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 93
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v5, :cond_4

    .line 95
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v6, :cond_2

    .line 96
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "need JSON String that contains type id (for subtype of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->baseTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v5, v6, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "typeId":Ljava/lang/String;
    invoke-virtual {p0, p2, v3}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 105
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 108
    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_typeIdVisible:Z

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 110
    new-instance v2, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v8}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;Z)V

    .line 111
    .local v2, "tb":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V

    .line 112
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->clearCurrentToken()V

    .line 117
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v5

    invoke-static {v8, v5, p1}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->createFlattened(ZLcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/util/JsonParserSequence;

    move-result-object p1

    .line 118
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 121
    .end local v2    # "tb":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    :cond_3
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    .line 123
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v6, :cond_0

    .line 124
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v6, "expected closing END_OBJECT after type information and deserialized value"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v5, v6, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v3    # "typeId":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v5, :cond_2

    .line 100
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "need JSON Object to contain As.WRAPPER_OBJECT type information for class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->baseTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v5, v6, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public deserializeTypedFromAny(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeTypedFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeTypedFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserializeTypedFromScalar(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 1
    .param p1, "prop"    # Lcom/fasterxml/jackson/databind/BeanProperty;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;

    if-ne p1, v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsWrapperTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_OBJECT:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    return-object v0
.end method
