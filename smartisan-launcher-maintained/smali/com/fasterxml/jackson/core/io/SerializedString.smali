.class public Lcom/fasterxml/jackson/core/io/SerializedString;
.super Ljava/lang/Object;
.source "SerializedString.java"

.implements Lcom/fasterxml/jackson/core/SerializableString;
.implements Ljava/io/Serializable;


.field private static final serialVersionUID:J = 0x1L


.field protected transient _jdkSerializeValue:Ljava/lang/String;

.field protected _quotedChars:[C

.field protected _quotedUTF8Ref:[B

.field protected _unquotedUTF8Ref:[B

.field protected final _value:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Null String illegal for SerializedString"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 54
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_jdkSerializeValue:Ljava/lang/String;

    .line 72
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 76
    return-void
.end method


.method public appendQuoted([CI)I
    .locals 4
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I

    .prologue
    .line 158
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedChars:[C

    .line 159
    .local v1, "result":[C
    if-nez v1, :cond_0

    .line 160
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsString(Ljava/lang/String;)[C

    move-result-object v1

    .line 161
    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedChars:[C

    .line 163
    :cond_0
    array-length v0, v1

    .line 164
    .local v0, "length":I
    add-int v2, p2, v0

    array-length v3, p1

    if-le v2, v3, :cond_1

    .line 165
    const/4 v0, -0x1

    .line 168
    .end local v0    # "length":I
    :goto_0
    return v0

    .line 167
    .restart local v0    # "length":I
    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public appendQuotedUTF8([BI)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 143
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 144
    .local v1, "result":[B
    if-nez v1, :cond_0

    .line 145
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsUTF8(Ljava/lang/String;)[B

    move-result-object v1

    .line 146
    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 148
    :cond_0
    array-length v0, v1

    .line 149
    .local v0, "length":I
    add-int v2, p2, v0

    array-length v3, p1

    if-le v2, v3, :cond_1

    .line 150
    const/4 v0, -0x1

    .line 153
    .end local v0    # "length":I
    :goto_0
    return v0

    .line 152
    .restart local v0    # "length":I
    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public appendUnquoted([CI)I
    .locals 4
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I

    .prologue
    .line 188
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    .line 189
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 190
    .local v0, "length":I
    add-int v2, p2, v0

    array-length v3, p1

    if-le v2, v3, :cond_0

    .line 191
    const/4 v0, -0x1

    .line 194
    .end local v0    # "length":I
    :goto_0
    return v0

    .line 193
    .restart local v0    # "length":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public appendUnquotedUTF8([BI)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 173
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 174
    .local v1, "result":[B
    if-nez v1, :cond_0

    .line 175
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->encodeAsUTF8(Ljava/lang/String;)[B

    move-result-object v1

    .line 176
    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 178
    :cond_0
    array-length v0, v1

    .line 179
    .local v0, "length":I
    add-int v2, p2, v0

    array-length v3, p1

    if-le v2, v3, :cond_1

    .line 180
    const/4 v0, -0x1

    .line 183
    .end local v0    # "length":I
    :goto_0
    return v0

    .line 182
    .restart local v0    # "length":I
    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public final asQuotedChars()[C
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedChars:[C

    .line 100
    .local v0, "result":[C
    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsString(Ljava/lang/String;)[C

    move-result-object v0

    .line 102
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedChars:[C

    .line 104
    :cond_0
    return-object v0
.end method

.method public final asQuotedUTF8()[B
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 128
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsUTF8(Ljava/lang/String;)[B

    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 132
    :cond_0
    return-object v0
.end method

.method public final asUnquotedUTF8()[B
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 114
    .local v0, "result":[B
    if-nez v0, :cond_0

    .line 115
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->encodeAsUTF8(Ljava/lang/String;)[B

    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 118
    :cond_0
    return-object v0
.end method

.method public final charLength()I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 266
    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    .line 269
    :goto_0
    return v1

    .line 267
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 268
    check-cast v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    .line 269
    .local v0, "other":Lcom/fasterxml/jackson/core/io/SerializedString;
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    iget-object v2, v0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public putQuotedUTF8(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 223
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 224
    .local v1, "result":[B
    if-nez v1, :cond_0

    .line 225
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsUTF8(Ljava/lang/String;)[B

    move-result-object v1

    .line 226
    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 228
    :cond_0
    array-length v0, v1

    .line 229
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 230
    const/4 v0, -0x1

    .line 233
    .end local v0    # "length":I
    :goto_0
    return v0

    .line 232
    .restart local v0    # "length":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public putUnquotedUTF8(Ljava/nio/ByteBuffer;)I
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 238
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 239
    .local v1, "result":[B
    if-nez v1, :cond_0

    .line 240
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->encodeAsUTF8(Ljava/lang/String;)[B

    move-result-object v1

    .line 241
    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 243
    :cond_0
    array-length v0, v1

    .line 244
    .local v0, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 245
    const/4 v0, -0x1

    .line 248
    .end local v0    # "length":I
    :goto_0
    return v0

    .line 247
    .restart local v0    # "length":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_jdkSerializeValue:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    return-object v0
.end method

.method public writeQuotedUTF8(Ljava/io/OutputStream;)I
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 200
    .local v1, "result":[B
    if-nez v1, :cond_0

    .line 201
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->quoteAsUTF8(Ljava/lang/String;)[B

    move-result-object v1

    .line 202
    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_quotedUTF8Ref:[B

    .line 204
    :cond_0
    array-length v0, v1

    .line 205
    .local v0, "length":I
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 206
    return v0
.end method

.method public writeUnquotedUTF8(Ljava/io/OutputStream;)I
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 212
    .local v1, "result":[B
    if-nez v1, :cond_0

    .line 213
    invoke-static {}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->encodeAsUTF8(Ljava/lang/String;)[B

    move-result-object v1

    .line 214
    iput-object v1, p0, Lcom/fasterxml/jackson/core/io/SerializedString;->_unquotedUTF8Ref:[B

    .line 216
    :cond_0
    array-length v0, v1

    .line 217
    .local v0, "length":I
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 218
    return v0
.end method
