.class public Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.source "BeanAsArrayDeserializer.java"


.field private static final serialVersionUID:J = 0x1L


.field protected final _delegate:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

.field protected final _orderedProperties:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;


.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 0
    .param p1, "delegate"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .param p2, "ordered"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;)V

    .line 48
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_delegate:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    .line 49
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_orderedProperties:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 50
    return-void
.end method


.method protected _deserializeFromNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 6
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    const-string v4, "Can not deserialize a POJO (of type %s) from non-Array representation (token: %s): type/property designed to be serialized as JSON Array"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    aput-object v3, v5, v0

    move-object v0, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected _deserializeNonVanilla(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 12
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_nonStandardCreation:Z

    if-eqz v7, :cond_1

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->deserializeFromObjectUsingNonDefault(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 258
    :cond_0
    :goto_0
    return-object v1

    .line 215
    :cond_1
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v7, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 217
    .local v1, "bean":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonParser;->setCurrentValue(Ljava/lang/Object;)V

    .line 218
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-eqz v7, :cond_2

    .line 219
    invoke-virtual {p0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    .line 221
    :cond_2
    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_needViewProcesing:Z

    if-eqz v7, :cond_4

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;

    move-result-object v0

    .line 222
    .local v0, "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_orderedProperties:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 223
    .local v6, "props":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v3, 0x0

    .line 224
    .local v3, "i":I
    array-length v5, v6

    .line 226
    .local v5, "propCount":I
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v8, :cond_0

    .line 229
    if-ne v3, v5, :cond_5

    .line 248
    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_ignoreAllUnknown:Z

    if-nez v7, :cond_3

    .line 249
    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v8, "Unexpected JSON values; expected at most %d properties (in JSON Array)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p2, p1, v7, v8, v9}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 257
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_3

    goto :goto_0

    .line 221
    .end local v0    # "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "i":I
    .end local v5    # "propCount":I
    .end local v6    # "props":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 232
    .restart local v0    # "activeView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "i":I
    .restart local v5    # "propCount":I
    .restart local v6    # "props":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_5
    aget-object v4, v6, v3

    .line 233
    .local v4, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    add-int/lit8 v3, v3, 0x1

    .line 234
    if-eqz v4, :cond_7

    .line 235
    if-eqz v0, :cond_6

    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->visibleInView(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 237
    :cond_6
    :try_start_0
    invoke-virtual {v4, p1, p2, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 238
    :catch_0
    move-exception v2

    .line 239
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v2, v1, v7, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_2

    .line 245
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2
.end method

.method protected final _deserializeUsingPropertyBased(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 16
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 274
    .local v4, "creator":Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1, v12}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;

    move-result-object v3

    .line 276
    .local v3, "buffer":Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_orderedProperties:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 277
    .local v11, "props":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    array-length v9, v11

    .line 278
    .local v9, "propCount":I
    const/4 v7, 0x0

    .line 279
    .local v7, "i":I
    const/4 v2, 0x0

    .line 281
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v12

    sget-object v13, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v12, v13, :cond_5

    .line 282
    if-ge v7, v9, :cond_1

    aget-object v8, v11, v7

    .line 283
    .local v8, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :goto_1
    if-nez v8, :cond_2

    .line 284
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 281
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 282
    .end local v8    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 288
    .restart local v8    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_2
    if-eqz v2, :cond_3

    .line 290
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 291
    :catch_0
    move-exception v6

    .line 292
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v2, v12, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_2

    .line 296
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v10

    .line 298
    .local v10, "propName":Ljava/lang/String;
    invoke-virtual {v4, v10}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v5

    .line 299
    .local v5, "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v5, :cond_4

    .line 301
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v5, v0, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v3, v5, v12}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 303
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 309
    .local v2, "bean":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/JsonParser;->setCurrentValue(Ljava/lang/Object;)V

    .line 312
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v13

    if-eq v12, v13, :cond_0

    .line 317
    const-string v12, "Can not support implicit polymorphic deserialization for POJOs-as-Arrays style: nominal type %s, actual type %s"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 304
    .end local v2    # "bean":Ljava/lang/Object;
    :catch_1
    move-exception v6

    .line 305
    .restart local v6    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v12, v10, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto/16 :goto_2

    .line 325
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {v3, v10}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->readIdProperty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 329
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v3, v8, v12}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 333
    .end local v5    # "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v8    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v10    # "propName":Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_6

    .line 335
    :try_start_2
    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 340
    :cond_6
    :goto_3
    return-object v2

    .line 336
    :catch_2
    move-exception v6

    .line 337
    .restart local v6    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3
.end method

.method protected asArrayDeserializer()Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .locals 0

    .prologue
    .line 82
    return-object p0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 11
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z

    move-result v6

    if-nez v6, :cond_1

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_deserializeFromNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    :cond_0
    :goto_0
    return-object v0

    .line 99
    :cond_1
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_vanillaProcessing:Z

    if-nez v6, :cond_2

    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_deserializeNonVanilla(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_2
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v6, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "bean":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->setCurrentValue(Ljava/lang/Object;)V

    .line 106
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_orderedProperties:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 107
    .local v5, "props":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v2, 0x0

    .line 108
    .local v2, "i":I
    array-length v4, v5

    .line 110
    .local v4, "propCount":I
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v6, v7, :cond_0

    .line 113
    if-ne v2, v4, :cond_4

    .line 129
    iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_ignoreAllUnknown:Z

    if-nez v6, :cond_3

    .line 130
    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v7, "Unexpected JSON values; expected at most %d properties (in JSON Array)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p2, p1, v6, v7, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 138
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_3

    goto :goto_0

    .line 116
    :cond_4
    aget-object v3, v5, v2

    .line 117
    .local v3, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v3, :cond_5

    .line 119
    :try_start_0
    invoke-virtual {v3, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 127
    goto :goto_1

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v1, v0, v6, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_2

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "bean"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/core/JsonParser;->setCurrentValue(Ljava/lang/Object;)V

    .line 151
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;

    if-eqz v5, :cond_0

    .line 152
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    .line 154
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_orderedProperties:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 155
    .local v4, "props":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v1, 0x0

    .line 156
    .local v1, "i":I
    array-length v3, v4

    .line 158
    .local v3, "propCount":I
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_1

    .line 188
    :goto_1
    return-object p3

    .line 161
    :cond_1
    if-ne v1, v3, :cond_3

    .line 178
    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_ignoreAllUnknown:Z

    if-nez v5, :cond_2

    .line 179
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v6, "Unexpected JSON values; expected at most %d properties (in JSON Array)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p2, p1, v5, v6, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 187
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 164
    :cond_3
    aget-object v2, v4, v1

    .line 165
    .local v2, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v2, :cond_4

    .line 167
    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 175
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, p3, v5, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    goto :goto_2

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    goto :goto_2
.end method

.method public deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_deserializeFromNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
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
    .line 59
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_delegate:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public withBeanProperties(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .locals 3
    .param p1, "props"    # Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    .prologue
    .line 76
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_delegate:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->withBeanProperties(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_orderedProperties:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    return-object v0
.end method

.method public withIgnorableProperties(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "ignorableProps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_delegate:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->withIgnorableProperties(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_orderedProperties:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    return-object v0
.end method

.method public withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
    .locals 3
    .param p1, "oir"    # Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    .prologue
    .line 64
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_delegate:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;->_orderedProperties:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    return-object v0
.end method
