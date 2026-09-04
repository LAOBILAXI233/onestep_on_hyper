.class public Lcom/fasterxml/jackson/databind/util/EnumResolver;
.super Ljava/lang/Object;
.source "EnumResolver.java"

.implements Ljava/io/Serializable;


.field private static final serialVersionUID:J = 0x1L


.field protected final _defaultValue:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation
.end field

.field protected final _enums:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _enumsById:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation
.end field


.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;[",
            "Ljava/lang/Enum",
            "<*>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Ljava/lang/Enum",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    .local p2, "enums":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    .local p3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    .local p4, "defaultValue":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass:Ljava/lang/Class;

    .line 27
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    .line 28
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    .line 29
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_defaultValue:Ljava/lang/Enum;

    .line 30
    return-void
.end method

.method public static constructFor(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 10
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Enum;

    .line 39
    .local v1, "enumValues":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    if-nez v1, :cond_0

    .line 40
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No enum constants for class "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 42
    :cond_0
    array-length v7, v1

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {p1, p0, v1, v7}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findEnumValues(Ljava/lang/Class;[Ljava/lang/Enum;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 43
    .local v6, "names":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 45
    aget-object v5, v6, v2

    .line 46
    .local v5, "name":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 47
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 49
    :cond_1
    aget-object v7, v1, v2

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDefaultEnumValue(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    .line 54
    .local v0, "defaultEnum":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    new-instance v7, Lcom/fasterxml/jackson/databind/util/EnumResolver;

    invoke-direct {v7, p0, v1, v4, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;)V

    return-object v7
.end method

.method public static constructUnsafe(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 2
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 128
    .local v0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructFor(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v1

    return-object v1
.end method

.method public static constructUnsafeUsingMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 1
    .param p1, "accessor"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUnsafeUsingMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public static constructUnsafeUsingMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 2
    .param p1, "accessor"    # Ljava/lang/reflect/Method;
    .param p2, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 175
    .local v0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUsingMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v1

    return-object v1
.end method

.method public static constructUnsafeUsingToString(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUnsafeUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public static constructUnsafeUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 2
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "rawEnumCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p0

    .line 152
    .local v0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v1

    return-object v1
.end method

.method public static constructUsingMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 1
    .param p1, "accessor"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUsingMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public static constructUsingMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 10
    .param p1, "accessor"    # Ljava/lang/reflect/Method;
    .param p2, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Ljava/lang/reflect/Method;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Enum;

    .line 100
    .local v3, "enumValues":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 102
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    array-length v4, v3

    .local v4, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_1

    .line 103
    aget-object v2, v3, v4

    .line 105
    .local v2, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const/4 v7, 0x0

    :try_start_0
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 106
    .local v6, "o":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 107
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v6    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to access @JsonValue of Enum value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 113
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDefaultEnumValue(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    .line 114
    .local v0, "defaultEnum":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :goto_1
    new-instance v7, Lcom/fasterxml/jackson/databind/util/EnumResolver;

    invoke-direct {v7, p0, v3, v5, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;)V

    return-object v7

    .line 113
    .end local v0    # "defaultEnum":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static constructUsingToString(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;)",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;

    move-result-object v0

    return-object v0
.end method

.method public static constructUsingToString(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
    .locals 6
    .param p1, "ai"    # Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lcom/fasterxml/jackson/databind/AnnotationIntrospector;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/EnumResolver;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "enumCls":Ljava/lang/Class;, "Ljava/lang/Class<Ljava/lang/Enum<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Enum;

    .line 75
    .local v2, "enumValues":[Ljava/lang/Enum;, "[Ljava/lang/Enum<*>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Enum<*>;>;"
    array-length v3, v2

    .local v3, "i":I
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_0

    .line 78
    aget-object v1, v2, v3

    .line 79
    .local v1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    .end local v1    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 82
    .local v0, "defaultEnum":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :goto_1
    new-instance v5, Lcom/fasterxml/jackson/databind/util/EnumResolver;

    invoke-direct {v5, p0, v2, v4, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;-><init>(Ljava/lang/Class;[Ljava/lang/Enum;Ljava/util/HashMap;Ljava/lang/Enum;)V

    return-object v5

    .line 81
    .end local v0    # "defaultEnum":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_1
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDefaultEnumValue(Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    goto :goto_1
.end method


.method public constructLookup()Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->construct(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    move-result-object v0

    return-object v0
.end method

.method public findEnum(Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_defaultValue:Ljava/lang/Enum;

    return-object v0
.end method

.method public getEnum(I)Ljava/lang/Enum;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 185
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 188
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getEnumClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getEnumIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enumsById:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEnums()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v2, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v5, v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .local v2, "enums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Enum<*>;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    .local v0, "arr$":[Ljava/lang/Enum;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 202
    .local v1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    .end local v1    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_0
    return-object v2
.end method

.method public getRawEnums()[Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Enum",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    return-object v0
.end method

.method public lastValidIndex()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/EnumResolver;->_enums:[Ljava/lang/Enum;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
