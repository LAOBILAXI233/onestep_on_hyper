.class public abstract Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;
.super Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
.source "BasicDeserializerFactory.java"

.implements Ljava/io/Serializable;


.field private static final CLASS_CHAR_BUFFER:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLASS_ITERABLE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLASS_MAP_ENTRY:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLASS_OBJECT:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CLASS_STRING:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected static final UNWRAPPED_CREATOR_PARAM_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

.field static final _collectionFallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Collection;",
            ">;>;"
        }
    .end annotation
.end field

.field static final _mapFallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/Map;",
            ">;>;"
        }
    .end annotation
.end field


.field protected final _factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-class v0, Ljava/lang/Object;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_OBJECT:Ljava/lang/Class;

    .line 40
    const-class v0, Ljava/lang/String;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_STRING:Ljava/lang/Class;

    .line 41
    const-class v0, Ljava/lang/CharSequence;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_CHAR_BUFFER:Ljava/lang/Class;

    .line 42
    const-class v0, Ljava/lang/Iterable;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_ITERABLE:Ljava/lang/Class;

    .line 43
    const-class v0, Ljava/util/Map$Entry;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_MAP_ENTRY:Ljava/lang/Class;

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    const-string v1, "@JsonUnwrapped"

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->UNWRAPPED_CREATOR_PARAM_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    .line 59
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/SortedMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/NavigableMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    .line 76
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/TreeSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-class v1, Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-string v1, "java.util.Deque"

    const-class v2, Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    const-string v1, "java.util.NavigableSet"

    const-class v2, Ljava/util/TreeSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    .line 111
    return-void
.end method

.method private _createEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 17
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1423
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v5

    .line 1424
    .local v5, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    .line 1426
    .local v8, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v4

    .line 1428
    .local v4, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findKeyDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v7

    .line 1429
    .local v7, "des":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    if-eqz v7, :cond_0

    .line 1468
    .end local v7    # "des":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    :goto_0
    return-object v7

    .line 1433
    .restart local v7    # "des":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5, v4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 1434
    .local v6, "custom":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v6, :cond_1

    .line 1435
    move-object/from16 v0, p2

    invoke-static {v5, v0, v6}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v7

    goto :goto_0

    .line 1437
    :cond_1
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v13

    .line 1438
    .local v13, "valueDesForKey":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v13, :cond_2

    .line 1439
    move-object/from16 v0, p2

    invoke-static {v5, v0, v13}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v7

    goto :goto_0

    .line 1442
    :cond_2
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/BeanDescription;->findJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5, v14}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v9

    .line 1444
    .local v9, "enumRes":Lcom/fasterxml/jackson/databind/util/EnumResolver;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    .line 1445
    .local v2, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/BeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 1446
    .local v10, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {v2, v10}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1447
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v3

    .line 1448
    .local v3, "argCount":I
    const/4 v14, 0x1

    if-ne v3, v14, :cond_6

    .line 1449
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v12

    .line 1451
    .local v12, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v12, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1453
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v14

    const-class v15, Ljava/lang/String;

    if-eq v14, v15, :cond_4

    .line 1454
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Parameter #0 type for factory method ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") not suitable, must be java.lang.String"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1456
    :cond_4
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1457
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;

    move-result-object v14

    sget-object v15, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v15

    invoke-static {v14, v15}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 1460
    :cond_5
    invoke-static {v9, v10}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v7

    goto/16 :goto_0

    .line 1463
    .end local v12    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unsuitable method ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") decorated with @JsonCreator (for Enum type "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1468
    .end local v3    # "argCount":I
    .end local v10    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    :cond_7
    invoke-static {v9}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v7

    goto/16 :goto_0
.end method

