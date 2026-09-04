.class public Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;
.super Ljava/io/FilterOutputStream;
.source "BaseNCodecOutputStream.java"


.field private final baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

.field private final context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

.field private final doEncode:Z

.field private final singleByte:[B


.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/codec/binary/BaseNCodec;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "basedCodec"    # Lorg/apache/commons/codec/binary/BaseNCodec;
    .param p3, "doEncode"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    .line 42
    new-instance v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .line 47
    iput-object p2, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

    .line 48
    iput-boolean p3, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    .line 49
    return-void
.end method

.method private flush(Z)V
    .locals 6
    .param p1, "propagate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 111
    iget-object v3, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

    iget-object v4, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v3, v4}, Lorg/apache/commons/codec/binary/BaseNCodec;->available(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v0

    .line 112
    .local v0, "avail":I
    if-lez v0, :cond_0

    .line 113
    new-array v1, v0, [B

    .line 114
    .local v1, "buf":[B
    iget-object v3, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

    iget-object v4, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v3, v1, v5, v0, v4}, Lorg/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v2

    .line 115
    .local v2, "c":I
    if-lez v2, :cond_0

    .line 116
    iget-object v3, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, v1, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 119
    .end local v1    # "buf":[B
    .end local v2    # "c":I
    :cond_0
    if-eqz p1, :cond_1

    .line 120
    iget-object v3, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 122
    :cond_1
    return-void
.end method


.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 144
    iget-boolean v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    iget-object v2, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, v1, v4, v3, v2}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 149
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->flush()V

    .line 150
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 151
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    iget-object v2, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, v1, v4, v3, v2}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->flush(Z)V

    .line 133
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 62
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->write([BII)V

    .line 63
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 87
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 88
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 89
    :cond_2
    array-length v0, p1

    if-gt p2, v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_4

    .line 90
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 91
    :cond_4
    if-lez p3, :cond_5

    .line 92
    iget-boolean v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->doEncode:Z

    if-eqz v0, :cond_6

    .line 93
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 97
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->flush(Z)V

    .line 99
    :cond_5
    return-void

    .line 95
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->baseNCodec:Lorg/apache/commons/codec/binary/BaseNCodec;

    iget-object v1, p0, Lorg/apache/commons/codec/binary/BaseNCodecOutputStream;->context:Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    goto :goto_0
.end method
