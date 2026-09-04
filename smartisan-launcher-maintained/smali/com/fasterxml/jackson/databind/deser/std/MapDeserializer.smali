.class public Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;
.source "MapDeserializer.java"

.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
.implements Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;


.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferring;,
        Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;>;",
        "Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;",
        "Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;"
    }
.end annotation


.field private static final serialVersionUID:J = 0x1L


.field protected _delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _hasDefaultCreator:Z

.field protected _ignorableProperties:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final _keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

.field protected final _mapType:Lcom/fasterxml/jackson/databind/JavaType;

.field protected _propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

.field protected _standardStringKey:Z

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


.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
    .locals 2
    .param p1, "mapType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "valueInstantiator"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .param p3, "keyDeser"    # Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .param p5, "valueTypeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 100
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 101
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 102
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 103
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 104
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 105
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    .line 106
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 107
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 108
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_isStdKeyDeser(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_standardStringKey:Z

    .line 109
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;

    .prologue
    .line 117
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 118
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 119
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 120
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 121
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 122
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 123
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 124
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 125
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    .line 127
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/Set;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/Set;

    .line 129
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_standardStringKey:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_standardStringKey:Z

    .line 130
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Ljava/util/Set;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
    .param p2, "keyDeser"    # Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .param p4, "valueTypeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p3, "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .local p5, "ignorable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 138
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 139
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 140
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 141
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 142
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 143
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 144
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 145
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    .line 146
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/Set;

    .line 148
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_isStdKeyDeser(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_standardStringKey:Z

    .line 149
    return-void
.end method

.method private handleUnresolvedReference(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;)V
    .locals 2
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "accumulator"    # Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "reference"    # Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 605
    if-nez p2, :cond_0

    .line 606
    const-string v1, "Unresolved forward reference but no identity info."

    invoke-static {p1, v1, p4}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v1

    throw v1

    .line 608
    :cond_0
    invoke-virtual {p2, p4, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->handleUnresolvedReference(Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;

    move-result-object v0

    .line 609
    .local v0, "referring":Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->getRoid()Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->appendReferring(Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;)V

    .line 610
    return-void
.end method


.method public _deserializeUsingCreator(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Map;
    .locals 13
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
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
    const/4 v12, 0x0

    .line 528
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 530
    .local v2, "creator":Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
    invoke-virtual {v2, p1, p2, v12}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;

    move-result-object v1

    .line 532
    .local v1, "buffer":Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 533
    .local v10, "valueDes":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 536
    .local v8, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartObjectToken()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 537
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, "key":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_7

    .line 545
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    .line 546
    .local v7, "t":Lcom/fasterxml/jackson/core/JsonToken;
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/Set;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/Set;

    invoke-interface {v11, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 547
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 544
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 538
    .end local v4    # "key":Ljava/lang/String;
    .end local v7    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_1
    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p1, v11}, Lcom/fasterxml/jackson/core/JsonParser;->hasToken(Lcom/fasterxml/jackson/core/JsonToken;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 539
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 541
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "key":Ljava/lang/String;
    goto :goto_0

    .line 551
    .restart local v7    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_3
    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v5

    .line 552
    .local v5, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v5, :cond_4

    .line 554
    invoke-virtual {v5, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v5, v11}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 555
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 558
    :try_start_0
    invoke-virtual {v2, p2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .local v6, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, v6}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_readAndBind(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V

    .line 592
    .end local v5    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v6    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v7    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_2
    return-object v6

    .line 559
    .restart local v5    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v7    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :catch_0
    move-exception v3

    .line 560
    .local v3, "e":Ljava/lang/Exception;
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {p0, v3, v11, v4}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v12

    .line 561
    goto :goto_2

    .line 569
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

    invoke-virtual {v11, v4, p2}, Lcom/fasterxml/jackson/databind/KeyDeserializer;->deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 573
    .local v0, "actualKey":Ljava/lang/Object;
    :try_start_1
    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v11, :cond_5

    .line 574
    invoke-virtual {v10, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 584
    .local v9, "value":Ljava/lang/Object;
    :goto_3
    invoke-virtual {v1, v0, v9}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferMapProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 575
    .end local v9    # "value":Ljava/lang/Object;
    :cond_5
    if-nez v8, :cond_6

    .line 576
    :try_start_2
    invoke-virtual {v10, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v9

    .restart local v9    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 578
    .end local v9    # "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v10, p1, p2, v8}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    .restart local v9    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 580
    .end local v9    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v3

    .line 581
    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {p0, v3, v11, v4}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v12

    .line 582
    goto :goto_2

    .line 589
    .end local v0    # "actualKey":Ljava/lang/Object;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v7    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_7
    :try_start_3
    invoke-virtual {v2, p2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v6, v11

    goto :goto_2

    .line 590
    :catch_2
    move-exception v3

    .line 591
    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {p0, v3, v11, v4}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v12

    .line 592
    goto :goto_2
.end method

.method protected final _isStdKeyDeser(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;)Z
    .locals 4
    .param p1, "mapType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "keyDeser"    # Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .prologue
    const/4 v2, 0x1

    .line 175
    if-nez p2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v2

    .line 178
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 179
    .local v0, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 183
    .local v1, "rawKeyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/String;

    if-eq v1, v3, :cond_2

    const-class v3, Ljava/lang/Object;

    if-ne v1, v3, :cond_3

    :cond_2
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->isDefaultKeyDeserializer(Lcom/fasterxml/jackson/databind/KeyDeserializer;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final _readAndBind(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V
    .locals 16
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 411
    .local v4, "keyDes":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 412
    .local v12, "valueDes":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 414
    .local v9, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    const/4 v7, 0x0

    .line 415
    .local v7, "referringAccumulator":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object v13

    if-eqz v13, :cond_1

    const/4 v10, 0x1

    .line 416
    .local v10, "useObjectId":Z
    :goto_0
    if-eqz v10, :cond_0

    .line 417
    new-instance v7, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;

    .end local v7    # "referringAccumulator":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v13

    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-direct {v7, v13, v0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 421
    .restart local v7    # "referringAccumulator":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartObjectToken()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, "keyStr":Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_3

    .line 435
    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lcom/fasterxml/jackson/databind/KeyDeserializer;->deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    .line 437
    .local v3, "key":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    .line 438
    .local v8, "t":Lcom/fasterxml/jackson/core/JsonToken;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/Set;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/Set;

    invoke-interface {v13, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 439
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 434
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 415
    .end local v3    # "key":Ljava/lang/Object;
    .end local v5    # "keyStr":Ljava/lang/String;
    .end local v8    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .end local v10    # "useObjectId":Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 424
    .restart local v10    # "useObjectId":Z
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    .line 425
    .restart local v8    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v13, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v13, :cond_4

    .line 463
    .end local v8    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_3
    return-void

    .line 428
    .restart local v8    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_4
    sget-object v13, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v8, v13, :cond_5

    .line 429
    sget-object v13, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v14, v15}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "keyStr":Ljava/lang/String;
    goto :goto_1

    .line 445
    .restart local v3    # "key":Ljava/lang/Object;
    :cond_6
    :try_start_0
    sget-object v13, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v13, :cond_7

    .line 446
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v11

    .line 452
    .local v11, "value":Ljava/lang/Object;
    :goto_3
    if-eqz v10, :cond_9

    .line 453
    invoke-virtual {v7, v3, v11}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 457
    .end local v11    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 458
    .local v6, "reference":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v3, v6}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->handleUnresolvedReference(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;)V

    goto :goto_2

    .line 447
    .end local v6    # "reference":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    :cond_7
    if-nez v9, :cond_8

    .line 448
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 450
    .end local v11    # "value":Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v12, v0, v1, v9}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v11

    .restart local v11    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 455
    :cond_9
    move-object/from16 v0, p3

    invoke-interface {v0, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 459
    .end local v11    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 460
    .local v2, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1, v5}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected final _readAndBindStringKeyMap(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V
    .locals 12
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 473
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 474
    .local v8, "valueDes":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 475
    .local v5, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    const/4 v3, 0x0

    .line 476
    .local v3, "referringAccumulator":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v6, 0x1

    .line 477
    .local v6, "useObjectId":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 478
    new-instance v3, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;

    .end local v3    # "referringAccumulator":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v3, v10, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 482
    .restart local v3    # "referringAccumulator":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartObjectToken()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 483
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "key":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_3

    .line 496
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 497
    .local v4, "t":Lcom/fasterxml/jackson/core/JsonToken;
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/Set;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/Set;

    invoke-interface {v9, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 498
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 495
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    .end local v6    # "useObjectId":Z
    :cond_1
    move v6, v9

    .line 476
    goto :goto_0

    .line 485
    .restart local v6    # "useObjectId":Z
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 486
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v10, :cond_4

    .line 523
    .end local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_3
    return-void

    .line 489
    .restart local v4    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_4
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v10, :cond_5

    .line 490
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    const/4 v11, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v10, v11, v9}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "key":Ljava/lang/String;
    goto :goto_1

    .line 504
    :cond_6
    :try_start_0
    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v9, :cond_7

    .line 505
    invoke-virtual {v8, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    .line 511
    .local v7, "value":Ljava/lang/Object;
    :goto_3
    if-eqz v6, :cond_9

    .line 512
    invoke-virtual {v3, v1, v7}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 516
    .end local v7    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 517
    .local v2, "reference":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    invoke-direct {p0, p1, v3, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->handleUnresolvedReference(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer$MapReferringAccumulator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;)V

    goto :goto_2

    .line 506
    .end local v2    # "reference":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    :cond_7
    if-nez v5, :cond_8

    .line 507
    :try_start_1
    invoke-virtual {v8, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 509
    .end local v7    # "value":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v8, p1, p2, v5}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 514
    :cond_9
    invoke-interface {p3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 518
    .end local v7    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p3, v1}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 12
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
    .line 235
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 236
    .local v5, "kd":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    if-nez v5, :cond_3

    .line 237
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    invoke-virtual {p1, v11, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v5

    .line 244
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 246
    .local v8, "vd":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz p2, :cond_1

    .line 247
    invoke-virtual {p0, p1, p2, v8}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->findConvertingContentDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v8

    .line 249
    :cond_1
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    .line 250
    .local v9, "vt":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v8, :cond_4

    .line 251
    invoke-virtual {p1, v9, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v8

    .line 255
    :goto_1
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 256
    .local v10, "vtd":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-eqz v10, :cond_2

    .line 257
    invoke-virtual {v10, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v10

    .line 259
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/Set;

    .line 260
    .local v2, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v4

    .line 261
    .local v4, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v4, :cond_6

    if-eqz p2, :cond_6

    .line 262
    invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v6

    .line 263
    .local v6, "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v6, :cond_6

    .line 264
    invoke-virtual {v4, v6}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIgnorals(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v1

    .line 265
    .local v1, "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    if-eqz v1, :cond_6

    .line 266
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForDeserialization()Ljava/util/Set;

    move-result-object v3

    .line 267
    .local v3, "ignoresToAdd":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 268
    if-nez v2, :cond_5

    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 269
    .restart local v2    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 270
    .local v7, "str":Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 239
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .end local v2    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "ignoresToAdd":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .end local v6    # "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "vd":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .end local v9    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v10    # "vtd":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :cond_3
    instance-of v11, v5, Lcom/fasterxml/jackson/databind/deser/ContextualKeyDeserializer;

    if-eqz v11, :cond_0

    .line 240
    check-cast v5, Lcom/fasterxml/jackson/databind/deser/ContextualKeyDeserializer;

    .end local v5    # "kd":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    invoke-interface {v5, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualKeyDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v5

    .restart local v5    # "kd":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    goto :goto_0

    .line 253
    .restart local v8    # "vd":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .restart local v9    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_4
    invoke-virtual {p1, v8, p2, v9}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v8

    goto :goto_1

    .line 268
    .restart local v1    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .restart local v2    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "ignoresToAdd":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .restart local v6    # "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .restart local v10    # "vtd":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :cond_5
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v2, v11

    goto :goto_2

    .line 276
    .end local v1    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .end local v3    # "ignoresToAdd":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "member":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    :cond_6
    invoke-virtual {p0, v5, v10, v8, v2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->withResolved(Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;

    move-result-object v11

    return-object v11
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
    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Map;

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
    .line 27
    check-cast p3, Ljava/util/Map;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Map;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
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
    .line 329
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    if-eqz v2, :cond_0

    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_deserializeUsingCreator(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Map;

    move-result-object v2

    .line 356
    :goto_0
    return-object v2

    .line 332
    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    .line 336
    :cond_1
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_hasDefaultCreator:Z

    if-nez v2, :cond_2

    .line 337
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->getMapClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "no default constructor found"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p2, v2, p1, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    .line 342
    .local v1, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_4

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_4

    .line 344
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v1, v2, :cond_3

    .line 345
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    .line 348
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_deserializeFromEmpty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    goto :goto_0

    .line 350
    :cond_4
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v2, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 351
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_standardStringKey:Z

    if-eqz v2, :cond_5

    .line 352
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_readAndBindStringKeyMap(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V

    move-object v2, v0

    .line 353
    goto :goto_0

    .line 355
    :cond_5
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_readAndBind(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V

    move-object v2, v0

    .line 356
    goto :goto_0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
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
    .line 366
    .local p3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/core/JsonParser;->setCurrentValue(Ljava/lang/Object;)V

    .line 369
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 370
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->getMapClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-object p3, v1

    .line 378
    .end local p3    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_0
    return-object p3

    .line 373
    .restart local p3    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_standardStringKey:Z

    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_readAndBindStringKeyMap(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_readAndBind(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    .locals 1
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "typeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

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
    .line 292
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    return-object v0
.end method

.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final getMapClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValueType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public isCachable()Z
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 5
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDelegate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 209
    .local v1, "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v1, :cond_0

    .line 210
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid delegate-creator definition for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": value instantiator ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 220
    .end local v1    # "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromObjectWith()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    .line 222
    .local v0, "creatorProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-static {p1, v2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->construct(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 224
    .end local v0    # "creatorProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

    invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_isStdKeyDeser(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_standardStringKey:Z

    .line 225
    return-void
.end method

.method public setIgnorableProperties(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "ignorable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .end local p1    # "ignorable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/Set;

    .line 195
    return-void
.end method

.method public setIgnorableProperties([Ljava/lang/String;)V
    .locals 1
    .param p1, "ignorable"    # [Ljava/lang/String;

    .prologue
    .line 188
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/Set;

    .line 190
    return-void

    .line 188
    :cond_1
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    goto :goto_0
.end method

.method protected withResolved(Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/util/Set;)Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
    .locals 6
    .param p1, "keyDeser"    # Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .param p2, "valueTypeDeser"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;"
        }
    .end annotation

    .prologue
    .line 161
    .local p3, "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .local p4, "ignorable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-ne v0, p3, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/Set;

    if-ne v0, p4, :cond_0

    .line 165
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Ljava/util/Set;)V

    move-object p0, v0

    goto :goto_0
.end method

.method protected wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "ref"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 598
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    return-void
.end method
