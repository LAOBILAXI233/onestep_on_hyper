.class public Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.source "BeanDeserializer.java"

.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;,
        Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;
    }
.end annotation


.field private static final serialVersionUID:J = 0x1L


.field protected transient _nullFromCreator:Ljava/lang/Exception;


.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    .prologue
    .line 65
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Z)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .param p2, "props"    # Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .param p2, "oir"    # Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V

    .line 78
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .param p2, "unwrapper"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Ljava/util/Set;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p2, "ignorableProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Ljava/util/Set;)V

    .line 82
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Z)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .param p2, "ignoreAllUnknown"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Z)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZZ)V
    .locals 0
    .param p1, "builder"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "properties"    # Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
    .param p6, "ignoreAllUnknown"    # Z
    .param p7, "hasViews"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p4, "backRefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;>;"
    .local p5, "ignorableProps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p7}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/Set;ZZ)V

    .line 58
    return-void
.end method

.method private handleUnresolvedReference(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;
    .locals 6
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .param p3, "buffer"    # Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
    .param p4, "reference"    # Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 500
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    move-object v1, p1

    move-object v2, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 502
    .local v0, "referring":Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;->getRoid()Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->appendReferring(Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId$Referring;)V

    .line 503
    return-object v0
.end method

.method private final vanillaDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "t"    # Lcom/fasterxml/jackson/core/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v4, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    .local v0, "bean":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->setCurrentValue(Ljava/lang/Object;)V

    .line 268
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/JsonParser;->hasTokenId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "propName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 272
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    .line 274
    .local v2, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v2, :cond_2

    .line 276
    :try_start_0
    invoke-virtual {v2, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 285
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v3    # "propName":Ljava/lang/String;
    :cond_1
    return-object v0

    .line 277
    .restart local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v3    # "propName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, v0, v3, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_0

    .line 282
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnknownVanilla(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


.method protected _creatorReturnedNullException()Ljava/lang/Exception;
    .locals 2

    .prologue
    .line 950
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_nullFromCreator:Ljava/lang/Exception;

    if-nez v0, :cond_0

    .line 951
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JSON Creator returned null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_nullFromCreator:Ljava/lang/Exception;

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_nullFromCreator:Ljava/lang/Exception;

    return-object v0
.end method

.method protected final _deserializeOther(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "t"    # Lcom/fasterxml/jackson/core/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I

    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 186
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 159
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 161
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromNumber(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 163
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromDouble(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 165
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromEmbedded(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 168
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromBoolean(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 171
    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromNull(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_7
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_vanillaProcessing:Z

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->vanillaDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method protected _deserializeUsingPropertyBased(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 20
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 383
    .local v6, "creator":Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-virtual {v6, v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;

    move-result-object v5

    .line 385
    .local v5, "buffer":Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
    const/16 v16, 0x0

    .line 387
    .local v16, "unknown":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v15

    .line 388
    .local v15, "t":Lcom/fasterxml/jackson/core/JsonToken;
    const/4 v14, 0x0

    .line 389
    .local v14, "referrings":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;>;"
    :goto_0
    sget-object v17, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_c

    .line 390
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v11

    .line 391
    .local v11, "propName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 393
    invoke-virtual {v6, v11}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v7

    .line 394
    .local v7, "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v7, :cond_4

    .line 396
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v7}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_deserializeWithErrorWrapping(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v7, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 398
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 401
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v5}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 405
    .local v4, "bean":Ljava/lang/Object;
    :goto_1
    if-nez v4, :cond_1

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_creatorReturnedNullException()Ljava/lang/Exception;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleInstantiationProblem(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    .line 489
    .end local v4    # "bean":Ljava/lang/Object;
    .end local v7    # "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v11    # "propName":Ljava/lang/String;
    :cond_0
    :goto_2
    return-object v4

    .line 402
    .restart local v7    # "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v11    # "propName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 403
    .local v8, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "bean":Ljava/lang/Object;
    goto :goto_1

    .line 410
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/core/JsonParser;->setCurrentValue(Ljava/lang/Object;)V

    .line 413
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handlePolymorphic(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 416
    :cond_2
    if-eqz v16, :cond_3

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v4, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnknownProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v4

    .line 420
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 425
    .end local v4    # "bean":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v5, v11}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->readIdProperty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 389
    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v15

    goto/16 :goto_0

    .line 429
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v10

    .line 430
    .local v10, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v10, :cond_8

    .line 432
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_deserializeWithErrorWrapping(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v10, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 433
    :catch_1
    move-exception v12

    .line 437
    .local v12, "reference":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v10, v5, v12}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnresolvedReference(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;

    move-result-object v13

    .line 439
    .local v13, "referring":Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;
    if-nez v14, :cond_7

    .line 440
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "referrings":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .restart local v14    # "referrings":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;>;"
    :cond_7
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 447
    .end local v12    # "reference":Lcom/fasterxml/jackson/databind/deser/UnresolvedForwardReference;
    .end local v13    # "referring":Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/Set;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 452
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    .line 454
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v11, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 455
    :catch_2
    move-exception v8

    .line 456
    .restart local v8    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v8, v1, v11, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto/16 :goto_3

    .line 461
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_a
    if-nez v16, :cond_b

    .line 462
    new-instance v16, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    .end local v16    # "unknown":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 464
    .restart local v16    # "unknown":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    :cond_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 465
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_3

    .line 471
    .end local v7    # "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v10    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v11    # "propName":Ljava/lang/String;
    :cond_c
    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v5}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v4

    .line 476
    :goto_4
    if-eqz v14, :cond_d

    .line 477
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;

    .line 478
    .restart local v13    # "referring":Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;
    invoke-virtual {v13, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;->setBean(Ljava/lang/Object;)V

    goto :goto_5

    .line 472
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "referring":Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$BeanReferring;
    :catch_3
    move-exception v8

    .line 473
    .restart local v8    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    .line 474
    const/4 v4, 0x0

    .restart local v4    # "bean":Ljava/lang/Object;
    goto :goto_4

    .line 481
    .end local v4    # "bean":Ljava/lang/Object;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_d
    if-eqz v16, :cond_0

    .line 483
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_e

    .line 484
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handlePolymorphic(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_2

    .line 487
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v4, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnknownProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_2
.end method

.method protected final _deserializeWithErrorWrapping(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "prop"    # Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    :try_start_0
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 515
    :goto_0
    return-object v1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 515
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected _missingToken(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->endOfInputException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method

.method protected asArrayDeserializer()Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertiesInInsertionOrder()[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    .line 122
    .local v0, "props":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;

    invoke-direct {v1, p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    return-object v1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartObjectToken()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_vanillaProcessing:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->vanillaDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 145
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_deserializeOther(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/core/JsonParser;->setCurrentValue(Ljava/lang/Object;)V

    .line 204
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-eqz v4, :cond_0

    .line 205
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    .line 207
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    if-eqz v4, :cond_2

    .line 208
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 248
    .end local p3    # "bean":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-object p3

    .line 210
    .restart local p3    # "bean":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    if-eqz v4, :cond_3

    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 216
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartObjectToken()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 217
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "propName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 228
    :goto_1
    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_needViewProcesing:Z

    if-eqz v4, :cond_5

    .line 229
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;

    move-result-object v3

    .line 230
    .local v3, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_5

    .line 231
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithView(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    .line 222
    .end local v2    # "propName":Ljava/lang/String;
    .end local v3    # "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const/4 v4, 0x5

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/core/JsonParser;->hasTokenId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "propName":Ljava/lang/String;
    goto :goto_1

    .line 235
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 236
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v1

    .line 238
    .local v1, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v1, :cond_6

    .line 240
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p3, v2, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_2

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnknownVanilla(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected deserializeFromNull(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->requiresCustomCodec()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 535
    new-instance v2, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-direct {v2, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 536
    .local v2, "tb":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V

    .line 537
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    .line 538
    .local v1, "p2":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 540
    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_vanillaProcessing:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    invoke-direct {p0, v1, p2, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->vanillaDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;

    move-result-object v0

    .line 542
    .local v0, "ob":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    .line 545
    .end local v0    # "ob":Ljava/lang/Object;
    .end local v1    # "p2":Lcom/fasterxml/jackson/core/JsonParser;
    .end local v2    # "tb":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    :goto_1
    return-object v0

    .line 540
    .restart local v1    # "p2":Lcom/fasterxml/jackson/core/JsonParser;
    .restart local v2    # "tb":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 545
    .end local v1    # "p2":Lcom/fasterxml/jackson/core/JsonParser;
    .end local v2    # "tb":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v3, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x5

    .line 301
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->maySerializeAsObject()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 302
    invoke-virtual {p1, v8}, Lcom/fasterxml/jackson/core/JsonParser;->hasTokenId(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->isValidReferencePropertyName(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 366
    :cond_0
    :goto_0
    return-object v0

    .line 307
    :cond_1
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_nonStandardCreation:Z

    if-eqz v6, :cond_4

    .line 308
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    if-eqz v6, :cond_2

    .line 309
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 311
    :cond_2
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    if-eqz v6, :cond_3

    .line 312
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromObjectUsingNonDefault(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 315
    .local v0, "bean":Ljava/lang/Object;
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-eqz v6, :cond_0

    .line 316
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    goto :goto_0

    .line 332
    .end local v0    # "bean":Ljava/lang/Object;
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v6, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 334
    .restart local v0    # "bean":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->setCurrentValue(Ljava/lang/Object;)V

    .line 335
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->canReadObjectId()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 336
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getObjectId()Ljava/lang/Object;

    move-result-object v2

    .line 337
    .local v2, "id":Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 338
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_handleTypedObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .end local v2    # "id":Ljava/lang/Object;
    :cond_5
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-eqz v6, :cond_6

    .line 342
    invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    .line 344
    :cond_6
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_needViewProcesing:Z

    if-eqz v6, :cond_7

    .line 345
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;

    move-result-object v5

    .line 346
    .local v5, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v5, :cond_7

    .line 347
    invoke-virtual {p0, p1, p2, v0, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithView(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 350
    .end local v5    # "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    invoke-virtual {p1, v8}, Lcom/fasterxml/jackson/core/JsonParser;->hasTokenId(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 351
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, "propName":Ljava/lang/String;
    :cond_8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 354
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v6, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    .line 355
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v3, :cond_9

    .line 357
    :try_start_0
    invoke-virtual {v3, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    goto :goto_0

    .line 358
    :catch_0
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, v0, v4, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_1

    .line 363
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnknownVanilla(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected deserializeUsingPropertyBasedWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 13
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 863
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->start()Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    move-result-object v5

    .line 864
    .local v5, "ext":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 865
    .local v2, "creator":Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    invoke-virtual {v2, p1, p2, v11}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;

    move-result-object v1

    .line 867
    .local v1, "buffer":Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
    new-instance v9, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-direct {v9, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 868
    .local v9, "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V

    .line 870
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    .line 871
    .local v8, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v11, :cond_7

    .line 872
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    .line 873
    .local v7, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 875
    invoke-virtual {v2, v7}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    .line 876
    .local v3, "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v3, :cond_4

    .line 880
    invoke-virtual {v5, p1, p2, v7, v10}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->handlePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 871
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    goto :goto_0

    .line 884
    :cond_1
    invoke-virtual {p0, p1, p2, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_deserializeWithErrorWrapping(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 885
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    .line 888
    :try_start_0
    invoke-virtual {v2, p2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 894
    .local v0, "bean":Ljava/lang/Object;
    :goto_2
    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v11, :cond_2

    .line 895
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 896
    invoke-virtual {v9, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 897
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    goto :goto_2

    .line 889
    .end local v0    # "bean":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 890
    .local v4, "e":Ljava/lang/Exception;
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {p0, v4, v11, v7, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_1

    .line 899
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "bean":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    iget-object v12, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v12

    if-eq v11, v12, :cond_3

    .line 902
    const-string v11, "Can not create polymorphic instances with external type ids"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {p2, v11, v12}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 939
    .end local v0    # "bean":Ljava/lang/Object;
    .end local v3    # "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v7    # "propName":Ljava/lang/String;
    :goto_3
    return-object v10

    .line 905
    .restart local v0    # "bean":Ljava/lang/Object;
    .restart local v3    # "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v7    # "propName":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->complete(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_3

    .line 911
    .end local v0    # "bean":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v1, v7}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->readIdProperty(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 915
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v11, v7}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v6

    .line 916
    .local v6, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v6, :cond_5

    .line 917
    invoke-virtual {v6, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v6, v11}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)V

    goto :goto_1

    .line 921
    :cond_5
    invoke-virtual {v5, p1, p2, v7, v10}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->handlePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 925
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/Set;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/Set;

    invoke-interface {v11, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 926
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {p0, p1, p2, v11, v7}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 930
    :cond_6
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    if-eqz v11, :cond_0

    .line 931
    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    iget-object v12, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    invoke-virtual {v12, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v11, v7, v12}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 937
    .end local v3    # "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v7    # "propName":Ljava/lang/String;
    :cond_7
    :try_start_1
    invoke-virtual {v5, p1, p2, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->complete(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    goto :goto_3

    .line 938
    :catch_1
    move-exception v4

    .line 939
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v4, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_3
.end method

.method protected deserializeUsingPropertyBasedWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 12
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 701
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 702
    .local v2, "creator":Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    invoke-virtual {v2, p1, p2, v10}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;

    move-result-object v1

    .line 704
    .local v1, "buffer":Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
    new-instance v8, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-direct {v8, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 705
    .local v8, "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V

    .line 707
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    .line 708
    .local v7, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v10, :cond_7

    .line 709
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 710
    .local v6, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 712
    invoke-virtual {v2, v6}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    .line 713
    .local v3, "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v3, :cond_2

    .line 715
    invoke-virtual {p0, p1, p2, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_deserializeWithErrorWrapping(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v3, v10}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 716
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    .line 719
    :try_start_0
    invoke-virtual {v2, p2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 724
    .local v0, "bean":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->setCurrentValue(Ljava/lang/Object;)V

    .line 726
    :goto_2
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v10, :cond_0

    .line 727
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 728
    invoke-virtual {v8, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 729
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    goto :goto_2

    .line 720
    .end local v0    # "bean":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 721
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v4, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "bean":Ljava/lang/Object;
    goto :goto_1

    .line 731
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V

    .line 732
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v11

    if-eq v10, v11, :cond_1

    .line 735
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->close()V

    .line 736
    const-string v10, "Can not create polymorphic instances with unwrapped values"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {p2, v10, v11}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 778
    .end local v0    # "bean":Ljava/lang/Object;
    .end local v3    # "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v6    # "propName":Ljava/lang/String;
    :goto_3
    return-object v9

    .line 739
    .restart local v0    # "bean":Ljava/lang/Object;
    .restart local v3    # "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v6    # "propName":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v9, p1, p2, v0, v8}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_3

    .line 744
    .end local v0    # "bean":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1, v6}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->readIdProperty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 708
    :cond_3
    :goto_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    goto :goto_0

    .line 748
    :cond_4
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v10, v6}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v5

    .line 749
    .local v5, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v5, :cond_5

    .line 750
    invoke-virtual {p0, p1, p2, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_deserializeWithErrorWrapping(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v5, v10}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)V

    goto :goto_4

    .line 754
    :cond_5
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/Set;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/Set;

    invoke-interface {v10, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 755
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {p0, p1, p2, v10, v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 758
    :cond_6
    invoke-virtual {v8, v6}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v8, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 761
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    if-eqz v10, :cond_3

    .line 763
    :try_start_1
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    iget-object v11, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    invoke-virtual {v11, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v1, v10, v6, v11}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 764
    :catch_1
    move-exception v4

    .line 765
    .restart local v4    # "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {p0, v4, v10, v6, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_4

    .line 773
    .end local v3    # "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v6    # "propName":Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-virtual {v2, p2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 778
    .restart local v0    # "bean":Ljava/lang/Object;
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v9, p1, p2, v0, v8}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_3

    .line 774
    .end local v0    # "bean":Ljava/lang/Object;
    :catch_2
    move-exception v4

    .line 775
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v4, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    goto :goto_3
.end method

.method protected deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 791
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeUsingPropertyBasedWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 804
    :goto_0
    return-object v0

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 811
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_needViewProcesing:Z

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;

    move-result-object v0

    .line 812
    .local v0, "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->start()Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;

    move-result-object v2

    .line 814
    .local v2, "ext":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    .local v5, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_1
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_7

    .line 815
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 816
    .local v4, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    .line 817
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v6, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    .line 818
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v3, :cond_4

    .line 820
    invoke-virtual {v5}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 821
    invoke-virtual {v2, p1, p2, v4, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->handleTypePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 823
    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->visibleInView(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 824
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 814
    :cond_1
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    goto :goto_1

    .line 811
    .end local v0    # "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ext":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v4    # "propName":Ljava/lang/String;
    .end local v5    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 828
    .restart local v0    # "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "ext":Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
    .restart local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v4    # "propName":Ljava/lang/String;
    .restart local v5    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_3
    :try_start_0
    invoke-virtual {v3, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 829
    :catch_0
    move-exception v1

    .line 830
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, p3, v4, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_2

    .line 835
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/Set;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 836
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 840
    :cond_5
    invoke-virtual {v2, p1, p2, v4, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->handlePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 844
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    if-eqz v6, :cond_6

    .line 846
    :try_start_1
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    invoke-virtual {v6, p1, p2, p3, v4}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 847
    :catch_1
    move-exception v1

    .line 848
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, p3, v4, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_2

    .line 853
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 856
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v4    # "propName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v2, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->complete(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6
.end method

.method protected deserializeWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 596
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v7, :cond_0

    .line 597
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v7, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, p2, v7}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 650
    :goto_0
    return-object v1

    .line 599
    :cond_0
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    if-eqz v7, :cond_1

    .line 600
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeUsingPropertyBasedWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 602
    :cond_1
    new-instance v5, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-direct {v5, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 603
    .local v5, "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V

    .line 604
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v7, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 607
    .local v1, "bean":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonParser;->setCurrentValue(Ljava/lang/Object;)V

    .line 609
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-eqz v7, :cond_2

    .line 610
    invoke-virtual {p0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    .line 612
    :cond_2
    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_needViewProcesing:Z

    if-eqz v7, :cond_4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;

    move-result-object v0

    .line 613
    .local v0, "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Lcom/fasterxml/jackson/core/JsonParser;->hasTokenId(I)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 615
    .local v4, "propName":Ljava/lang/String;
    :goto_2
    if-eqz v4, :cond_9

    .line 616
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 617
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v6, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    .line 618
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v3, :cond_7

    .line 619
    if-eqz v0, :cond_6

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->visibleInView(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 620
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 615
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .end local v0    # "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v4    # "propName":Ljava/lang/String;
    :cond_4
    move-object v0, v6

    .line 612
    goto :goto_1

    .restart local v0    # "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    move-object v4, v6

    .line 613
    goto :goto_2

    .line 624
    .restart local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v4    # "propName":Ljava/lang/String;
    :cond_6
    :try_start_0
    invoke-virtual {v3, p1, p2, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 625
    :catch_0
    move-exception v2

    .line 626
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2, v1, v4, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_3

    .line 631
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/Set;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 632
    invoke-virtual {p0, p1, p2, v1, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 636
    :cond_8
    invoke-virtual {v5, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v5, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 639
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    if-eqz v6, :cond_3

    .line 641
    :try_start_1
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    invoke-virtual {v6, p1, p2, v1, v4}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 642
    :catch_1
    move-exception v2

    .line 643
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {p0, v2, v1, v4, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_3

    .line 648
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_9
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V

    .line 649
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v6, p1, p2, v1, v5}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected deserializeWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 658
    .local v4, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v6, :cond_0

    .line 659
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    .line 661
    :cond_0
    new-instance v5, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-direct {v5, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 662
    .local v5, "tokens":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V

    .line 663
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_needViewProcesing:Z

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;

    move-result-object v0

    .line 664
    .local v0, "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v6, :cond_6

    .line 665
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "propName":Ljava/lang/String;
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v6, v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    .line 667
    .local v2, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 668
    if-eqz v2, :cond_4

    .line 669
    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->visibleInView(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 670
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 664
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    goto :goto_0

    .line 663
    .end local v0    # "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v3    # "propName":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 674
    .restart local v0    # "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v3    # "propName":Ljava/lang/String;
    :cond_3
    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 675
    :catch_0
    move-exception v1

    .line 676
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, p3, v3, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_1

    .line 680
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/Set;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 681
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 685
    :cond_5
    invoke-virtual {v5, v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V

    .line 686
    invoke-virtual {v5, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 688
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    if-eqz v6, :cond_1

    .line 689
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    invoke-virtual {v6, p1, p2, p3, v3}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 692
    .end local v2    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v3    # "propName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V

    .line 693
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;

    invoke-virtual {v6, p1, p2, p3, v5}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;

    .line 694
    return-object p3
.end method

.method protected final deserializeWithView(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    .local p4, "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/JsonParser;->hasTokenId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 559
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 561
    .local v2, "propName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 563
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v1

    .line 564
    .local v1, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v1, :cond_3

    .line 565
    invoke-virtual {v1, p4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->visibleInView(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 566
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 577
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 579
    .end local v1    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v2    # "propName":Ljava/lang/String;
    :cond_1
    return-object p3

    .line 570
    .restart local v1    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v2    # "propName":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0, p3, v2, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_0

    .line 576
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnknownVanilla(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .param p1, "unwrapper"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/NameTransformer;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    if-eq v0, v1, :cond_0

    .line 101
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withBeanProperties(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .locals 1
    .param p1, "props"    # Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    .prologue
    .line 116
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;)V

    return-object v0
.end method

.method public withIgnorableProperties(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "ignorableProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Ljava/util/Set;)V

    return-object v0
.end method

.method public bridge synthetic withIgnorableProperties(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .locals 1
    .param p1, "x0"    # Ljava/util/Set;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->withIgnorableProperties(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
    .locals 1
    .param p1, "oir"    # Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .prologue
    .line 106
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V

    return-object v0
.end method

.method public bridge synthetic withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    move-result-object v0

    return-object v0
.end method
