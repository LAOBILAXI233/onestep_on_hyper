.class public Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "EnumDeserializer.java"


.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


.field private static final serialVersionUID:J = 0x1L


.field private final _enumDefaultValue:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field protected _enumsByIndex:[Ljava/lang/Object;

.field protected final _lookupByName:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

.field protected _lookupByToString:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;


.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;)V
    .locals 1
    .param p1, "byNameResolver"    # Lcom/fasterxml/jackson/databind/util/EnumResolver;

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 48
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructLookup()Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_lookupByName:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    .line 49
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->getRawEnums()[Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumsByIndex:[Ljava/lang/Object;

    .line 50
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->getDefaultValue()Ljava/lang/Enum;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    .line 51
    return-void
.end method

.method private final _deserializeAltString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p3, "lookup"    # Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 165
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 166
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 167
    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 197
    :cond_0
    :goto_0
    return-object v2

    .line 172
    :cond_1
    invoke-virtual {p4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 173
    .local v0, "c":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-gt v0, v3, :cond_3

    .line 175
    :try_start_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, "index":I
    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "not allowed to deserialize Enum value out of number: disable DeserializationConfig.DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS to allow"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2, v3, v4, v5, v6}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdNumberValue(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 181
    :cond_2
    if-ltz v1, :cond_3

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumsByIndex:[Ljava/lang/Object;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 182
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumsByIndex:[Ljava/lang/Object;

    aget-object v2, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v1    # "index":I
    :catch_0
    move-exception v3

    .line 189
    .end local v0    # "c":C
    :cond_3
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    if-eqz v3, :cond_4

    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 191
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    goto :goto_0

    .line 193
    :cond_4
    sget-object v3, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "value not one of declared Enum instance names: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->keys()Ljava/util/List;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p2, v2, p4, v3, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public static deserializerForCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .param p0, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "factory"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 59
    invoke-static {p0, p1, p2, v0, v0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->deserializerForCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public static deserializerForCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 6
    .param p0, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "factory"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p3, "valueInstantiator"    # Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
    .param p4, "creatorProps"    # [Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;",
            "[",
            "Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 78
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    return-object v0
.end method

.method public static deserializerForNoArgsCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .param p0, "config"    # Lcom/fasterxml/jackson/databind/DeserializationConfig;
    .param p2, "factory"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationConfig;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;Z)V

    .line 98
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FactoryBasedEnumDeserializer;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V

    return-object v0
.end method


.method protected _deserializeOther(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    sget-object v2, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 207
    .local v1, "parsed":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 208
    .local v0, "curr":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v2, :cond_0

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->handleMissingEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    .line 213
    .end local v0    # "curr":Lcom/fasterxml/jackson/core/JsonToken;
    .end local v1    # "parsed":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v2, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected _enumClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected _getToStringLookup(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;
    .locals 3
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_lookupByToString:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    .line 225
    .local v0, "lookup":Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;
    if-nez v0, :cond_0

    .line 226
    monitor-enter p0

    .line 227
    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUnsafeUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructLookup()Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    move-result-object v0

    .line 230
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_lookupByToString:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    .line 233
    :cond_0
    return-object v0

    .line 230
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
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
    const/4 v10, 0x0

    .line 117
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    .line 120
    .local v0, "curr":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v5, :cond_0

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v5, :cond_3

    .line 121
    :cond_0
    sget-object v5, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_getToStringLookup(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    move-result-object v2

    .line 123
    .local v2, "lookup":Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->find(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 125
    .local v4, "result":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 126
    invoke-direct {p0, p1, p2, v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_deserializeAltString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 153
    .end local v2    # "lookup":Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-object v4

    .line 121
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_lookupByName:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    goto :goto_0

    .line 131
    :cond_3
    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v5, :cond_8

    .line 133
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v1

    .line 134
    .local v1, "index":I
    sget-object v5, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 135
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "not allowed to deserialize Enum value out of number: disable DeserializationConfig.DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS to allow"

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual {p2, v5, v6, v7, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdNumberValue(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 139
    :cond_4
    if-ltz v1, :cond_5

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumsByIndex:[Ljava/lang/Object;

    array-length v5, v5

    if-ge v1, v5, :cond_5

    .line 140
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumsByIndex:[Ljava/lang/Object;

    aget-object v4, v5, v1

    goto :goto_1

    .line 142
    :cond_5
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    if-eqz v5, :cond_6

    sget-object v5, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_USING_DEFAULT_VALUE:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 144
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumDefaultValue:Ljava/lang/Enum;

    goto :goto_1

    .line 146
    :cond_6
    sget-object v5, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_UNKNOWN_ENUM_VALUES_AS_NULL:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 147
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "index value outside legal index range [0..%s]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_enumsByIndex:[Ljava/lang/Object;

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p2, v5, v6, v7, v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdNumberValue(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 151
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 153
    .end local v1    # "index":I
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->_deserializeOther(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1
.end method

.method public isCachable()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method
