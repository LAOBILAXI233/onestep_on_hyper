.class public Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;
.super Ljava/lang/Object;
.source "PropertyBuilder.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/PropertyBuilder$1;
    }
.end annotation


.field private static final NO_DEFAULT_MARKER:Ljava/lang/Object;


.field protected final _annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final _beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

.field protected final _config:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field protected _defaultBean:Ljava/lang/Object;

.field protected final _defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->NO_DEFAULT_MARKER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)V
    .locals 1
    .param p1, "config"    # Lcom/fasterxml/jackson/databind/SerializationConfig;
    .param p2, "beanDesc"    # Lcom/fasterxml/jackson/databind/BeanDescription;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    .line 46
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    .line 49
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultPropertyInclusion(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->findPropertyInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    .line 51
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 52
    return-void
.end method


.method protected _throwWrapped(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "propName"    # Ljava/lang/String;
    .param p3, "defaultBean"    # Ljava/lang/Object;

    .prologue
    .line 334
    move-object v0, p1

    .line 335
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 336
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_0
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Error;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 339
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "t":Ljava/lang/Throwable;
    throw v0

    .line 340
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' of default "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected buildWriter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .locals 20
    .param p1, "prov"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "propDef"    # Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
    .param p3, "declaredType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "typeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p6, "contentTypeSer"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .param p7, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p8, "defaultUseStaticTyping"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 77
    .local p4, "ser":Lcom/fasterxml/jackson/databind/JsonSerializer;, "Lcom/fasterxml/jackson/databind/JsonSerializer<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move/from16 v2, p8

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    .line 80
    .local v11, "serializationType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz p6, :cond_2

    .line 85
    if-nez v11, :cond_0

    .line 87
    move-object/from16 v11, p3

    .line 89
    :cond_0
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v15

    .line 91
    .local v15, "ct":Lcom/fasterxml/jackson/databind/JavaType;
    if-nez v15, :cond_1

    .line 92
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem trying to create BeanPropertyWriter for property \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' (of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "); serialization type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has no content"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 95
    :cond_1
    move-object/from16 v0, p6

    invoke-virtual {v11, v0}, Lcom/fasterxml/jackson/databind/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v11

    .line 96
    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    .line 99
    .end local v15    # "ct":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_2
    const/4 v13, 0x0

    .line 100
    .local v13, "valueToSuppress":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 103
    .local v12, "suppressNulls":Z
    if-nez v11, :cond_7

    move-object/from16 v14, p3

    .line 108
    .local v14, "actualType":Lcom/fasterxml/jackson/databind/JavaType;
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    invoke-virtual {v5, v6, v7}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getDefaultPropertyInclusion(Ljava/lang/Class;Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v16

    .line 113
    .local v16, "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->findInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v16

    .line 114
    invoke-virtual/range {v16 .. v16}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v17

    .line 116
    .local v17, "inclusion":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    sget-object v5, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->USE_DEFAULTS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-object/from16 v0, v17

    if-ne v0, v5, :cond_3

    .line 117
    sget-object v17, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    .line 120
    :cond_3
    sget-object v5, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I

    invoke-virtual/range {v17 .. v17}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 161
    :goto_1
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v6, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 163
    sget-object v13, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    .line 167
    .end local v13    # "valueToSuppress":Ljava/lang/Object;
    :cond_4
    :goto_2
    new-instance v4, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v7

    move-object/from16 v5, p2

    move-object/from16 v6, p7

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v13}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JavaType;ZLjava/lang/Object;)V

    .line 172
    .local v4, "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNullSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v18

    .line 173
    .local v18, "serDef":Ljava/lang/Object;
    if-eqz v18, :cond_5

    .line 174
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V

    .line 177
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v19

    .line 178
    .local v19, "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    if-eqz v19, :cond_6

    .line 179
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->unwrappingWriter(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v4

    .line 181
    :cond_6
    return-object v4

    .end local v4    # "bpw":Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .end local v14    # "actualType":Lcom/fasterxml/jackson/databind/JavaType;
    .end local v16    # "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .end local v17    # "inclusion":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end local v18    # "serDef":Ljava/lang/Object;
    .end local v19    # "unwrapper":Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .restart local v13    # "valueToSuppress":Ljava/lang/Object;
    :cond_7
    move-object v14, v11

    .line 103
    goto/16 :goto_0

    .line 127
    .restart local v14    # "actualType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v16    # "inclV":Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .restart local v17    # "inclusion":Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultInclusion:Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->getValueInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    if-ne v5, v6, :cond_8

    .line 128
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v5, v1, v14}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->getPropertyDefaultValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v13

    .line 132
    :goto_3
    if-nez v13, :cond_9

    .line 133
    const/4 v12, 0x1

    goto :goto_2

    .line 130
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->getDefaultValue(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_3

    .line 135
    :cond_9
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 136
    invoke-static {v13}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    goto :goto_2

    .line 143
    :pswitch_1
    const/4 v12, 0x1

    .line 145
    invoke-virtual {v14}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 146
    sget-object v13, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    goto/16 :goto_2

    .line 151
    :pswitch_2
    const/4 v12, 0x1

    .line 153
    sget-object v13, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    .line 154
    goto/16 :goto_2

    .line 156
    :pswitch_3
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 7
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "useStaticTyping"    # Z
    .param p3, "declaredType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v4, v5, p1, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->refineSerializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v1

    .line 202
    .local v1, "secondary":Lcom/fasterxml/jackson/databind/JavaType;
    if-eq v1, p3, :cond_1

    .line 203
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    .line 205
    .local v2, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 206
    .local v0, "rawDeclared":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    :cond_0
    const/4 p2, 0x1

    .line 224
    move-object p3, v1

    .line 227
    .end local v0    # "rawDeclared":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v4, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object v3

    .line 228
    .local v3, "typing":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    if-eqz v3, :cond_2

    sget-object v4, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DEFAULT_TYPING:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-eq v3, v4, :cond_2

    .line 229
    sget-object v4, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-ne v3, v4, :cond_4

    const/4 p2, 0x1

    .line 231
    :cond_2
    :goto_0
    if-eqz p2, :cond_5

    .line 233
    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 236
    :goto_1
    return-object v4

    .line 215
    .end local v3    # "typing":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    .restart local v0    # "rawDeclared":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 216
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal concrete-type annotation for method \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not a super-type of (declared) class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 229
    .end local v0    # "rawDeclared":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "typing":Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    :cond_4
    const/4 p2, 0x0

    goto :goto_0

    .line 236
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultBean()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 248
    .local v0, "def":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 252
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/SerializationConfig;->canOverrideAccessModifiers()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->instantiateBean(Z)Ljava/lang/Object;

    move-result-object v0

    .line 253
    if-nez v0, :cond_0

    .line 261
    sget-object v0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->NO_DEFAULT_MARKER:Ljava/lang/Object;

    .line 263
    :cond_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    .line 265
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->NO_DEFAULT_MARKER:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected getDefaultValue(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 311
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 313
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->primitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 314
    .local v1, "prim":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 315
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->defaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 323
    :goto_0
    return-object v2

    .line 317
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->isReferenceType()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    :cond_1
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_0

    .line 320
    :cond_2
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_3

    .line 321
    const-string v2, ""

    goto :goto_0

    .line 323
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getPropertyDefaultValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "type"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->getDefaultBean()Ljava/lang/Object;

    move-result-object v0

    .line 284
    .local v0, "defaultBean":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->getDefaultValue(Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    move-result-object v2

    .line 290
    :goto_0
    return-object v2

    .line 288
    :cond_0
    :try_start_0
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1, p1, v0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_throwWrapped(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
