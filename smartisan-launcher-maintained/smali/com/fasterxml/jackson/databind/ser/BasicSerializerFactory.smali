.class public abstract Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;
.super Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
.source "BasicSerializerFactory.java"

.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;
    }
.end annotation


.field protected static final _concrete:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected static final _concreteLazy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;>;>;"
        }
    .end annotation
.end field


.field protected final _factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;


.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v1, "concLazy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer<*>;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 71
    .local v2, "concrete":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonSerializer<*>;>;"
    const-class v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;

    invoke-direct {v8}, Lcom/fasterxml/jackson/databind/ser/std/StringSerializer;-><init>()V

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    .line 73
    .local v5, "sls":Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;
    const-class v7, Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-class v7, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-class v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializers;->addAll(Ljava/util/Map;)V

    .line 80
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;-><init>(Z)V

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-class v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/fasterxml/jackson/databind/ser/std/BooleanSerializer;-><init>(Z)V

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-class v7, Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;

    const-class v9, Ljava/math/BigInteger;

    invoke-direct {v8, v9}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-class v7, Ljava/math/BigDecimal;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;

    const-class v9, Ljava/math/BigDecimal;

    invoke-direct {v8, v9}, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-class v7, Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-class v7, Ljava/util/Date;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {}, Lcom/fasterxml/jackson/databind/ser/std/StdJdkSerializers;->all()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 94
    .local v3, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 95
    .local v6, "value":Ljava/lang/Object;
    instance-of v7, v6, Lcom/fasterxml/jackson/databind/JsonSerializer;

    if-eqz v7, :cond_0

    .line 96
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    check-cast v6, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v7, v6, Ljava/lang/Class;

    if-eqz v7, :cond_1

    move-object v0, v6

    .line 99
    check-cast v0, Ljava/lang/Class;

    .line 100
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer<*>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 102
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer<*>;>;"
    :cond_1
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Internal error: unrecognized value of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 108
    .end local v3    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Object;>;"
    .end local v6    # "value":Ljava/lang/Object;
    :cond_2
    const-class v7, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lcom/fasterxml/jackson/databind/ser/std/TokenBufferSerializer;

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sput-object v2, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    .line 111
    sput-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;

    .line 112
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/SerializerFactory;-><init>()V

    .line 138
    if-nez p1, :cond_0

    new-instance p1, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    .end local p1    # "config":Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    .line 139
    return-void
.end method


