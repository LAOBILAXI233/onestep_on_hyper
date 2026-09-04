.class public abstract Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "ReferenceTypeDeserializer.java"

.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;


.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<TT;>;",
        "Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;"
    }
.end annotation


.field private static final serialVersionUID:J = 0x1L


.field protected final _fullType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;


.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 0
    .param p1, "fullType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "typeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer<TT;>;"
    .local p3, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 46
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_fullType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 47
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 48
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 49
    return-void
.end method


.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
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
    .line 54
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 55
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v0, :cond_1

    .line 56
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_fullType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getReferencedType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 61
    .local v1, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v1

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-ne v1, v2, :cond_2

    .line 67
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer<TT;>;"
    :goto_1
    return-object p0

    .line 58
    .end local v1    # "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer<TT;>;"
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_fullType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getReferencedType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {p1, v0, p2, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    goto :goto_0

    .line 67
    .restart local v1    # "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->withResolved(Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;

    move-result-object p0

    goto :goto_1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer<TT;>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 103
    .local v0, "contents":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->referenceValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 100
    .end local v0    # "contents":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    invoke-virtual {v1, p1, p2, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "typeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 111
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    .line 112
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-nez v1, :cond_1

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->referenceValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation
.end method

.method public getValueType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;->_fullType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public abstract referenceValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract withResolved(Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/deser/std/ReferenceTypeDeserializer",
            "<TT;>;"
        }
    .end annotation
.end method
