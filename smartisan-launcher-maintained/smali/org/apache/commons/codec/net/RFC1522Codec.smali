.class abstract Lorg/apache/commons/codec/net/RFC1522Codec;
.super Ljava/lang/Object;
.source "RFC1522Codec.java"


.field protected static final POSTFIX:Ljava/lang/String; = "?="

.field protected static final PREFIX:Ljava/lang/String; = "=?"

.field protected static final SEP:C = '?'


.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method protected decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3f

    .line 126
    if-nez p1, :cond_0

    .line 127
    const/4 v6, 0x0

    .line 155
    :goto_0
    return-object v6

    .line 129
    :cond_0
    const-string v6, "=?"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "?="

    invoke-virtual {p1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 130
    :cond_1
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    const-string v7, "RFC 1522 violation: malformed encoded content"

    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 132
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v4, v6, -0x2

    .line 133
    .local v4, "terminator":I
    const/4 v3, 0x2

    .line 134
    .local v3, "from":I
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 135
    .local v5, "to":I
    if-ne v5, v4, :cond_3

    .line 136
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    const-string v7, "RFC 1522 violation: charset token not found"

    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 138
    :cond_3
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "charset":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 140
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    const-string v7, "RFC 1522 violation: charset not specified"

    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 142
    :cond_4
    add-int/lit8 v3, v5, 0x1

    .line 143
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 144
    if-ne v5, v4, :cond_5

    .line 145
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    const-string v7, "RFC 1522 violation: encoding token not found"

    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 147
    :cond_5
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "encoding":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 149
    new-instance v6, Lorg/apache/commons/codec/DecoderException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This codec cannot decode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " encoded content"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 151
    :cond_6
    add-int/lit8 v3, v5, 0x1

    .line 152
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 153
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUsAscii(Ljava/lang/String;)[B

    move-result-object v1

    .line 154
    .local v1, "data":[B
    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/net/RFC1522Codec;->doDecoding([B)[B

    move-result-object v1

    .line 155
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected abstract doDecoding([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation
.end method

.method protected abstract doEncoding([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation
.end method

.method protected encodeText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/codec/net/RFC1522Codec;->encodeText(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected encodeText(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x3f

    .line 69
    if-nez p1, :cond_0

    .line 70
    const/4 v2, 0x0

    .line 81
    :goto_0
    return-object v2

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/codec/net/RFC1522Codec;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/codec/net/RFC1522Codec;->doEncoding([B)[B

    move-result-object v1

    .line 79
    .local v1, "rawData":[B
    invoke-static {v1}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUsAscii([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v2, "?="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected abstract getEncoding()Ljava/lang/String;
.end method
