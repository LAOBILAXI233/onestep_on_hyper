.class public Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;
.super Lcom/fasterxml/jackson/databind/type/TypeBase;
.source "ResolvedRecursiveType.java"


.field private static final serialVersionUID:J = 0x1L


.field protected _referencedType:Lcom/fasterxml/jackson/databind/JavaType;


.method public constructor <init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;)V
    .locals 9
    .param p2, "bindings"    # Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/type/TypeBindings;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "erasedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 17
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, v3

    move-object v7, v3

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/fasterxml/jackson/databind/type/TypeBase;-><init>(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/TypeBindings;Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/JavaType;ILjava/lang/Object;Ljava/lang/Object;Z)V

    .line 18
    return-void
.end method


.method protected _narrow(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0
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
    .line 74
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    if-ne p1, p0, :cond_1

    .line 110
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 105
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 107
    :cond_2
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v2, :cond_3

    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    check-cast p1, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->getSelfReferencedType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JavaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->getErasedSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/JavaType;->getGenericSignature(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public getSelfReferencedType()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    return-object v0
.end method

.method public isContainerType()Z
    .locals 1

    .prologue
    .line 85
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
    .line 80
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public setReference(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 3
    .param p1, "ref"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to re-set self reference; old value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[recursive type; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    if-nez v1, :cond_0

    .line 93
    const-string v1, "UNRESOLVED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/ResolvedRecursiveType;->_referencedType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public withContentType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0
    .param p1, "contentType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 43
    return-object p0
.end method

.method public withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 53
    return-object p0
.end method

.method public withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 63
    return-object p0
.end method

.method public withStaticTyping()Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0

    .prologue
    .line 68
    return-object p0
.end method

.method public withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 48
    return-object p0
.end method

.method public withValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 0
    .param p1, "h"    # Ljava/lang/Object;

    .prologue
    .line 58
    return-object p0
.end method
