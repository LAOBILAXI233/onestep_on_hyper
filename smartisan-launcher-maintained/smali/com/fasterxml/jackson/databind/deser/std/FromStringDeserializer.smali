.class public abstract Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "FromStringDeserializer.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer",
        "<TT;>;"
    }
.end annotation


.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<TT;>;"
    .local p1, "vc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 54
    return-void
.end method

.method public static findDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 63
    .local v0, "kind":I
    const-class v1, Ljava/io/File;

    if-ne p0, v1, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 90
    :goto_0
    new-instance v1, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;

    invoke-direct {v1, p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer$Std;-><init>(Ljava/lang/Class;I)V

    :goto_1
    return-object v1

    .line 65
    :cond_0
    const-class v1, Ljava/net/URL;

    if-ne p0, v1, :cond_1

    .line 66
    const/4 v0, 0x2

    goto :goto_0

    .line 67
    :cond_1
    const-class v1, Ljava/net/URI;

    if-ne p0, v1, :cond_2

    .line 68
    const/4 v0, 0x3

    goto :goto_0

    .line 69
    :cond_2
    const-class v1, Ljava/lang/Class;

    if-ne p0, v1, :cond_3

    .line 70
    const/4 v0, 0x4

    goto :goto_0

    .line 71
    :cond_3
    const-class v1, Lcom/fasterxml/jackson/databind/JavaType;

    if-ne p0, v1, :cond_4

    .line 72
    const/4 v0, 0x5

    goto :goto_0

    .line 73
    :cond_4
    const-class v1, Ljava/util/Currency;

    if-ne p0, v1, :cond_5

    .line 74
    const/4 v0, 0x6

    goto :goto_0

    .line 75
    :cond_5
    const-class v1, Ljava/util/regex/Pattern;

    if-ne p0, v1, :cond_6

    .line 76
    const/4 v0, 0x7

    goto :goto_0

    .line 77
    :cond_6
    const-class v1, Ljava/util/Locale;

    if-ne p0, v1, :cond_7

    .line 78
    const/16 v0, 0x8

    goto :goto_0

    .line 79
    :cond_7
    const-class v1, Ljava/nio/charset/Charset;

    if-ne p0, v1, :cond_8

    .line 80
    const/16 v0, 0x9

    goto :goto_0

    .line 81
    :cond_8
    const-class v1, Ljava/util/TimeZone;

    if-ne p0, v1, :cond_9

    .line 82
    const/16 v0, 0xa

    goto :goto_0

    .line 83
    :cond_9
    const-class v1, Ljava/net/InetAddress;

    if-ne p0, v1, :cond_a

    .line 84
    const/16 v0, 0xb

    goto :goto_0

    .line 85
    :cond_a
    const-class v1, Ljava/net/InetSocketAddress;

    if-ne p0, v1, :cond_b

    .line 86
    const/16 v0, 0xc

    goto :goto_0

    .line 88
    :cond_b
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static types()[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 30
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/io/File;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/net/URL;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/net/URI;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/fasterxml/jackson/databind/JavaType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Ljava/util/Currency;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Ljava/util/regex/Pattern;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Ljava/util/Locale;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Ljava/nio/charset/Charset;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Ljava/util/TimeZone;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Ljava/net/InetAddress;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Ljava/net/InetSocketAddress;

    aput-object v2, v0, v1

    return-object v0
.end method


.method protected abstract _deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected _deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "ob"    # Ljava/lang/Object;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<TT;>;"
    const-string v0, "Don\'t know how to convert embedded Object of type %s into %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method protected _deserializeFromEmptyString()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 12
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;, "Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer<TT;>;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "text":Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 106
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserializeFromEmptyString()Ljava/lang/Object;

    move-result-object v6

    .line 155
    :cond_1
    :goto_0
    return-object v6

    .line 110
    :cond_2
    const/4 v0, 0x0

    .line 112
    .local v0, "cause":Ljava/lang/Exception;
    :try_start_0
    invoke-virtual {p0, v8, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserialize(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 113
    .local v6, "result":Ljava/lang/Object;, "TT;"
    if-nez v6, :cond_1

    .line 119
    .end local v6    # "result":Ljava/lang/Object;, "TT;"
    :goto_1
    const-string v4, "not a valid textual representation"

    .line 120
    .local v4, "msg":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "m2":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 123
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", problem: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    .end local v3    # "m2":Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v8, v10, v4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;

    move-result-object v1

    .line 128
    .local v1, "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 131
    :cond_4
    throw v1

    .line 116
    .end local v1    # "e":Lcom/fasterxml/jackson/databind/JsonMappingException;
    .end local v4    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 117
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    move-object v0, v2

    goto :goto_1

    .line 134
    .end local v0    # "cause":Ljava/lang/Exception;
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_5
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    .line 136
    .local v7, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v10, :cond_7

    sget-object v10, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v10}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 137
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v9

    .line 139
    .local v9, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v10

    sget-object v11, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v10, v11, :cond_6

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->handleMissingEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    :cond_6
    move-object v6, v9

    .line 142
    goto :goto_0

    .line 144
    .end local v9    # "value":Ljava/lang/Object;, "TT;"
    :cond_7
    sget-object v10, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v10, :cond_a

    .line 146
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v5

    .line 147
    .local v5, "ob":Ljava/lang/Object;
    if-nez v5, :cond_8

    .line 148
    const/4 v6, 0x0

    goto :goto_0

    .line 150
    :cond_8
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v6, v5

    .line 151
    goto :goto_0

    .line 153
    :cond_9
    invoke-virtual {p0, v5, p2}, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_deserializeEmbedded(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 155
    .end local v5    # "ob":Ljava/lang/Object;
    :cond_a
    iget-object v10, p0, Lcom/fasterxml/jackson/databind/deser/std/FromStringDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v10, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    goto/16 :goto_0
.end method
