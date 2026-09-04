.class public Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;
.source "ClassNameIdResolver.java"


.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
    .locals 0
    .param p1, "baseType"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    .line 21
    return-void
.end method


.method protected final _idFrom(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;
    .param p3, "typeFactory"    # Lcom/fasterxml/jackson/databind/type/TypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeFactory;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/lang/Enum;

    invoke-virtual {v6, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-nez v6, :cond_0

    .line 86
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 89
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "str":Ljava/lang/String;
    const-string v6, "java.util"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 97
    instance-of v6, p1, Ljava/util/EnumSet;

    if-eqz v6, :cond_2

    .line 98
    check-cast p1, Ljava/util/EnumSet;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findEnumType(Ljava/util/EnumSet;)Ljava/lang/Class;

    move-result-object v1

    .line 100
    .local v1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/util/EnumSet;

    invoke-virtual {p3, v6, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/type/CollectionType;->toCanonical()Ljava/lang/String;

    move-result-object v4

    .line 141
    .end local v1    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-object v4

    .line 101
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v6, p1, Ljava/util/EnumMap;

    if-eqz v6, :cond_3

    .line 102
    check-cast p1, Ljava/util/EnumMap;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findEnumType(Ljava/util/EnumMap;)Ljava/lang/Class;

    move-result-object v1

    .line 103
    .restart local v1    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Object;

    .line 105
    .local v5, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/util/EnumMap;

    invoke-virtual {p3, v6, v1, v5}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/type/MapType;->toCanonical()Ljava/lang/String;

    move-result-object v4

    .line 106
    goto :goto_0

    .line 107
    .end local v1    # "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "end":Ljava/lang/String;
    const-string v6, ".Arrays$"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ".Collections$"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_4
    const-string v6, "List"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 116
    const-string v4, "java.util.ArrayList"

    goto :goto_0

    .line 119
    .end local v0    # "end":Ljava/lang/String;
    :cond_5
    const/16 v6, 0x24

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    .line 127
    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    .line 128
    .local v2, "outer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1

    .line 133
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v3

    .line 134
    .local v3, "staticType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v3}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_1

    .line 136
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p2

    .line 137
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected _typeFromId(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DatabindContext;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DatabindContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DatabindContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v3

    .line 52
    .local v3, "tf":Lcom/fasterxml/jackson/databind/type/TypeFactory;
    const/16 v4, 0x3c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-lez v4, :cond_0

    .line 54
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructFromCanonical(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    .line 72
    :goto_0
    return-object v4

    .line 58
    :cond_0
    :try_start_0
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 72
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v3, v4, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    goto :goto_0

    .line 59
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    instance-of v4, p2, Lcom/fasterxml/jackson/databind/DeserializationContext;

    if-eqz v4, :cond_1

    move-object v1, p2

    .line 63
    check-cast v1, Lcom/fasterxml/jackson/databind/DeserializationContext;

    .line 65
    .local v1, "dctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    const-string v5, "no such class found"

    invoke-virtual {v1, v4, p1, p0, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnknownTypeId(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    goto :goto_0

    .line 68
    .end local v1    # "dctxt":Lcom/fasterxml/jackson/databind/DeserializationContext;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 69
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid type id \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' (for id type \'Id.class\'): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getDescForKnownTypeIds()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "class name used as type id"

    return-object v0
.end method

.method public getMechanism()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    return-object v0
.end method

.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Ljava/lang/String;

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
    .line 37
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeFactory;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerSubtype(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public typeFromId(Lcom/fasterxml/jackson/databind/DatabindContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "context"    # Lcom/fasterxml/jackson/databind/DatabindContext;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p2, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_typeFromId(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DatabindContext;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    return-object v0
.end method
