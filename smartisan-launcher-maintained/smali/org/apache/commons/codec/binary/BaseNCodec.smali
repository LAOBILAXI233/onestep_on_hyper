.class public abstract Lorg/apache/commons/codec/binary/BaseNCodec;
.super Ljava/lang/Object;
.source "BaseNCodec.java"

.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/binary/BaseNCodec$Context;
    }
.end annotation


.field private static final DEFAULT_BUFFER_RESIZE_FACTOR:I = 0x2

.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field static final EOF:I = -0x1

.field protected static final MASK_8BITS:I = 0xff

.field public static final MIME_CHUNK_SIZE:I = 0x4c

.field protected static final PAD_DEFAULT:B = 0x3dt

.field public static final PEM_CHUNK_SIZE:I = 0x40


.field protected final PAD:B

.field private final chunkSeparatorLength:I

.field private final encodedBlockSize:I

.field protected final lineLength:I

.field private final unencodedBlockSize:I


.method protected constructor <init>(IIII)V
    .locals 3
    .param p1, "unencodedBlockSize"    # I
    .param p2, "encodedBlockSize"    # I
    .param p3, "lineLength"    # I
    .param p4, "chunkSeparatorLength"    # I

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/16 v2, 0x3d

    iput-byte v2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->PAD:B

    .line 186
    iput p1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    .line 187
    iput p2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    .line 188
    if-lez p3, :cond_1

    if-lez p4, :cond_1

    const/4 v0, 0x1

    .line 189
    .local v0, "useChunking":Z
    :goto_0
    if-eqz v0, :cond_0

    div-int v1, p3, p2

    mul-int/2addr v1, p2

    :cond_0
    iput v1, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    .line 190
    iput p4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    .line 191
    return-void

    .end local v0    # "useChunking":Z
    :cond_1
    move v0, v1

    .line 188
    goto :goto_0
.end method

