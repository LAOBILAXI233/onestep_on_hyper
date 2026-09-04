.class public Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;
.super Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;
.source "BeanDeserializerFactory.java"

.implements Ljava/io/Serializable;


.field private static final INIT_CAUSE_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final NO_VIEWS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final instance:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

.field private static final serialVersionUID:J = 0x1L


.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Throwable;

    aput-object v1, v0, v2

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->INIT_CAUSE_PARAMS:[Ljava/lang/Class;

    .line 40
    new-array v0, v2, [Ljava/lang/Class;

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->NO_VIEWS:[Ljava/lang/Class;

    .line 52
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    new-instance v1, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;-><init>()V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->instance:Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V

    .line 57
    return-void
.end method


.method protected addBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V
    .locals 35
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v16

    .line 447
    .local v16, "creatorProps":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v23, 0x1

    .line 453
    .local v23, "isConcrete":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultPropertyIgnorals(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v20

    .line 458
    .local v20, "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    if-eqz v20, :cond_1

    .line 459
    invoke-virtual/range {v20 .. v20}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->getIgnoreUnknown()Z

    move-result v21

    .line 460
    .local v21, "ignoreAny":Z
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setIgnoreUnknownProperties(Z)V

    .line 462
    invoke-virtual/range {v20 .. v20}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->getIgnored()Ljava/util/Set;

    move-result-object v10

    .line 463
    .local v10, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 464
    .local v30, "propName":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_1

    .line 447
    .end local v10    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v20    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .end local v21    # "ignoreAny":Z
    .end local v23    # "isConcrete":Z
    .end local v30    # "propName":Ljava/lang/String;
    :cond_0
    const/16 v23, 0x0

    goto :goto_0

    .line 467
    .restart local v20    # "ignorals":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .restart local v23    # "isConcrete":Z
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v10

    .line 471
    .restart local v10    # "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findAnySetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v12

    .line 472
    .local v12, "anySetterMethod":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    const/4 v11, 0x0

    .line 473
    .local v11, "anySetterField":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v12, :cond_4

    .line 474
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v12}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructAnySetter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setAnySetter(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;)V

    .line 484
    :cond_3
    :goto_2
    if-nez v12, :cond_5

    if-nez v11, :cond_5

    .line 485
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getIgnoredPropertyNames()Ljava/util/Set;

    move-result-object v22

    .line 486
    .local v22, "ignored2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v22, :cond_5

    .line 487
    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 490
    .restart local v30    # "propName":Ljava/lang/String;
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_3

    .line 477
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v22    # "ignored2":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v30    # "propName":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findAnySetterField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v11

    .line 478
    if-eqz v11, :cond_3

    .line 479
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v11}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructAnySetter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setAnySetter(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;)V

    goto :goto_2

    .line 494
    :cond_5
    sget-object v5, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_GETTERS_AS_SETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/fasterxml/jackson/databind/MapperFeature;->AUTO_DETECT_GETTERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v33, 0x1

    .line 498
    .local v33, "useGettersAsSetters":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findProperties()Ljava/util/List;

    move-result-object v9

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->filterBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;

    move-result-object v29

    .line 502
    .local v29, "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 503
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .restart local v18    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 504
    .local v25, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v5

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-virtual {v0, v5, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->updateProperties(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    .line 505
    goto :goto_5

    .line 494
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v25    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    .end local v29    # "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .end local v33    # "useGettersAsSetters":Z
    :cond_6
    const/16 v33, 0x0

    goto :goto_4

    .line 509
    .restart local v29    # "propDefs":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .restart local v33    # "useGettersAsSetters":Z
    :cond_7
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_8
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 510
    .local v28, "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    const/16 v27, 0x0

    .line 515
    .local v27, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual/range {v28 .. v28}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->hasSetter()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 516
    invoke-virtual/range {v28 .. v28}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v31

    .line 517
    .local v31, "propertyType":Lcom/fasterxml/jackson/databind/JavaType;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v27

    .line 535
    .end local v31    # "propertyType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_9
    :goto_7
    if-eqz v23, :cond_11

    invoke-virtual/range {v28 .. v28}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->hasConstructorParameter()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 541
    invoke-virtual/range {v28 .. v28}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v26

    .line 542
    .local v26, "name":Ljava/lang/String;
    const/4 v15, 0x0

    .line 543
    .local v15, "cprop":Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
    if-eqz v16, :cond_a

    .line 544
    move-object/from16 v13, v16

    .local v13, "arr$":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    array-length v0, v13

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_8
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    aget-object v14, v13, v19

    .line 545
    .local v14, "cp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    instance-of v5, v14, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    if-eqz v5, :cond_e

    move-object v15, v14

    .line 546
    check-cast v15, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;

    .line 551
    .end local v13    # "arr$":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v14    # "cp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v19    # "i$":I
    .end local v24    # "len$":I
    :cond_a
    if-nez v15, :cond_f

    .line 552
    const-string v5, "Could not find creator property with name \'%s\' (in class %s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v26, v6, v7

    const/4 v7, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 518
    .end local v15    # "cprop":Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
    .end local v26    # "name":Ljava/lang/String;
    :cond_b
    invoke-virtual/range {v28 .. v28}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->hasField()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 519
    invoke-virtual/range {v28 .. v28}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v5

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v31

    .line 520
    .restart local v31    # "propertyType":Lcom/fasterxml/jackson/databind/JavaType;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v27

    .line 521
    goto :goto_7

    .end local v31    # "propertyType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_c
    if-eqz v33, :cond_9

    invoke-virtual/range {v28 .. v28}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->hasGetter()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 525
    invoke-virtual/range {v28 .. v28}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v17

    .line 527
    .local v17, "getter":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawType()Ljava/lang/Class;

    move-result-object v32

    .line 528
    .local v32, "rawPropertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/util/Collection;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_d

    const-class v5, Ljava/util/Map;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 530
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSetterlessProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v27

    goto/16 :goto_7

    .line 544
    .end local v17    # "getter":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v32    # "rawPropertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "arr$":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v14    # "cp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .restart local v15    # "cprop":Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
    .restart local v19    # "i$":I
    .restart local v24    # "len$":I
    .restart local v26    # "name":Ljava/lang/String;
    :cond_e
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8

    .line 556
    .end local v13    # "arr$":[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v14    # "cp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v19    # "i$":I
    .end local v24    # "len$":I
    :cond_f
    if-eqz v27, :cond_10

    .line 557
    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->setFallbackSetter(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 559
    :cond_10
    move-object/from16 v27, v15

    .line 560
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addCreatorProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto/16 :goto_6

    .line 564
    .end local v15    # "cprop":Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
    .end local v26    # "name":Ljava/lang/String;
    :cond_11
    if-eqz v27, :cond_8

    .line 565
    invoke-virtual/range {v28 .. v28}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findViews()[Ljava/lang/Class;

    move-result-object v34

    .line 566
    .local v34, "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-nez v34, :cond_12

    .line 568
    sget-object v5, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 569
    sget-object v34, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->NO_VIEWS:[Ljava/lang/Class;

    .line 573
    :cond_12
    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setViews([Ljava/lang/Class;)V

    .line 574
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto/16 :goto_6

    .line 577
    .end local v27    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v28    # "propDef":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .end local v34    # "views":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_13
    return-void
.end method

.method protected addInjectables(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V
    .locals 11
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 657
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findInjectables()Ljava/util/Map;

    move-result-object v10

    .line 658
    .local v10, "raw":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;>;"
    if-eqz v10, :cond_2

    .line 659
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->canOverrideAccessModifiers()Z

    move-result v7

    .line 660
    .local v7, "fixAccess":Z
    if-eqz v7, :cond_1

    sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x1

    .line 661
    .local v8, "forceAccess":Z
    :goto_0
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 662
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 663
    .local v4, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    if-eqz v7, :cond_0

    .line 664
    invoke-virtual {v4, v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    .line 666
    :cond_0
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addInjectable(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/Object;)V

    goto :goto_1

    .line 660
    .end local v4    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;>;"
    .end local v8    # "forceAccess":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 671
    .end local v7    # "fixAccess":Z
    :cond_2
    return-void
.end method

.method protected addObjectIdReader(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V
    .locals 12
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v7

    .line 320
    .local v7, "objectIdInfo":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    if-nez v7, :cond_0

    .line 350
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getGeneratorType()Ljava/lang/Class;

    move-result-object v6

    .line 328
    .local v6, "implClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p1, v1, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->objectIdResolverInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdResolver;

    move-result-object v5

    .line 331
    .local v5, "resolver":Lcom/fasterxml/jackson/annotation/ObjectIdResolver;
    const-class v1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;

    if-ne v6, v1, :cond_2

    .line 332
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v8

    .line 333
    .local v8, "propName":Lcom/fasterxml/jackson/databind/PropertyName;
    invoke-virtual {p3, v8}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->findProperty(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    .line 334
    .local v4, "idProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-nez v4, :cond_1

    .line 335
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid Object Id definition for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": can not find property with name \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 338
    :cond_1
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 339
    .local v0, "idType":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedObjectIdGenerator;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getScope()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedObjectIdGenerator;-><init>(Ljava/lang/Class;)V

    .line 347
    .end local v8    # "propName":Lcom/fasterxml/jackson/databind/PropertyName;
    .local v2, "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    :goto_1
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 348
    .local v3, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    invoke-static/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/annotation/ObjectIdResolver;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V

    goto :goto_0

    .line 341
    .end local v0    # "idType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v2    # "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    .end local v3    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .end local v4    # "idProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :cond_2
    invoke-virtual {p1, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    .line 342
    .local v9, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    const-class v10, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v1, v9, v10}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    const/4 v10, 0x0

    aget-object v0, v1, v10

    .line 343
    .restart local v0    # "idType":Lcom/fasterxml/jackson/databind/JavaType;
    const/4 v4, 0x0

    .line 344
    .restart local v4    # "idProp":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {p1, v1, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    move-result-object v2

    .restart local v2    # "gen":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    goto :goto_1
.end method

.method protected addReferenceProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V
    .locals 9
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 630
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findBackReferenceProperties()Ljava/util/Map;

    move-result-object v5

    .line 631
    .local v5, "refs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;>;"
    if-eqz v5, :cond_1

    .line 632
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 633
    .local v0, "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 634
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 636
    .local v2, "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    instance-of v7, v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v7, :cond_0

    move-object v7, v2

    .line 637
    check-cast v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .line 641
    .local v6, "type":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;

    move-result-object v4

    .line 643
    .local v4, "propDef":Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    invoke-virtual {p0, p1, p2, v4, v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v7

    invoke-virtual {p3, v3, v7}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addBackReferenceProperty(Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    goto :goto_0

    .line 639
    .end local v4    # "propDef":Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    .end local v6    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    .restart local v6    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    goto :goto_1

    .line 647
    .end local v0    # "en":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "m":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    return-void
.end method

.method public buildBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
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
    .line 219
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 223
    .local v6, "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;

    move-result-object v0

    .line 224
    .local v0, "builder":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setValueInstantiator(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    .line 226
    invoke-virtual {p0, p1, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 227
    invoke-virtual {p0, p1, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addObjectIdReader(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 230
    invoke-virtual {p0, p1, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addReferenceProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 231
    invoke-virtual {p0, p1, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addInjectables(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 233
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    .line 235
    .local v1, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 236
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 237
    .local v5, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v5, v1, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->updateBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;

    move-result-object v0

    .line 238
    goto :goto_0

    .line 220
    .end local v0    # "builder":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .end local v1    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    .end local v6    # "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :catch_0
    move-exception v3

    .line 221
    .local v3, "error":Ljava/lang/NoClassDefFoundError;
    new-instance v2, Lcom/fasterxml/jackson/databind/deser/impl/NoClassDefFoundDeserializer;

    invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/deser/impl/NoClassDefFoundDeserializer;-><init>(Ljava/lang/NoClassDefFoundError;)V

    .line 257
    .end local v3    # "error":Ljava/lang/NoClassDefFoundError;
    :cond_0
    return-object v2

    .line 245
    .restart local v0    # "builder":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .restart local v1    # "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .restart local v6    # "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canInstantiate()Z

    move-result v7

    if-nez v7, :cond_2

    .line 246
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->buildAbstract()Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;

    move-result-object v2

    .line 252
    .local v2, "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :goto_1
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 253
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 254
    .restart local v5    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v5, v1, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 255
    goto :goto_2

    .line 248
    .end local v2    # "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    :cond_2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->build()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .restart local v2    # "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    goto :goto_1
.end method

.method protected buildBuilderBasedDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 11
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "builderDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
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
    .line 273
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v8

    .line 274
    .local v8, "valueInstantiator":Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v4

    .line 275
    .local v4, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;

    move-result-object v2

    .line 276
    .local v2, "builder":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    invoke-virtual {v2, v8}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setValueInstantiator(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    .line 278
    invoke-virtual {p0, p1, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 279
    invoke-virtual {p0, p1, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addObjectIdReader(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 282
    invoke-virtual {p0, p1, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addReferenceProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 283
    invoke-virtual {p0, p1, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addInjectables(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 285
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->findPOJOBuilderConfig()Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;

    move-result-object v3

    .line 286
    .local v3, "builderConfig":Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
    if-nez v3, :cond_1

    const-string v1, "build"

    .line 290
    .local v1, "buildMethodName":Ljava/lang/String;
    :goto_0
    const/4 v9, 0x0

    invoke-virtual {p3, v1, v9}, Lcom/fasterxml/jackson/databind/BeanDescription;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    .line 291
    .local v0, "buildMethod":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 293
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;

    move-result-object v9

    sget-object v10, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v4, v10}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v10

    invoke-static {v9, v10}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 296
    :cond_0
    invoke-virtual {v2, v0, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;)V

    .line 298
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 299
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 300
    .local v7, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v7, v4, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->updateBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;

    move-result-object v2

    .line 301
    goto :goto_1

    .line 286
    .end local v0    # "buildMethod":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .end local v1    # "buildMethodName":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    :cond_1
    iget-object v1, v3, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;->buildMethodName:Ljava/lang/String;

    goto :goto_0

    .line 303
    .restart local v0    # "buildMethod":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .restart local v1    # "buildMethodName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, p2, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->buildBuilderBased(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    .line 307
    .local v5, "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 308
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 309
    .restart local v7    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v7, v4, p3, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v5

    .line 310
    goto :goto_2

    .line 312
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    :cond_3
    return-object v5
.end method

.method public buildThrowableDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 12
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
    .line 357
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    .line 359
    .local v2, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructBeanDeserializerBuilder(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;

    move-result-object v1

    .line 360
    .local v1, "builder":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->setValueInstantiator(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V

    .line 362
    invoke-virtual {p0, p1, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->addBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V

    .line 369
    const-string v9, "initCause"

    sget-object v10, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->INIT_CAUSE_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p3, v9, v10}, Lcom/fasterxml/jackson/databind/BeanDescription;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    .line 370
    .local v0, "am":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v9

    new-instance v10, Lcom/fasterxml/jackson/databind/PropertyName;

    const-string v11, "cause"

    invoke-direct {v10, v11}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v0, v10}, Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;->construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;

    move-result-object v8

    .line 373
    .local v8, "propDef":Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    invoke-virtual {p0, p1, p3, v8, v9}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->constructSettableProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v7

    .line 375
    .local v7, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    if-eqz v7, :cond_0

    .line 380
    const/4 v9, 0x1

    invoke-virtual {v1, v7, v9}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addOrReplaceProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Z)V

    .line 385
    .end local v7    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v8    # "propDef":Lcom/fasterxml/jackson/databind/util/SimpleBeanPropertyDefinition;
    :cond_0
    const-string v9, "localizedMessage"

    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 387
    const-string v9, "suppressed"

    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 391
    const-string v9, "message"

    invoke-virtual {v1, v9}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    .line 394
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 395
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 396
    .local v6, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v6, v2, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->updateBuilder(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;

    move-result-object v1

    .line 397
    goto :goto_0

    .line 399
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    :cond_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->build()Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 404
    .local v3, "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    instance-of v9, v3, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    if-eqz v9, :cond_2

    .line 405
    new-instance v4, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;

    check-cast v3, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    .end local v3    # "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    invoke-direct {v4, v3}, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;)V

    .local v4, "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    move-object v3, v4

    .line 409
    .end local v4    # "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .restart local v3    # "deserializer":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_2
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 410
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 411
    .restart local v6    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {v6, v2, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 412
    goto :goto_1

    .line 414
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    :cond_3
    return-object v3
.end method

.method protected constructAnySetter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
    .locals 9
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "mutator"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->canOverrideAccessModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    .line 691
    :cond_0
    const/4 v2, 0x0

    .line 692
    .local v2, "type":Lcom/fasterxml/jackson/databind/JavaType;
    instance-of v1, p3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v1, :cond_4

    move-object v1, p3

    .line 694
    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 701
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 702
    new-instance v0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v4

    sget-object v6, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V

    .line 706
    .local v0, "prop":Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v7

    .line 707
    .local v7, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    if-nez v7, :cond_2

    .line 708
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    check-cast v7, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 710
    .restart local v7    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_2
    if-eqz v7, :cond_3

    .line 712
    invoke-virtual {p1, v7, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v7

    .line 714
    :cond_3
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 715
    .local v8, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    new-instance v3, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    move-object v4, v0

    move-object v5, p3

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;-><init>(Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V

    return-object v3

    .line 695
    .end local v0    # "prop":Lcom/fasterxml/jackson/databind/BeanProperty$Std;
    .end local v7    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    .end local v8    # "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    :cond_4
    instance-of v1, p3, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    if-eqz v1, :cond_1

    move-object v1, p3

    .line 697
    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    goto :goto_0
.end method

.method protected constructBeanDeserializerBuilder(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;

    .prologue
    .line 431
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;-><init>(Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V

    return-object v0
.end method

.method protected constructSettableProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 10
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p4, "propType0"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getNonConstructorMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v7

    .line 732
    .local v7, "mutator":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->canOverrideAccessModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    invoke-virtual {v7, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    .line 735
    :cond_0
    invoke-virtual {p0, p1, v7, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 737
    .local v2, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 739
    .local v3, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    instance-of v1, v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v1, :cond_5

    .line 740
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v4

    move-object v5, v7

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/MethodProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    .line 746
    .local v0, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    :goto_0
    invoke-virtual {p0, p1, v7}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 747
    .local v6, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v6, :cond_1

    .line 748
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    check-cast v6, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 750
    .restart local v6    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_1
    if-eqz v6, :cond_2

    .line 751
    invoke-virtual {p1, v6, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 752
    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    .line 755
    :cond_2
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findReferenceType()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v9

    .line 756
    .local v9, "ref":Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->isManagedReference()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 757
    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setManagedReferenceName(Ljava/lang/String;)V

    .line 759
    :cond_3
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object v8

    .line 760
    .local v8, "objectIdInfo":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    if-eqz v8, :cond_4

    .line 761
    invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)V

    .line 763
    :cond_4
    return-object v0

    .line 743
    .end local v0    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v6    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    .end local v8    # "objectIdInfo":Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .end local v9    # "ref":Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    :cond_5
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v4

    move-object v5, v7

    check-cast v5, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/FieldProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)V

    .restart local v0    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    goto :goto_0
.end method

.method protected constructSetterlessProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .locals 7
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 774
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v5

    .line 776
    .local v5, "getter":Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->canOverrideAccessModifiers()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 777
    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->fixAccess(Z)V

    .line 779
    :cond_0
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    invoke-virtual {p0, p1, v5, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->resolveMemberAndTypeAnnotations(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 780
    .local v2, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;

    .line 781
    .local v3, "typeDeser":Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v4

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/SetterlessProperty;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    .line 783
    .local v0, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {p0, p1, v5}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 784
    .local v6, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-nez v6, :cond_1

    .line 785
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    check-cast v6, Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 787
    .restart local v6    # "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    :cond_1
    if-eqz v6, :cond_2

    .line 788
    invoke-virtual {p1, v6, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v6

    .line 789
    invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v0

    .line 791
    :cond_2
    return-object v0
.end method

.method public createBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 5
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
    .line 100
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v1

    .line 102
    .local v1, "config":Lcom/fasterxml/jackson/databind/DeserializationConfig;
    invoke-virtual {p0, p2, v1, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_findCustomBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    .line 103
    .local v2, "custom":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v2, :cond_0

    .line 141
    .end local v2    # "custom":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    :goto_0
    return-object v2

    .line 110
    .restart local v2    # "custom":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isThrowable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 111
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildThrowableDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    goto :goto_0

    .line 118
    :cond_1
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z

    move-result v4

    if-nez v4, :cond_2

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->materializeAbstractType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 121
    .local v0, "concreteType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object p3

    .line 126
    invoke-virtual {p0, p1, v0, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    goto :goto_0

    .line 131
    .end local v0    # "concreteType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findStdDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v3

    .line 132
    .local v3, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<Ljava/lang/Object;>;"
    if-eqz v3, :cond_3

    move-object v2, v3

    .line 133
    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->isPotentialBeanType(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 138
    const/4 v2, 0x0

    goto :goto_0

    .line 141
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    goto :goto_0
.end method

.method public createBuilderBasedDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "valueType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/lang/Class",
            "<*>;)",
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
    .line 151
    .local p4, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 152
    .local v1, "builderType":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForBuilder(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 153
    .local v0, "builderDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->buildBuilderBasedDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v2

    return-object v2
.end method

.method protected filterBeanProps(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Ljava/util/List;Ljava/util/Set;)Ljava/util/List;
    .locals 8
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .param p3, "builder"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
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
    .line 591
    .local p4, "propDefsIn":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    .local p5, "ignored":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 593
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 595
    .local v1, "ignoredTypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;

    .line 596
    .local v3, "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, "name":Ljava/lang/String;
    invoke-interface {p5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 600
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->hasConstructorParameter()Z

    move-result v6

    if-nez v6, :cond_3

    .line 601
    const/4 v4, 0x0

    .line 602
    .local v4, "rawPropertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->hasSetter()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 603
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v4

    .line 609
    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v6

    invoke-virtual {p0, v6, p2, v4, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->isIgnorableType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 612
    invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addIgnorable(Ljava/lang/String;)V

    goto :goto_0

    .line 604
    :cond_2
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->hasField()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 605
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getRawType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    .line 616
    .end local v4    # "rawPropertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 618
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "property":Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    :cond_4
    return-object v5
.end method

.method protected findStdDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 4
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
    .line 166
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->findDefaultDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 168
    .local v0, "deser":Lcom/fasterxml/jackson/databind/JsonDeserializer;, "Lcom/fasterxml/jackson/databind/JsonDeserializer<*>;"
    if-eqz v0, :cond_0

    .line 169
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasDeserializerModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializerModifiers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;

    .line 171
    .local v2, "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    invoke-virtual {v2, v3, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;->modifyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    .line 172
    goto :goto_0

    .line 175
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mod":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerModifier;
    :cond_0
    return-object v0
.end method

.method protected isIgnorableType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/Class;Ljava/util/Map;)Z
    .locals 5
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Lcom/fasterxml/jackson/databind/BeanDescription;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 834
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "ignoredTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Boolean;>;"
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 835
    .local v2, "status":Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    .line 836
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 852
    :goto_0
    return v3

    .line 839
    :cond_0
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->findConfigOverride(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;

    move-result-object v1

    .line 840
    .local v1, "override":Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;
    if-eqz v1, :cond_1

    .line 841
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/ConfigOverride;->getIsIgnoredType()Ljava/lang/Boolean;

    move-result-object v2

    .line 843
    :cond_1
    if-nez v2, :cond_2

    .line 844
    invoke-virtual {p1, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 845
    .local v0, "desc":Lcom/fasterxml/jackson/databind/BeanDescription;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v2

    .line 847
    if-nez v2, :cond_2

    .line 848
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 851
    .end local v0    # "desc":Lcom/fasterxml/jackson/databind/BeanDescription;
    :cond_2
    invoke-interface {p4, p3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0
.end method

.method protected isPotentialBeanType(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 810
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "typeStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 812
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") as a Bean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 814
    :cond_0
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isProxyType(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Proxy class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as a Bean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 820
    :cond_1
    invoke-static {p1, v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isLocalType(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    .line 821
    if-eqz v0, :cond_2

    .line 822
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not deserialize Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") as a Bean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 824
    :cond_2
    return v2
.end method

.method protected materializeAbstractType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 4
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->abstractTypeResolvers()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/AbstractTypeResolver;

    .line 184
    .local v2, "r":Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Lcom/fasterxml/jackson/databind/AbstractTypeResolver;->resolveAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    .line 185
    .local v0, "concrete":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v0, :cond_0

    .line 189
    .end local v0    # "concrete":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v2    # "r":Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public withConfig(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
    .locals 3
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;

    if-ne v0, p1, :cond_0

    .line 81
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;
    :goto_0
    return-object p0

    .line 76
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    if-eq v0, v1, :cond_1

    .line 77
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtype of BeanDeserializerFactory ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") has not properly overridden method \'withAdditionalDeserializers\': can not instantiate subtype with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "additional deserializer definitions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    new-instance p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerFactory;-><init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V

    goto :goto_0
.end method
