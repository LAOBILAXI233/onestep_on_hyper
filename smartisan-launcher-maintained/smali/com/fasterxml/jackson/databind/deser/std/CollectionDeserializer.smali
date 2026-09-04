.class public Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;
.source "CollectionDeserializer.java"

.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;


.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferring;,
        Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase",
        "<",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/Object;",
        ">;>;",
        "Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;"
    }
.end annotation


.field private static final serialVersionUID:J = -0x1L


.field protected final _collectionType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected final _delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _unwrapSingle:Ljava/lang/Boolean;

.field protected final _valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

.field protected final _valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;


.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V
    .locals 7
    .param p1, "collectionType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "valueTypeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .param p4, "valueInstantiator"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Boolean;)V

    .line 84
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "collectionType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "valueTypeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .param p4, "valueInstantiator"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .param p6, "unwrapSingle"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p2, "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .local p5, "delegateDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 96
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_collectionType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 97
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 98
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 99
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 100
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 101
    iput-object p6, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_unwrapSingle:Ljava/lang/Boolean;

    .line 102
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;

    .prologue
    .line 110
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_collectionType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 111
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_collectionType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_collectionType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 112
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 113
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 114
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 115
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 116
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_unwrapSingle:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_unwrapSingle:Ljava/lang/Boolean;

    .line 117
    return-void
.end method


.method public bridge synthetic createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;
    .locals 9
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "delegateDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 176
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 177
    .local v1, "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v1, :cond_0

    .line 178
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid delegate-creator definition for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_collectionType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": value instantiator ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 182
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 187
    .end local v1    # "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    const-class v6, Ljava/util/Collection;

    sget-object v7, Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;

    invoke-virtual {p0, p1, p2, v6, v7}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->findFormatFeature(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonFormat$Feature;)Ljava/lang/Boolean;

    move-result-object v2

    .line 190
    .local v2, "unwrapSingle":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 193
    .local v3, "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-virtual {p0, p1, p2, v3}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->findConvertingContentDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 194
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_collectionType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 195
    .local v5, "vt":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v3, :cond_3

    .line 196
    invoke-virtual {p1, v5, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 201
    :goto_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 202
    .local v4, "valueTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-eqz v4, :cond_2

    .line 203
    invoke-virtual {v4, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v4

    .line 205
    :cond_2
    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->withResolved(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;

    move-result-object v6

    return-object v6

    .line 198
    .end local v4    # "valueTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :cond_3
    invoke-virtual {p1, v3, p2, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

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
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "x2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 26
    check-cast p3, Ljava/util/Collection;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Collection;
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 249
    :goto_0
    return-object v1

    .line 243
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 246
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    goto :goto_0

    .line 249
    .end local v0    # "str":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z

    move-result v9

    if-nez v9, :cond_1

    .line 259
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->handleNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p3

    .line 301
    .end local p3    # "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_0
    return-object p3

    .line 262
    .restart local p3    # "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/core/JsonParser;->setCurrentValue(Ljava/lang/Object;)V

    .line 264
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 265
    .local v7, "valueDes":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 266
    .local v5, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object v9

    if-nez v9, :cond_2

    const/4 v3, 0x0

    .line 271
    .local v3, "referringAccumulator":Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .local v4, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v9, :cond_0

    .line 274
    :try_start_0
    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v9, :cond_3

    .line 275
    invoke-virtual {v7, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    .line 281
    .local v6, "value":Ljava/lang/Object;
    :goto_1
    if-eqz v3, :cond_5

    .line 282
    invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 286
    .end local v6    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 287
    .local v2, "reference":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    if-nez v3, :cond_7

    .line 288
    const-string v9, "Unresolved forward reference but no identity info"

    invoke-static {p1, v9, v2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v9

    throw v9

    .line 266
    .end local v2    # "reference":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    .end local v3    # "referringAccumulator":Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_2
    new-instance v3, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_collectionType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v9

    invoke-direct {v3, v9, p3}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    goto :goto_0

    .line 276
    .restart local v3    # "referringAccumulator":Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_3
    if-nez v5, :cond_4

    .line 277
    :try_start_1
    invoke-virtual {v7, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 279
    .end local v6    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v7, p1, p2, v5}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 284
    :cond_5
    invoke-interface {p3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 293
    .end local v6    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_6

    sget-object v9, Lcom/fasterxml/jackson/databind/DeserializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v9}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v9

    if-eqz v9, :cond_8

    :cond_6
    const/4 v8, 0x1

    .line 295
    .local v8, "wrap":Z
    :goto_2
    if-nez v8, :cond_9

    instance-of v9, v0, Ljava/lang/RuntimeException;

    if-eqz v9, :cond_9

    .line 296
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 291
    .end local v8    # "wrap":Z
    .restart local v2    # "reference":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    :cond_7
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer$CollectionReferringAccumulator;->handleUnresolvedReference(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;

    move-result-object v1

    .line 292
    .local v1, "ref":Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->getRoid()Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->appendReferring(Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;)V

    goto :goto_0

    .line 294
    .end local v1    # "ref":Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
    .end local v2    # "reference":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v8, 0x0

    goto :goto_2

    .line 298
    .restart local v8    # "wrap":Z
    :cond_9
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-static {v0, p3, v9}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v9

    throw v9
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
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
    .line 310
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

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
    .line 221
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    return-object v0
.end method

.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_collectionType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method protected final handleNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    .local p3, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_unwrapSingle:Ljava/lang/Boolean;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_unwrapSingle:Ljava/lang/Boolean;

    if-nez v6, :cond_1

    sget-object v6, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 327
    .local v0, "canWrap":Z
    :goto_0
    if-nez v0, :cond_2

    .line 328
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_collectionType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p2, v6, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    .line 349
    :goto_1
    return-object v6

    .line 324
    .end local v0    # "canWrap":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 330
    .restart local v0    # "canWrap":Z
    :cond_2
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 331
    .local v5, "valueDes":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 332
    .local v3, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 337
    .local v2, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :try_start_0
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v6, :cond_3

    .line 338
    invoke-virtual {v5, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 348
    .local v4, "value":Ljava/lang/Object;
    :goto_2
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v6, p3

    .line 349
    goto :goto_1

    .line 339
    .end local v4    # "value":Ljava/lang/Object;
    :cond_3
    if-nez v3, :cond_4

    .line 340
    :try_start_1
    invoke-virtual {v5, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 342
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v5, p1, p2, v3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .restart local v4    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 344
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Ljava/lang/Exception;
    const-class v6, Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-static {v1, v6, v7}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v6

    throw v6
.end method

.method public isCachable()Z
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected withResolved(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;
    .locals 1
    .param p3, "vtd"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 145
    .local p1, "dd":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .local p2, "vd":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_unwrapSingle:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->withResolved(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;

    move-result-object v0

    return-object v0
.end method

.method protected withResolved(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;
    .locals 7
    .param p3, "vtd"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .param p4, "unwrapSingle"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "dd":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .local p2, "vd":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_unwrapSingle:Ljava/lang/Boolean;

    if-ne v0, p4, :cond_0

    .line 133
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_collectionType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Boolean;)V

    move-object p0, v0

    goto :goto_0
.end method
