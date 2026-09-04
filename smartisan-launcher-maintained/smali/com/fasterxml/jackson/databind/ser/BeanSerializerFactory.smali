.class public Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;
.super Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;
.source "BeanSerializerFactory.java"

.implements Ljava/io/Serializable;


.field public static final instance:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

.field private static final serialVersionUID:J = 0x1L


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->instance:Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BasicSerializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V

    .line 81
    return-void
.end method


.method protected _constructWriter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;ZLcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 13
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p3, "pb"    # Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;
    .param p4, "staticTyping"    # Z
    .param p5, "accessor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 792
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v2

    .line 793
    .local v2, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->canOverrideAccessModifiers()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 794
    sget-object v4, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v4

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    .line 796
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 797
    .local v3, "type":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v1, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getWrapperName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v5

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getMetadata()Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-result-object v7

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 801
    .local v1, "property":Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    move-object/from16 v0, p5

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v8

    .line 805
    .local v8, "annotatedSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    instance-of v4, v8, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;

    if-eqz v4, :cond_1

    move-object v4, v8

    .line 806
    check-cast v4, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;

    invoke-interface {v4, p1}, Lcom/fasterxml/jackson/databind/ser/ResolvableSerializer;->resolve(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    .line 809
    :cond_1
    invoke-virtual {p1, v8, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v8

    .line 811
    const/4 v10, 0x0

    .line 813
    .local v10, "contentTypeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 814
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {p0, v3, v4, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findPropertyContentTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v10

    .line 817
    :cond_3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {p0, v3, v4, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findPropertyTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v9

    .local v9, "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    move-object/from16 v4, p3

    move-object v5, p1

    move-object v6, p2

    move-object v7, v3

    move-object/from16 v11, p5

    move/from16 v12, p4

    .line 818
    invoke-virtual/range {v4 .. v12}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->buildWriter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v4

    return-object v4
.end method

.method protected _createSerializer2(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 7
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
    .line 180
    const/4 v3, 0x0

    .line 181
    .local v3, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v0

    .line 185
    .local v0, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    if-nez p4, :cond_0

    .line 187
    const/4 v6, 0x0

    invoke-virtual {p0, v0, p3, v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->usesStaticTyping(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Z

    move-result p4

    .line 190
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->buildContainerSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 192
    if-eqz v3, :cond_3

    move-object v4, v3

    .line 247
    .end local v3    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .local v4, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :goto_0
    return-object v4

    .line 196
    .end local v4    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .restart local v3    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, p2

    .line 197
    check-cast v6, Lcom/fasterxml/jackson/databind/type/ReferenceType;

    invoke-virtual {p0, p1, v6, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findReferenceSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 209
    :cond_2
    :goto_1
    if-nez v3, :cond_3

    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerByAnnotations(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 214
    :cond_3
    if-nez v3, :cond_4

    .line 218
    invoke-virtual {p0, p2, v0, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerByLookup(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 219
    if-nez v3, :cond_4

    .line 220
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerByPrimaryType(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 221
    if-nez v3, :cond_4

    .line 225
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findBeanSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 227
    if-nez v3, :cond_4

    .line 228
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerByAddonType(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 232
    if-nez v3, :cond_4

    .line 233
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 239
    :cond_4
    if-eqz v3, :cond_7

    .line 241
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 242
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 243
    .local v2, "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    invoke-virtual {v2, v0, p3, v3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->modifySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 244
    goto :goto_2

    .line 200
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    :cond_5
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/ser/Serializers;

    .line 201
    .local v5, "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    invoke-interface {v5, v0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v3

    .line 202
    if-eqz v3, :cond_6

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    :cond_7
    move-object v4, v3

    .line 247
    .end local v3    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .restart local v4    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    goto :goto_0
.end method

.method protected constructBeanSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 24
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
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
    .line 381
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v5

    const-class v11, Ljava/lang/Object;

    if-ne v5, v11, :cond_1

    .line 382
    const-class v5, Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getUnknownTypeSerializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v22

    .line 469
    :cond_0
    :goto_0
    return-object v22

    .line 385
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v18

    .line 386
    .local v18, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructBeanSerializerBuilder(Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;

    move-result-object v17

    .line 387
    .local v17, "builder":Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;
    invoke-virtual/range {v17 .. v18}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->setConfig(Lcom/fasterxml/jackson/databind/SerializationConfig;)V

    .line 390
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findBeanProperties(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;)Ljava/util/List;

    move-result-object v21

    .line 391
    .local v21, "props":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    if-nez v21, :cond_2

    .line 392
    new-instance v21, Ljava/util/ArrayList;

    .end local v21    # "props":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .restart local v21    # "props":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v11

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v11, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findAndAddVirtualProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/util/List;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 402
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 403
    .local v20, "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->changeProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v21

    .line 404
    goto :goto_2

    .line 394
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->removeOverlappingTypeIds(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;Ljava/util/List;)Ljava/util/List;

    move-result-object v21

    goto :goto_1

    .line 408
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->filterBeanProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v21

    .line 411
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 412
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 413
    .restart local v20    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->orderProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v21

    .line 414
    goto :goto_3

    .line 421
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructObjectIdHandler(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->setObjectIdWriter(Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V

    .line 423
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->setProperties(Ljava/util/List;)V

    .line 424
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findFilterId(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->setFilterId(Ljava/lang/Object;)V

    .line 426
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findAnyGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v14

    .line 427
    .local v14, "anyGetter":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v14, :cond_7

    .line 428
    invoke-virtual/range {v18 .. v18}, Lcom/fasterxml/jackson/databind/SerializationConfig;->canOverrideAccessModifiers()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 429
    sget-object v5, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v5

    invoke-virtual {v14, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    .line 431
    :cond_5
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 433
    .local v6, "type":Lcom/fasterxml/jackson/databind/JavaType;
    sget-object v5, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_STATIC_TYPING:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v7

    .line 434
    .local v7, "staticTyping":Z
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v23

    .line 435
    .local v23, "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v8

    .line 438
    .local v8, "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v16

    .line 439
    .local v16, "anySer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-nez v16, :cond_6

    .line 441
    const/4 v5, 0x0

    check-cast v5, Ljava/util/Set;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;->construct(Ljava/util/Set;Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/std/MapSerializer;

    move-result-object v16

    .line 445
    :cond_6
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v10

    .line 446
    .local v10, "name":Lcom/fasterxml/jackson/databind/PropertyName;
    new-instance v9, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    const/4 v12, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v13

    sget-object v15, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object/from16 v11, v23

    invoke-direct/range {v9 .. v15}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 448
    .local v9, "anyProp":Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    new-instance v5, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;

    move-object/from16 v0, v16

    invoke-direct {v5, v9, v14, v0}, Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;-><init>(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->setAnyGetter(Lcom/fasterxml/jackson/databind/ser/AnyGetterWriter;)V

    .line 451
    .end local v6    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v7    # "staticTyping":Z
    .end local v8    # "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .end local v9    # "anyProp":Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    .end local v10    # "name":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v16    # "anySer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    .end local v23    # "valueType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->processViews(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->hasSerializerModifiers()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 455
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializerModifiers()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;

    .line 456
    .restart local v20    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;->updateBuilder(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;)Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;

    move-result-object v17

    .line 457
    goto :goto_4

    .line 460
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "mod":Lcom/fasterxml/jackson/databind/ser/BeanSerializerModifier;
    :cond_8
    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->build()Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v22

    .line 461
    .local v22, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    if-nez v22, :cond_0

    .line 465
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->hasKnownClassAnnotations()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 466
    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->createDummy()Lcom/fasterxml/jackson/databind/ser/BeanSerializer;

    move-result-object v22

    goto/16 :goto_0
.end method

.method protected constructBeanSerializerBuilder(Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;
    .locals 1
    .param p1, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;

    .prologue
    .line 539
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;-><init>(Lcom/fasterxml/jackson/databind/BeanDescription;)V

    return-object v0
.end method

.method protected constructFilteredBeanWriter(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 1
    .param p1, "writer"    # Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 529
    .local p2, "inViews":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter;->constructViewBased(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v0

    return-object v0
.end method

.method protected constructObjectIdHandler(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .locals 14
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 476
    .local p3, "props":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v7

    .line 477
    .local v7, "objectIdInfo":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    if-nez v7, :cond_0

    .line 478
    const/4 v11, 0x0

    .line 517
    :goto_0
    return-object v11

    .line 481
    :cond_0
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getGeneratorType()Ljava/lang/Class;

    move-result-object v5

    .line 484
    .local v5, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v11, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;

    if-ne v5, v11, :cond_4

    .line 485
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    .line 486
    .local v9, "propName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 488
    .local v3, "idProp":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    .line 489
    .local v6, "len":I
    :goto_1
    if-ne v2, v6, :cond_1

    .line 490
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid Object Id definition for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": can not find property with name \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 493
    :cond_1
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 494
    .local v8, "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 495
    move-object v3, v8

    .line 499
    if-lez v2, :cond_2

    .line 500
    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 501
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 506
    :cond_2
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 507
    .local v4, "idType":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;

    invoke-direct {v1, v7, v3}, Lcom/fasterxml/jackson/databind/ser/impl/PropertyBasedObjectIdGenerator;-><init>(Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    .line 509
    .local v1, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    const/4 v11, 0x0

    check-cast v11, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z

    move-result v12

    invoke-static {v4, v11, v1, v12}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v11

    goto :goto_0

    .line 488
    .end local v1    # "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    .end local v4    # "idType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 513
    .end local v2    # "i":I
    .end local v3    # "idProp":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v6    # "len":I
    .end local v8    # "prop":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v9    # "propName":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1, v5}, Lcom/fasterxml/jackson/databind/SerializerProvider;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    .line 515
    .local v10, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v11

    const-class v12, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v11, v10, v12}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v4, v11, v12

    .line 516
    .restart local v4    # "idType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v11

    invoke-virtual {p1, v11, v7}, Lcom/fasterxml/jackson/databind/SerializerProvider;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object v1

    .line 517
    .restart local v1    # "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v11

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getAlwaysAsId()Z

    move-result v12

    invoke-static {v4, v11, v1, v12}, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;

    move-result-object v11

    goto/16 :goto_0
.end method

.method protected constructPropertyBuilder(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;

    .prologue
    .line 535
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;-><init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)V

    return-object v0
.end method

.method public createSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 9
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "origType"    # Lcom/fasterxml/jackson/databind/JavaType;
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

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    .line 138
    .local v1, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 139
    .local v0, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    .line 140
    .local v5, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-eqz v5, :cond_0

    move-object v8, v5

    .line 173
    :goto_0
    return-object v8

    .line 145
    :cond_0
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v4

    .line 146
    .local v4, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    if-nez v4, :cond_2

    move-object v7, p2

    .line 148
    .local v7, "type":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_1
    if-ne v7, p2, :cond_3

    .line 149
    const/4 v6, 0x0

    .line 157
    .local v6, "staticTyping":Z
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->findSerializationConverter()Lcom/fasterxml/jackson/databind/util/Converter;

    move-result-object v2

    .line 158
    .local v2, "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-nez v2, :cond_4

    .line 159
    invoke-virtual {p0, p1, v7, v0, v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_createSerializer2(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v8

    goto :goto_0

    .line 146
    .end local v2    # "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "staticTyping":Z
    .end local v7    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v8

    invoke-virtual {v4, v1, v8, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineSerializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    goto :goto_1

    .line 151
    .restart local v7    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_3
    const/4 v6, 0x1

    .line 152
    .restart local v6    # "staticTyping":Z
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 153
    invoke-virtual {v1, v7}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    goto :goto_2

    .line 161
    .restart local v2    # "conv":Lcom/fasterxml/jackson/databind/util/Converter;, "Lcom/fasterxml/jackson/databind/util/Converter<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v8

    invoke-interface {v2, v8}, Lcom/fasterxml/jackson/databind/util/Converter;->getOutputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 164
    .local v3, "delegateType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 165
    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v8

    invoke-virtual {p0, p1, v8}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->findSerializerFromAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    .line 170
    :cond_5
    if-nez v5, :cond_6

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->isJavaLangObject()Z

    move-result v8

    if-nez v8, :cond_6

    .line 171
    const/4 v8, 0x1

    invoke-virtual {p0, p1, v3, v0, v8}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_createSerializer2(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    .line 173
    :cond_6
    new-instance v8, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;

    invoke-direct {v8, v2, v3, v5}, Lcom/fasterxml/jackson/databind/ser/std/StdDelegatingSerializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    goto :goto_0
.end method

.method protected customSerializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/Serializers;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;->serializers()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method protected filterBeanProperties(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 634
    .local p3, "props":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v0

    .line 636
    .local v0, "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    if-eqz v0, :cond_1

    .line 637
    invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->findIgnoredForSerialization()Ljava/util/Set;

    move-result-object v1

    .line 638
    .local v1, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 639
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 640
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 641
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 642
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 647
    .end local v1    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    :cond_1
    return-object p3
.end method

.method protected findBeanProperties(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;)Ljava/util/List;
    .locals 15
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 569
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findProperties()Ljava/util/List;

    move-result-object v12

    .line 570
    .local v12, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v8

    .line 573
    .local v8, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    move-object/from16 v0, p2

    invoke-virtual {p0, v8, v0, v12}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->removeIgnorableTypes(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)V

    .line 576
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->REQUIRE_SETTERS_FOR_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v8, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    move-object/from16 v0, p2

    invoke-virtual {p0, v8, v0, v12}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->removeSetterlessGetters(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)V

    .line 581
    :cond_0
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 582
    const/4 v14, 0x0

    .line 614
    :cond_1
    return-object v14

    .line 585
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v8, v0, v1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->usesStaticTyping(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Z

    move-result v5

    .line 586
    .local v5, "staticTyping":Z
    move-object/from16 v0, p2

    invoke-virtual {p0, v8, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructPropertyBuilder(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;

    move-result-object v4

    .line 588
    .local v4, "pb":Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 589
    .local v14, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/SerializationConfig;->canOverrideAccessModifiers()Z

    move-result v9

    .line 590
    .local v9, "fixAccess":Z
    if-eqz v9, :cond_5

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v8, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v10, 0x1

    .line 591
    .local v10, "forceAccess":Z
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 592
    .local v3, "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v7

    .line 594
    .local v7, "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isTypeId()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 595
    if-eqz v7, :cond_3

    .line 596
    if-eqz v9, :cond_4

    .line 597
    invoke-virtual {v7, v10}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    .line 599
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->setTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V

    goto :goto_1

    .line 590
    .end local v3    # "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v7    # "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v10    # "forceAccess":Z
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v10, 0x0

    goto :goto_0

    .line 604
    .restart local v3    # "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .restart local v7    # "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .restart local v10    # "forceAccess":Z
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findReferenceType()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v13

    .line 605
    .local v13, "refType":Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    if-eqz v13, :cond_7

    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->isBackReference()Z

    move-result v1

    if-nez v1, :cond_3

    .line 608
    :cond_7
    instance-of v1, v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v1, :cond_8

    move-object v6, v7

    .line 609
    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_constructWriter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;ZLcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    move-object v6, v7

    .line 611
    check-cast v6, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-object v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_constructWriter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;ZLcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public findBeanSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 1
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
    .line 266
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructBeanSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v0

    goto :goto_0
.end method

.method public findPropertyContentTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .locals 6
    .param p1, "containerType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p3, "accessor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 348
    .local v2, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 349
    .local v0, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v0, p2, p3, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 353
    .local v1, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    if-nez v1, :cond_0

    .line 354
    invoke-virtual {p0, p2, v2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v4

    .line 360
    .local v4, "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    :goto_0
    return-object v4

    .line 356
    .end local v4    # "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v5

    invoke-virtual {v5, p2, p3, v2}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object v3

    .line 358
    .local v3, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    invoke-interface {v1, p2, v2, v3}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v4

    .restart local v4    # "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    goto :goto_0
.end method

.method public findPropertyTypeSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .locals 5
    .param p1, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p3, "accessor"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    .line 319
    .local v0, "ai":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    invoke-virtual {v0, p2, p3, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    .line 323
    .local v1, "b":Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;, "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder<*>;"
    if-nez v1, :cond_0

    .line 324
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v3

    .line 330
    .local v3, "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    :goto_0
    return-object v3

    .line 326
    .end local v3    # "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;

    move-result-object v4

    invoke-virtual {v4, p2, p3, p1}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypesByClass(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;

    move-result-object v2

    .line 328
    .local v2, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    invoke-interface {v1, p2, p1, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v3

    .restart local v3    # "typeSer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    goto :goto_0
.end method

.method public findReferenceSerializer(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/BeanDescription;Z)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 9
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "refType"    # Lcom/fasterxml/jackson/databind/type/ReferenceType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p4, "staticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/type/ReferenceType;",
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
    .line 283
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 284
    .local v6, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    .line 285
    .local v4, "contentTypeSerializer":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getConfig()Lcom/fasterxml/jackson/databind/SerializationConfig;

    move-result-object v1

    .line 286
    .local v1, "config":Lcom/fasterxml/jackson/databind/SerializationConfig;
    if-nez v4, :cond_0

    .line 287
    invoke-virtual {p0, v1, v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->createTypeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v4

    .line 289
    :cond_0
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/JsonSerializer;

    .line 290
    .local v5, "contentSerializer":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/Serializers;

    .local v0, "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    move-object v2, p2

    move-object v3, p3

    .line 291
    invoke-interface/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/Serializers;->findReferenceSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ReferenceType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v8

    .line 293
    .local v8, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    if-eqz v8, :cond_1

    .line 301
    .end local v0    # "serializers":Lcom/fasterxml/jackson/databind/ser/Serializers;
    .end local v8    # "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    :goto_0
    return-object v8

    .line 297
    :cond_2
    const-class v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/databind/type/ReferenceType;->isTypeOrSubTypeOf(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    new-instance v8, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;

    invoke-direct {v8, p2, p4, v4, v5}, Lcom/fasterxml/jackson/databind/ser/std/AtomicReferenceSerializer;-><init>(Lcom/fasterxml/jackson/databind/type/ReferenceType;ZLcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    goto :goto_0

    .line 301
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isProxyType(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processViews(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;)V
    .locals 9
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "builder"    # Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;

    .prologue
    .line 662
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->getProperties()Ljava/util/List;

    move-result-object v5

    .line 663
    .local v5, "props":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    sget-object v8, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v8}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v3

    .line 664
    .local v3, "includeByDefault":Z
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 665
    .local v4, "propCount":I
    const/4 v7, 0x0

    .line 666
    .local v7, "viewsFound":I
    new-array v1, v4, [Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 668
    .local v1, "filtered":[Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 669
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 670
    .local v0, "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getViews()[Ljava/lang/Class;

    move-result-object v6

    .line 671
    .local v6, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v6, :cond_1

    .line 672
    if-eqz v3, :cond_0

    .line 673
    aput-object v0, v1, v2

    .line 668
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 676
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 677
    invoke-virtual {p0, v0, v6}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->constructFilteredBeanWriter(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v8

    aput-object v8, v1, v2

    goto :goto_1

    .line 681
    .end local v0    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v6    # "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    if-eqz v3, :cond_3

    if-nez v7, :cond_3

    .line 685
    :goto_2
    return-void

    .line 684
    :cond_3
    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;->setFilteredProperties([Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;)V

    goto :goto_2
.end method

.method protected removeIgnorableTypes(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)V
    .locals 11
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 695
    .local p3, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v4

    .line 696
    .local v4, "intr":Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 697
    .local v3, "ignores":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 698
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 699
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 700
    .local v7, "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getAccessor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v1

    .line 701
    .local v1, "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-nez v1, :cond_1

    .line 702
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 705
    :cond_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v9

    .line 706
    .local v9, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 707
    .local v8, "result":Ljava/lang/Boolean;
    if-nez v8, :cond_4

    .line 709
    invoke-virtual {p1, v9}, Lcom/fasterxml/jackson/databind/SerializationConfig;->findConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;

    move-result-object v6

    .line 710
    .local v6, "override":Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
    if-eqz v6, :cond_2

    .line 711
    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->getIsIgnoredType()Ljava/lang/Boolean;

    move-result-object v8

    .line 713
    :cond_2
    if-nez v8, :cond_3

    .line 714
    invoke-virtual {p1, v9}, Lcom/fasterxml/jackson/databind/SerializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v2

    .line 715
    .local v2, "desc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    .line 716
    .local v0, "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v8

    .line 718
    if-nez v8, :cond_3

    .line 719
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 722
    .end local v0    # "ac":Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .end local v2    # "desc":Lcom/fasterxml/jackson/databind/BeanDescription;
    :cond_3
    invoke-virtual {v3, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    .end local v6    # "override":Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 726
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 729
    .end local v1    # "accessor":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v7    # "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v8    # "result":Ljava/lang/Boolean;
    .end local v9    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    return-void
.end method

.method protected removeOverlappingTypeIds(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/ser/BeanSerializerBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    .local p4, "props":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "end":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 759
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 760
    .local v0, "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->getTypeSerializer()Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;

    move-result-object v5

    .line 761
    .local v5, "td":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-result-object v8

    sget-object v9, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    if-eq v8, v9, :cond_1

    .line 758
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 764
    :cond_1
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    .line 765
    .local v4, "n":Ljava/lang/String;
    invoke-static {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v6

    .line 767
    .local v6, "typePropName":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    .line 768
    .local v7, "w2":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    if-eq v7, v0, :cond_2

    invoke-virtual {v7, v6}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->wouldConflictWithName(Lcom/fasterxml/jackson/databind/PropertyName;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 769
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)V

    goto :goto_1

    .line 774
    .end local v0    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "n":Ljava/lang/String;
    .end local v5    # "td":Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .end local v6    # "typePropName":Lcom/fasterxml/jackson/databind/PropertyName;
    .end local v7    # "w2":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    :cond_3
    return-object p4
.end method

.method protected removeSetterlessGetters(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)V
    .locals 3
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 737
    .local p3, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 738
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 739
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 742
    .local v1, "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->couldDeserialize()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->isExplicitlyIncluded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 743
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 746
    .end local v1    # "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_1
    return-void
.end method

.method public withConfig(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)Lcom/fasterxml/jackson/databind/ser/SerializerFactory;
    .locals 3
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;

    if-ne v0, p1, :cond_0

    .line 106
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;
    :goto_0
    return-object p0

    .line 101
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    if-eq v0, v1, :cond_1

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of BeanSerializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has not properly overridden method \'withAdditionalSerializers\': can not instantiate subtype with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "additional serializer definitions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    new-instance p0, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/SerializerFactoryConfig;)V

    goto :goto_0
.end method
