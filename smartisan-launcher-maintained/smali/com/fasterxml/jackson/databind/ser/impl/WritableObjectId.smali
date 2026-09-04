.class public final Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
.super Ljava/lang/Object;
.source "WritableObjectId.java"


.field public final generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/Object;

.field protected idWritten:Z


.method public constructor <init>(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "generator":Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;, "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->idWritten:Z

    .line 29
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    .line 30
    return-void
.end method


.method public generateId(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "forPojo"    # Ljava/lang/Object;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->generateId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    return-object v0
.end method

.method public writeAsField(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)V
    .locals 3
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p3, "w"    # Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->idWritten:Z

    .line 65
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteObjectId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectId(Ljava/lang/Object;)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p3, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->propertyName:Lcom/fasterxml/jackson/core/SerializableString;

    .line 72
    .local v0, "name":Lcom/fasterxml/jackson/core/SerializableString;
    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V

    .line 74
    iget-object v1, p3, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0
.end method

.method public writeAsId(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;)Z
    .locals 2
    .param p1, "gen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p2, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p3, "w"    # Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->idWritten:Z

    if-nez v0, :cond_0

    iget-boolean v0, p3, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->alwaysAsId:Z

    if-eqz v0, :cond_2

    .line 36
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->canWriteObjectId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectRef(Ljava/lang/Object;)V

    .line 41
    :goto_0
    const/4 v0, 0x1

    .line 43
    :goto_1
    return v0

    .line 39
    :cond_1
    iget-object v0, p3, Lcom/fasterxml/jackson/databind/ser/impl/ObjectIdWriter;->serializer:Lcom/fasterxml/jackson/databind/JsonSerializer;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;->id:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    goto :goto_0

    .line 43
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
