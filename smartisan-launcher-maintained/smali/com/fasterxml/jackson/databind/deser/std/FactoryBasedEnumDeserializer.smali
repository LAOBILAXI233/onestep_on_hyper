.class Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "FactoryBasedEnumDeserializer.java"

.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;"
    }
.end annotation


.field private static final serialVersionUID:J = 0x1L


.field protected final _creatorProps:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

.field protected final _deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

.field protected final _hasArgs:Z

.field protected final _inputType:Lcom/fasterxml/jackson/databind/JavaType;

.field private transient _propCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

.field protected final _valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;


.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
    .locals 1
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 81
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_inputType:Lcom/fasterxml/jackson/databind/JavaType;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_inputType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 82
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 83
    iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_hasArgs:Z

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_hasArgs:Z

    .line 84
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 85
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_creatorProps:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_creatorProps:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 87
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
    .locals 2
    .param p2, "f"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 70
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_hasArgs:Z

    .line 72
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_inputType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 73
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 74
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 75
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_creatorProps:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
    .locals 2
    .param p2, "f"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p3, "paramType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "valueInstantiator"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .param p5, "creatorProps"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;",
            "[",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V

    .line 55
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_hasArgs:Z

    .line 58
    const-class v1, Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p3, v0

    .end local p3    # "paramType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_inputType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 59
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 60
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    .line 61
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_creatorProps:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 62
    return-void
.end method

.method private throwOrReturnThrowable(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    :goto_0
    instance-of v1, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 198
    :cond_0
    instance-of v1, p1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 199
    check-cast p1, Ljava/lang/Error;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 201
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_1
    if-eqz p2, :cond_2

    sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 204
    .local v0, "wrap":Z
    :goto_1
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_5

    .line 205
    if-eqz v0, :cond_3

    instance-of v1, p1, Lcom/fasterxml/jackson/core/JsonProcessingException;

    if-nez v1, :cond_6

    .line 206
    :cond_3
    check-cast p1, Ljava/io/IOException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 201
    .end local v0    # "wrap":Z
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 208
    .restart local v0    # "wrap":Z
    :cond_5
    if-nez v0, :cond_6

    .line 209
    instance-of v1, p1, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    .line 210
    check-cast p1, Ljava/lang/RuntimeException;

    .end local p1    # "t":Ljava/lang/Throwable;
    throw p1

    .line 213
    .restart local p1    # "t":Ljava/lang/Throwable;
    :cond_6
    return-object p1
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
    .line 178
    :try_start_0
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 182
    :goto_0
    return-object v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 182
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
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
    .line 95
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_inputType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_inputType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p1, v1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    move-object p0, v0

    .line 99
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;
    :cond_0
    return-object p0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v3, 0x0

    .line 106
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v4, :cond_0

    .line 107
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    invoke-virtual {v4, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    .line 133
    .end local v3    # "value":Ljava/lang/Object;
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_valueClass:Ljava/lang/Class;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->callOnWith(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 136
    :goto_1
    return-object v4

    .line 108
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_0
    iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_hasArgs:Z

    if-eqz v4, :cond_5

    .line 109
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 112
    .local v0, "curr":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v4, :cond_1

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v4, :cond_2

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    .local v3, "value":Ljava/lang/String;
    goto :goto_0

    .line 114
    .local v3, "value":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_creatorProps:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartObjectToken()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 115
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_propCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    if-nez v4, :cond_3

    .line 116
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_creatorProps:[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    invoke-static {p2, v4, v5}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->construct(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_propCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    .line 118
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 119
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_propCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    invoke-virtual {p0, p1, p2, v4}, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->deserializeEnumUsingPropertyBased(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 121
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v3

    .local v3, "value":Ljava/lang/String;
    goto :goto_0

    .line 124
    .end local v0    # "curr":Lcom/fasterxml/jackson/core/JsonToken;
    .local v3, "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 126
    :try_start_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_factory:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwRootCauseIfIOE(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 129
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_valueClass:Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleInstantiationProblem(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "value":Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 135
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->throwRootCauseIfIOE(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    .line 136
    .restart local v2    # "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v4, v3, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleInstantiationProblem(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1
.end method

.method protected deserializeEnumUsingPropertyBased(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "creator"    # Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v4, 0x0

    invoke-virtual {p3, p1, p2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;

    move-result-object v0

    .line 154
    .local v0, "buffer":Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 155
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_2

    .line 156
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "propName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 159
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v1

    .line 160
    .local v1, "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_deserializeWithErrorWrapping(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 155
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->readIdProperty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 170
    .end local v1    # "creatorProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v2    # "propName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p3, p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
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
    .line 142
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->_deser:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "bean"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/String;
    .param p4, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0, p1, p4}, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;->throwOrReturnThrowable(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v0

    throw v0
.end method
