.class public Lcom/fasterxml/jackson/databind/ObjectMapper;
.super Lcom/fasterxml/jackson/core/ObjectCodec;
.source "ObjectMapper.java"

.implements Lcom/fasterxml/jackson/core/Versioned;
.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ObjectMapper$2;,
        Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;,
        Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
    }
.end annotation


.field protected static final DEFAULT_ANNOTATION_INTROSPECTOR:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected static final DEFAULT_BASE:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

.field private static final JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

.field protected static final STD_VISIBILITY_CHECKER:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


.field protected _deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

.field protected _deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

.field protected _injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

.field protected final _jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

.field protected _mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

.field protected _propertyOverrides:Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

.field protected _registeredModuleTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected _serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field protected _serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

.field protected _serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

.field protected _subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

.field protected _typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;


.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 269
    const-class v0, Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    .line 274
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->DEFAULT_ANNOTATION_INTROSPECTOR:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 276
    invoke-static {}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;->defaultInstance()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker$Std;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->STD_VISIBILITY_CHECKER:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 282
    new-instance v0, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    sget-object v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->DEFAULT_ANNOTATION_INTROSPECTOR:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    sget-object v3, Lcom/fasterxml/jackson/databind/ObjectMapper;->STD_VISIBILITY_CHECKER:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v5

    sget-object v7, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->instance:Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v11

    move-object v4, v1

    move-object v6, v1

    move-object v8, v1

    move-object v10, v1

    invoke-direct/range {v0 .. v11}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;Ljava/text/DateFormat;Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;Ljava/util/Locale;Ljava/util/TimeZone;Lcom/fasterxml/jackson/core/Base64Variant;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->DEFAULT_BASE:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 465
    invoke-direct {p0, v0, v0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;)V

    .line 466
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 1
    .param p1, "jf"    # Lcom/fasterxml/jackson/core/JsonFactory;

    .prologue
    const/4 v0, 0x0

    .line 474
    invoke-direct {p0, p1, v0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;)V

    .line 475
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;)V
    .locals 9
    .param p1, "jf"    # Lcom/fasterxml/jackson/core/JsonFactory;
    .param p2, "sp"    # Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    .param p3, "dc"    # Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/ObjectCodec;-><init>()V

    .line 443
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x40

    const v7, 0x3f19999a    # 0.6f

    const/4 v8, 0x2

    invoke-direct {v0, v2, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 531
    if-nez p1, :cond_4

    .line 532
    new-instance v0, Lcom/fasterxml/jackson/databind/MappingJsonFactory;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/MappingJsonFactory;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 539
    :cond_0
    :goto_0
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 540
    new-instance v4, Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    invoke-direct {v4}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;-><init>()V

    .line 542
    .local v4, "rootNames":Lcom/fasterxml/jackson/databind/util/RootNameLookup;
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 544
    new-instance v3, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;-><init>(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)V

    .line 545
    .local v3, "mixins":Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    iput-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 546
    sget-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper;->DEFAULT_BASE:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->defaultClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->withClassIntrospector(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;)Lcom/fasterxml/jackson/databind/cfg/BaseSettings;

    move-result-object v1

    .line 547
    .local v1, "base":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    new-instance v5, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    invoke-direct {v5}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;-><init>()V

    .line 548
    .local v5, "propOverrides":Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;
    iput-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_propertyOverrides:Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    .line 549
    new-instance v0, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 551
    new-instance v0, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 555
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonFactory;->requiresPropertyOrdering()Z

    move-result v6

    .line 556
    .local v6, "needOrder":Z
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    xor-int/2addr v0, v6

    if-eqz v0, :cond_1

    .line 557
    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v0, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 560
    :cond_1
    if-nez p2, :cond_2

    new-instance p2, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;

    .end local p2    # "sp":Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    invoke-direct {p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider$Impl;-><init>()V

    :cond_2
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .line 561
    if-nez p3, :cond_3

    new-instance p3, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;

    .end local p3    # "dc":Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->instance:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    invoke-direct {p3, v0}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext$Impl;-><init>(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)V

    :cond_3
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    .line 565
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->instance:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    .line 566
    return-void

    .line 534
    .end local v1    # "base":Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
    .end local v3    # "mixins":Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    .end local v4    # "rootNames":Lcom/fasterxml/jackson/databind/util/RootNameLookup;
    .end local v5    # "propOverrides":Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;
    .end local v6    # "needOrder":Z
    .restart local p2    # "sp":Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    .restart local p3    # "dc":Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    :cond_4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 535
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonFactory;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;

    move-result-object v0

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/JsonFactory;->setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonFactory;

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 6
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/ObjectMapper;

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/ObjectCodec;-><init>()V

    .line 443
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v3, 0x40

    const v4, 0x3f19999a    # 0.6f

    const/4 v5, 0x2

    invoke-direct {v2, v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 484
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonFactory;->copy()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    .line 485
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v2, p0}, Lcom/fasterxml/jackson/core/JsonFactory;->setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonFactory;

    .line 486
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 487
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 488
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    .line 489
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_propertyOverrides:Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->copy()Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_propertyOverrides:Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    .line 490
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->copy()Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 492
    new-instance v1, Lcom/fasterxml/jackson/databind/util/RootNameLookup;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;-><init>()V

    .line 493
    .local v1, "rootNames":Lcom/fasterxml/jackson/databind/util/RootNameLookup;
    new-instance v2, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v3, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_propertyOverrides:Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 494
    new-instance v2, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v3, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_propertyOverrides:Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;Lcom/fasterxml/jackson/databind/util/RootNameLookup;Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;)V

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 495
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->copy()Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .line 496
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->copy()Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    .line 499
    iget-object v2, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    .line 502
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ObjectMapper;->_registeredModuleTypes:Ljava/util/Set;

    .line 503
    .local v0, "reg":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 504
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_registeredModuleTypes:Ljava/util/Set;

    .line 508
    :goto_0
    return-void

    .line 506
    :cond_0
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_registeredModuleTypes:Ljava/util/Set;

    goto :goto_0
.end method

