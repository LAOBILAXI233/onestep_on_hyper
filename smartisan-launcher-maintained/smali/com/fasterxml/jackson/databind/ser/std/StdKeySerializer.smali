.class public Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "StdKeySerializer.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 0
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;->visitStringFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 60
    return-void
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 1
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 54
    const-string v0, "string"

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializer;->createSchemaNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 29
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_0

    move-object v2, p1

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 49
    .end local p1    # "value":Ljava/lang/Object;
    .local v2, "str":Ljava/lang/String;
    :goto_0
    invoke-virtual {p2, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 50
    .end local v2    # "str":Ljava/lang/String;
    :goto_1
    return-void

    .line 31
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 34
    check-cast v1, Ljava/lang/Enum;

    .line 36
    .local v1, "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    sget-object v3, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 39
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 41
    .end local v1    # "en":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    instance-of v3, p1, Ljava/util/Date;

    if-eqz v3, :cond_3

    .line 42
    check-cast p1, Ljava/util/Date;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateKey(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_1

    .line 44
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_3
    const-class v3, Ljava/lang/Class;

    if-ne v0, v3, :cond_4

    .line 45
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0

    .line 47
    .end local v2    # "str":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "str":Ljava/lang/String;
    goto :goto_0
.end method
