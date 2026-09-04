.class public final Lcom/fasterxml/jackson/databind/type/MapType;
.super Lcom/fasterxml/jackson/databind/type/MapLikeType;
.source "MapType.java"


.field private static final serialVersionUID:J = 0x1L


.method protected constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/type/TypeBase;
    .param p2, "keyT"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "valueT"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/type/MapLikeType;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p3, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "superInts"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "keyT"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p6, "valueT"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p7, "valueHandler"    # Ljava/lang/Object;
    .param p8, "typeHandler"    # Ljava/lang/Object;
    .param p9, "asStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "mapType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p9}, Lcom/fasterxml/jackson/databind/type/MapLikeType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 25
    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 11
    .param p1, "keyT"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p2, "valueT"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/MapType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v10

    .line 50
    .local v10, "vars":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    if-eqz v10, :cond_0

    array-length v0, v10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 51
    :cond_0
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v2

    .line 56
    .local v2, "bindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    :goto_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    invoke-static {p0}, Lcom/fasterxml/jackson/databind/type/MapType;->_bogusSuperClass(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    const/4 v9, 0x0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, v4

    move-object v8, v4

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0

    .line 53
    .end local v2    # "bindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->create(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v2

    .restart local v2    # "bindings":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    goto :goto_0
.end method

.method public static construct(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 10
    .param p1, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p2, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "superInts"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "keyT"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "valueT"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/type/MapType;"
        }
    .end annotation

    .prologue
    .local p0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 40
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v8, v7

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method


.method protected _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v9, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public refine(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 10
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p3, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "superInterfaces"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v9, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[map type; class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 10
    .param p1, "contentType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    if-ne v0, p1, :cond_0

    .line 110
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/MapType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/type/MapType;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v9, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 10
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 77
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v9, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 10
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 90
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v6, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v9, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public withKeyType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 10
    .param p1, "keyType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    if-ne p1, v0, :cond_0

    .line 119
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/MapType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/type/MapType;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v9, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withKeyTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withKeyTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public withKeyTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 10
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 140
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v5, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v9, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 10
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 147
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v5, p1}, Lcom/fasterxml/jackson/databind/JavaType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v9, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/MapType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/MapType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public withStaticTyping()Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 10

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    if-eqz v0, :cond_0

    .line 100
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/MapType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/type/MapType;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v6

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 10
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 70
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueHandler:Ljava/lang/Object;

    iget-boolean v9, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 10
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/MapType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    return-object v0
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapType;
    .locals 10
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 84
    new-instance v0, Lcom/fasterxml/jackson/databind/type/MapType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_keyType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_valueType:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v9, p0, Lcom/fasterxml/jackson/databind/type/MapType;->_asStatic:Z

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/fasterxml/jackson/databind/type/MapType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method
