.class public abstract Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "ContainerSerializer.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<TT;>;"
    }
.end annotation


.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "fullType"    # Lcom/fasterxml/jackson/databind/JavaType;

    .prologue
    .line 32
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 33
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    .local p1, "src":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<*>;"
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;->_handledType:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    .line 26
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .param p2, "dummy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    .local p1, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 43
    return-void
.end method


.method protected abstract _withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getContentSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getContentType()Lcom/fasterxml/jackson/databind/JavaType;
.end method

.method protected hasContentTypeAnnotation(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Z
    .locals 1
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract hasSingleElement(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public isEmpty(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;->isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;
    .locals 0
    .param p1, "vts"    # Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    if-nez p1, :cond_0

    .line 61
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;, "Lcom/fasterxml/jackson/databind/ser/ContainerSerializer<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;->_withValueTypeSerializer(Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;)Lcom/fasterxml/jackson/databind/ser/ContainerSerializer;

    move-result-object p0

    goto :goto_0
.end method
