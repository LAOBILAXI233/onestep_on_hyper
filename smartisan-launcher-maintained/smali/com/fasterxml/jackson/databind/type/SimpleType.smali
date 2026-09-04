.class public Lcom/fasterxml/jackson/databind/type/SimpleType;
.super Lcom/fasterxml/jackson/databind/type/TypeBase;
.source "SimpleType.java"


.field private static final serialVersionUID:J = 0x1L


.method protected constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeBase;)V
    .locals 0
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/type/TypeBase;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBase;-><init>(Lcom/fasterxml/jackson/databind/type/TypeBase;)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 33
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 8
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p3, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "superInts"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 38
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 39
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p3, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "superInts"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "extraHash"    # I
    .param p6, "valueHandler"    # Ljava/lang/Object;
    .param p7, "typeHandler"    # Ljava/lang/Object;
    .param p8, "asStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {p0 .. p8}, Lcom/fasterxml/jackson/databind/type/TypeBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 70
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 9
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .param p3, "superClass"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p4, "superInts"    # [Lcom/fasterxml/jackson/databind/JavaType;
    .param p5, "valueHandler"    # Ljava/lang/Object;
    .param p6, "typeHandler"    # Ljava/lang/Object;
    .param p7, "asStatic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "[",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/type/TypeBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 57
    return-void
.end method

.method private static _buildSuperClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 8
    .param p1, "b"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            ")",
            "Lcom/fasterxml/jackson/databind/JavaType;"
        }
    .end annotation

    .prologue
    .local p0, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 284
    if-nez p0, :cond_0

    .line 291
    :goto_0
    return-object v4

    .line 287
    :cond_0
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_1

    .line 288
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->unknownType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v4

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->_buildSuperClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 291
    .local v3, "superSuper":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object v4, v0

    goto :goto_0
.end method

.method public static construct(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/SimpleType;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 106
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not construct SimpleType for a Map (class: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not construct SimpleType for a Collection (class: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not construct SimpleType for an array (class: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_2
    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->emptyBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v2

    .line 117
    .local v2, "b":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/fasterxml/jackson/databind/type/SimpleType;->_buildSuperClass(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method

.method public static constructUnsafe(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/type/SimpleType;"
        }
    .end annotation

    .prologue
    .local p0, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v0
.end method


.method protected _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 20
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
    .line 125
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_0

    move-object/from16 v2, p0

    .line 160
    :goto_0
    return-object v2

    .line 132
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    new-instance v2, Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeHandler:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z

    move-object/from16 v3, p1

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v18

    .line 142
    .local v18, "next":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    move-object/from16 v0, v18

    if-ne v0, v2, :cond_2

    .line 143
    new-instance v2, Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeHandler:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z

    move-object/from16 v3, p1

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v9}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto :goto_0

    .line 146
    :cond_2
    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->_narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 148
    .local v5, "superb":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v2, Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeHandler:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_0

    .line 152
    .end local v5    # "superb":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v19

    .line 153
    .local v19, "nextI":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v14, v19

    .local v14, "arr$":[Ljava/lang/Class;
    array-length v0, v14

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    aget-object v16, v14, v15

    .line 154
    .local v16, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_4

    .line 155
    new-instance v6, Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    const/4 v9, 0x0

    const/4 v2, 0x1

    new-array v10, v2, [Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v2, 0x0

    aput-object p0, v10, v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeHandler:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v13}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object v2, v6

    goto/16 :goto_0

    .line 158
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 159
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->_narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    .line 160
    .restart local v5    # "superb":Lcom/fasterxml/jackson/databind/JavaType;
    new-instance v6, Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    const/4 v9, 0x0

    const/4 v2, 0x1

    new-array v10, v2, [Lcom/fasterxml/jackson/databind/JavaType;

    const/4 v2, 0x0

    aput-object v5, v10, v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeHandler:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z

    move-object/from16 v7, p1

    invoke-direct/range {v6 .. v13}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object v2, v6

    goto/16 :goto_0

    .line 153
    .end local v5    # "superb":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 165
    .end local v16    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Internal error: Can not resolve sub-type for Class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected buildCanonicalName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->size()I

    move-result v0

    .line 222
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 223
    const/16 v4, 0x3c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 225
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    .line 226
    .local v3, "t":Lcom/fasterxml/jackson/databind/JavaType;
    if-lez v1, :cond_0

    .line 227
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    :cond_0
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->toCanonical()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 231
    .end local v3    # "t":Lcom/fasterxml/jackson/databind/JavaType;
    :cond_1
    const/16 v4, 0x3e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 312
    if-ne p1, p0, :cond_1

    const/4 v3, 0x1

    .line 324
    :cond_0
    :goto_0
    return v3

    .line 313
    :cond_1
    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v4, v5, :cond_0

    move-object v2, p1

    .line 316
    check-cast v2, Lcom/fasterxml/jackson/databind/type/SimpleType;

    .line 319
    .local v2, "other":Lcom/fasterxml/jackson/databind/type/SimpleType;
    iget-object v4, v2, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    if-ne v4, v5, :cond_0

    .line 322
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 323
    .local v0, "b1":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    iget-object v1, v2, Lcom/fasterxml/jackson/databind/type/SimpleType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    .line 324
    .local v1, "b2":Lcom/fasterxml/jackson/databind/type/TypeBindings;
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 256
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/fasterxml/jackson/databind/type/SimpleType;->_classSignature(Ljava/lang/Class;Ljava/lang/StringBuilder;Z)Ljava/lang/StringBuilder;

    .line 258
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->size()I

    move-result v0

    .line 259
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 260
    const/16 v2, 0x3c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 262
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 261
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_0
    const/16 v2, 0x3e

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    .end local v1    # "i":I
    :cond_1
    const/16 v2, 0x3b

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    return-object p1
.end method

.method public hasContentType()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public isContainerType()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public refine(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
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
    .line 212
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 305
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[simple type, class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->buildCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "contentType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Simple types have no content types; can not call withContentType()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Simple types have no content types; can not call withContenTypeHandler()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 2
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Simple types have no content types; can not call withContenValueHandler()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/SimpleType;->withStaticTyping()Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public withStaticTyping()Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 8

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z

    if-eqz v0, :cond_0

    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/SimpleType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/type/SimpleType;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeHandler:Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 8
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeHandler:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 179
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/SimpleType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/type/SimpleType;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method

.method public bridge synthetic withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/type/SimpleType;->withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;

    move-result-object v0

    return-object v0
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/SimpleType;
    .locals 8
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_valueHandler:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 193
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/type/SimpleType;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/type/SimpleType;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_class:Ljava/lang/Class;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_superClass:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_superInterfaces:[Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_typeHandler:Ljava/lang/Object;

    iget-boolean v7, p0, Lcom/fasterxml/jackson/databind/type/SimpleType;->_asStatic:Z

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Object;Ljava/lang/Object;Z)V

    move-object p0, v0

    goto :goto_0
.end method
