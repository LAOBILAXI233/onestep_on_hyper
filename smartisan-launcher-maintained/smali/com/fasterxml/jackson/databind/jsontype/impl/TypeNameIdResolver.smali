.class public Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;
.source "TypeNameIdResolver.java"


.field protected final _config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;"
        }
    .end annotation
.end field

.field protected final _idToType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;"
        }
    .end annotation
.end field

.field protected final _typeToId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .param p2, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p3, "typeToId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "idToType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    .line 30
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 31
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/Map;

    .line 32
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_idToType:Ljava/util/Map;

    .line 33
    return-void
.end method

.method protected static _defaultTypeId(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "n":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 163
    .local v0, "ix":I
    if-gez v0, :cond_0

    .end local v1    # "n":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "n":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;ZZ)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;
    .locals 8
    .param p1, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "forSer"    # Z
    .param p4, "forDeser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;ZZ)",
            "Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "config":Lcom/fasterxml/jackson/databind/cfg/MapperConfig;, "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<*>;"
    .local p2, "subtypes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/databind/jsontype/NamedType;>;"
    if-ne p3, p4, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v7

    .line 40
    :cond_0
    const/4 v6, 0x0

    .line 41
    .local v6, "typeToId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 43
    .local v3, "idToType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;>;"
    if-eqz p3, :cond_1

    .line 44
    new-instance v6, Ljava/util/HashMap;

    .end local v6    # "typeToId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 46
    .restart local v6    # "typeToId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    if-eqz p4, :cond_2

    .line 47
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "idToType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 50
    .restart local v3    # "idToType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;>;"
    new-instance v6, Ljava/util/TreeMap;

    .end local v6    # "typeToId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 52
    .restart local v6    # "typeToId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    if-eqz p2, :cond_7

    .line 53
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    .line 57
    .local v5, "t":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 58
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getName()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "id":Ljava/lang/String;
    :goto_1
    if-eqz p3, :cond_4

    .line 60
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_4
    if-eqz p4, :cond_3

    .line 65
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/fasterxml/jackson/databind/JavaType;

    .line 66
    .local v4, "prev":Lcom/fasterxml/jackson/databind/JavaType;
    if-eqz v4, :cond_5

    .line 67
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 71
    :cond_5
    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v7

    invoke-interface {v3, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "prev":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_6
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_defaultTypeId(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 75
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "t":Lcom/fasterxml/jackson/databind/jsontype/NamedType;
    :cond_7
    new-instance v7, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;

    invoke-direct {v7, p0, p1, v6, v3}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Map;Ljava/util/Map;)V

    return-object v7
.end method


.method protected _typeFromId(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_idToType:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public getDescForKnownTypeIds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_idToType:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMechanism()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NAME:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    return-object v0
.end method

.method protected idFromClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 89
    const/4 v3, 0x0

    .line 111
    :goto_0
    return-object v3

    .line 91
    :cond_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v4, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    .line 92
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/Map;

    monitor-enter v5

    .line 96
    :try_start_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 97
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 100
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    .line 102
    .local v0, "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v4

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .end local v0    # "beanDesc":Lcom/fasterxml/jackson/databind/BeanDescription;
    :cond_1
    if-nez v3, :cond_2

    .line 106
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_defaultTypeId(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    .line 108
    :cond_2
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_3
    monitor-exit v5

    goto :goto_0

    .end local v3    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->idFromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_0

    .line 120
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->idFromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    const-string v0, "[%s; id-to-type=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_idToType:Ljava/util/Map;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeFromId(Lcom/fasterxml/jackson/databind/DatabindContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/DatabindContext;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_typeFromId(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method
