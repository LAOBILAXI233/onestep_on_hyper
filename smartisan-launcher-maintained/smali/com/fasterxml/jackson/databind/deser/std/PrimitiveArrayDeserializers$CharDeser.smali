.class final Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;
.super Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;
.source "PrimitiveArrayDeserializers.java"


.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CharDeser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers",
        "<[C>;"
    }
.end annotation


.field private static final serialVersionUID:J = 0x1L


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 136
    const-class v0, [C

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;
    .param p2, "unwrapSingle"    # Ljava/lang/Boolean;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;-><init>(Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;Ljava/lang/Boolean;)V

    .line 139
    return-void
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
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[C

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[C
    .locals 13
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    .line 155
    .local v8, "t":Lcom/fasterxml/jackson/core/JsonToken;
    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v9, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextCharacters()[C

    move-result-object v0

    .line 158
    .local v0, "buffer":[C
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextOffset()I

    move-result v4

    .line 159
    .local v4, "offset":I
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextLength()I

    move-result v2

    .line 161
    .local v2, "len":I
    new-array v5, v2, [C

    .line 162
    .local v5, "result":[C
    const/4 v9, 0x0

    invoke-static {v0, v4, v5, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    .end local v0    # "buffer":[C
    .end local v2    # "len":I
    .end local v4    # "offset":I
    .end local v5    # "result":[C
    :goto_0
    return-object v5

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 167
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v9, 0x40

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 168
    .local v6, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v8, v9, :cond_3

    .line 170
    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v9, :cond_2

    .line 171
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "str":Ljava/lang/String;
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_1

    .line 177
    const-string v9, "Can not convert a JSON String of length %d into a char element of char array"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p2, v9, v10}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportMappingException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :cond_1
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 173
    .end local v7    # "str":Ljava/lang/String;
    :cond_2
    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, v9, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 174
    .local v1, "cs":Ljava/lang/CharSequence;
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "str":Ljava/lang/String;
    goto :goto_2

    .line 182
    .end local v1    # "cs":Ljava/lang/CharSequence;
    .end local v7    # "str":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    goto :goto_0

    .line 185
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v9, :cond_8

    .line 186
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;

    move-result-object v3

    .line 187
    .local v3, "ob":Ljava/lang/Object;
    if-nez v3, :cond_5

    const/4 v5, 0x0

    goto :goto_0

    .line 188
    :cond_5
    instance-of v9, v3, [C

    if-eqz v9, :cond_6

    .line 189
    check-cast v3, [C

    .end local v3    # "ob":Ljava/lang/Object;
    check-cast v3, [C

    move-object v5, v3

    goto :goto_0

    .line 191
    .restart local v3    # "ob":Ljava/lang/Object;
    :cond_6
    instance-of v9, v3, Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 192
    check-cast v3, Ljava/lang/String;

    .end local v3    # "ob":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    goto :goto_0

    .line 195
    .restart local v3    # "ob":Ljava/lang/Object;
    :cond_7
    instance-of v9, v3, [B

    if-eqz v9, :cond_8

    .line 196
    invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v9

    check-cast v3, [B

    .end local v3    # "ob":Ljava/lang/Object;
    check-cast v3, [B

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v10}, Lcom/fasterxml/jackson/core/Base64Variant;->encode([BZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    goto/16 :goto_0

    .line 200
    :cond_8
    iget-object v9, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v9, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [C

    check-cast v9, [C

    move-object v5, v9

    goto/16 :goto_0
.end method

.method protected bridge synthetic handleSingleElementUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;->handleSingleElementUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[C

    move-result-object v0

    return-object v0
.end method

.method protected handleSingleElementUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[C
    .locals 1
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers$CharDeser;->_valueClass:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnexpectedToken(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method protected withResolved(Ljava/lang/Boolean;)Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;
    .locals 0
    .param p1, "unwrapSingle"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 144
    return-object p0
.end method