.method protected static isWhiteSpace(B)Z
    .locals 1
    .param p0, "byteToCheck"    # B

    .prologue
    .line 289
    sparse-switch p0, :sswitch_data_0

    .line 296
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 294
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private resizeBuffer(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 4
    .param p1, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-nez v1, :cond_0

    .line 228
    invoke-virtual {p0}, Lorg/apache/commons/codec/binary/BaseNCodec;->getDefaultBufferSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 229
    iput v3, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 230
    iput v3, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    .line 236
    :goto_0
    iget-object v1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    return-object v1

    .line 232
    :cond_0
    iget-object v1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 233
    .local v0, "b":[B
    iget-object v1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget-object v2, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iput-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    goto :goto_0
.end method


.method available(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 2
    .param p1, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    .line 210
    iget-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v1, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected containsAlphabetOrPad([B)Z
    .locals 6
    .param p1, "arrayOctet"    # [B

    .prologue
    const/4 v4, 0x0

    .line 473
    if-nez p1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v4

    .line 476
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 477
    .local v1, "element":B
    const/16 v5, 0x3d

    if-eq v5, v1, :cond_2

    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 478
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 476
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 354
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    .line 355
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    .line 356
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 357
    check-cast p1, Ljava/lang/String;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 359
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "Parameter supplied to Base-N decode is not a byte[] or a String"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method abstract decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public decode(Ljava/lang/String;)[B
    .locals 1
    .param p1, "pArray"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([B)[B

    move-result-object v0

    return-object v0
.end method

.method public decode([B)[B
    .locals 4
    .param p1, "pArray"    # [B

    .prologue
    const/4 v3, 0x0

    .line 383
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    move-object v1, p1

    .line 391
    :goto_0
    return-object v1

    .line 386
    :cond_1
    new-instance v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v0}, Lorg/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 387
    .local v0, "context":Lorg/apache/commons/codec/binary/BaseNCodec$Context;
    array-length v2, p1

    invoke-virtual {p0, p1, v3, v2, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 388
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v3, v2, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 389
    iget v2, v0, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    new-array v1, v2, [B

    .line 390
    .local v1, "result":[B
    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2, v0}, Lorg/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    goto :goto_0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 312
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "Parameter supplied to Base-N encode is not a byte[]"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    check-cast p1, [B

    .end local p1    # "obj":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    return-object v0
.end method

.method abstract encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
.end method

.method public encode([B)[B
    .locals 5
    .param p1, "pArray"    # [B

    .prologue
    const/4 v4, 0x0

    .line 403
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    :cond_0
    move-object v0, p1

    .line 411
    :goto_0
    return-object v0

    .line 406
    :cond_1
    new-instance v1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    invoke-direct {v1}, Lorg/apache/commons/codec/binary/BaseNCodec$Context;-><init>()V

    .line 407
    .local v1, "context":Lorg/apache/commons/codec/binary/BaseNCodec$Context;
    array-length v2, p1

    invoke-virtual {p0, p1, v4, v2, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 408
    const/4 v2, -0x1

    invoke-virtual {p0, p1, v4, v2, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V

    .line 409
    iget v2, v1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget v3, v1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    sub-int/2addr v2, v3

    new-array v0, v2, [B

    .line 410
    .local v0, "buf":[B
    array-length v2, v0

    invoke-virtual {p0, v0, v4, v2, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    goto :goto_0
.end method

.method public encodeAsString([B)Ljava/lang/String;
    .locals 1
    .param p1, "pArray"    # [B

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeToString([B)Ljava/lang/String;
    .locals 1
    .param p1, "pArray"    # [B

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/BaseNCodec;->encode([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B
    .locals 2
    .param p1, "size"    # I
    .param p2, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    .line 246
    iget-object v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    array-length v0, v0

    iget v1, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_1

    .line 247
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/commons/codec/binary/BaseNCodec;->resizeBuffer(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v0

    .line 249
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p2, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    goto :goto_0
.end method

.method protected getDefaultBufferSize()I
    .locals 1

    .prologue
    .line 219
    const/16 v0, 0x2000

    return v0
.end method

.method public getEncodedLength([B)J
    .locals 6
    .param p1, "pArray"    # [B

    .prologue
    .line 495
    array-length v2, p1

    iget v3, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->unencodedBlockSize:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    iget v4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->encodedBlockSize:I

    int-to-long v4, v4

    mul-long v0, v2, v4

    .line 496
    .local v0, "len":J
    iget v2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    if-lez v2, :cond_0

    .line 498
    iget v2, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget v4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->lineLength:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    iget v4, p0, Lorg/apache/commons/codec/binary/BaseNCodec;->chunkSeparatorLength:I

    int-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 500
    :cond_0
    return-wide v0
.end method

.method hasData(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)Z
    .locals 1
    .param p1, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    .line 200
    iget-object v0, p1, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isInAlphabet(B)Z
.end method

.method public isInAlphabet(Ljava/lang/String;)Z
    .locals 2
    .param p1, "basen"    # Ljava/lang/String;

    .prologue
    .line 460
    invoke-static {p1}, Lorg/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->isInAlphabet([BZ)Z

    move-result v0

    return v0
.end method

.method public isInAlphabet([BZ)Z
    .locals 3
    .param p1, "arrayOctet"    # [B
    .param p2, "allowWSPad"    # Z

    .prologue
    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 442
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->isInAlphabet(B)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    aget-byte v1, p1, v0

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    aget-byte v1, p1, v0

    invoke-static {v1}, Lorg/apache/commons/codec/binary/BaseNCodec;->isWhiteSpace(B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 444
    :cond_0
    const/4 v1, 0x0

    .line 447
    :goto_1
    return v1

    .line 441
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method readResults([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "bPos"    # I
    .param p3, "bAvail"    # I
    .param p4, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    .line 269
    iget-object v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    if-eqz v1, :cond_1

    .line 270
    invoke-virtual {p0, p4}, Lorg/apache/commons/codec/binary/BaseNCodec;->available(Lorg/apache/commons/codec/binary/BaseNCodec$Context;)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 271
    .local v0, "len":I
    iget-object v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    add-int/2addr v1, v0

    iput v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    .line 273
    iget v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->readPos:I

    iget v2, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    if-lt v1, v2, :cond_0

    .line 274
    const/4 v1, 0x0

    iput-object v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->buffer:[B

    .line 278
    .end local v0    # "len":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