.method protected _findContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
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
    .line 989
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 990
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    .line 991
    .local v1, "serDef":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 992
    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 994
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected _findKeySerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
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
    .line 972
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 973
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    .line 974
    .local v1, "serDef":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 975
    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 977
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected _verifyAsClass(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p3, "noneClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 1032
    if-nez p1, :cond_1

    move-object v0, v1

    .line 1042
    :cond_0
    :goto_0
    return-object v0

    .line 1035
    :cond_1
    instance-of v2, p1, Ljava/lang/Class;

    if-nez v2, :cond_2

    .line 1036
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnnotationIntrospector."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "() returned value of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": expected type JsonSerializer or Class<JsonSerializer> instead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v0, p1

    .line 1038
    check-cast v0, Ljava/lang/Class;

    .line 1039
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v0, p3, :cond_3

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move-object v0, v1

    .line 1040
    goto :goto_0
.end method

.method protected buildArraySerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 13
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/ArrayType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .param p5, "elementTypeSerializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 853
    .local p6, "elementValueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v4

    .line 854
    .local v4, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    const/4 v12, 0x0

    .line 856
    .local v12, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/ser/Serializers;

    .local v3, "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 857
    invoke-interface/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findArraySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v12

    .line 859
    if-eqz v12, :cond_0

    .line 864
    .end local v3    # "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    :cond_1
    if-nez v12, :cond_4

    .line 865
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getRawClass()Ljava/lang/Class;

    move-result-object v11

    .line 867
    .local v11, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p6, :cond_2

    invoke-static/range {p6 .. p6}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 868
    :cond_2
    const-class v5, [Ljava/lang/String;

    if-ne v5, v11, :cond_5

    .line 869
    sget-object v12, Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/StringArraySerializer;

    .line 875
    :cond_3
    :goto_0
    if-nez v12, :cond_4

    .line 876
    new-instance v12, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;

    .end local v12    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    move/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-direct {v12, v5, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/std/ObjectArraySerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 881
    .end local v11    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_4
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 882
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 883
    .local v10, "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    move-object/from16 v0, p3

    invoke-virtual {v10, v4, p2, v0, v12}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->modifyArraySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v12

    .line 884
    goto :goto_1

    .line 872
    .end local v10    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    .restart local v11    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-static {v11}, Lcom/fasterxml/jackson/databind/ser/std/StdArraySerializers;->findStandardImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v12

    goto :goto_0

    .line 886
    .end local v11    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    return-object v12
.end method

.method protected buildCollectionSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 17
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .param p5, "elementTypeSerializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 643
    .local p6, "elementValueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v5

    .line 644
    .local v5, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    const/16 v16, 0x0

    .line 649
    .local v16, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/ser/Serializers;

    .local v4, "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 650
    invoke-interface/range {v4 .. v9}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findCollectionSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v16

    .line 652
    if-eqz v16, :cond_0

    .line 657
    .end local v4    # "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    :cond_1
    if-nez v16, :cond_4

    .line 658
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v16

    .line 659
    if-nez v16, :cond_4

    .line 662
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/BeanDescription;->findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v12

    .line 663
    .local v12, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v6, v7, :cond_2

    .line 664
    const/4 v6, 0x0

    .line 706
    .end local v12    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :goto_0
    return-object v6

    .line 666
    .restart local v12    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getRawClass()Ljava/lang/Class;

    move-result-object v15

    .line 667
    .local v15, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/util/EnumSet;

    invoke-virtual {v6, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 669
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    .line 671
    .local v11, "enumType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v6

    if-nez v6, :cond_3

    .line 672
    const/4 v11, 0x0

    .line 674
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildEnumSetSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v16

    .line 701
    .end local v11    # "enumType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v12    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .end local v15    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 702
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 703
    .local v14, "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v16

    invoke-virtual {v14, v5, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->modifyCollectionSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v16

    .line 704
    goto :goto_2

    .line 676
    .end local v14    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    .restart local v12    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .restart local v15    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v10

    .line 677
    .local v10, "elementRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->isIndexedList(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 678
    const-class v6, Ljava/lang/String;

    if-ne v10, v6, :cond_8

    .line 680
    if-eqz p6, :cond_6

    invoke-static/range {p6 .. p6}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 681
    :cond_6
    sget-object v16, Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/IndexedStringListSerializer;

    .line 693
    :cond_7
    :goto_3
    if-nez v16, :cond_4

    .line 694
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildCollectionSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    move-result-object v16

    goto :goto_1

    .line 684
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildIndexedListSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    move-result-object v16

    goto :goto_3

    .line 687
    :cond_9
    const-class v6, Ljava/lang/String;

    if-ne v10, v6, :cond_7

    .line 689
    if-eqz p6, :cond_a

    invoke-static/range {p6 .. p6}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 690
    :cond_a
    sget-object v16, Lcom/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/impl/StringCollectionSerializer;

    goto :goto_3

    .end local v10    # "elementRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .end local v15    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    move-object/from16 v6, v16

    .line 706
    goto/16 :goto_0
.end method

.method public buildCollectionSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 1
    .param p1, "elemType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "staticTyping"    # Z
    .param p3, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 726
    .local p4, "valueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/CollectionSerializer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/std/CollectionSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    return-object v0
.end method

.method protected buildContainerSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 27
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v5

    .line 546
    .local v5, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    if-nez p4, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->useStaticType()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 547
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    const-class v7, Ljava/lang/Object;

    if-eq v3, v7, :cond_1

    .line 548
    :cond_0
    const/16 p4, 0x1

    .line 553
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v22

    .line 554
    .local v22, "elementType":Lcom/fasterxml/jackson/databind/JavaType;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v9

    .line 558
    .local v9, "elementTypeSerializer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    if-eqz v9, :cond_2

    .line 559
    const/16 p4, 0x0

    .line 561
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_findContentSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v10

    .line 563
    .local v10, "elementValueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v24, p2

    .line 564
    check-cast v24, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    .line 570
    .local v24, "mlt":Lcom/fasterxml/jackson/databind/type/MapLikeType;
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_findKeySerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v8

    .line 571
    .local v8, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual/range {v24 .. v24}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->isTrueMapType()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v5, v24

    .line 572
    check-cast v5, Lcom/fasterxml/jackson/databind/type/MapType;

    .end local v5    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v10}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildMapSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v26

    .line 629
    .end local v8    # "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v24    # "mlt":Lcom/fasterxml/jackson/databind/type/MapLikeType;
    :cond_3
    :goto_0
    return-object v26

    .line 576
    .restart local v5    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    .restart local v8    # "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .restart local v24    # "mlt":Lcom/fasterxml/jackson/databind/type/MapLikeType;
    :cond_4
    const/16 v26, 0x0

    .local v26, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    move-object/from16 v6, p2

    .line 577
    check-cast v6, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    .line 578
    .local v6, "mlType":Lcom/fasterxml/jackson/databind/type/MapLikeType;
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/ser/Serializers;

    .local v4, "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    move-object/from16 v7, p3

    .line 579
    invoke-interface/range {v4 .. v10}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findMapLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v26

    .line 581
    if-eqz v26, :cond_5

    .line 585
    .end local v4    # "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    :cond_6
    if-nez v26, :cond_7

    .line 586
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v26

    .line 588
    :cond_7
    if-eqz v26, :cond_3

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 591
    .local v25, "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->modifyMapLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v26

    .line 592
    goto :goto_1

    .line 597
    .end local v6    # "mlType":Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .end local v8    # "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v24    # "mlt":Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .end local v25    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    .end local v26    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isCollectionLikeType()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v21, p2

    .line 598
    check-cast v21, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    .line 599
    .local v21, "clt":Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    invoke-virtual/range {v21 .. v21}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->isTrueCollectionType()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v13, v21

    .line 600
    check-cast v13, Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v11 .. v17}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildCollectionSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v26

    goto :goto_0

    .line 604
    :cond_9
    const/16 v26, 0x0

    .restart local v26    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    move-object/from16 v13, p2

    .line 605
    check-cast v13, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;

    .line 606
    .local v13, "clType":Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .restart local v23    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/ser/Serializers;

    .restart local v4    # "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    move-object v11, v4

    move-object v12, v5

    move-object/from16 v14, p3

    move-object v15, v9

    move-object/from16 v16, v10

    .line 607
    invoke-interface/range {v11 .. v16}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findCollectionLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v26

    .line 609
    if-eqz v26, :cond_a

    .line 613
    .end local v4    # "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    :cond_b
    if-nez v26, :cond_c

    .line 614
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v26

    .line 616
    :cond_c
    if-eqz v26, :cond_3

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 619
    .restart local v25    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    move-object/from16 v0, v25

    move-object/from16 v1, p3

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v13, v1, v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->modifyCollectionLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v26

    .line 620
    goto :goto_2

    .line 625
    .end local v13    # "clType":Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .end local v21    # "clt":Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v25    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    .end local v26    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object/from16 v16, p2

    .line 626
    check-cast v16, Lcom/fasterxml/jackson/databind/type/ArrayType;

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v17, p3

    move/from16 v18, p4

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    invoke-virtual/range {v14 .. v20}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildArraySerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v26

    goto/16 :goto_0

    .line 629
    :cond_e
    const/16 v26, 0x0

    goto/16 :goto_0
.end method

.method protected buildEnumSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 7
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 938
    invoke-virtual {p3, v4}, Lcom/fasterxml/jackson/databind/BeanDescription;->findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    .line 939
    .local v1, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-ne v5, v6, :cond_1

    .line 941
    check-cast p3, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .end local p3    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    const-string v5, "declaringClass"

    invoke-virtual {p3, v5}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->removeProperty(Ljava/lang/String;)Z

    .line 954
    :cond_0
    return-object v4

    .line 946
    .restart local p3    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 947
    .local v0, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {v0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;->construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/databind/ser/std/EnumSerializer;

    move-result-object v4

    .line 949
    .local v4, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 950
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 951
    .local v3, "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->modifyEnumSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v4

    .line 952
    goto :goto_0
.end method

.method public buildEnumSetSerializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
    .param p1, "enumType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 730
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/ser/std/EnumSetSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    return-object v0
.end method

.method public buildIndexedListSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 1
    .param p1, "elemType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "staticTyping"    # Z
    .param p3, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Z",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 722
    .local p4, "valueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/impl/IndexedListSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    return-object v0
.end method

.method protected buildIterableSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .param p5, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 914
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;

    invoke-virtual {p0, p1, p5}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v1

    invoke-direct {v0, p5, p4, v1}, Lcom/fasterxml/jackson/databind/ser/std/IterableSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-object v0
.end method

.method protected buildIteratorSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .param p5, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 903
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/IteratorSerializer;

    invoke-virtual {p0, p1, p5}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v1

    invoke-direct {v0, p5, p4, v1}, Lcom/fasterxml/jackson/databind/ser/impl/IteratorSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    return-object v0
.end method

.method protected buildMapEntrySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 7
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .param p5, "keyType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p6, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 925
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;

    invoke-virtual {p0, p1, p6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p6

    move-object v2, p5

    move-object v3, p6

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/impl/MapEntrySerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V

    return-object v0
.end method

.method protected buildMapSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 17
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/MapType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .param p6, "elementTypeSerializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 749
    .local p5, "keySerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    .local p7, "elementValueSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v3

    .line 750
    .local v3, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    const/4 v15, 0x0

    .line 757
    .local v15, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual/range {p0 .. p0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/Serializers;

    .local v2, "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 758
    invoke-interface/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findMapSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v15

    .line 760
    if-eqz v15, :cond_0

    .line 762
    .end local v2    # "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    :cond_1
    if-nez v15, :cond_3

    .line 763
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v15

    .line 764
    if-nez v15, :cond_3

    .line 765
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findFilterId(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Ljava/lang/Object;

    move-result-object v10

    .line 770
    .local v10, "filterId":Ljava/lang/Object;
    const-class v5, Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v12

    .line 772
    .local v12, "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    if-nez v12, :cond_4

    const/4 v4, 0x0

    .local v4, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    move-object/from16 v5, p2

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    .line 774
    invoke-static/range {v4 .. v10}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct(Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v13

    .line 777
    .local v13, "mapSer":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v5, v1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSuppressableContentValue(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Ljava/lang/Object;

    move-result-object v16

    .line 779
    .local v16, "suppressableValue":Ljava/lang/Object;
    if-eqz v16, :cond_2

    .line 780
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->withContentInclusion(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v13

    .line 782
    :cond_2
    move-object v15, v13

    .line 786
    .end local v4    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "filterId":Ljava/lang/Object;
    .end local v12    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .end local v13    # "mapSer":Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;
    .end local v16    # "suppressableValue":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 787
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 788
    .local v14, "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v14, v3, v0, v1, v15}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->modifyMapSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v15

    .line 789
    goto :goto_1

    .line 772
    .end local v14    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    .restart local v10    # "filterId":Ljava/lang/Object;
    .restart local v12    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_4
    invoke-virtual {v12}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForSerialization()Ljava/util/Set;

    move-result-object v4

    goto :goto_0

    .line 791
    .end local v10    # "filterId":Ljava/lang/Object;
    .end local v12    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_5
    return-object v15
.end method

.method public createKeySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 11
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "keyType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    .local p3, "defaultImpl":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v1

    .line 211
    .local v1, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    const/4 v7, 0x0

    .line 213
    .local v7, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasKeySerializers()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 215
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->keySerializers()Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/ser/Serializers;

    .line 216
    .local v8, "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    invoke-interface {v8, p1, p2, v1}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v7

    .line 217
    if-eqz v7, :cond_0

    .line 222
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    :cond_1
    if-nez v7, :cond_3

    .line 223
    move-object v7, p3

    .line 224
    if-nez v7, :cond_3

    .line 225
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {p1, v9, v10}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->getStdKeySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v7

    .line 227
    if-nez v7, :cond_3

    .line 228
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    .line 230
    .local v0, "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-eqz v0, :cond_4

    .line 231
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 232
    .local v6, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    invoke-static {p1, v6, v9}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->getStdKeySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 234
    .local v2, "delegate":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v4

    .line 235
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->canOverrideAccessModifiers()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 236
    sget-object v9, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v9}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v9

    invoke-static {v4, v9}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 238
    :cond_2
    new-instance v7, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;

    .end local v7    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-direct {v7, v0, v2}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 247
    .end local v0    # "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v2    # "delegate":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v6    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_3
    :goto_0
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 248
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 249
    .local v5, "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    invoke-virtual {v5, p1, p2, v1, v7}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->modifyKeySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v7

    .line 250
    goto :goto_1

    .line 240
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    .restart local v0    # "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    :cond_4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;->getFallbackKeySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v7

    goto :goto_0

    .line 252
    .end local v0    # "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    :cond_5
    return-object v7
.end method

.method public abstract createSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
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
.end method

.method public createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .locals 6
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 264
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v3

    .line 265
    .local v3, "bean":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 266
    .local v0, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    .line 267
    .local v1, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v1, p1, v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 271
    .local v2, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    const/4 v4, 0x0

    .line 272
    .local v4, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    if-nez v2, :cond_0

    .line 273
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 277
    :goto_0
    if-nez v2, :cond_1

    .line 278
    const/4 v5, 0x0

    .line 282
    :goto_1
    return-object v5

    .line 275
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v5

    invoke-virtual {v5, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/util/Collection;

    move-result-object v4

    goto :goto_0

    .line 282
    :cond_1
    invoke-interface {v2, p1, p2, v4}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v5

    goto :goto_1
.end method

.method protected abstract customSerializers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/Serializers;",
            ">;"
        }
    .end annotation
.end method

.method protected findConverter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/util/Converter;
    .locals 2
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/Converter",
            "<",
            "Ljava/lang/Object;",
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
    .line 520
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 521
    .local v0, "convDef":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 522
    const/4 v1, 0x0

    .line 524
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;

    move-result-object v1

    goto :goto_0
.end method

.method protected findConvertingSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 508
    .local p3, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findConverter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/util/Converter;

    move-result-object v0

    .line 509
    .local v0, "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 513
    .end local p3    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :goto_0
    return-object p3

    .line 512
    .restart local p3    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/fasterxml/jackson/databind/util/Converter;->getOutputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 513
    .local v1, "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    invoke-direct {v2, v0, v1, p3}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    move-object p3, v2

    goto :goto_0
.end method

.method protected findFilterId(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Ljava/lang/Object;
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;

    .prologue
    .line 1002
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected findOptionalStdSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 2
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 443
    sget-object v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    return-object v0
.end method

.method protected final findSerializerByAddonType(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 8
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "javaType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 457
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    .line 459
    .local v7, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/Iterator;

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const-class v1, Ljava/util/Iterator;

    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 461
    .local v6, "params":[Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v6, :cond_0

    array-length v0, v6

    if-eq v0, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .local v5, "vt":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 463
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildIteratorSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 474
    .end local v5    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v6    # "params":[Lcom/fasterxml/jackson/databind/JavaType;
    :goto_1
    return-object v0

    .line 461
    .restart local v6    # "params":[Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    aget-object v5, v6, v2

    goto :goto_0

    .line 465
    .end local v6    # "params":[Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 466
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 467
    .restart local v6    # "params":[Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v6, :cond_3

    array-length v0, v6

    if-eq v0, v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .restart local v5    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 469
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildIterableSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    goto :goto_1

    .line 467
    .end local v5    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_4
    aget-object v5, v6, v2

    goto :goto_2

    .line 471
    .end local v6    # "params":[Lcom/fasterxml/jackson/databind/JavaType;
    :cond_5
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 472
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    goto :goto_1

    .line 474
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected final findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 5
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 346
    .local v1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/fasterxml/jackson/databind/JsonSerializable;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    sget-object v4, Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/SerializableSerializer;

    .line 360
    :goto_0
    return-object v4

    .line 350
    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->findJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v3

    .line 351
    .local v3, "valueMethod":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-eqz v3, :cond_2

    .line 352
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 353
    .local v0, "m":Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->canOverrideAccessModifiers()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    sget-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 356
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    .line 357
    .local v2, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    new-instance v4, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;

    invoke-direct {v4, v3, v2}, Lcom/fasterxml/jackson/databind/ser/std/JsonValueSerializer;-><init>(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    goto :goto_0

    .line 360
    .end local v0    # "m":Ljava/lang/reflect/Method;
    .end local v2    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected final findSerializerByLookup(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 8
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 308
    .local v2, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "clsName":Ljava/lang/String;
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 310
    .local v3, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-nez v3, :cond_0

    .line 311
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 312
    .local v4, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer<*>;>;"
    if-eqz v4, :cond_0

    .line 314
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/JsonSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v4    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer<*>;>;"
    :goto_0
    return-object v5

    .line 315
    .restart local v4    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer<*>;>;"
    :catch_0
    move-exception v1

    .line 316
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to instantiate standard serializer (of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonSerializer<*>;>;"
    :cond_0
    move-object v5, v3

    .line 321
    goto :goto_0
.end method

.method protected final findSerializerByPrimaryType(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 11
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 375
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v9

    .line 378
    .local v9, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findOptionalStdSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v10

    .line 379
    .local v10, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-eqz v10, :cond_0

    .line 431
    .end local v10    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :goto_0
    return-object v10

    .line 383
    .restart local v10    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_0
    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    sget-object v10, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    goto :goto_0

    .line 386
    :cond_1
    const-class v1, Ljava/util/Date;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    sget-object v10, Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/DateSerializer;

    goto :goto_0

    .line 389
    :cond_2
    const-class v1, Ljava/util/Map$Entry;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    const-class v0, Ljava/util/Map$Entry;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->findSuperType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v8

    .line 394
    .local v8, "mapEntryType":Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 395
    .local v5, "kt":Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeOrUnknown(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 396
    .local v6, "vt":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildMapEntrySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;ZLcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v10

    goto :goto_0

    .line 398
    .end local v5    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v6    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v8    # "mapEntryType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_3
    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 399
    new-instance v10, Lcom/fasterxml/jackson/databind/ser/std/ByteBufferSerializer;

    .end local v10    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-direct {v10}, Lcom/fasterxml/jackson/databind/ser/std/ByteBufferSerializer;-><init>()V

    goto :goto_0

    .line 401
    .restart local v10    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_4
    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 402
    new-instance v10, Lcom/fasterxml/jackson/databind/ser/std/InetAddressSerializer;

    .end local v10    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-direct {v10}, Lcom/fasterxml/jackson/databind/ser/std/InetAddressSerializer;-><init>()V

    goto :goto_0

    .line 404
    .restart local v10    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_5
    const-class v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 405
    new-instance v10, Lcom/fasterxml/jackson/databind/ser/std/InetSocketAddressSerializer;

    .end local v10    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-direct {v10}, Lcom/fasterxml/jackson/databind/ser/std/InetSocketAddressSerializer;-><init>()V

    goto :goto_0

    .line 407
    .restart local v10    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_6
    const-class v1, Ljava/util/TimeZone;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 408
    new-instance v10, Lcom/fasterxml/jackson/databind/ser/std/TimeZoneSerializer;

    .end local v10    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-direct {v10}, Lcom/fasterxml/jackson/databind/ser/std/TimeZoneSerializer;-><init>()V

    goto :goto_0

    .line 410
    .restart local v10    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_7
    const-class v1, Ljava/nio/charset/Charset;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 411
    sget-object v10, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    goto :goto_0

    .line 413
    :cond_8
    const-class v1, Ljava/lang/Number;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 415
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v7

    .line 416
    .local v7, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v7, :cond_9

    .line 417
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonFormat$Shape:[I

    invoke-virtual {v7}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 426
    :cond_9
    sget-object v10, Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/NumberSerializer;

    goto/16 :goto_0

    .line 419
    :pswitch_0
    sget-object v10, Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/ToStringSerializer;

    goto/16 :goto_0

    :pswitch_1
    move-object v10, v0

    .line 422
    goto/16 :goto_0

    .line 428
    .end local v7    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    :cond_a
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 429
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->buildEnumSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v10

    goto/16 :goto_0

    :cond_b
    move-object v10, v0

    .line 431
    goto/16 :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 3
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
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
    .line 489
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    .line 490
    .local v1, "serDef":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 491
    const/4 v2, 0x0

    .line 495
    :goto_0
    return-object v2

    .line 493
    :cond_0
    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    .line 495
    .local v0, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->findConvertingSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v2

    goto :goto_0
.end method

.method protected findSuppressableContentValue(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Ljava/lang/Object;
    .locals 5
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "contentType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 809
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultPropertyInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/fasterxml/jackson/databind/BeanDescription;->findPropertyInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v1

    .line 811
    .local v1, "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    if-nez v1, :cond_0

    move-object v0, v2

    .line 830
    :goto_0
    :pswitch_0
    return-object v0

    .line 814
    :cond_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getContentInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    .line 815
    .local v0, "incl":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    sget-object v3, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move-object v0, v2

    .line 817
    goto :goto_0

    .line 815
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFactoryConfig()Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    return-object v0
.end method

.method protected isIndexedList(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 717
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/RandomAccess;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected usesStaticTyping(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Z
    .locals 4
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .prologue
    const/4 v2, 0x0

    .line 1019
    if-eqz p3, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return v2

    .line 1022
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 1023
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object v1

    .line 1024
    .local v1, "t":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    if-eqz v1, :cond_2

    sget-object v3, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DEFAULT_TYPING:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-eq v1, v3, :cond_2

    .line 1025
    sget-object v3, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 1027
    :cond_2
    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v2

    goto :goto_0
.end method

.method public final withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
    .locals 1
    .param p1, "additional"    # Lcom/fasterxml/jackson/databind/ser/Serializers;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->withAdditionalKeySerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
    .locals 1
    .param p1, "additional"    # Lcom/fasterxml/jackson/databind/ser/Serializers;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->withAdditionalSerializers(Lcom/fasterxml/jackson/databind/ser/Serializers;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public abstract withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
.end method

.method public final withSerializerModifier(Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
    .locals 1
    .param p1, "modifier"    # Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->withSerializerModifier(Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;)Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    move-result-object v0

    return-object v0
.end method
