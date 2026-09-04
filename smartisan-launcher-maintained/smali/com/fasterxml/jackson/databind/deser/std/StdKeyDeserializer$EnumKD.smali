.class final Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;
.super Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.source "StdKeyDeserializer.java"


.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EnumKD"
.end annotation


.field private static final serialVersionUID:J = 0x1L


.field protected final _byNameResolver:Lcom/fasterxml/jackson/databind/util/EnumResolver;

.field protected _byToStringResolver:Lcom/fasterxml/jackson/databind/util/EnumResolver;

.field protected final _factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;


.method protected constructor <init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
    .locals 2
    .param p1, "er"    # Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .param p2, "factory"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    .line 345
    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer;-><init>(ILjava/lang/Class;)V

    .line 346
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_byNameResolver:Lcom/fasterxml/jackson/databind/util/EnumResolver;

    .line 347
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 348
    return-void
.end method

.method private _getToStringResolver(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_byToStringResolver:Lcom/fasterxml/jackson/databind/util/EnumResolver;

    .line 374
    .local v0, "res":Lcom/fasterxml/jackson/databind/util/EnumResolver;
    if-nez v0, :cond_0

    .line 375
    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_byNameResolver:Lcom/fasterxml/jackson/databind/util/EnumResolver;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUnsafeUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    .line 378
    monitor-exit p0

    .line 380
    :cond_0
    return-object v0

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


.method public _parse(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v3, :cond_1

    .line 355
    :try_start_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->call1(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 368
    :cond_0
    :goto_0
    return-object v1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;)V

    .line 360
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_getToStringResolver(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v2

    .line 362
    .local v2, "res":Lcom/fasterxml/jackson/databind/util/EnumResolver;
    :goto_1
    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->findEnum(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    .line 363
    .local v1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 364
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_keyClass:Ljava/lang/Class;

    const-string v4, "not one of values excepted for Enum class: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->getEnumIds()Ljava/util/Collection;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p2, v3, p1, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdKey(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 360
    .end local v1    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v2    # "res":Lcom/fasterxml/jackson/databind/util/EnumResolver;
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializer$EnumKD;->_byNameResolver:Lcom/fasterxml/jackson/databind/util/EnumResolver;

    goto :goto_1
.end method
