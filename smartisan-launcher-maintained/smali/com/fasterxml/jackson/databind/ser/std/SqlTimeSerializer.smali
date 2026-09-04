.class public Lcom/fasterxml/jackson/databind/ser/std/SqlTimeSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "SqlTimeSerializer.java"


.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer",
        "<",
        "Ljava/sql/Time;",
        ">;"
    }
.end annotation


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Ljava/sql/Time;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


.method public acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->DATE_TIME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/SqlTimeSerializer;->visitStringFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V

    .line 35
    return-void
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2
    .param p1, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 27
    const-string v0, "string"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/SqlTimeSerializer;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12
    check-cast p1, Ljava/sql/Time;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/SqlTimeSerializer;->serialize(Ljava/sql/Time;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/sql/Time;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 1
    .param p1, "value"    # Ljava/sql/Time;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p1}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 23
    return-void
.end method
