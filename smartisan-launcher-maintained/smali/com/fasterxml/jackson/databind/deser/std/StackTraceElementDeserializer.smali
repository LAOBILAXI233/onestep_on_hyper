.class public Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;
.source "StackTraceElementDeserializer.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer",
        "<",
        "Ljava/lang/StackTraceElement;",
        ">;"
    }
.end annotation


.field private static final serialVersionUID:J = 0x1L


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Ljava/lang/StackTraceElement;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method


.method protected constructValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "lineNumber"    # I
    .param p6, "moduleName"    # Ljava/lang/String;
    .param p7, "moduleVersion"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StackTraceElement;

    invoke-direct {v0, p2, p3, p4, p5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/StackTraceElement;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/StackTraceElement;
    .locals 13
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    .line 23
    .local v2, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v0, :cond_9

    .line 24
    const-string v5, ""

    .local v5, "className":Ljava/lang/String;
    const-string v6, ""

    .local v6, "methodName":Ljava/lang/String;
    const-string v7, ""

    .line 26
    .local v7, "fileName":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "moduleName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 27
    .local v10, "moduleVersion":Ljava/lang/String;
    const/4 v8, -0x1

    .line 29
    .local v8, "lineNumber":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextValue()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v2, v0, :cond_8

    .line 30
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v11

    .line 32
    .local v11, "propName":Ljava/lang/String;
    const-string v0, "className"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 34
    :cond_1
    const-string v0, "fileName"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 36
    :cond_2
    const-string v0, "lineNumber"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I

    move-result v8

    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "Non-numeric token (%s) for property \'lineNumber\'"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    .end local v5    # "className":Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v2, v5, v0

    move-object v0, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackTraceElement;

    .line 65
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "lineNumber":I
    .end local v9    # "moduleName":Ljava/lang/String;
    .end local v10    # "moduleVersion":Ljava/lang/String;
    .end local v11    # "propName":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 43
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v6    # "methodName":Ljava/lang/String;
    .restart local v7    # "fileName":Ljava/lang/String;
    .restart local v8    # "lineNumber":I
    .restart local v9    # "moduleName":Ljava/lang/String;
    .restart local v10    # "moduleVersion":Ljava/lang/String;
    .restart local v11    # "propName":Ljava/lang/String;
    :cond_4
    const-string v0, "methodName"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 45
    :cond_5
    const-string v0, "nativeMethod"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const-string v0, "moduleName"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 48
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 49
    :cond_6
    const-string v0, "moduleVersion"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 50
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 52
    :cond_7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2, v0, v11}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v11    # "propName":Ljava/lang/String;
    :cond_8
    move-object v3, p0

    move-object v4, p2

    .line 55
    invoke-virtual/range {v3 .. v10}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->constructValue(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_1

    .line 57
    .end local v5    # "className":Ljava/lang/String;
    .end local v6    # "methodName":Ljava/lang/String;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "lineNumber":I
    .end local v9    # "moduleName":Ljava/lang/String;
    .end local v10    # "moduleVersion":Ljava/lang/String;
    :cond_9
    sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v2, v0, :cond_b

    sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->UNWRAP_SINGLE_VALUE_ARRAYS:Lcom/fasterxml/jackson/databind/DeserializationFeature;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 58
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/StackTraceElement;

    move-result-object v12

    .line 60
    .local v12, "value":Ljava/lang/StackTraceElement;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v0, v1, :cond_a

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->handleMissingEndArrayForSingle(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)V

    :cond_a
    move-object v0, v12

    .line 63
    goto :goto_1

    .line 65
    .end local v12    # "value":Ljava/lang/StackTraceElement;
    :cond_b
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StackTraceElementDeserializer;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StackTraceElement;

    goto :goto_1
.end method
