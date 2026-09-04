.class public abstract Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.super Ljava/lang/Object;
.source "AnnotationIntrospector.java"

.implements Lcom/fasterxml/jackson/core/Versioned;
.implements Ljava/io/Serializable;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    }
.end annotation


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static nopInstance()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;->instance:Lcom/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector;

    return-object v0
.end method

.method public static pair(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1
    .param p0, "a1"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .param p1, "a2"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .prologue
    .line 115
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotationIntrospectorPair;-><init>(Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V

    return-object v0
.end method


.method protected _findAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .param p1, "annotated"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 1436
    .local p2, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method protected _hasAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "annotated"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1453
    .local p2, "annoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected _hasOneOf(Lcom/fasterxml/jackson/databind/introspect/Annotated;[Ljava/lang/Class;)Z
    .locals 1
    .param p1, "annotated"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "[",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1463
    .local p2, "annoClasses":[Ljava/lang/Class;, "[Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasOneOf([Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public allIntrospectors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public allIntrospectors(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/AnnotationIntrospector;>;"
    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 151
    return-object p1
.end method

.method public findAndAddVirtualProperties(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/util/List;)V
    .locals 0
    .param p2, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 971
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p3, "properties":Ljava/util/List;, "Ljava/util/List<Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;>;"
    return-void
.end method

.method public findAutoDetectVisibility(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .locals 0
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 352
    .local p2, "checker":Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;, "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<*>;"
    return-object p2
.end method

.method public findClassDescription(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 1
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 336
    const/4 v0, 0x0

    return-object v0
.end method

.method public findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 1112
    const/4 v0, 0x0

    return-object v0
.end method

.method public findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 651
    const/4 v0, 0x0

    return-object v0
.end method

.method public findCreatorBinding(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 1410
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDefaultEnumValue(Ljava/lang/Class;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1069
    .local p1, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 1160
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseContentType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1287
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 1138
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseKeyType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1269
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1252
    const/4 v0, 0x0

    return-object v0
.end method

.method public findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 1087
    const/4 v0, 0x0

    return-object v0
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1032
    .local p1, "value":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findEnumValues(Ljava/lang/Class;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p3, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Enum",
            "<*>;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1047
    .local p1, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "enumValues":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p2

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1053
    aget-object v2, p3, v0

    if-nez v2, :cond_0

    .line 1054
    aget-object v2, p2, v0

    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p3, v0

    .line 1047
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1057
    :cond_1
    return-object p3
.end method

.method public findFilterId(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 1
    .param p1, "memberOrClass"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 525
    const/4 v0, 0x0

    return-object v0
.end method

.method public findIgnoreUnknownProperties(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 288
    const/4 v0, 0x0

    return-object v0
.end method

.method public findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;
    .locals 1
    .param p1, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 588
    const/4 v0, 0x0

    return-object v0
.end method

.method public findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 491
    const/4 v0, 0x0

    return-object v0
.end method

.method public findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 1099
    const/4 v0, 0x0

    return-object v0
.end method

.method public findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 639
    const/4 v0, 0x0

    return-object v0
.end method

.method public findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 1358
    const/4 v0, 0x0

    return-object v0
.end method

.method public findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 1002
    const/4 v0, 0x0

    return-object v0
.end method

.method public findNamingStrategy(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public findNullSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 661
    const/4 v0, 0x0

    return-object v0
.end method

.method public findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 1
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .locals 0
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "objectIdInfo"    # Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    .prologue
    .line 206
    return-object p2
.end method

.method public findPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Class;
    .locals 1
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1319
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPOJOBuilderConfig(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
    .locals 1
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 1326
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;
    .locals 1
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 279
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;Z)[Ljava/lang/String;
    .locals 1
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "forSerialization"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertyAccess(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonProperty$Access;
    .locals 1
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 599
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .param p2, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "containerType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertyDefaultValue(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;
    .locals 1
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 548
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertyDescription(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/String;
    .locals 1
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 560
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertyIgnorals(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    .locals 4
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    const/4 v2, 0x0

    .line 243
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;Z)[Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "ignorals":[Ljava/lang/String;
    instance-of v3, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    if-eqz v3, :cond_1

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .end local p1    # "ac":Lcom/fasterxml/jackson/databind/introspect/Annotated;
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findIgnoreUnknownProperties(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    .line 247
    .local v0, "b":Ljava/lang/Boolean;
    :goto_0
    if-nez v1, :cond_3

    .line 248
    if-nez v0, :cond_2

    .line 258
    :cond_0
    :goto_1
    return-object v2

    .end local v0    # "b":Ljava/lang/Boolean;
    .restart local p1    # "ac":Lcom/fasterxml/jackson/databind/introspect/Annotated;
    :cond_1
    move-object v0, v2

    .line 244
    goto :goto_0

    .line 251
    .end local p1    # "ac":Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .restart local v0    # "b":Ljava/lang/Boolean;
    :cond_2
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v2

    .line 255
    .local v2, "v":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :goto_2
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withIgnoreUnknown()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v2

    :goto_3
    goto :goto_1

    .line 253
    .end local v2    # "v":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    :cond_3
    invoke-static {v1}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->forIgnoredProperties([Ljava/lang/String;)Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v2

    .restart local v2    # "v":Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;
    goto :goto_2

    .line 256
    :cond_4
    invoke-virtual {v2}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;->withoutIgnoreUnknown()Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties$Value;

    move-result-object v2

    goto :goto_3
.end method

.method public findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 768
    invoke-static {}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->empty()Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyIndex(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Integer;
    .locals 1
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 573
    const/4 v0, 0x0

    return-object v0
.end method

.method public findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .param p2, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findReferenceType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .locals 1
    .param p1, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 457
    const/4 v0, 0x0

    return-object v0
.end method

.method public findRootName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 720
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 820
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 698
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 0
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "defValue"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 742
    return-object p2
.end method

.method public findSerializationInclusionForContent(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .locals 0
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "defValue"    # Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 756
    return-object p2
.end method

.method public findSerializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 805
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationPropertyOrder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 1
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 952
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 961
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 790
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 673
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 628
    const/4 v0, 0x0

    return-object v0
.end method

.method public findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 1
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 438
    const/4 v0, 0x0

    return-object v0
.end method

.method public findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .locals 1
    .param p2, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 377
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .locals 1
    .param p1, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 467
    const/4 v0, 0x0

    return-object v0
.end method

.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .locals 1
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 1302
    const/4 v0, 0x0

    return-object v0
.end method

.method public findViews(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/Class;
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 515
    const/4 v0, 0x0

    return-object v0
.end method

.method public findWrapperName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 1
    .param p1, "ann"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 538
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAnyGetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    .line 1384
    const/4 v0, 0x0

    return v0
.end method

.method public hasAnySetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    .line 1371
    const/4 v0, 0x0

    return v0
.end method

.method public hasAsValueAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 1
    .param p1, "am"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .prologue
    .line 1015
    const/4 v0, 0x0

    return v0
.end method

.method public hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
    .locals 1
    .param p1, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;

    .prologue
    .line 1398
    const/4 v0, 0x0

    return v0
.end method

.method public hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
    .locals 1
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public hasRequiredMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "m"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 500
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .param p1, "ann"    # Ljava/lang/annotation/Annotation;

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "ac"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    .prologue
    .line 301
    const/4 v0, 0x0

    return-object v0
.end method

.method public isTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "member"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .prologue
    .line 445
    const/4 v0, 0x0

    return-object v0
.end method

.method public refineDeserializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 15
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 1178
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    move-object/from16 v7, p3

    .line 1179
    .local v7, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v6

    .line 1189
    .local v6, "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v7}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v8

    .line 1190
    .local v8, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v8, :cond_0

    invoke-virtual {v7, v8}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1192
    :try_start_0
    invoke-virtual {v6, v7, v8}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1203
    :cond_0
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1204
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 1205
    .local v5, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v4

    .line 1206
    .local v4, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_1

    .line 1208
    :try_start_1
    invoke-virtual {v6, v5, v4}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 1209
    move-object v0, v7

    check-cast v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-object v9, v0

    invoke-virtual {v9, v5}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 1218
    .end local v4    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 1219
    .local v2, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v2, :cond_2

    .line 1221
    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v1

    .line 1222
    .local v1, "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    .line 1224
    :try_start_2
    invoke-virtual {v6, v2, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    .line 1225
    invoke-virtual {v7, v2}, Lcom/fasterxml/jackson/databind/JavaType;->withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 1234
    .end local v1    # "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return-object v7

    .line 1193
    .end local v2    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    :catch_0
    move-exception v3

    .line 1194
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v9, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v10, 0x0

    const-string v11, "Failed to narrow type %s with annotation (value %s), from \'%s\': %s"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, v3}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1210
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    :catch_1
    move-exception v3

    .line 1211
    .restart local v3    # "iae":Ljava/lang/IllegalArgumentException;
    new-instance v9, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v10, 0x0

    const-string v11, "Failed to narrow key type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, v3}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 1226
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v4    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v1    # "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    :catch_2
    move-exception v3

    .line 1227
    .restart local v3    # "iae":Ljava/lang/IllegalArgumentException;
    new-instance v9, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v10, 0x0

    const-string v11, "Failed to narrow value type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11, v3}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method public refineSerializationType(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 17
    .param p2, "a"    # Lcom/fasterxml/jackson/databind/introspect/Annotated;
    .param p3, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 832
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    move-object/from16 v10, p3

    .line 833
    .local v10, "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v9

    .line 843
    .local v9, "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v8

    .line 844
    .local v8, "serClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v8, :cond_0

    .line 845
    invoke-virtual {v10, v8}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 848
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    .line 874
    :cond_0
    :goto_0
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 875
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 876
    .local v7, "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v6

    .line 877
    .local v6, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v6, :cond_1

    .line 878
    invoke-virtual {v7, v6}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 879
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    .line 902
    :goto_1
    check-cast v10, Lcom/fasterxml/jackson/databind/type/MapLikeType;

    .end local v10    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    invoke-virtual {v10, v7}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;

    move-result-object v10

    .line 906
    .end local v6    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v10    # "type":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 907
    .local v3, "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v3, :cond_2

    .line 909
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;

    move-result-object v2

    .line 910
    .local v2, "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_2

    .line 911
    invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 912
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 935
    :goto_2
    invoke-virtual {v10, v3}, Lcom/fasterxml/jackson/databind/JavaType;->withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    .line 938
    .end local v2    # "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    return-object v10

    .line 850
    .end local v3    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_3
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    .line 854
    .local v4, "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v8, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 855
    invoke-virtual {v9, v10, v8}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructGeneralizedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    goto :goto_0

    .line 856
    :cond_4
    invoke-virtual {v4, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 857
    invoke-virtual {v9, v10, v8}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v10

    goto :goto_0

    .line 859
    :cond_5
    new-instance v11, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v12, 0x0

    const-string v13, "Can not refine serialization type %s into %s; types not related"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :catch_0
    move-exception v5

    .line 864
    .local v5, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v11, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v12, 0x0

    const-string v13, "Failed to widen type %s with annotation (value %s), from \'%s\': %s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13, v5}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 881
    .end local v4    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v6    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_6
    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    .line 886
    .restart local v4    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 887
    invoke-virtual {v9, v7, v6}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructGeneralizedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    goto/16 :goto_1

    .line 888
    :cond_7
    invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 889
    invoke-virtual {v9, v7, v6}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    goto/16 :goto_1

    .line 891
    :cond_8
    new-instance v11, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v12, 0x0

    const-string v13, "Can not refine serialization key type %s into %s; types not related"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 895
    :catch_1
    move-exception v5

    .line 896
    .restart local v5    # "iae":Ljava/lang/IllegalArgumentException;
    new-instance v11, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v12, 0x0

    const-string v13, "Failed to widen key type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13, v5}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 917
    .end local v4    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "iae":Ljava/lang/IllegalArgumentException;
    .end local v6    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "keyType":Lcom/fasterxml/jackson/databind/JavaType;
    .restart local v2    # "contentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "contentType":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_9
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v4

    .line 919
    .restart local v4    # "currRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 920
    invoke-virtual {v9, v3, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructGeneralizedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    goto/16 :goto_2

    .line 921
    :cond_a
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 922
    invoke-virtual {v9, v3, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    goto/16 :goto_2

    .line 924
    :cond_b
    new-instance v11, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v12, 0x0

    const-string v13, "Can not refine serialization content type %s into %s; types not related"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 928
    :catch_2
    move-exception v5

    .line 929
    .restart local v5    # "iae":Ljava/lang/IllegalArgumentException;
    new-instance v11, Lcom/fasterxml/jackson/databind/JsonMappingException;

    const/4 v12, 0x0

    const-string v13, "Internal error: failed to refine value type of %s with concrete-type annotation (value %s), from \'%s\': %s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13, v5}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
.end method

.method public resolveSetterConflict(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 1
    .param p2, "setter1"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .param p3, "setter2"    # Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;"
        }
    .end annotation

    .prologue
    .line 611
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract version()Lcom/fasterxml/jackson/core/Version;
.end method
