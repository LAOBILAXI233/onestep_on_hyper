.class public abstract Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
.super Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;
.source "DateTimeSerializerBase.java"

.implements Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;


.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer",
        "<TT;>;",
        "Lcom/fasterxml/jackson/databind/ser/ContextualSerializer;"
    }
.end annotation


.field protected final _customFormat:Ljava/text/DateFormat;

.field protected final _useTimestamp:Ljava/lang/Boolean;


.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/Boolean;Ljava/text/DateFormat;)V
    .locals 0
    .param p2, "useTimestamp"    # Ljava/lang/Boolean;
    .param p3, "customFormat"    # Ljava/text/DateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Boolean;",
            "Ljava/text/DateFormat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/StdScalarSerializer;-><init>(Ljava/lang/Class;)V

    .line 42
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_useTimestamp:Ljava/lang/Boolean;

    .line 43
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_customFormat:Ljava/text/DateFormat;

    .line 44
    return-void
.end method


.method protected _acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;Z)V
    .locals 2
    .param p1, "visitor"    # Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;
    .param p2, "typeHint"    # Lcom/fasterxml/jackson/databind/JavaType;
    .param p3, "asNumber"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    if-eqz p3, :cond_0

    .line 149
    sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;

    sget-object v1, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->UTC_MILLISEC:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->visitIntFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/JsonParser$NumberType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    sget-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;->DATE_TIME:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->visitStringFormat(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonValueFormat;)V

    goto :goto_0
.end method

.method protected _asTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z
    .locals 3
    .param p1, "serializers"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    .line 132
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_useTimestamp:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_useTimestamp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 142
    :goto_0
    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_customFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_2

    .line 136
    if-eqz p1, :cond_1

    .line 137
    sget-object v0, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_DATES_AS_TIMESTAMPS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v0

    goto :goto_0

    .line 140
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null SerializerProvider passed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->handledType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract _timestamp(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
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
    .line 111
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    invoke-interface {p1}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;->getProvider()Lcom/fasterxml/jackson/databind/SerializerProvider;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_asTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_acceptJsonFormatVisitor(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper;Lcom/fasterxml/jackson/databind/JavaType;Z)V

    .line 112
    return-void
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
    .locals 8
    .param p1, "serializers"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->handledType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, p1, p2, v6}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->findFormatOverrides(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    .line 54
    .local v1, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    move-result-object v4

    .line 57
    .local v4, "shape":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    invoke-virtual {v4}, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->isNumeric()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 58
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;

    move-result-object p0

    .line 78
    .end local v1    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .end local v4    # "shape":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 60
    .restart local v1    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .restart local v4    # "shape":Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    :cond_1
    sget-object v6, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;

    if-eq v4, v6, :cond_2

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasPattern()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasLocale()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasTimeZone()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    :cond_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 63
    .local v5, "tz":Ljava/util/TimeZone;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasPattern()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "pattern":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasLocale()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 69
    .local v2, "loc":Ljava/util/Locale;
    :goto_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 70
    .local v0, "df":Ljava/text/SimpleDateFormat;
    if-nez v5, :cond_3

    .line 71
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 73
    :cond_3
    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 74
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v6, v0}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;

    move-result-object p0

    goto :goto_0

    .line 63
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    .end local v2    # "loc":Ljava/util/Locale;
    .end local v3    # "pattern":Ljava/lang/String;
    :cond_4
    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    goto :goto_1

    .line 66
    .restart local v3    # "pattern":Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->getLocale()Ljava/util/Locale;

    move-result-object v2

    goto :goto_2
.end method

.method public getSchema(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 2
    .param p1, "serializers"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .param p2, "typeHint"    # Ljava/lang/reflect/Type;

    .prologue
    .line 105
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_asTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "number"

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->createSchemaNode(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "string"

    goto :goto_0
.end method

.method public isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "serializers"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_timestamp(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;, "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;->_timestamp(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Lcom/fasterxml/jackson/databind/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            "Ljava/text/DateFormat;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase",
            "<TT;>;"
        }
    .end annotation
.end method