.method private _findStdValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/core/JsonLocation;

    if-ne v0, v1, :cond_0

    .line 285
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/JsonLocationInstantiator;-><init>()V

    .line 287
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _mapAbstractType2(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 5
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 211
    .local v1, "currClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasAbstractTypeResolvers()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .line 213
    .local v3, "resolver":Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
    invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/AbstractTypeResolver;->findTypeMapping(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 214
    .local v0, "concrete":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v1, :cond_0

    .line 219
    .end local v0    # "concrete":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "resolver":Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


.method protected _addDeserializerConstructors(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/Map;)V
    .locals 48
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p5, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;",
            "Ljava/util/Map",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;",
            "[",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 404
    .local p3, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .local p6, "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findDefaultConstructor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v33

    .line 405
    .local v33, "defaultCtor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    if-eqz v33, :cond_1

    .line 406
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->hasDefaultCreator()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p4

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 407
    :cond_0
    move-object/from16 v0, p5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->setDefaultCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    .line 412
    :cond_1
    const/16 v37, 0x0

    .line 413
    .local v37, "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getConstructors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .local v35, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 414
    .local v15, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v16

    .line 415
    .local v16, "isCreator":Z
    move-object/from16 v0, p6

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 416
    .local v44, "propDefs":[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v31

    .line 419
    .local v31, "argCount":I
    const/4 v3, 0x1

    move/from16 v0, v31

    if-ne v0, v3, :cond_6

    .line 420
    if-nez v44, :cond_3

    const/16 v32, 0x0

    .line 421
    .local v32, "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v15, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_checkIfCreatorPropertyBased(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Z

    move-result v47

    .line 423
    .local v47, "useProps":Z
    if-eqz v47, :cond_5

    .line 424
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-object/from16 v45, v0

    .line 425
    .local v45, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-nez v32, :cond_4

    const/4 v6, 0x0

    .line 426
    .local v6, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :goto_2
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v8

    .line 427
    .local v8, "arg":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v3 .. v9}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    aput-object v3, v45, v10

    .line 429
    move-object/from16 v0, p5

    move/from16 v1, v16

    move-object/from16 v2, v45

    invoke-virtual {v0, v15, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto :goto_0

    .line 420
    .end local v6    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v8    # "arg":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v32    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v45    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v47    # "useProps":Z
    :cond_3
    const/4 v3, 0x0

    aget-object v32, v44, v3

    goto :goto_1

    .line 425
    .restart local v32    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .restart local v45    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v47    # "useProps":Z
    :cond_4
    invoke-virtual/range {v32 .. v32}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v6

    goto :goto_2

    .line 431
    .end local v45    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_5
    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v17

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v17}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentConstructor(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;ZZ)Z

    .line 436
    if-eqz v32, :cond_2

    .line 437
    check-cast v32, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;

    .end local v32    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual/range {v32 .. v32}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->removeConstructors()V

    goto/16 :goto_0

    .line 448
    .end local v47    # "useProps":Z
    :cond_6
    const/16 v42, 0x0

    .line 449
    .local v42, "nonAnnotatedParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    move/from16 v0, v31

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-object/from16 v45, v0

    .line 450
    .restart local v45    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/16 v34, 0x0

    .line 451
    .local v34, "explicitNameCount":I
    const/16 v38, 0x0

    .line 452
    .local v38, "implicitWithCreatorCount":I
    const/16 v39, 0x0

    .line 454
    .local v39, "injectCount":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v31

    if-ge v0, v1, :cond_e

    .line 455
    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v22

    .line 456
    .local v22, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    if-nez v44, :cond_8

    const/16 v43, 0x0

    .line 457
    .local v43, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :goto_4
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v23

    .line 458
    .local v23, "injectId":Ljava/lang/Object;
    if-nez v43, :cond_9

    const/4 v6, 0x0

    .line 460
    .restart local v6    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :goto_5
    if-eqz v43, :cond_a

    invoke-virtual/range {v43 .. v43}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isExplicitlyNamed()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 461
    add-int/lit8 v34, v34, 0x1

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, v6

    .line 462
    invoke-virtual/range {v17 .. v23}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    aput-object v3, v45, v21

    .line 454
    :cond_7
    :goto_6
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 456
    .end local v6    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v23    # "injectId":Ljava/lang/Object;
    .end local v43    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_8
    aget-object v43, v44, v21

    goto :goto_4

    .line 458
    .restart local v23    # "injectId":Ljava/lang/Object;
    .restart local v43    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_9
    invoke-virtual/range {v43 .. v43}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v6

    goto :goto_5

    .line 465
    .restart local v6    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_a
    if-eqz v23, :cond_b

    .line 466
    add-int/lit8 v39, v39, 0x1

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, v6

    .line 467
    invoke-virtual/range {v17 .. v23}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    aput-object v3, v45, v21

    goto :goto_6

    .line 470
    :cond_b
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v46

    .line 471
    .local v46, "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    if-eqz v46, :cond_c

    .line 472
    sget-object v27, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->UNWRAPPED_CREATOR_PARAM_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    const/16 v30, 0x0

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, p2

    move/from16 v28, v21

    move-object/from16 v29, v22

    invoke-virtual/range {v24 .. v30}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    aput-object v3, v45, v21

    .line 473
    add-int/lit8 v34, v34, 0x1

    .line 474
    goto :goto_6

    .line 477
    :cond_c
    if-eqz v16, :cond_d

    if-eqz v6, :cond_d

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 478
    add-int/lit8 v38, v38, 0x1

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, v6

    .line 479
    invoke-virtual/range {v17 .. v23}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    aput-object v3, v45, v21

    goto :goto_6

    .line 482
    :cond_d
    if-nez v42, :cond_7

    .line 483
    move-object/from16 v42, v22

    goto :goto_6

    .line 487
    .end local v6    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v22    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v23    # "injectId":Ljava/lang/Object;
    .end local v43    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v46    # "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    :cond_e
    add-int v41, v34, v38

    .line 489
    .local v41, "namedCount":I
    if-nez v16, :cond_f

    if-gtz v34, :cond_f

    if-lez v39, :cond_14

    .line 491
    :cond_f
    add-int v3, v41, v39

    move/from16 v0, v31

    if-ne v3, v0, :cond_10

    .line 492
    move-object/from16 v0, p5

    move/from16 v1, v16

    move-object/from16 v2, v45

    invoke-virtual {v0, v15, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto/16 :goto_0

    .line 495
    :cond_10
    if-nez v34, :cond_11

    add-int/lit8 v3, v39, 0x1

    move/from16 v0, v31

    if-ne v3, v0, :cond_11

    .line 497
    move-object/from16 v0, p5

    move/from16 v1, v16

    move-object/from16 v2, v45

    invoke-virtual {v0, v15, v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto/16 :goto_0

    .line 503
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findImplicitParamName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v36

    .line 504
    .local v36, "impl":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v36, :cond_12

    invoke-virtual/range {v36 .. v36}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 506
    :cond_12
    invoke-virtual/range {v42 .. v42}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v40

    .line 507
    .local v40, "ix":I
    if-nez v40, :cond_13

    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isNonStaticInnerClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 508
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non-static inner classes like "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " can not use @JsonCreator for constructors"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 511
    :cond_13
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Argument #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of constructor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no property name annotation; must have name when multiple-parameter constructor annotated as Creator"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 516
    .end local v36    # "impl":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v40    # "ix":I
    :cond_14
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->hasDefaultCreator()Z

    move-result v3

    if-nez v3, :cond_2

    .line 517
    if-nez v37, :cond_15

    .line 518
    new-instance v37, Ljava/util/LinkedList;

    .end local v37    # "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    invoke-direct/range {v37 .. v37}, Ljava/util/LinkedList;-><init>()V

    .line 520
    .restart local v37    # "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    :cond_15
    move-object/from16 v0, v37

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 525
    .end local v15    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .end local v16    # "isCreator":Z
    .end local v21    # "i":I
    .end local v31    # "argCount":I
    .end local v34    # "explicitNameCount":I
    .end local v38    # "implicitWithCreatorCount":I
    .end local v39    # "injectCount":I
    .end local v41    # "namedCount":I
    .end local v42    # "nonAnnotatedParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v44    # "propDefs":[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v45    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_16
    if-eqz v37, :cond_17

    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->hasDelegatingCreator()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->hasPropertyBasedCreator()Z

    move-result v3

    if-nez v3, :cond_17

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, p2

    move-object/from16 v27, p3

    move-object/from16 v28, p4

    move-object/from16 v29, p5

    move-object/from16 v30, v37

    .line 527
    invoke-virtual/range {v24 .. v30}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_checkImplicitlyNamedConstructors(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/List;)V

    .line 530
    :cond_17
    return-void
.end method

.method protected _addDeserializerFactoryMethods(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/Map;)V
    .locals 38
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p5, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;",
            "Ljava/util/Map",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;",
            "[",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 668
    .local p3, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .local p6, "creatorParams":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    .line 669
    .local v4, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 670
    .local v9, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v10

    .line 671
    .local v10, "isCreator":Z
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v25

    .line 673
    .local v25, "argCount":I
    if-nez v25, :cond_1

    .line 674
    if-eqz v10, :cond_0

    .line 675
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->setDefaultCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V

    goto :goto_0

    .line 680
    :cond_1
    move-object/from16 v0, p6

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 682
    .local v34, "propDefs":[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_3

    .line 683
    if-nez v34, :cond_2

    const/16 v26, 0x0

    .line 684
    .local v26, "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v9, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_checkIfCreatorPropertyBased(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Z

    move-result v37

    .line 685
    .local v37, "useProps":Z
    if-nez v37, :cond_4

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 686
    invoke-virtual/range {v3 .. v10}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentFactory(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)Z

    goto :goto_0

    .line 683
    .end local v26    # "argDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v37    # "useProps":Z
    :cond_2
    const/4 v3, 0x0

    aget-object v26, v34, v3

    goto :goto_1

    .line 694
    :cond_3
    if-eqz v10, :cond_0

    .line 699
    :cond_4
    const/16 v32, 0x0

    .line 700
    .local v32, "nonAnnotatedParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    move/from16 v0, v25

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-object/from16 v35, v0

    .line 701
    .local v35, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/16 v29, 0x0

    .line 702
    .local v29, "implicitNameCount":I
    const/16 v27, 0x0

    .line 703
    .local v27, "explicitNameCount":I
    const/16 v30, 0x0

    .line 705
    .local v30, "injectCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move/from16 v0, v25

    if-ge v15, v0, :cond_c

    .line 706
    invoke-virtual {v9, v15}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v16

    .line 707
    .local v16, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    if-nez v34, :cond_6

    const/16 v33, 0x0

    .line 708
    .local v33, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :goto_3
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v17

    .line 709
    .local v17, "injectId":Ljava/lang/Object;
    if-nez v33, :cond_7

    const/4 v14, 0x0

    .line 711
    .local v14, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :goto_4
    if-eqz v33, :cond_8

    invoke-virtual/range {v33 .. v33}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isExplicitlyNamed()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 712
    add-int/lit8 v27, v27, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 713
    invoke-virtual/range {v11 .. v17}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    aput-object v3, v35, v15

    .line 705
    :cond_5
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 707
    .end local v14    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v17    # "injectId":Ljava/lang/Object;
    .end local v33    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_6
    aget-object v33, v34, v15

    goto :goto_3

    .line 709
    .restart local v17    # "injectId":Ljava/lang/Object;
    .restart local v33    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_7
    invoke-virtual/range {v33 .. v33}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v14

    goto :goto_4

    .line 716
    .restart local v14    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_8
    if-eqz v17, :cond_9

    .line 717
    add-int/lit8 v30, v30, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 718
    invoke-virtual/range {v11 .. v17}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    aput-object v3, v35, v15

    goto :goto_5

    .line 721
    :cond_9
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v36

    .line 722
    .local v36, "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    if-eqz v36, :cond_a

    .line 723
    sget-object v21, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->UNWRAPPED_CREATOR_PARAM_NAME:Lcom/fasterxml/jackson/databind/PropertyName;

    const/16 v24, 0x0

    move-object/from16 v18, p0

    move-object/from16 v19, p1

    move-object/from16 v20, p2

    move/from16 v22, v15

    move-object/from16 v23, v16

    invoke-virtual/range {v18 .. v24}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    aput-object v3, v35, v15

    .line 724
    add-int/lit8 v29, v29, 0x1

    .line 725
    goto :goto_5

    .line 728
    :cond_a
    if-eqz v10, :cond_b

    .line 729
    if-eqz v14, :cond_b

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 730
    add-int/lit8 v29, v29, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 731
    invoke-virtual/range {v11 .. v17}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v3

    aput-object v3, v35, v15

    goto :goto_5

    .line 747
    :cond_b
    if-nez v32, :cond_5

    .line 748
    move-object/from16 v32, v16

    goto :goto_5

    .line 751
    .end local v14    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v16    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v17    # "injectId":Ljava/lang/Object;
    .end local v33    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v36    # "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    :cond_c
    add-int v31, v27, v29

    .line 754
    .local v31, "namedCount":I
    if-nez v10, :cond_d

    if-gtz v27, :cond_d

    if-lez v30, :cond_0

    .line 756
    :cond_d
    add-int v3, v31, v30

    move/from16 v0, v25

    if-ne v3, v0, :cond_e

    .line 757
    move-object/from16 v0, p5

    move-object/from16 v1, v35

    invoke-virtual {v0, v9, v10, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto/16 :goto_0

    .line 758
    :cond_e
    if-nez v27, :cond_f

    add-int/lit8 v3, v30, 0x1

    move/from16 v0, v25

    if-ne v3, v0, :cond_f

    .line 760
    move-object/from16 v0, p5

    move-object/from16 v1, v35

    invoke-virtual {v0, v9, v10, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto/16 :goto_0

    .line 762
    :cond_f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Argument #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v32 .. v32}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of factory method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no property name annotation; must have name when multiple-parameter constructor annotated as Creator"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 767
    .end local v9    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v10    # "isCreator":Z
    .end local v15    # "i":I
    .end local v25    # "argCount":I
    .end local v27    # "explicitNameCount":I
    .end local v29    # "implicitNameCount":I
    .end local v30    # "injectCount":I
    .end local v31    # "namedCount":I
    .end local v32    # "nonAnnotatedParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v34    # "propDefs":[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v35    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_10
    return-void
.end method

.method protected _checkIfCreatorPropertyBased(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Z
    .locals 5
    .param p1, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p2, "creator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .param p3, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 589
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorBinding(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v1

    .line 591
    .local v1, "mode":Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->PROPERTIES:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne v1, v4, :cond_1

    .line 613
    :cond_0
    :goto_0
    return v2

    .line 594
    :cond_1
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DELEGATING:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne v1, v4, :cond_2

    move v2, v3

    .line 595
    goto :goto_0

    .line 598
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isExplicitlyNamed()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 602
    if-eqz p3, :cond_4

    .line 605
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "implName":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 607
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->couldSerialize()Z

    move-result v4

    if-nez v4, :cond_0

    .end local v0    # "implName":Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 613
    goto :goto_0
.end method

.method protected _checkImplicitlyNamedConstructors(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/List;)V
    .locals 22
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p5, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 537
    .local p3, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    .local p6, "implicitCtors":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;>;"
    const/4 v13, 0x0

    .line 538
    .local v13, "found":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    const/4 v14, 0x0

    .line 545
    .local v14, "foundProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 546
    .local v12, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v9

    .line 551
    .local v9, "argCount":I
    new-array v0, v9, [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-object/from16 v21, v0

    .line 552
    .local v21, "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v9, :cond_1

    .line 553
    invoke-virtual {v12, v15}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v7

    .line 554
    .local v7, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v7, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findParamName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v5

    .line 557
    .local v5, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 560
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v2

    aput-object v2, v21, v15

    .line 552
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 563
    .end local v5    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v7    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    :cond_1
    if-eqz v13, :cond_4

    .line 564
    const/4 v13, 0x0

    .line 571
    .end local v9    # "argCount":I
    .end local v12    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .end local v15    # "i":I
    .end local v21    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_2
    if-eqz v13, :cond_5

    .line 572
    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v13, v2, v14}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    move-object/from16 v11, p2

    .line 573
    check-cast v11, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;

    .line 575
    .local v11, "bbd":Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    move-object v10, v14

    .local v10, "arr$":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    array-length v0, v10

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    aget-object v20, v10, v16

    .line 576
    .local v20, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual/range {v20 .. v20}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v19

    .line 577
    .local v19, "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->hasProperty(Lcom/fasterxml/jackson/databind/PropertyName;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 578
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;

    move-result-object v18

    .line 580
    .local v18, "newDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->addProperty(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Z

    .line 575
    .end local v18    # "newDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 567
    .end local v10    # "arr$":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v11    # "bbd":Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
    .end local v17    # "len$":I
    .end local v19    # "pn":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v20    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v9    # "argCount":I
    .restart local v12    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .restart local v15    # "i":I
    .local v16, "i$":Ljava/util/Iterator;
    .restart local v21    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_4
    move-object v13, v12

    .line 568
    move-object/from16 v14, v21

    .line 569
    goto/16 :goto_0

    .line 584
    .end local v9    # "argCount":I
    .end local v12    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v21    # "properties":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_5
    return-void
.end method

.method protected _constructDefaultValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 8
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v5, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v0

    invoke-direct {v5, p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;-><init>(Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V

    .line 299
    .local v5, "creators":Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v4

    .line 302
    .local v4, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v7

    .line 303
    .local v7, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v3

    .line 304
    .local v3, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object v3

    .line 314
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCreatorsFromProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Ljava/util/Map;

    move-result-object v6

    .local v6, "creatorDefs":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 320
    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addDeserializerFactoryMethods(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/Map;)V

    .line 322
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isConcrete()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 323
    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addDeserializerConstructors(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Ljava/util/Map;)V

    .line 325
    :cond_0
    invoke-virtual {v5, v7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->constructValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v0

    return-object v0
.end method

.method protected _findCreatorsFromProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Ljava/util/Map;
    .locals 11
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;",
            "[",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    .line 332
    .local v7, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findProperties()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 333
    .local v6, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getConstructorParameters()Ljava/util/Iterator;

    move-result-object v3

    .line 334
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 335
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    .line 336
    .local v5, "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v4

    .line 337
    .local v4, "owner":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 338
    .local v0, "defs":[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v2

    .line 340
    .local v2, "index":I
    if-nez v0, :cond_3

    .line 341
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 342
    new-instance v7, Ljava/util/LinkedHashMap;

    .end local v7    # "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 344
    .restart local v7    # "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    :cond_1
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterCount()I

    move-result v8

    new-array v0, v8, [Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 345
    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_2
    aput-object v6, v0, v2

    goto :goto_0

    .line 347
    :cond_3
    aget-object v8, v0, v2

    if-eqz v8, :cond_2

    .line 348
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Conflict: parameter #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bound to more than one property; "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " vs "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 355
    .end local v0    # "defs":[Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v2    # "index":I
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;>;"
    .end local v4    # "owner":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v5    # "param":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .end local v6    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_4
    return-object v7
.end method

.method protected _findCustomArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/ArrayType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
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
    .line 1670
    .local p5, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .local v0, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1671
    invoke-interface/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 1673
    .local v6, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v6, :cond_0

    .line 1677
    .end local v0    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v6    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected _findCustomBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 4
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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
    .line 1656
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 1657
    .local v0, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 1658
    .local v1, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v1, :cond_0

    .line 1662
    .end local v0    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v1    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected _findCustomCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
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
    .line 1685
    .local p5, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .local v0, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1686
    invoke-interface/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 1688
    .local v6, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v6, :cond_0

    .line 1692
    .end local v0    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v6    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected _findCustomCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
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
    .line 1700
    .local p5, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .local v0, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1701
    invoke-interface/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 1703
    .local v6, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v6, :cond_0

    .line 1707
    .end local v0    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v6    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected _findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 4
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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
    .line 1714
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 1715
    .local v0, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 1716
    .local v1, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v1, :cond_0

    .line 1720
    .end local v0    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v1    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected _findCustomMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 9
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/MapType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "keyDeserializer"    # Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .param p5, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
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
    .line 1729
    .local p6, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .local v0, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1730
    invoke-interface/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v7

    .line 1732
    .local v7, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v7, :cond_0

    .line 1736
    .end local v0    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v7    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected _findCustomMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 9
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "keyDeserializer"    # Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .param p5, "elementTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
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
    .line 1745
    .local p6, "elementDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .local v0, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 1746
    invoke-interface/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v7

    .line 1748
    .local v7, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v7, :cond_0

    .line 1752
    .end local v0    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v7    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_0
    return-object v7

    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected _findCustomReferenceDeserializer(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/type/ReferenceType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "contentTypeDeserializer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;)",
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
    .line 1641
    .local p5, "contentDeserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .local v0, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1642
    invoke-interface/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findReferenceDeserializer(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 1644
    .local v6, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v6, :cond_0

    .line 1648
    .end local v0    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v6    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected _findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 4
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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
    .line 1627
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonNode;>;"
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .line 1628
    .local v0, "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v1

    .line 1629
    .local v1, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v1, :cond_0

    .line 1633
    .end local v0    # "d":Lcom/fasterxml/jackson/databind/deser/Deserializers;
    .end local v1    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected _findExplicitParamName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1
    .param p1, "param"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .param p2, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 897
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 898
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 900
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _findImplicitParamName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2
    .param p1, "param"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .param p2, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 887
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 889
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    .line 891
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected _findJsonValueFor(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "enumType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1948
    if-nez p2, :cond_0

    .line 1949
    const/4 v1, 0x0

    .line 1952
    :goto_0
    return-object v1

    .line 1951
    :cond_0
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 1952
    .local v0, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->findJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v1

    goto :goto_0
.end method

.method protected _findParamName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 3
    .param p1, "param"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .param p2, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 869
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 870
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 871
    .local v0, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v0, :cond_0

    .line 882
    .end local v0    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :goto_0
    return-object v0

    .line 877
    .restart local v0    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_0
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 879
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    goto :goto_0

    .line 882
    .end local v0    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _findRemappedType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1613
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 1614
    .local v0, "type":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .end local v0    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    return-object v0
.end method

.method protected _handleSingleArgumentConstructor(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;ZZ)Z
    .locals 4
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p5, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .param p6, "ctor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .param p7, "isCreator"    # Z
    .param p8, "isVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            "ZZ)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .local p3, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 623
    invoke-virtual {p6, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v0

    .line 624
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/String;

    if-eq v0, v3, :cond_0

    const-class v3, Ljava/lang/CharSequence;

    if-ne v0, v3, :cond_3

    .line 625
    :cond_0
    if-nez p7, :cond_1

    if-eqz p8, :cond_2

    .line 626
    :cond_1
    invoke-virtual {p5, p6, p7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 659
    :cond_2
    :goto_0
    return v1

    .line 630
    :cond_3
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_4

    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_6

    .line 631
    :cond_4
    if-nez p7, :cond_5

    if-eqz p8, :cond_2

    .line 632
    :cond_5
    invoke-virtual {p5, p6, p7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    goto :goto_0

    .line 636
    :cond_6
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_7

    const-class v3, Ljava/lang/Long;

    if-ne v0, v3, :cond_9

    .line 637
    :cond_7
    if-nez p7, :cond_8

    if-eqz p8, :cond_2

    .line 638
    :cond_8
    invoke-virtual {p5, p6, p7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    goto :goto_0

    .line 642
    :cond_9
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_a

    const-class v3, Ljava/lang/Double;

    if-ne v0, v3, :cond_c

    .line 643
    :cond_a
    if-nez p7, :cond_b

    if-eqz p8, :cond_2

    .line 644
    :cond_b
    invoke-virtual {p5, p6, p7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    goto :goto_0

    .line 648
    :cond_c
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_d

    const-class v3, Ljava/lang/Boolean;

    if-ne v0, v3, :cond_f

    .line 649
    :cond_d
    if-nez p7, :cond_e

    if-eqz p8, :cond_2

    .line 650
    :cond_e
    invoke-virtual {p5, p6, p7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    goto :goto_0

    .line 655
    :cond_f
    if-eqz p7, :cond_10

    .line 656
    const/4 v2, 0x0

    invoke-virtual {p5, p6, p7, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto :goto_0

    :cond_10
    move v1, v2

    .line 659
    goto :goto_0
.end method

.method protected _handleSingleArgumentFactory(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)Z
    .locals 4
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p5, "creators"    # Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
    .param p6, "factory"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p7, "isCreator"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            "Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .local p3, "vchecker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 775
    invoke-virtual {p6, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v0

    .line 777
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/String;

    if-eq v0, v3, :cond_0

    const-class v3, Ljava/lang/CharSequence;

    if-ne v0, v3, :cond_3

    .line 778
    :cond_0
    if-nez p7, :cond_1

    invoke-interface {p3, p6}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 779
    :cond_1
    invoke-virtual {p5, p6, p7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    .line 811
    :cond_2
    :goto_0
    return v1

    .line 783
    :cond_3
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_4

    const-class v3, Ljava/lang/Integer;

    if-ne v0, v3, :cond_6

    .line 784
    :cond_4
    if-nez p7, :cond_5

    invoke-interface {p3, p6}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 785
    :cond_5
    invoke-virtual {p5, p6, p7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    goto :goto_0

    .line 789
    :cond_6
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_7

    const-class v3, Ljava/lang/Long;

    if-ne v0, v3, :cond_9

    .line 790
    :cond_7
    if-nez p7, :cond_8

    invoke-interface {p3, p6}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 791
    :cond_8
    invoke-virtual {p5, p6, p7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    goto :goto_0

    .line 795
    :cond_9
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_a

    const-class v3, Ljava/lang/Double;

    if-ne v0, v3, :cond_c

    .line 796
    :cond_a
    if-nez p7, :cond_b

    invoke-interface {p3, p6}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 797
    :cond_b
    invoke-virtual {p5, p6, p7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    goto :goto_0

    .line 801
    :cond_c
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v3, :cond_d

    const-class v3, Ljava/lang/Boolean;

    if-ne v0, v3, :cond_f

    .line 802
    :cond_d
    if-nez p7, :cond_e

    invoke-interface {p3, p6}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 803
    :cond_e
    invoke-virtual {p5, p6, p7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z)V

    goto :goto_0

    .line 807
    :cond_f
    if-eqz p7, :cond_10

    .line 808
    const/4 v2, 0x0

    invoke-virtual {p5, p6, p7, v2}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;Z[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto :goto_0

    :cond_10
    move v1, v2

    .line 811
    goto :goto_0
.end method

.method protected _hasExplicitParamName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Z
    .locals 3
    .param p1, "param"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .param p2, "intr"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 906
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 907
    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    .line 908
    .local v0, "n":Lcom/fasterxml/jackson/databind/PropertyName;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 910
    .end local v0    # "n":Lcom/fasterxml/jackson/databind/PropertyName;
    :cond_0
    return v1
.end method

.method protected _mapAbstractCollectionType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/type/CollectionType;
    .locals 3
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;

    .prologue
    .line 1045
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 1046
    .local v0, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 1047
    .restart local v0    # "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    .line 1048
    const/4 v1, 0x0

    .line 1050
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p2, p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/type/CollectionType;

    goto :goto_0
.end method

.method public _valueInstantiatorInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 6
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "annotated"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p3, "instDef"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 362
    if-nez p3, :cond_0

    move-object p3, v1

    .line 391
    .end local p3    # "instDef":Ljava/lang/Object;
    :goto_0
    return-object p3

    .line 368
    .restart local p3    # "instDef":Ljava/lang/Object;
    :cond_0
    instance-of v3, p3, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    if-eqz v3, :cond_1

    .line 369
    check-cast p3, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    goto :goto_0

    .line 371
    :cond_1
    instance-of v3, p3, Ljava/lang/Class;

    if-nez v3, :cond_2

    .line 372
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnnotationIntrospector returned key deserializer definition of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; expected type KeyDeserializer or Class<KeyDeserializer> instead"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move-object v2, p3

    .line 376
    check-cast v2, Ljava/lang/Class;

    .line 377
    .local v2, "instClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isBogusClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object p3, v1

    .line 378
    goto :goto_0

    .line 380
    :cond_3
    const-class v3, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 381
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnnotationIntrospector returned Class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; expected Class<ValueInstantiator>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 384
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;

    move-result-object v0

    .line 385
    .local v0, "hi":Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
    if-eqz v0, :cond_5

    .line 386
    invoke-virtual {v0, p1, p2, v2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->valueInstantiatorInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v1

    .line 387
    .local v1, "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    if-eqz v1, :cond_5

    move-object p3, v1

    .line 388
    goto :goto_0

    .line 391
    .end local v1    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-object p3, v3

    goto/16 :goto_0
.end method

.method protected constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/PropertyName;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 29
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "name"    # Lcom/fasterxml/jackson/databind/PropertyName;
    .param p4, "index"    # I
    .param p5, "param"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    .param p6, "injectableValueId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 825
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v22

    .line 826
    .local v22, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v27

    .line 829
    .local v27, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez v27, :cond_3

    .line 830
    sget-object v10, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED_OR_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    .line 840
    .local v10, "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    :goto_0
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 841
    .local v6, "type":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v4, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v8

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 845
    .local v4, "property":Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 847
    .local v15, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v15, :cond_0

    .line 848
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v15

    .line 852
    :cond_0
    new-instance v11, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v16

    move-object/from16 v12, p3

    move-object v13, v6

    move-object/from16 v17, p5

    move/from16 v18, p4

    move-object/from16 v19, p6

    move-object/from16 v20, v10

    invoke-direct/range {v11 .. v20}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;ILjava/lang/Object;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 855
    .local v11, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v25

    .line 856
    .local v25, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v25, :cond_1

    .line 857
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    check-cast v25, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 859
    .restart local v25    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_1
    if-eqz v25, :cond_2

    .line 861
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v11, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v25

    .line 862
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v11

    .line 864
    :cond_2
    return-object v11

    .line 832
    .end local v4    # "property":Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    .end local v6    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v10    # "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .end local v11    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v15    # "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .end local v25    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_3
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasRequiredMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;

    move-result-object v21

    .line 833
    .local v21, "b":Ljava/lang/Boolean;
    if-eqz v21, :cond_4

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v28, 0x1

    .line 834
    .local v28, "req":Z
    :goto_1
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDescription(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;

    move-result-object v24

    .line 835
    .local v24, "desc":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyIndex(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Integer;

    move-result-object v26

    .line 836
    .local v26, "idx":Ljava/lang/Integer;
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyDefaultValue(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;

    move-result-object v23

    .line 837
    .local v23, "def":Ljava/lang/String;
    move/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/PropertyMetadata;->construct(ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v10

    .restart local v10    # "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    goto/16 :goto_0

    .line 833
    .end local v10    # "metadata":Lcom/fasterxml/jackson/databind/PropertyMetadata;
    .end local v23    # "def":Ljava/lang/String;
    .end local v24    # "desc":Ljava/lang/String;
    .end local v26    # "idx":Ljava/lang/Integer;
    .end local v28    # "req":Z
    :cond_4
    const/16 v28, 0x0

    goto :goto_1
.end method

.method protected constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 2
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p3, "jsonValueMethod"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .prologue
    .line 1865
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p3, :cond_1

    .line 1866
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1867
    .local v0, "accessor":Ljava/lang/reflect/Method;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1868
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 1870
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUnsafeUsingMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v1

    .line 1874
    .end local v0    # "accessor":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUnsafe(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v1

    goto :goto_0
.end method

.method public createArrayDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 11
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/ArrayType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/ArrayType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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
    .line 924
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    .line 925
    .local v2, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 928
    .local v7, "elemType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 930
    .local v5, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 932
    .local v4, "elemTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v4, :cond_0

    .line 933
    invoke-virtual {p0, v2, v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v4

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    .line 936
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 938
    .local v6, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v6, :cond_3

    .line 939
    if-nez v5, :cond_2

    .line 940
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v10

    .line 941
    .local v10, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    invoke-static {v10}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->forType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 955
    .end local v10    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v0

    .line 943
    .restart local v10    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-class v0, Ljava/lang/String;

    if-ne v10, v0, :cond_2

    .line 944
    sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/StringArrayDeserializer;

    goto :goto_0

    .line 947
    .end local v10    # "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    new-instance v6, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;

    .end local v6    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {v6, p2, v5, v4}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;-><init>(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    .line 950
    .restart local v6    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 951
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 952
    .local v9, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v9, v2, p2, p3, v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyArrayDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 953
    goto :goto_1

    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    :cond_4
    move-object v0, v6

    .line 955
    goto :goto_0
.end method

.method public createCollectionDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 15
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/CollectionType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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
    .line 969
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    .line 971
    .local v9, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 972
    .local v7, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    .line 975
    .local v4, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 977
    .local v6, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v6, :cond_0

    .line 978
    invoke-virtual {p0, v4, v9}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v6

    :cond_0
    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    .line 981
    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v10

    .line 983
    .local v10, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v10, :cond_1

    .line 984
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    .line 985
    .local v8, "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v7, :cond_1

    .line 987
    const-class v2, Ljava/util/EnumSet;

    invoke-virtual {v2, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 988
    new-instance v10, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;

    .end local v10    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    const/4 v2, 0x0

    invoke-direct {v10, v9, v2}, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 1002
    .end local v8    # "collectionClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_1
    if-nez v10, :cond_7

    .line 1003
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->isInterface()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->isAbstract()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1004
    :cond_2
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapAbstractCollectionType(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v12

    .line 1005
    .local v12, "implType":Lcom/fasterxml/jackson/databind/type/CollectionType;
    if-nez v12, :cond_5

    .line 1007
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1008
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not find a deserializer for non-concrete Collection type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1010
    :cond_3
    invoke-static/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->constructForNonPOJO(Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    move-result-object v10

    .line 1017
    .end local v12    # "implType":Lcom/fasterxml/jackson/databind/type/CollectionType;
    :cond_4
    :goto_0
    if-nez v10, :cond_7

    .line 1018
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v13

    .line 1019
    .local v13, "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1021
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/concurrent/ArrayBlockingQueue;

    if-ne v2, v3, :cond_6

    .line 1022
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;

    move-object/from16 v0, p2

    invoke-direct {v2, v0, v7, v6, v13}, Lcom/fasterxml/jackson/databind/deser/std/ArrayBlockingQueueDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    .line 1040
    .end local v13    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :goto_1
    return-object v2

    .line 1012
    .restart local v12    # "implType":Lcom/fasterxml/jackson/databind/type/CollectionType;
    :cond_5
    move-object/from16 p2, v12

    .line 1014
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object p3

    goto :goto_0

    .line 1026
    .end local v12    # "implType":Lcom/fasterxml/jackson/databind/type/CollectionType;
    .restart local v13    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_6
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_8

    .line 1028
    new-instance v10, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;

    .end local v10    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    move-object/from16 v0, p2

    invoke-direct {v10, v0, v7, v13}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    .line 1035
    .end local v13    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .restart local v10    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_7
    :goto_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1036
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1037
    .local v14, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v14, v4, v0, v1, v10}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyCollectionDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v10

    .line 1038
    goto :goto_3

    .line 1030
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v14    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    .restart local v13    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_8
    new-instance v10, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;

    .end local v10    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    move-object/from16 v0, p2

    invoke-direct {v10, v0, v7, v6, v13}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    .restart local v10    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    goto :goto_2

    .end local v13    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_9
    move-object v2, v10

    .line 1040
    goto :goto_1
.end method

.method public createCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/CollectionLikeType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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
    .line 1059
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 1061
    .local v6, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1062
    .local v5, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    .line 1065
    .local v2, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1067
    .local v4, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v4, :cond_0

    .line 1068
    invoke-virtual {p0, v2, v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v4

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    .line 1070
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v7

    .line 1072
    .local v7, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v7, :cond_1

    .line 1074
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1076
    .local v9, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v9, v2, p2, p3, v7}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v7

    .line 1077
    goto :goto_0

    .line 1080
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    :cond_1
    return-object v7
.end method

.method public createEnumDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 15
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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
    .line 1232
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    .line 1233
    .local v3, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    .line 1235
    .local v6, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p3

    invoke-virtual {p0, v6, v3, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    .line 1237
    .local v5, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v5, :cond_2

    .line 1238
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_constructDefaultValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v11

    .line 1239
    .local v11, "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    if-nez v11, :cond_3

    const/4 v4, 0x0

    .line 1242
    .local v4, "creatorProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getFactoryMethods()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 1243
    .local v7, "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1244
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v2

    .line 1245
    .local v2, "argCount":I
    const/4 v12, 0x1

    if-ne v2, v12, :cond_4

    .line 1246
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v10

    .line 1248
    .local v10, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1249
    invoke-static {v3, v6, v7, v11, v4}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->deserializerForCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    .line 1262
    .end local v2    # "argCount":I
    .end local v7    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v10    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    if-nez v5, :cond_2

    .line 1263
    new-instance v5, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;

    .end local v5    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->findJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v12

    invoke-virtual {p0, v6, v3, v12}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v12

    invoke-direct {v5, v12}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;)V

    .line 1269
    .end local v4    # "creatorProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .restart local v5    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_2
    iget-object v12, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1270
    iget-object v12, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1271
    .local v9, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v9, v3, v0, v1, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyEnumDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    .line 1272
    goto :goto_2

    .line 1239
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    .restart local v11    # "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    goto :goto_0

    .line 1252
    .restart local v2    # "argCount":I
    .restart local v4    # "creatorProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v7    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_4
    if-nez v2, :cond_5

    .line 1253
    invoke-static {v3, v6, v7}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->deserializerForNoArgsCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    .line 1254
    goto :goto_1

    .line 1256
    :cond_5
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unsuitable method ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") decorated with @JsonCreator (for Enum type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1274
    .end local v2    # "argCount":I
    .end local v4    # "creatorProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v7    # "factory":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_6
    return-object v5
.end method

.method public createKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 7
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1389
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    .line 1390
    .local v1, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    const/4 v3, 0x0

    .line 1391
    .local v3, "deser":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasKeyDeserializers()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1392
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 1393
    .local v0, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->keyDeserializers()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    .line 1394
    .local v2, "d":Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
    invoke-interface {v2, p2, v1, v0}, Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v3

    .line 1395
    if-eqz v3, :cond_0

    .line 1401
    .end local v0    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    .end local v2    # "d":Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_1
    if-nez v3, :cond_3

    .line 1402
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1403
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_createEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v6

    .line 1416
    :goto_0
    return-object v6

    .line 1405
    :cond_2
    invoke-static {v1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->findStringBasedKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v3

    .line 1409
    :cond_3
    if-eqz v3, :cond_4

    .line 1410
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1411
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1412
    .local v5, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v5, v1, p2, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v3

    .line 1413
    goto :goto_1

    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    :cond_4
    move-object v6, v3

    .line 1416
    goto :goto_0
.end method

.method public createMapDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 27
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/MapType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/MapType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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
    .line 1094
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v6

    .line 1095
    .local v6, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v23

    .line 1096
    .local v23, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v17

    .line 1100
    .local v17, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1103
    .local v10, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual/range {v23 .. v23}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 1105
    .local v8, "keyDes":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1107
    .local v9, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v9, :cond_0

    .line 1108
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v9

    :cond_0
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    .line 1112
    invoke-virtual/range {v4 .. v10}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v18

    .line 1115
    .local v18, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v18, :cond_6

    .line 1117
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getRawClass()Ljava/lang/Class;

    move-result-object v25

    .line 1118
    .local v25, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/EnumMap;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1119
    invoke-virtual/range {v23 .. v23}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v24

    .line 1120
    .local v24, "kt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1121
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Can not construct EnumMap; generic (key) type not available"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1123
    :cond_2
    new-instance v18, Lcom/fasterxml/jackson/databind/deser/std/EnumMapDeserializer;

    .end local v18    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v10, v9}, Lcom/fasterxml/jackson/databind/deser/std/EnumMapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    .line 1137
    .end local v24    # "kt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_3
    if-nez v18, :cond_6

    .line 1138
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->isInterface()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->isAbstract()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1140
    :cond_4
    sget-object v4, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Class;

    .line 1141
    .local v19, "fallback":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    if-eqz v19, :cond_7

    .line 1142
    move-object/from16 v25, v19

    .line 1143
    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p2

    .end local p2    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    check-cast p2, Lcom/fasterxml/jackson/databind/type/MapType;

    .line 1145
    .restart local p2    # "type":Lcom/fasterxml/jackson/databind/type/MapType;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object p3

    .line 1154
    .end local v19    # "fallback":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    :cond_5
    :goto_0
    if-nez v18, :cond_6

    .line 1155
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v13

    .line 1160
    .local v13, "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    new-instance v11, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;

    move-object/from16 v12, p2

    move-object v14, v8

    move-object v15, v10

    move-object/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    .line 1161
    .local v11, "md":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
    const-class v4, Ljava/util/Map;

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v21

    .line 1163
    .local v21, "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    if-nez v21, :cond_9

    const/16 v22, 0x0

    .line 1165
    .local v22, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->setIgnorableProperties(Ljava/util/Set;)V

    .line 1166
    move-object/from16 v18, v11

    .line 1170
    .end local v11    # "md":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
    .end local v13    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .end local v21    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .end local v22    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v25    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1172
    .local v26, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    move-object/from16 v0, v26

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v18

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyMapDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v18

    .line 1173
    goto :goto_2

    .line 1148
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v26    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    .restart local v19    # "fallback":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    .restart local v25    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_8

    .line 1149
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can not find a deserializer for non-concrete Map type "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1151
    :cond_8
    invoke-static/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->constructForNonPOJO(Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    move-result-object v18

    goto :goto_0

    .line 1163
    .end local v19    # "fallback":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/Map;>;"
    .restart local v11    # "md":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
    .restart local v13    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .restart local v21    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_9
    invoke-virtual/range {v21 .. v21}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForDeserialization()Ljava/util/Set;

    move-result-object v22

    goto :goto_1

    .line 1175
    .end local v11    # "md":Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
    .end local v13    # "inst":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .end local v21    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .end local v25    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    return-object v18
.end method

.method public createMapLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 12
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/MapLikeType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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
    .line 1184
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    .line 1185
    .local v10, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 1186
    .local v7, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    .line 1190
    .local v2, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1193
    .local v6, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 1200
    .local v4, "keyDes":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1202
    .local v5, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v5, :cond_0

    .line 1203
    invoke-virtual {p0, v2, v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v5

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    .line 1205
    invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v8

    .line 1207
    .local v8, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v8, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1210
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1211
    .local v11, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v11, v2, p2, p3, v8}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyMapLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v8

    .line 1212
    goto :goto_0

    .line 1215
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    :cond_1
    return-object v8
.end method

.method public createReferenceDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/type/ReferenceType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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
    .line 1298
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 1300
    .local v6, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1301
    .local v5, "contentDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    .line 1303
    .local v2, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1304
    .local v4, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v4, :cond_0

    .line 1305
    invoke-virtual {p0, v2, v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v4

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    .line 1307
    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomReferenceDeserializer(Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v7

    .line 1310
    .local v7, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v7, :cond_1

    .line 1312
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1313
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;

    invoke-direct {v0, p2, v4, v5}, Lcom/fasterxml/jackson/databind/deser/std/AtomicReferenceDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V

    .line 1324
    :goto_0
    return-object v0

    .line 1316
    :cond_1
    if-eqz v7, :cond_2

    .line 1318
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1319
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 1320
    .local v9, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v9, v2, p2, p3, v7}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyReferenceDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v7

    .line 1321
    goto :goto_1

    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    :cond_2
    move-object v0, v7

    .line 1324
    goto :goto_0
.end method

.method public createTreeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "nodeType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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
    .line 1283
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 1285
    .local v1, "nodeClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-virtual {p0, v1, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 1287
    .local v0, "custom":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v0, :cond_0

    .line 1290
    .end local v0    # "custom":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_0
    return-object v0

    .restart local v0    # "custom":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_0
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;->getDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    goto :goto_0
.end method

.method public findDefaultDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 20
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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
    .line 1545
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v12

    .line 1547
    .local v12, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v18, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_OBJECT:Ljava/lang/Class;

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_2

    .line 1549
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    .line 1552
    .local v4, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasAbstractTypeResolvers()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1553
    const-class v18, Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findRemappedType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    .line 1554
    .local v10, "lt":Lcom/fasterxml/jackson/databind/JavaType;
    const-class v18, Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findRemappedType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    .line 1558
    .end local v10    # "lt":Lcom/fasterxml/jackson/databind/JavaType;
    .local v11, "mt":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    new-instance v6, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;

    invoke-direct {v6, v10, v11}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 1609
    .end local v4    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .end local v11    # "mt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    :goto_1
    return-object v6

    .line 1556
    .restart local v4    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "mt":Lcom/fasterxml/jackson/databind/JavaType;
    move-object v10, v11

    .local v10, "lt":Ljava/lang/Object;
    goto :goto_0

    .line 1560
    .end local v4    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .end local v10    # "lt":Ljava/lang/Object;
    .end local v11    # "mt":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    sget-object v18, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_STRING:Ljava/lang/Class;

    move-object/from16 v0, v18

    if-eq v12, v0, :cond_3

    sget-object v18, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_CHAR_BUFFER:Ljava/lang/Class;

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_4

    .line 1561
    :cond_3
    sget-object v6, Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;

    goto :goto_1

    .line 1563
    :cond_4
    sget-object v18, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_ITERABLE:Ljava/lang/Class;

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_7

    .line 1565
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v13

    .line 1566
    .local v13, "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    sget-object v18, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_ITERABLE:Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v14

    .line 1567
    .local v14, "tps":[Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v14, :cond_5

    array-length v0, v14

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    :cond_5
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 1568
    .local v7, "elemType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_2
    const-class v18, Ljava/util/Collection;

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v7}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v5

    .line 1570
    .local v5, "ct":Lcom/fasterxml/jackson/databind/type/CollectionType;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v5, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->createCollectionDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    goto :goto_1

    .line 1567
    .end local v5    # "ct":Lcom/fasterxml/jackson/databind/type/CollectionType;
    .end local v7    # "elemType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_6
    const/16 v18, 0x0

    aget-object v7, v14, v18

    goto :goto_2

    .line 1572
    .end local v13    # "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .end local v14    # "tps":[Lcom/fasterxml/jackson/databind/JavaType;
    :cond_7
    sget-object v18, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->CLASS_MAP_ENTRY:Ljava/lang/Class;

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_b

    .line 1574
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    .line 1575
    .local v9, "kt":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v9, :cond_8

    .line 1576
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    .line 1578
    :cond_8
    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v16

    .line 1579
    .local v16, "vt":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v16, :cond_9

    .line 1580
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v16

    .line 1582
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 1583
    .local v17, "vts":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-nez v17, :cond_a

    .line 1584
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v17

    .line 1586
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 1587
    .local v15, "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/KeyDeserializer;

    .line 1588
    .local v8, "keyDes":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    new-instance v6, Lcom/fasterxml/jackson/databind/deser/std/MapEntryDeserializer;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v8, v15, v1}, Lcom/fasterxml/jackson/databind/deser/std/MapEntryDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    goto/16 :goto_1

    .line 1590
    .end local v8    # "keyDes":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .end local v9    # "kt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v15    # "valueDeser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v16    # "vt":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v17    # "vts":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :cond_b
    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1591
    .local v3, "clsName":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v18

    if-nez v18, :cond_c

    const-string v18, "java."

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1593
    :cond_c
    invoke-static {v12, v3}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 1594
    .local v6, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v6, :cond_d

    .line 1595
    invoke-static {v12, v3}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 1597
    :cond_d
    if-nez v6, :cond_0

    .line 1602
    .end local v6    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_e
    const-class v18, Lcom/fasterxml/jackson/databind/util/TokenBuffer;

    move-object/from16 v0, v18

    if-ne v12, v0, :cond_f

    .line 1603
    new-instance v6, Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;

    invoke-direct {v6}, Lcom/fasterxml/jackson/databind/deser/std/TokenBufferDeserializer;-><init>()V

    goto/16 :goto_1

    .line 1605
    :cond_f
    invoke-virtual/range {p0 .. p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findOptionalStdDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 1606
    .restart local v6    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v6, :cond_0

    .line 1609
    invoke-static {v12, v3}, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->find(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    goto/16 :goto_1
.end method

.method protected findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
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
    .line 1773
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    .line 1774
    .local v1, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v1, :cond_0

    .line 1775
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1776
    .local v0, "deserDef":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1777
    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 1780
    .end local v0    # "deserDef":Ljava/lang/Object;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected findKeyDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1792
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    .line 1793
    .local v1, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-eqz v1, :cond_0

    .line 1794
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    .line 1795
    .local v0, "deserDef":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1796
    invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v2

    .line 1799
    .end local v0    # "deserDef":Ljava/lang/Object;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected findOptionalStdDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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
    .line 1375
    sget-object v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, p2, v1, p3}, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->findDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyContentTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 5
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "containerType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "propertyEntity"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1521
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 1522
    .local v0, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 1523
    .local v1, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 1525
    .local v2, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v1, :cond_0

    .line 1526
    invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v4

    .line 1531
    :goto_0
    return-object v4

    .line 1529
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v4

    invoke-virtual {v4, p1, p3, v2}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object v3

    .line 1531
    .local v3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    invoke-interface {v1, p1, v2, v3}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v4

    goto :goto_0
.end method

.method public findPropertyTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 4
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "annotated"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1494
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 1495
    .local v0, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 1497
    .local v1, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    if-nez v1, :cond_0

    .line 1498
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v3

    .line 1503
    :goto_0
    return-object v3

    .line 1501
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v3

    invoke-virtual {v3, p1, p3, p2}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object v2

    .line 1503
    .local v2, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    invoke-interface {v1, p1, p2, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v3

    goto :goto_0
.end method

.method public findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    .locals 8
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1338
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v3

    .line 1339
    .local v3, "bean":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 1340
    .local v0, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    .line 1341
    .local v1, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v1, p1, v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 1346
    .local v2, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    const/4 v5, 0x0

    .line 1347
    .local v5, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    if-nez v2, :cond_0

    .line 1348
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 1349
    if-nez v2, :cond_1

    .line 1350
    const/4 v6, 0x0

    .line 1363
    :goto_0
    return-object v6

    .line 1353
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByTypeId(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/util/Collection;

    move-result-object v5

    .line 1357
    :cond_1
    invoke-interface {v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->getDefaultImpl()Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1358
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 1359
    .local v4, "defaultType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    if-eq v6, v7, :cond_2

    .line 1360
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v2

    .line 1363
    .end local v4    # "defaultType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    invoke-interface {v2, p1, p2, v5}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v6

    goto :goto_0
.end method

.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .locals 12
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    .line 240
    .local v1, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    const/4 v5, 0x0

    .line 242
    .local v5, "instantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 243
    .local v0, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findValueInstantiator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;

    move-result-object v4

    .line 244
    .local v4, "instDef":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 245
    invoke-virtual {p0, v1, v0, v4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_valueInstantiatorInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v5

    .line 247
    :cond_0
    if-nez v5, :cond_1

    .line 251
    invoke-direct {p0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findStdValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v5

    .line 252
    if-nez v5, :cond_1

    .line 253
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_constructDefaultValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v5

    .line 258
    :cond_1
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasValueInstantiators()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 259
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->valueInstantiators()Ljava/lang/Iterable;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .line 260
    .local v6, "insts":Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
    invoke-interface {v6, v1, p2, v5}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v5

    .line 262
    if-nez v5, :cond_2

    .line 263
    const-string v8, "Broken registered ValueInstantiators (of type %s): returned null ValueInstantiator"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p1, v8, v9}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 271
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "insts":Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
    :cond_3
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getIncompleteParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 272
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getIncompleteParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    move-result-object v7

    .line 273
    .local v7, "nonAnnotatedParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v2

    .line 274
    .local v2, "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Argument #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of constructor "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " has no property name annotation; must have name when multiple-parameter constructor annotated as Creator"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 277
    .end local v2    # "ctor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
    .end local v7    # "nonAnnotatedParam":Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
    :cond_4
    return-object v5
.end method

.method public getFactoryConfig()Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    return-object v0
.end method

.method public mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 6
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 188
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapAbstractType2(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 189
    .local v0, "next":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v0, :cond_0

    .line 190
    return-object p2

    .line 194
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 195
    .local v2, "prevCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 196
    .local v1, "nextCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v2, v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 197
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid abstract type resolution from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": latter is not a subtype of former"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    :cond_2
    move-object p2, v0

    .line 200
    goto :goto_0
.end method

.method protected modifyTypeByAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1894
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 1895
    .local v0, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez v0, :cond_0

    .line 1928
    .end local p3    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    return-object p3

    .restart local p3    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    goto :goto_0
.end method

.method protected resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1815
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    .line 1816
    .local v3, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez v3, :cond_0

    move-object v7, p3

    .line 1859
    .end local p3    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .local v7, "type":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    return-object v7

    .line 1823
    .end local v7    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local p3    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1824
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 1825
    .local v6, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v6, :cond_1

    .line 1826
    invoke-virtual {v3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v5

    .line 1827
    .local v5, "kdDef":Ljava/lang/Object;
    invoke-virtual {p1, p2, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/KeyDeserializer;

    move-result-object v4

    .line 1828
    .local v4, "kd":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    if-eqz v4, :cond_1

    .line 1829
    check-cast p3, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    .end local p3    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p3, v4}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object p3

    .line 1830
    .restart local p3    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 1835
    .end local v4    # "kd":Lcom/fasterxml/jackson/databind/KeyDeserializer;
    .end local v5    # "kdDef":Ljava/lang/Object;
    .end local v6    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->hasContentType()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1836
    invoke-virtual {v3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v1

    .line 1837
    .local v1, "cdDef":Ljava/lang/Object;
    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 1838
    .local v0, "cd":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v0, :cond_2

    .line 1839
    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/JavaType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 1841
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v9

    invoke-virtual {p0, v9, p3, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findPropertyContentTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v2

    .line 1843
    .local v2, "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-eqz v2, :cond_3

    .line 1844
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 1847
    .end local v0    # "cd":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .end local v1    # "cdDef":Ljava/lang/Object;
    .end local v2    # "contentTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v9

    invoke-virtual {p0, v9, p3, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findPropertyTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    move-result-object v8

    .line 1849
    .local v8, "valueTypeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    if-eqz v8, :cond_4

    .line 1850
    invoke-virtual {p3, v8}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    .line 1858
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v9

    invoke-virtual {v3, v9, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    move-object v7, p3

    .line 1859
    .end local p3    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v7    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_0
.end method

.method protected resolveType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1939
    invoke-virtual {p0, p1, p4, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/AbstractTypeResolver;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "resolver"    # Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withAbstractTypeResolver(Lcom/fasterxml/jackson/databind/AbstractTypeResolver;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/Deserializers;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "additional"    # Lcom/fasterxml/jackson/databind/deser/Deserializers;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withAdditionalDeserializers(Lcom/fasterxml/jackson/databind/deser/Deserializers;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "additional"    # Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withAdditionalKeyDeserializers(Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method protected abstract withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
.end method

.method public final withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "modifier"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withDeserializerModifier(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 1
    .param p1, "instantiators"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->withValueInstantiators(Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;)Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;

    move-result-object v0

    return-object v0
.end method
