.class public Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;
.super Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;
.source "UnrecognizedPropertyException.java"


.field private static final serialVersionUID:J = 0x1L


.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "loc"    # Lcom/fasterxml/jackson/core/JsonLocation;
    .param p5, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/JsonLocation;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p4, "referringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p6, "propertyIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p6}, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Collection;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "loc"    # Lcom/fasterxml/jackson/core/JsonLocation;
    .param p4, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/core/JsonLocation;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 35
    .local p3, "referringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p5, "propertyIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/exc/PropertyBindingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Collection;)V

    .line 36
    return-void
.end method

.method public static from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;
    .locals 7
    .param p0, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p1, "fromObjectOrClass"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, "propertyIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 56
    :cond_0
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_1

    move-object v4, p1

    .line 57
    check-cast v4, Ljava/lang/Class;

    .line 61
    .local v4, "ref":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized field \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" (class "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "), not marked as ignorable"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "msg":Ljava/lang/String;
    new-instance v0, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v3

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Collection;)V

    .line 65
    .local v0, "e":Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;
    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;->prependPath(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    return-object v0

    .line 59
    .end local v0    # "e":Lcom/fasterxml/jackson/databind/exc/UnrecognizedPropertyException;
    .end local v2    # "msg":Ljava/lang/String;
    .end local v4    # "ref":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .restart local v4    # "ref":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method