.method private final _configAndWriteCloseable(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V
    .locals 4
    .param p1, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "cfg"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3687
    move-object v2, p2

    check-cast v2, Ljava/io/Closeable;

    .line 3689
    .local v2, "toClose":Ljava/io/Closeable;
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 3690
    move-object v1, v2

    .line 3691
    .local v1, "tmpToClose":Ljava/io/Closeable;
    const/4 v2, 0x0

    .line 3692
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3697
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    .line 3698
    .end local v1    # "tmpToClose":Ljava/io/Closeable;
    :goto_0
    return-void

    .line 3693
    :catch_0
    move-exception v0

    .line 3694
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1, v2, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/io/Closeable;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private final _writeCloseableValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V
    .locals 3
    .param p1, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "cfg"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3707
    move-object v1, p2

    check-cast v1, Ljava/io/Closeable;

    .line 3709
    .local v1, "toClose":Ljava/io/Closeable;
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 3710
    sget-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3711
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3717
    :cond_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    .line 3718
    :goto_0
    return-void

    .line 3713
    :catch_0
    move-exception v0

    .line 3714
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/io/Closeable;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static findModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;"
        }
    .end annotation

    .prologue
    .line 946
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->findModules(Ljava/lang/ClassLoader;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static findModules(Ljava/lang/ClassLoader;)Ljava/util/List;
    .locals 5
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;"
        }
    .end annotation

    .prologue
    .line 960
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 961
    .local v3, "modules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/Module;>;"
    if-nez p0, :cond_0

    const-class v4, Lcom/fasterxml/jackson/databind/Module;

    invoke-static {v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 963
    .local v1, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lcom/fasterxml/jackson/databind/Module;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/Module;

    .line 964
    .local v2, "module":Lcom/fasterxml/jackson/databind/Module;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 961
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lcom/fasterxml/jackson/databind/Module;>;"
    .end local v2    # "module":Lcom/fasterxml/jackson/databind/Module;
    :cond_0
    const-class v4, Lcom/fasterxml/jackson/databind/Module;

    invoke-static {v4, p0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v1

    goto :goto_0

    .line 966
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lcom/fasterxml/jackson/databind/Module;>;"
    :cond_1
    return-object v3
.end method


.method protected _checkInvalidCopy(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, "exp":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 610
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed copy(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->version()Lcom/fasterxml/jackson/core/Version;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not override copy(); it has to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_0
    return-void
.end method

.method protected final _configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    .locals 3
    .param p1, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3665
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 3666
    .local v0, "cfg":Lcom/fasterxml/jackson/databind/SerializationConfig;
    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 3667
    sget-object v2, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, p2, Ljava/io/Closeable;

    if-eqz v2, :cond_0

    .line 3668
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_configAndWriteCloseable(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    .line 3678
    :goto_0
    return-void

    .line 3672
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3677
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->close()V

    goto :goto_0

    .line 3673
    :catch_0
    move-exception v1

    .line 3674
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->closeOnFailAndThrowAsIAE(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected _convert(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 12
    .param p1, "fromValue"    # Ljava/lang/Object;
    .param p2, "toValueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 3541
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v9

    .line 3542
    .local v9, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Ljava/lang/Object;

    if-eq v9, v10, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->hasGenericTypes()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3578
    .end local p1    # "fromValue":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 3549
    .restart local p1    # "fromValue":Ljava/lang/Object;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    const/4 v10, 0x0

    invoke-direct {v0, p0, v10}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;Z)V

    .line 3550
    .local v0, "buf":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    sget-object v10, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v10}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3551
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->forceUseOfBigDecimal(Z)Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    move-result-object v0

    .line 3556
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v10

    sget-object v11, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v10, v11}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    .line 3558
    .local v1, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v10

    invoke-virtual {v10, v0, p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 3561
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v6

    .line 3564
    .local v6, "p":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    .line 3565
    .local v4, "deserConfig":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_initForReading(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    .line 3566
    .local v8, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v10, :cond_2

    .line 3567
    invoke-virtual {p0, v6, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    .line 3568
    .local v2, "ctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    invoke-virtual {p0, v2, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v7

    .line 3577
    .end local v2    # "ctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    :goto_1
    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    move-object p1, v7

    .line 3578
    goto :goto_0

    .line 3569
    :cond_2
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v8, v10, :cond_3

    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v10, :cond_4

    .line 3570
    :cond_3
    const/4 v7, 0x0

    .local v7, "result":Ljava/lang/Object;
    goto :goto_1

    .line 3572
    .end local v7    # "result":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0, v6, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    .line 3573
    .restart local v2    # "ctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    invoke-virtual {p0, v2, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 3575
    .local v3, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v3, v6, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .restart local v7    # "result":Ljava/lang/Object;
    goto :goto_1

    .line 3579
    .end local v1    # "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    .end local v2    # "ctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    .end local v3    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v4    # "deserConfig":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .end local v6    # "p":Lcom/fasterxml/jackson/core/JsonParser;
    .end local v7    # "result":Ljava/lang/Object;
    .end local v8    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :catch_0
    move-exception v5

    .line 3580
    .local v5, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method

.method protected _findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 4
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
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
    .line 3885
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 3886
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 3896
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .local v1, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v1

    .line 3890
    .end local v1    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v0    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 3891
    if-nez v0, :cond_1

    .line 3892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find a deserializer for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v2

    throw v2

    .line 3895
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_rootDeserializers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 3896
    .end local v0    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v1    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    goto :goto_0
.end method

.method protected _initForReading(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3816
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->initialize(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 3822
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3823
    .local v0, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v0, :cond_0

    .line 3825
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 3826
    if-nez v0, :cond_0

    .line 3829
    const-string v1, "No content to map due to end-of-input"

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v1

    throw v1

    .line 3832
    :cond_0
    return-object v0
.end method

.method protected _newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .prologue
    .line 629
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V

    return-object v0
.end method

.method protected _newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 7
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "valueToUpdate"    # Ljava/lang/Object;
    .param p4, "schema"    # Lcom/fasterxml/jackson/core/FormatSchema;
    .param p5, "injectableValues"    # Lcom/fasterxml/jackson/databind/InjectableValues;

    .prologue
    .line 641
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectReader;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/ObjectReader;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/databind/InjectableValues;)V

    return-object v0
.end method

.method protected _newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;

    .prologue
    .line 651
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    return-object v0
.end method

.method protected _newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/core/FormatSchema;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "schema"    # Lcom/fasterxml/jackson/core/FormatSchema;

    .prologue
    .line 661
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/core/FormatSchema;)V

    return-object v0
.end method

.method protected _newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "rootType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "pp"    # Lcom/fasterxml/jackson/core/PrettyPrinter;

    .prologue
    .line 672
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ObjectWriter;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/PrettyPrinter;)V

    return-object v0
.end method

.method protected _readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 11
    .param p1, "p0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3772
    move-object v1, p1

    .local v1, "p":Lcom/fasterxml/jackson/core/JsonParser;
    const/4 v9, 0x0

    .line 3774
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_initForReading(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    .line 3775
    .local v7, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v0, :cond_1

    .line 3777
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    .line 3779
    .local v2, "ctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    invoke-virtual {p0, v2, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    .line 3794
    .end local v2    # "ctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    :goto_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->clearCurrentToken()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3796
    if-eqz v1, :cond_0

    if-eqz v9, :cond_6

    :try_start_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-object v6

    .line 3780
    :cond_1
    :try_start_2
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v0, :cond_2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v0, :cond_3

    .line 3781
    :cond_2
    const/4 v6, 0x0

    .local v6, "result":Ljava/lang/Object;
    goto :goto_0

    .line 3783
    .end local v6    # "result":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    .line 3784
    .local v3, "cfg":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    .line 3785
    .restart local v2    # "ctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    invoke-virtual {p0, v2, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    .line 3786
    .local v5, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->useRootWrapping()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v4, p2

    .line 3787
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_unwrapAndDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v6

    .line 3791
    .restart local v6    # "result":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->checkUnresolvedObjectId()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 3772
    .end local v2    # "ctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    .end local v3    # "cfg":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .end local v5    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v6    # "result":Ljava/lang/Object;
    .end local v7    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3796
    :catchall_0
    move-exception v4

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    :goto_3
    if-eqz v1, :cond_4

    if-eqz v4, :cond_7

    :try_start_4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_4
    throw v0

    .line 3789
    .restart local v2    # "ctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    .restart local v3    # "cfg":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .restart local v5    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .restart local v7    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_5
    :try_start_5
    invoke-virtual {v5, v1, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/Object;
    goto :goto_2

    .line 3796
    .end local v2    # "ctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    .end local v3    # "cfg":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .end local v5    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v6    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v8

    .local v8, "x2":Ljava/lang/Throwable;
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    goto :goto_1

    .end local v7    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :catch_2
    move-exception v8

    .restart local v8    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    .end local v8    # "x2":Ljava/lang/Throwable;
    :cond_7
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v4, v9

    goto :goto_3
.end method

.method protected _readValue(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 8
    .param p1, "cfg"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p3, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3747
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_initForReading(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    .line 3748
    .local v7, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v0, :cond_0

    .line 3750
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    .line 3751
    .local v2, "ctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    invoke-virtual {p0, v2, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    .line 3765
    .end local v2    # "ctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    :goto_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonParser;->clearCurrentToken()V

    .line 3766
    return-object v6

    .line 3752
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v7, v0, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v0, :cond_2

    .line 3753
    :cond_1
    const/4 v6, 0x0

    .local v6, "result":Ljava/lang/Object;
    goto :goto_0

    .line 3755
    .end local v6    # "result":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v2

    .line 3756
    .restart local v2    # "ctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    invoke-virtual {p0, v2, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    .line 3758
    .local v5, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->useRootWrapping()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    move-object v4, p3

    .line 3759
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_unwrapAndDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 3761
    .end local v6    # "result":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v5, p2, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    .restart local v6    # "result":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected _serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;

    .prologue
    .line 3655
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->createInstance(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    return-object v0
.end method

.method protected _unwrapAndDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p4, "rootType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3840
    .local p5, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->findRootName(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 3842
    .local v1, "expRootName":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 3843
    .local v2, "expSimpleName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v5, :cond_0

    .line 3844
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v5, "Current token not START_OBJECT (needed to unwrap root name \'%s\'), but %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p2, p1, v4, v5, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3849
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v5, :cond_1

    .line 3850
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current token not FIELD_NAME (to contain expected root name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'), but "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v4, v5, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3854
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v0

    .line 3855
    .local v0, "actualName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3856
    const-string v4, "Root name \'%s\' does not match expected (\'%s\') for type %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object p4, v5, v6

    invoke-virtual {p2, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3860
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 3861
    invoke-virtual {p5, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v3

    .line 3863
    .local v3, "result":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v4, v5, :cond_3

    .line 3864
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    const-string v5, "Current token not END_OBJECT (to match wrapper object with root name \'%s\'), but %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p2, p1, v4, v5, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportWrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3868
    :cond_3
    return-object v3
.end method

.method protected _verifySchemaType(Lcom/fasterxml/jackson/core/FormatSchema;)V
    .locals 3
    .param p1, "schema"    # Lcom/fasterxml/jackson/core/FormatSchema;

    .prologue
    .line 3904
    if-eqz p1, :cond_0

    .line 3905
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->canUseSchema(Lcom/fasterxml/jackson/core/FormatSchema;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3906
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not use FormatSchema of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3910
    :cond_0
    return-void
.end method

.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V
    .locals 2
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 3638
    if-nez p1, :cond_0

    .line 3639
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3641
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V

    .line 3642
    return-void
.end method

.method public acceptJsonFormatVisitor(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V
    .locals 1
    .param p2, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 3620
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;)V

    .line 3621
    return-void
.end method

.method public addHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "h"    # Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withHandler(Lcom/fasterxml/jackson/databind/deser/DeserializationProblemHandler;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1573
    return-object p0
.end method

.method public addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;"
        }
    .end annotation

    .prologue
    .line 1130
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "mixinSource":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->addLocalDefinition(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1131
    return-object p0
.end method

.method public final addMixInAnnotations(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1175
    .local p1, "target":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "mixinSource":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->addMixIn(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 1176
    return-void
.end method

.method public canDeserialize(Lcom/fasterxml/jackson/databind/JavaType;)Z
    .locals 2
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    const/4 v1, 0x0

    .line 2691
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->hasValueDeserializerFor(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method

.method public canDeserialize(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 2
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2704
    .local p2, "cause":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->hasValueDeserializerFor(Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method

.method public canSerialize(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2658
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->hasSerializerFor(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method

.method public canSerialize(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2669
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "cause":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->hasSerializerFor(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    return v0
.end method

.method public clearProblemHandlers()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withNoProblemHandlers()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1582
    return-object p0
.end method

.method public configOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;"
        }
    .end annotation

    .prologue
    .line 1497
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_propertyOverrides:Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverrides;->findOrCreateOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/MutableConfigOverride;

    move-result-object v0

    return-object v0
.end method

.method public configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 2008
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/core/JsonFactory;

    .line 2009
    return-object p0
.end method

.method public configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonParser$Feature;
    .param p2, "state"    # Z

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonFactory;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/core/JsonFactory;

    .line 1957
    return-object p0
.end method

.method public configure(Lcom/fasterxml/jackson/databind/DeserializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .param p2, "state"    # Z

    .prologue
    .line 1895
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1897
    return-object p0

    .line 1895
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 4
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/MapperFeature;
    .param p2, "state"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1787
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    new-array v1, v3, [Lcom/fasterxml/jackson/databind/MapperFeature;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1789
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    new-array v1, v3, [Lcom/fasterxml/jackson/databind/MapperFeature;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1791
    return-object p0

    .line 1787
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    new-array v1, v3, [Lcom/fasterxml/jackson/databind/MapperFeature;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    goto :goto_0

    .line 1789
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    new-array v1, v3, [Lcom/fasterxml/jackson/databind/MapperFeature;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    goto :goto_1
.end method

.method public configure(Lcom/fasterxml/jackson/databind/SerializationFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/SerializationFeature;
    .param p2, "state"    # Z

    .prologue
    .line 1833
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1835
    return-object p0

    .line 1833
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "t"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public convertValue(Ljava/lang/Object;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .locals 1
    .param p1, "fromValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 3509
    .local p2, "toValueTypeRef":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->convertValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convertValue(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "fromValue"    # Ljava/lang/Object;
    .param p2, "toValueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 3520
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 3521
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_convert(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "fromValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 3498
    .local p2, "toValueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 3499
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_convert(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public copy()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .prologue
    .line 600
    const-class v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_checkInvalidCopy(Ljava/lang/Class;)V

    .line 601
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v0
.end method

.method public bridge synthetic createArrayNode()Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method public createArrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1

    .prologue
    .line 2543
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;

    move-result-object v0

    return-object v0
.end method

.method protected createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "cfg"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .prologue
    .line 3733
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    invoke-virtual {v0, p2, p1, v1}, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->createInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createObjectNode()Lcom/fasterxml/jackson/core/TreeNode;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public createObjectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 1

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method protected defaultClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
    .locals 1

    .prologue
    .line 575
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/introspect/BasicClassIntrospector;-><init>()V

    return-object v0
.end method

.method public disable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1925
    return-object p0
.end method

.method public varargs disable(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "first"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .param p2, "f"    # [Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1935
    return-object p0
.end method

.method public disable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 1862
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1863
    return-object p0
.end method

.method public varargs disable(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "first"    # Lcom/fasterxml/jackson/databind/SerializationFeature;
    .param p2, "f"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1873
    return-object p0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 5
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    .line 2036
    move-object v0, p1

    .local v0, "arr$":[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 2037
    .local v1, "f":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    .line 2036
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2039
    .end local v1    # "f":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    :cond_0
    return-object p0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 5
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .prologue
    .line 1984
    move-object v0, p1

    .local v0, "arr$":[Lcom/fasterxml/jackson/core/JsonParser$Feature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1985
    .local v1, "f":Lcom/fasterxml/jackson/core/JsonParser$Feature;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->disable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    .line 1984
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1987
    .end local v1    # "f":Lcom/fasterxml/jackson/core/JsonParser$Feature;
    :cond_0
    return-object p0
.end method

.method public varargs disable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "f"    # [Lcom/fasterxml/jackson/databind/MapperFeature;

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1810
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1811
    return-object p0
.end method

.method public disableDefaultTyping()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .prologue
    .line 1434
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public enable(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1906
    return-object p0
.end method

.method public varargs enable(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "first"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .param p2, "f"    # [Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1916
    return-object p0
.end method

.method public enable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1844
    return-object p0
.end method

.method public varargs enable(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "first"    # Lcom/fasterxml/jackson/databind/SerializationFeature;
    .param p2, "f"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1854
    return-object p0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 5
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    .line 2021
    move-object v0, p1

    .local v0, "arr$":[Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 2022
    .local v1, "f":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->enable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    .line 2021
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2024
    .end local v1    # "f":Lcom/fasterxml/jackson/core/JsonGenerator$Feature;
    :cond_0
    return-object p0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 5
    .param p1, "features"    # [Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .prologue
    .line 1969
    move-object v0, p1

    .local v0, "arr$":[Lcom/fasterxml/jackson/core/JsonParser$Feature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1970
    .local v1, "f":Lcom/fasterxml/jackson/core/JsonParser$Feature;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->enable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonFactory;

    .line 1969
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1972
    .end local v1    # "f":Lcom/fasterxml/jackson/core/JsonParser$Feature;
    :cond_0
    return-object p0
.end method

.method public varargs enable([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "f"    # [Lcom/fasterxml/jackson/databind/MapperFeature;

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1800
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1801
    return-object p0
.end method

.method public enableDefaultTyping()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .prologue
    .line 1368
    sget-object v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;->OBJECT_AND_NON_CONCRETE:Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enableDefaultTyping(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public enableDefaultTyping(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "dti"    # Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;

    .prologue
    .line 1378
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->enableDefaultTyping(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public enableDefaultTyping(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 4
    .param p1, "applicability"    # Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
    .param p2, "includeAs"    # Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    .prologue
    .line 1398
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    if-ne p2, v1, :cond_0

    .line 1399
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not use includeAs of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1402
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)V

    .line 1404
    .local v0, "typer":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1405
    invoke-interface {v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1406
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    return-object v1
.end method

.method public enableDefaultTypingAsProperty(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 3
    .param p1, "applicability"    # Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;
    .param p2, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 1419
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTypeResolverBuilder;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper$DefaultTyping;)V

    .line 1421
    .local v0, "typer":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1422
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    invoke-interface {v0, v1}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1423
    invoke-interface {v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    .line 1424
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v1

    return-object v1
.end method

.method public findAndRegisterModules()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1

    .prologue
    .line 982
    invoke-static {}, Lcom/fasterxml/jackson/databind/ObjectMapper;->findModules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModules(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method

.method public findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1154
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->findMixInClassFor(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public generateJsonSchema(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3603
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->generateJsonSchema(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsonschema/JsonSchema;

    move-result-object v0

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    return-object v0
.end method

.method public getDeserializationContext()Lcom/fasterxml/jackson/databind/DeserializationContext;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationContext:Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    return-object v0
.end method

.method public getFactory()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    return-object v0
.end method

.method public getInjectableValues()Lcom/fasterxml/jackson/databind/InjectableValues;
    .locals 1

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    return-object v0
.end method

.method public getJsonFactory()Lcom/fasterxml/jackson/core/JsonFactory;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1691
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getFactory()Lcom/fasterxml/jackson/core/JsonFactory;

    move-result-object v0

    return-object v0
.end method

.method public getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getPropertyNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    move-result-object v0

    return-object v0
.end method

.method public getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    return-object v0
.end method

.method public getSerializerFactory()Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    return-object v0
.end method

.method public getSerializerProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    return-object v0
.end method

.method public getSerializerProviderInstance()Lcom/fasterxml/jackson/databind/SerializerProvider;
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v0

    return-object v0
.end method

.method public getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    return-object v0
.end method

.method public getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    return-object v0
.end method

.method public getVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    .prologue
    .line 2055
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->isEnabled(Lcom/fasterxml/jackson/core/JsonFactory$Feature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonGenerator$Feature;

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Lcom/fasterxml/jackson/core/JsonFactory;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
    .locals 2
    .param p1, "f"    # Lcom/fasterxml/jackson/core/JsonParser$Feature;

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;Lcom/fasterxml/jackson/core/JsonFactory;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .prologue
    .line 1887
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/MapperFeature;

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    return v0
.end method

.method public isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    return v0
.end method

.method public mixInCount()I
    .locals 1

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->localSize()I

    move-result v0

    return v0
.end method

.method public readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/TreeNode;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/fasterxml/jackson/core/TreeNode;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 2190
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    .line 2191
    .local v0, "cfg":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 2192
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    if-nez v3, :cond_0

    .line 2193
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 2194
    if-nez v3, :cond_0

    .line 2195
    const/4 v2, 0x0

    .line 2204
    :goto_0
    return-object v2

    .line 2198
    :cond_0
    sget-object v4, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v0, p1, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readValue(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 2199
    .local v1, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    if-nez v1, :cond_1

    .line 2200
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getNodeFactory()Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;

    move-result-object v1

    .line 2203
    :cond_1
    move-object v2, v1

    .line 2204
    .local v2, "result":Lcom/fasterxml/jackson/core/TreeNode;, "TT;"
    goto :goto_0
.end method

.method public readTree(Ljava/io/File;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 2422
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 2423
    .local v0, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;

    .end local v0    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree(Ljava/io/InputStream;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 2312
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 2313
    .local v0, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;

    .end local v0    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree(Ljava/io/Reader;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 3
    .param p1, "r"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 2342
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 2343
    .local v0, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;

    .end local v0    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 2372
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 2373
    .local v0, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;

    .end local v0    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree(Ljava/net/URL;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 3
    .param p1, "source"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 2449
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 2450
    .local v0, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;

    .end local v0    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    return-object v0
.end method

.method public readTree([B)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 3
    .param p1, "content"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 2395
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([B)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/databind/ObjectMapper;->JSON_NODE_TYPE:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 2396
    .local v0, "n":Lcom/fasterxml/jackson/databind/JsonNode;
    if-nez v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/node/NullNode;->instance:Lcom/fasterxml/jackson/databind/node/NullNode;

    .end local v0    # "n":Lcom/fasterxml/jackson/databind/JsonNode;
    :cond_0
    return-object v0
.end method

.method public final readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/ResolvedType;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/core/type/ResolvedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/core/type/ResolvedType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2137
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    check-cast p2, Lcom/fasterxml/jackson/databind/JavaType;

    .end local p2    # "valueType":Lcom/fasterxml/jackson/core/type/ResolvedType;
    invoke-virtual {p0, v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readValue(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2114
    .local p2, "valueTypeRef":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readValue(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2156
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readValue(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2090
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readValue(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/DataInput;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/io/DataInput;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/DataInput;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/DataInput;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/DataInput;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/DataInput;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2964
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/DataInput;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/File;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/io/File;
    .param p2, "valueTypeRef"    # Lcom/fasterxml/jackson/core/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lcom/fasterxml/jackson/core/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2750
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/File;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2769
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2731
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/File;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "valueTypeRef"    # Lcom/fasterxml/jackson/core/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/fasterxml/jackson/core/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/InputStream;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/io/InputStream;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2913
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2899
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/Reader;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/io/Reader;
    .param p2, "valueTypeRef"    # Lcom/fasterxml/jackson/core/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lcom/fasterxml/jackson/core/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/Reader;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/io/Reader;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2878
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/Reader;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "valueTypeRef"    # Lcom/fasterxml/jackson/core/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2852
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2871
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2833
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/net/URL;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/net/URL;
    .param p2, "valueTypeRef"    # Lcom/fasterxml/jackson/core/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Lcom/fasterxml/jackson/core/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2807
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/net/URL;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # Ljava/net/URL;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue(Ljava/net/URL;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2788
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/net/URL;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BIILcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "valueTypeRef"    # Lcom/fasterxml/jackson/core/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/fasterxml/jackson/core/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2943
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BIILcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BIILjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2928
    .local p4, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([BII)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BLcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # [B
    .param p2, "valueTypeRef"    # Lcom/fasterxml/jackson/core/type/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lcom/fasterxml/jackson/core/type/TypeReference;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2935
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([B)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BLcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2950
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([B)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValue([BLjava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "src"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2920
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser([B)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_readMapAndClose(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/ResolvedType;)Lcom/fasterxml/jackson/databind/MappingIterator;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/core/type/ResolvedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/core/type/ResolvedType;",
            ")",
            "Lcom/fasterxml/jackson/databind/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 2229
    check-cast p2, Lcom/fasterxml/jackson/databind/JavaType;

    .end local p2    # "valueType":Lcom/fasterxml/jackson/core/type/ResolvedType;
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/MappingIterator;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 2273
    .local p2, "valueTypeRef":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/MappingIterator;
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 2243
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v7

    .line 2244
    .local v7, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p0, p1, v7}, Lcom/fasterxml/jackson/databind/ObjectMapper;->createDeserializationContext(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;

    move-result-object v3

    .line 2245
    .local v3, "ctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    invoke-virtual {p0, v3, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_findRootDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v4

    .line 2247
    .local v4, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/MappingIterator;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/MappingIterator;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JsonDeserializer;ZLjava/lang/Object;)V

    return-object v0
.end method

.method public readValues(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/MappingIterator;
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/fasterxml/jackson/databind/MappingIterator",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 2263
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/ResolvedType;)Ljava/util/Iterator;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "x1"    # Lcom/fasterxml/jackson/core/type/ResolvedType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/ResolvedType;)Lcom/fasterxml/jackson/databind/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/util/Iterator;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "x1"    # Lcom/fasterxml/jackson/core/type/TypeReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readValues(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "x1"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValues(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/MappingIterator;

    move-result-object v0

    return-object v0
.end method

.method public reader()Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 2

    .prologue
    .line 3298
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->with(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1
    .param p1, "defaultBase64"    # Lcom/fasterxml/jackson/core/Base64Variant;

    .prologue
    .line 3420
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/core/FormatSchema;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 6
    .param p1, "schema"    # Lcom/fasterxml/jackson/core/FormatSchema;

    .prologue
    const/4 v2, 0x0

    .line 3389
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_verifySchemaType(Lcom/fasterxml/jackson/core/FormatSchema;)V

    .line 3390
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "type":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<*>;"
    const/4 v3, 0x0

    .line 3456
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .prologue
    .line 3309
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public varargs reader(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1
    .param p1, "first"    # Lcom/fasterxml/jackson/databind/DeserializationFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/databind/DeserializationFeature;

    .prologue
    .line 3321
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/DeserializationFeature;[Lcom/fasterxml/jackson/databind/DeserializationFeature;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 6
    .param p1, "injectableValues"    # Lcom/fasterxml/jackson/databind/InjectableValues;

    .prologue
    const/4 v2, 0x0

    .line 3401
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 6
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3438
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1
    .param p1, "attrs"    # Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .prologue
    .line 3430
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .prologue
    .line 3378
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->with(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public reader(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 3447
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public readerFor(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    .prologue
    .local p1, "type":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<*>;"
    const/4 v3, 0x0

    .line 3369
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public readerFor(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 6
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    const/4 v3, 0x0

    .line 3347
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public readerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 3358
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public readerForUpdating(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 6
    .param p1, "valueToUpdate"    # Ljava/lang/Object;

    .prologue
    .line 3335
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 3336
    .local v2, "t":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public readerWithView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectReader;"
        }
    .end annotation

    .prologue
    .line 3410
    .local p1, "view":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getDeserializationConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newReader(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    return-object v0
.end method

.method public registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 6
    .param p1, "module"    # Lcom/fasterxml/jackson/databind/Module;

    .prologue
    .line 705
    sget-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->IGNORE_DUPLICATE_MODULE_REGISTRATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 706
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/Module;->getTypeId()Ljava/lang/Object;

    move-result-object v2

    .line 707
    .local v2, "typeId":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 708
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_registeredModuleTypes:Ljava/util/Set;

    if-nez v4, :cond_0

    .line 711
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_registeredModuleTypes:Ljava/util/Set;

    .line 714
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_registeredModuleTypes:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 895
    .end local v2    # "typeId":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 724
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/Module;->getModuleName()Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 726
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Module without defined name"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 728
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/Module;->version()Lcom/fasterxml/jackson/core/Version;

    move-result-object v3

    .line 729
    .local v3, "version":Lcom/fasterxml/jackson/core/Version;
    if-nez v3, :cond_3

    .line 730
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Module without defined version"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 733
    :cond_3
    move-object v0, p0

    .line 736
    .local v0, "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    new-instance v4, Lcom/fasterxml/jackson/databind/ObjectMapper$1;

    invoke-direct {v4, p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper$1;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/Module;->setupModule(Lcom/fasterxml/jackson/databind/Module$SetupContext;)V

    goto :goto_0
.end method

.method public registerModules(Ljava/lang/Iterable;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/Module;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;"
        }
    .end annotation

    .prologue
    .line 930
    .local p1, "modules":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/fasterxml/jackson/databind/Module;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/Module;

    .line 931
    .local v1, "module":Lcom/fasterxml/jackson/databind/Module;
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    goto :goto_0

    .line 933
    .end local v1    # "module":Lcom/fasterxml/jackson/databind/Module;
    :cond_0
    return-object p0
.end method

.method public varargs registerModules([Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 4
    .param p1, "modules"    # [Lcom/fasterxml/jackson/databind/Module;

    .prologue
    .line 911
    move-object v0, p1

    .local v0, "arr$":[Lcom/fasterxml/jackson/databind/Module;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 912
    .local v3, "module":Lcom/fasterxml/jackson/databind/Module;
    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 911
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 914
    .end local v3    # "module":Lcom/fasterxml/jackson/databind/Module;
    :cond_0
    return-object p0
.end method

.method public varargs registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V
    .locals 1
    .param p1, "types"    # [Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .prologue
    .line 1470
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->registerSubtypes([Lcom/fasterxml/jackson/databind/jsontype/NamedType;)V

    .line 1471
    return-void
.end method

.method public varargs registerSubtypes([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1458
    .local p1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->registerSubtypes([Ljava/lang/Class;)V

    .line 1459
    return-void
.end method

.method public setAnnotationIntrospector(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1276
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1277
    return-object p0
.end method

.method public setAnnotationIntrospectors(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "serializerAI"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "deserializerAI"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1298
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1299
    return-object p0
.end method

.method public setBase64Variant(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "v"    # Lcom/fasterxml/jackson/core/Base64Variant;

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1646
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1647
    return-object p0
.end method

.method public setConfig(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 0
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .prologue
    .line 1600
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1601
    return-object p0
.end method

.method public setConfig(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 0
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;

    .prologue
    .line 1665
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1666
    return-object p0
.end method

.method public setDateFormat(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1706
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1707
    return-object p0
.end method

.method public setDefaultPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "pp"    # Lcom/fasterxml/jackson/core/PrettyPrinter;

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withDefaultPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1352
    return-object p0
.end method

.method public setDefaultTyping(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;"
        }
    .end annotation

    .prologue
    .line 1445
    .local p1, "typer":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1446
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1447
    return-object p0
.end method

.method public setFilterProvider(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "filterProvider"    # Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withFilters(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1631
    return-object p0
.end method

.method public setFilters(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)V
    .locals 1
    .param p1, "filterProvider"    # Lcom/fasterxml/jackson/databind/ser/FilterProvider;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withFilters(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1616
    return-void
.end method

.method public setHandlerInstantiator(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Ljava/lang/Object;
    .locals 1
    .param p1, "hi"    # Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1728
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1729
    return-object p0
.end method

.method public setInjectableValues(Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 0
    .param p1, "injectableValues"    # Lcom/fasterxml/jackson/databind/InjectableValues;

    .prologue
    .line 1737
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_injectableValues:Lcom/fasterxml/jackson/databind/InjectableValues;

    .line 1738
    return-object p0
.end method

.method public setLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "l"    # Ljava/util/Locale;

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1754
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1755
    return-object p0
.end method

.method public setMixInAnnotations(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1167
    .local p1, "sourceMixins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setMixIns(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 1168
    return-void
.end method

.method public setMixInResolver(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 3
    .param p1, "resolver"    # Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->withOverrides(Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    move-result-object v0

    .line 1145
    .local v0, "r":Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    if-eq v0, v1, :cond_0

    .line 1146
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    .line 1147
    new-instance v1, Lcom/fasterxml/jackson/databind/DeserializationConfig;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-direct {v1, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;-><init>(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1148
    new-instance v1, Lcom/fasterxml/jackson/databind/SerializationConfig;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-direct {v1, v2, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;)V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1150
    :cond_0
    return-object p0
.end method

.method public setMixIns(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;)",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;"
        }
    .end annotation

    .prologue
    .line 1112
    .local p1, "sourceMixins":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_mixIns:Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/SimpleMixInResolver;->setLocalDefinitions(Ljava/util/Map;)V

    .line 1113
    return-object p0
.end method

.method public setNodeFactory(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1564
    return-object p0
.end method

.method public setPropertyInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "incl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withPropertyInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1337
    return-object p0
.end method

.method public setPropertyNamingStrategy(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "s"    # Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1307
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1308
    return-object p0
.end method

.method public setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "incl"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .prologue
    .line 1326
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->construct(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setPropertyInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 1327
    return-object p0
.end method

.method public setSerializerFactory(Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 0
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerFactory:Lcom/fasterxml/jackson/databind/ser/SerializerFactory;

    .line 1039
    return-object p0
.end method

.method public setSerializerProvider(Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider:Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    .line 1060
    return-object p0
.end method

.method public setSubtypeResolver(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "str"    # Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .prologue
    .line 1258
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_subtypeResolver:Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    .line 1259
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1260
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1261
    return-object p0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1764
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1765
    return-object p0
.end method

.method public setTypeFactory(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "f"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .prologue
    .line 1522
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .line 1523
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1524
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1525
    return-object p0
.end method

.method public setVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .param p1, "forMethod"    # Lcom/fasterxml/jackson/annotation/PropertyAccessor;
    .param p2, "visibility"    # Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1243
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withVisibility(Lcom/fasterxml/jackson/annotation/PropertyAccessor;Lcom/fasterxml/jackson/annotation/JsonAutoDetect$Visibility;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1244
    return-object p0
.end method

.method public setVisibility(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;"
        }
    .end annotation

    .prologue
    .line 1211
    .local p1, "vc":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_deserializationConfig:Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .line 1212
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializationConfig:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 1213
    return-object p0
.end method

.method public setVisibilityChecker(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1198
    .local p1, "vc":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setVisibility(Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 1199
    return-void
.end method

.method public treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 1
    .param p1, "n"    # Lcom/fasterxml/jackson/core/TreeNode;

    .prologue
    .line 2554
    new-instance v0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;

    check-cast p1, Lcom/fasterxml/jackson/databind/JsonNode;

    .end local p1    # "n":Lcom/fasterxml/jackson/core/TreeNode;
    invoke-direct {v0, p1, p0}, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/core/ObjectCodec;)V

    return-object v0
.end method

.method public treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p1, "n"    # Lcom/fasterxml/jackson/core/TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fasterxml/jackson/core/TreeNode;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 2574
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-class v3, Ljava/lang/Object;

    if-eq p2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2587
    .end local p1    # "n":Lcom/fasterxml/jackson/core/TreeNode;
    :goto_0
    return-object p1

    .line 2579
    .restart local p1    # "n":Lcom/fasterxml/jackson/core/TreeNode;
    :cond_0
    invoke-interface {p1}, Lcom/fasterxml/jackson/core/TreeNode;->asToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_2

    .line 2580
    instance-of v3, p1, Lcom/fasterxml/jackson/databind/node/POJONode;

    if-eqz v3, :cond_2

    .line 2581
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/databind/node/POJONode;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/POJONode;->getPojo()Ljava/lang/Object;

    move-result-object v2

    .line 2582
    .local v2, "ob":Ljava/lang/Object;
    if-eqz v2, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object p1, v2

    .line 2583
    goto :goto_0

    .line 2587
    .end local v2    # "ob":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    goto :goto_0

    .line 2588
    :catch_0
    move-exception v1

    .line 2589
    .local v1, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    throw v1

    .line 2590
    .end local v1    # "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :catch_1
    move-exception v1

    .line 2591
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 6
    .param p1, "fromValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 2619
    if-nez p1, :cond_0

    const/4 v3, 0x0

    .line 2633
    :goto_0
    return-object v3

    .line 2620
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;Z)V

    .line 2621
    .local v0, "buf":Lcom/fasterxml/jackson/databind/util/TokenBuffer;
    sget-object v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/ObjectMapper;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2622
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->forceUseOfBigDecimal(Z)Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    move-result-object v0

    .line 2626
    :cond_1
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 2627
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v2

    .line 2628
    .local v2, "p":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/TreeNode;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 2629
    .local v3, "result":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2630
    .end local v2    # "p":Lcom/fasterxml/jackson/core/JsonParser;
    .end local v3    # "result":Lcom/fasterxml/jackson/databind/JsonNode;
    :catch_0
    move-exception v1

    .line 2631
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public version()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 687
    sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method

.method public writeTree(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/core/TreeNode;)V
    .locals 2
    .param p1, "jgen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "rootNode"    # Lcom/fasterxml/jackson/core/TreeNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 2501
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 2502
    .local v0, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 2503
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2504
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 2506
    :cond_0
    return-void
.end method

.method public writeTree(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/JsonNode;)V
    .locals 2
    .param p1, "jgen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "rootNode"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 2515
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 2516
    .local v0, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 2517
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2518
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    .line 2520
    :cond_0
    return-void
.end method

.method public writeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    .locals 2
    .param p1, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2468
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 2476
    .local v0, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->INDENT_OUTPUT:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2477
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->getPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2478
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->constructDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 2481
    :cond_0
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->CLOSE_CLOSEABLE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_2

    .line 2482
    invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_writeCloseableValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    .line 2489
    :cond_1
    :goto_0
    return-void

    .line 2484
    :cond_2
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_serializerProvider(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 2485
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FLUSH_AFTER_WRITE_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2486
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    goto :goto_0
.end method

.method public writeValue(Ljava/io/DataOutput;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Ljava/io/DataOutput;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3014
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/DataOutput;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 3015
    return-void
.end method

.method public writeValue(Ljava/io/File;Ljava/lang/Object;)V
    .locals 2
    .param p1, "resultFile"    # Ljava/io/File;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 2988
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/File;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 2989
    return-void
.end method

.method public writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 3005
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 3006
    return-void
.end method

.method public writeValue(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "w"    # Ljava/io/Writer;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;,
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V

    .line 3031
    return-void
.end method

.method public writeValueAsBytes(Ljava/lang/Object;)[B
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 3070
    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/BufferRecycler;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    .line 3072
    .local v0, "bb":Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
    :try_start_0
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    sget-object v4, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    invoke-virtual {v3, v0, v4}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;Lcom/fasterxml/jackson/core/JsonEncoding;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3078
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B

    move-result-object v2

    .line 3079
    .local v2, "result":[B
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->release()V

    .line 3080
    return-object v2

    .line 3073
    .end local v2    # "result":[B
    :catch_0
    move-exception v1

    .line 3074
    .local v1, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    throw v1

    .line 3075
    .end local v1    # "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :catch_1
    move-exception v1

    .line 3076
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;->fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v3

    throw v3
.end method

.method public writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 3046
    new-instance v1, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonFactory;->_getBufferRecycler()Lcom/fasterxml/jackson/core/util/BufferRecycler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    .line 3048
    .local v1, "sw":Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;
    :try_start_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_configAndWriteValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3054
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->getAndClear()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3049
    :catch_0
    move-exception v0

    .line 3050
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    throw v0

    .line 3051
    .end local v0    # "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :catch_1
    move-exception v0

    .line 3052
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->fromUnexpectedIOE(Ljava/io/IOException;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v2

    throw v2
.end method

.method public writer()Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1

    .prologue
    .line 3095
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public writer(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "defaultBase64"    # Lcom/fasterxml/jackson/core/Base64Variant;

    .prologue
    .line 3232
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/core/Base64Variant;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public writer(Lcom/fasterxml/jackson/core/FormatSchema;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "schema"    # Lcom/fasterxml/jackson/core/FormatSchema;

    .prologue
    .line 3221
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_verifySchemaType(Lcom/fasterxml/jackson/core/FormatSchema;)V

    .line 3222
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/core/FormatSchema;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public writer(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "pp"    # Lcom/fasterxml/jackson/core/PrettyPrinter;

    .prologue
    .line 3189
    if-nez p1, :cond_0

    .line 3190
    sget-object p1, Lcom/fasterxml/jackson/databind/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 3192
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public writer(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "escapes"    # Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .prologue
    .line 3242
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectWriter;->with(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public writer(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "feature"    # Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 3104
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public varargs writer(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "first"    # Lcom/fasterxml/jackson/databind/SerializationFeature;
    .param p2, "other"    # [Lcom/fasterxml/jackson/databind/SerializationFeature;

    .prologue
    .line 3114
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/SerializationFeature;[Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public writer(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "attrs"    # Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    .prologue
    .line 3252
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public writer(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "filterProvider"    # Lcom/fasterxml/jackson/databind/ser/FilterProvider;

    .prologue
    .line 3210
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withFilters(Lcom/fasterxml/jackson/databind/ser/FilterProvider;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public writer(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .param p1, "df"    # Ljava/text/DateFormat;

    .prologue
    .line 3123
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->with(Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public writerFor(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    .prologue
    .local p1, "rootType":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<*>;"
    const/4 v1, 0x0

    .line 3163
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v2

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method public writerFor(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "rootType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 3180
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public writerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    .prologue
    .local p1, "rootType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 3146
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v2

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method public writerWithDefaultPrettyPrinter()Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 3

    .prologue
    .line 3200
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 3201
    .local v0, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v1

    return-object v1
.end method

.method public writerWithType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/type/TypeReference",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "rootType":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<*>;"
    const/4 v1, 0x0

    .line 3271
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v2

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Lcom/fasterxml/jackson/core/type/TypeReference;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method public writerWithType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 2
    .param p1, "rootType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3282
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method

.method public writerWithType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "rootType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 3260
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v2

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectMapper;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    goto :goto_0
.end method

.method public writerWithView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ObjectWriter;"
        }
    .end annotation

    .prologue
    .line 3131
    .local p1, "serializationView":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->getSerializationConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->withView(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->_newWriter(Lcom/fasterxml/jackson/databind/SerializationConfig;)Lcom/fasterxml/jackson/databind/ObjectWriter;

    move-result-object v0

    return-object v0
.end method
