.class public Lcom/fasterxml/jackson/databind/SequenceWriter;
.super Ljava/lang/Object;
.source "SequenceWriter.java"

.implements Lcom/fasterxml/jackson/core/Versioned;
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


.field protected final _cfgCloseCloseable:Z

.field protected final _cfgFlush:Z

.field protected final _closeGenerator:Z

.field protected _closed:Z

.field protected final _config:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field protected _dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

.field protected final _generator:Lcom/fasterxml/jackson/core/JsonGenerator;

.field protected _openArray:Z

.field protected final _provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

.field protected final _rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;


.method public constructor <init>(Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;Lcom/fasterxml/jackson/core/JsonGenerator;ZLcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;)V
    .locals 2
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    .param p2, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "closeGenerator"    # Z
    .param p4, "prefetch"    # Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .line 83
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 84
    iput-boolean p3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closeGenerator:Z

    .line 85
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->getValueSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 86
    invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/ObjectWriter$Prefetch;->getTypeSerializer()Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 88
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 89
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    .line 90
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgCloseCloseable:Z

    .line 93
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->emptyForRootValues()Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 94
    return-void
.end method

.method private final _findAndAddDynamic(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 6
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 318
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-nez v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddRootValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 324
    .local v0, "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    :goto_0
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 325
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v1

    .line 321
    .end local v0    # "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    new-instance v2, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->addSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .restart local v0    # "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    goto :goto_0
.end method

.method private final _findAndAddDynamic(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    if-nez v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->findAndAddRootValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializerProvider;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .line 311
    .local v0, "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    :goto_0
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->map:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    .line 312
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    return-object v1

    .line 308
    .end local v0    # "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    new-instance v2, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_typeSerializer:Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ser/impl/TypeWrappedSerializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;

    move-result-object v0

    .restart local v0    # "result":Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap$SerializerAndMapResult;
    goto :goto_0
.end method


.method protected _writeCloseableValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    move-object v2, p1

    check-cast v2, Ljava/io/Closeable;

    .line 251
    .local v2, "toClose":Ljava/io/Closeable;
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 252
    .local v0, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 254
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 255
    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_findAndAddDynamic(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 259
    .end local v3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v6, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 260
    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    if-eqz v4, :cond_1

    .line 261
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 263
    :cond_1
    move-object v1, v2

    .line 264
    .local v1, "tmpToClose":Ljava/io/Closeable;
    const/4 v2, 0x0

    .line 265
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    if-eqz v2, :cond_2

    .line 269
    :try_start_1
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    :cond_2
    :goto_0
    return-object p0

    .line 267
    .end local v0    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v1    # "tmpToClose":Ljava/io/Closeable;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_3

    .line 269
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 270
    :cond_3
    :goto_1
    throw v4

    .restart local v0    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v1    # "tmpToClose":Ljava/io/Closeable;
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v0    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v1    # "tmpToClose":Ljava/io/Closeable;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method protected _writeCloseableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    move-object v2, p1

    check-cast v2, Ljava/io/Closeable;

    .line 281
    .local v2, "toClose":Ljava/io/Closeable;
    :try_start_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 282
    .local v0, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 283
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 285
    :cond_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v3, v4, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 286
    iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    if-eqz v3, :cond_1

    .line 287
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 289
    :cond_1
    move-object v1, v2

    .line 290
    .local v1, "tmpToClose":Ljava/io/Closeable;
    const/4 v2, 0x0

    .line 291
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    if-eqz v2, :cond_2

    .line 295
    :try_start_1
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 299
    :cond_2
    :goto_0
    return-object p0

    .line 293
    .end local v0    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v1    # "tmpToClose":Ljava/io/Closeable;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_3

    .line 295
    :try_start_2
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 296
    :cond_3
    :goto_1
    throw v3

    .restart local v0    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v1    # "tmpToClose":Ljava/io/Closeable;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v0    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v1    # "tmpToClose":Ljava/io/Closeable;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closed:Z

    if-nez v0, :cond_1

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closed:Z

    .line 231
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_openArray:Z

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_openArray:Z

    .line 233
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 235
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closeGenerator:Z

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 239
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_closed:Z

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 224
    :cond_0
    return-void
.end method

.method public init(Z)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 1
    .param p1, "wrapInArray"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_openArray:Z

    .line 102
    :cond_0
    return-object p0
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 133
    if-nez p1, :cond_1

    .line 134
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v2, v3, v4}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 153
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SequenceWriter;
    :cond_0
    :goto_0
    return-object p0

    .line 138
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SequenceWriter;
    :cond_1
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgCloseCloseable:Z

    if-eqz v2, :cond_2

    instance-of v2, p1, Ljava/io/Closeable;

    if-eqz v2, :cond_2

    .line 139
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_writeCloseableValue(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object p0

    goto :goto_0

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_rootSerializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 142
    .local v0, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v0, :cond_3

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 144
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 145
    if-nez v0, :cond_3

    .line 146
    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_findAndAddDynamic(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 149
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v2, v3, p1, v4, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 150
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    if-eqz v2, :cond_0

    .line 151
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    goto :goto_0
.end method

.method public write(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    if-nez p1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 188
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/SequenceWriter;
    :cond_0
    :goto_0
    return-object p0

    .line 172
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/SequenceWriter;
    :cond_1
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgCloseCloseable:Z

    if-eqz v1, :cond_2

    instance-of v1, p1, Ljava/io/Closeable;

    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_writeCloseableValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    move-result-object p0

    goto :goto_0

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_dynamicSerializers:Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ser/impl/PropertySerializerMap;->serializerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 181
    .local v0, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v0, :cond_3

    .line 182
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->_findAndAddDynamic(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_provider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 185
    iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_cfgFlush:Z

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/SequenceWriter;->_generator:Lcom/fasterxml/jackson/core/JsonGenerator;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    goto :goto_0
.end method

.method public writeAll(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/SequenceWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 214
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/SequenceWriter;->write(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    goto :goto_0

    .line 216
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method public writeAll(Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection",
            "<*>;>(TC;)",
            "Lcom/fasterxml/jackson/databind/SequenceWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "container":Ljava/util/Collection;, "TC;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 203
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/SequenceWriter;->write(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    goto :goto_0

    .line 205
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-object p0
.end method

.method public writeAll([Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;
    .locals 3
    .param p1, "value"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 194
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/SequenceWriter;->write(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/SequenceWriter;

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    return-object p0
.end method
