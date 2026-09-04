.class public abstract Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "DateDeserializers.java"

.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "DateBasedDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer",
        "<TT;>;",
        "Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;"
    }
.end annotation


.field protected final _customFormat:Ljava/text/DateFormat;

.field protected final _formatString:Ljava/lang/String;


.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V
    .locals 1
    .param p2, "format"    # Ljava/text/DateFormat;
    .param p3, "formatStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer",
            "<TT;>;",
            "Ljava/text/DateFormat;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    .local p1, "base":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 93
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    .line 94
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_formatString:Ljava/lang/String;

    .line 95
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    .local p1, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 86
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    .line 87
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_formatString:Ljava/lang/String;

    .line 88
    return-void
.end method


.method protected _parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    if-eqz v4, :cond_3

    .line 146
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 147
    .local v3, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_1

    .line 148
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 150
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->getEmptyValue(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    .line 172
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :goto_0
    return-object v4

    .line 152
    .restart local v2    # "str":Ljava/lang/String;
    .restart local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_0
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    monitor-enter v5

    .line 154
    :try_start_0
    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_customFormat:Ljava/text/DateFormat;

    invoke-virtual {v4, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :try_start_1
    monitor-exit v5

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/text/ParseException;
    :try_start_2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "expected format \"%s\""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_formatString:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {p2, v4, v2, v6, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleWeirdStringValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_3

    sget-object v4, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 163
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 164
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object v1

    .line 165
    .local v1, "parsed":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    .line 166
    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v3, v4, :cond_2

    .line 167
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->handleMissingEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    :cond_2
    move-object v4, v1

    .line 169
    goto :goto_0

    .line 172
    .end local v1    # "parsed":Ljava/util/Date;
    .end local v3    # "t":Lcom/fasterxml/jackson/core/JsonToken;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;->_parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object v4

    goto :goto_0
.end method

.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 8
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "property"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    if-eqz p2, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, p1, p2, v6}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->findFormatOverrides(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v1

    .line 106
    .local v1, "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 109
    .local v5, "tz":Ljava/util/TimeZone;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasPattern()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 110
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "pattern":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasLocale()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 112
    .local v2, "loc":Ljava/util/Locale;
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 113
    .local v0, "df":Ljava/text/SimpleDateFormat;
    if-nez v5, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 116
    :cond_0
    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 117
    invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;

    move-result-object p0

    .line 138
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    .end local v1    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .end local v2    # "loc":Ljava/util/Locale;
    .end local v3    # "pattern":Ljava/lang/String;
    .end local v5    # "tz":Ljava/util/TimeZone;
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    :cond_1
    :goto_1
    return-object p0

    .line 111
    .restart local v1    # "format":Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .restart local v3    # "pattern":Ljava/lang/String;
    .restart local v5    # "tz":Ljava/util/TimeZone;
    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer<TT;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getLocale()Ljava/util/Locale;

    move-result-object v2

    goto :goto_0

    .line 120
    .end local v3    # "pattern":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 123
    .local v0, "df":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    if-ne v6, v7, :cond_5

    .line 124
    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->hasLocale()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .restart local v2    # "loc":Ljava/util/Locale;
    :goto_2
    move-object v4, v0

    .line 125
    check-cast v4, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    .line 126
    .local v4, "std":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    invoke-virtual {v4, v5}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    move-result-object v4

    .line 127
    invoke-virtual {v4, v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->withLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    move-result-object v4

    .line 128
    move-object v0, v4

    .line 134
    .end local v2    # "loc":Ljava/util/Locale;
    .end local v4    # "std":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    :goto_3
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->_formatString:Ljava/lang/String;

    invoke-virtual {p0, v0, v6}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;

    move-result-object p0

    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getLocale()Ljava/util/Locale;

    move-result-object v2

    goto :goto_2

    .line 131
    :cond_5
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "df":Ljava/text/DateFormat;
    check-cast v0, Ljava/text/DateFormat;

    .line 132
    .restart local v0    # "df":Ljava/text/DateFormat;
    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_3
.end method

.method protected abstract withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/DateFormat;",
            "Ljava/lang/String;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer",
            "<TT;>;"
        }
    .end annotation
.end method
