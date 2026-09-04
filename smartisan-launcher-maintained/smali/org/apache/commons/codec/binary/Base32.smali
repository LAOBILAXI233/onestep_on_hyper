.class public Lorg/apache/commons/codec/binary/Base32;
.super Lorg/apache/commons/codec/binary/BaseNCodec;
.source "Base32.java"


.field private static final BITS_PER_ENCODED_BYTE:I = 0x5

.field private static final BYTES_PER_ENCODED_BLOCK:I = 0x8

.field private static final BYTES_PER_UNENCODED_BLOCK:I = 0x5

.field private static final CHUNK_SEPARATOR:[B

.field private static final DECODE_TABLE:[B

.field private static final ENCODE_TABLE:[B

.field private static final HEX_DECODE_TABLE:[B

.field private static final HEX_ENCODE_TABLE:[B

.field private static final MASK_5BITS:I = 0x1f


.field private final decodeSize:I

.field private final decodeTable:[B

.field private final encodeSize:I

.field private final encodeTable:[B

.field private final lineSeparator:[B


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->CHUNK_SEPARATOR:[B

    .line 67
    const/16 v0, 0x5b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->DECODE_TABLE:[B

    .line 81
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->ENCODE_TABLE:[B

    .line 92
    const/16 v0, 0x58

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->HEX_DECODE_TABLE:[B

    .line 106
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lorg/apache/commons/codec/binary/Base32;->HEX_ENCODE_TABLE:[B

    return-void

    .line 60
    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 67
    nop

    :array_1
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
    .end array-data

    .line 81
    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data

    .line 92
    :array_3
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
    .end array-data

    .line 106
    :array_4
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(Z)V

    .line 160
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "lineLength"    # I

    .prologue
    .line 185
    sget-object v0, Lorg/apache/commons/codec/binary/Base32;->CHUNK_SEPARATOR:[B

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[B)V

    .line 186
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZ)V

    .line 208
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 5
    .param p1, "lineLength"    # I
    .param p2, "lineSeparator"    # [B
    .param p3, "useHex"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 232
    const/4 v3, 0x5

    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, v3, v4, p1, v1}, Lorg/apache/commons/codec/binary/BaseNCodec;-><init>(IIII)V

    .line 235
    if-eqz p3, :cond_1

    .line 236
    sget-object v1, Lorg/apache/commons/codec/binary/Base32;->HEX_ENCODE_TABLE:[B

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    .line 237
    sget-object v1, Lorg/apache/commons/codec/binary/Base32;->HEX_DECODE_TABLE:[B

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    .line 242
    :goto_1
    if-lez p1, :cond_4

    .line 243
    if-nez p2, :cond_2

    .line 244
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineLength "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > 0, but lineSeparator is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_0
    array-length v1, p2

    goto :goto_0

    .line 239
    :cond_1
    sget-object v1, Lorg/apache/commons/codec/binary/Base32;->ENCODE_TABLE:[B

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    .line 240
    sget-object v1, Lorg/apache/commons/codec/binary/Base32;->DECODE_TABLE:[B

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    goto :goto_1

    .line 247
    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/binary/Base32;->containsAlphabetOrPad([B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 248
    invoke-static {p2}, Lorg/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, "sep":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineSeparator must not contain Base32 characters: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    .end local v0    # "sep":Ljava/lang/String;
    :cond_3
    array-length v1, p2

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    .line 252
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    .line 253
    iget-object v1, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    :goto_2
    iget v1, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    .line 259
    return-void

    .line 255
    :cond_4
    iput v4, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    .line 256
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    goto :goto_2
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "useHex"    # Z

    .prologue
    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/codec/binary/Base32;-><init>(I[BZ)V

    .line 171
    return-void
.end method


.method decode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    .line 287
    iget-boolean v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    if-gez p3, :cond_2

    .line 291
    const/4 v5, 0x1

    iput-boolean v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 293
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p2

    .end local p2    # "inPos":I
    .local v3, "inPos":I
    :goto_1
    if-ge v2, p3, :cond_5

    .line 294
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v3

    .line 295
    .local v0, "b":B
    const/16 v5, 0x3d

    if-ne v0, v5, :cond_3

    .line 297
    const/4 v5, 0x1

    iput-boolean v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 322
    .end local v0    # "b":B
    :goto_2
    iget-boolean v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_0

    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 323
    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    invoke-virtual {p0, v5, p4}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 326
    .local v1, "buffer":[B
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v5, :pswitch_data_0

    .line 359
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Impossible modulus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 300
    .end local v1    # "buffer":[B
    .restart local v0    # "b":B
    :cond_3
    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->decodeSize:I

    invoke-virtual {p0, v5, p4}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 301
    .restart local v1    # "buffer":[B
    if-ltz v0, :cond_4

    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 302
    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    aget-byte v4, v5, v0

    .line 303
    .local v4, "result":I
    if-ltz v4, :cond_4

    .line 304
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x8

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 306
    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v5, 0x5

    shl-long/2addr v6, v5

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 307
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_4

    .line 308
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 309
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x18

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 310
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 311
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 312
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 293
    .end local v4    # "result":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    goto/16 :goto_1

    .line 328
    .end local v0    # "b":B
    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    :pswitch_0
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v8, 0x2

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 331
    :pswitch_1
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v8, 0x7

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 334
    :pswitch_2
    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v5, 0x4

    shr-long/2addr v6, v5

    iput-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 335
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 336
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 339
    :pswitch_3
    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v5, 0x1

    shr-long/2addr v6, v5

    iput-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 340
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 341
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 342
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 345
    :pswitch_4
    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v5, 0x6

    shr-long/2addr v6, v5

    iput-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 346
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 347
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 348
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .line 351
    :pswitch_5
    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v5, 0x3

    shr-long/2addr v6, v5

    iput-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 352
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x18

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 353
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 354
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 355
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    goto/16 :goto_0

    .end local v1    # "buffer":[B
    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    :cond_5
    move p2, v3

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_2

    .line 326
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method encode([BIILorg/apache/commons/codec/binary/BaseNCodec$Context;)V
    .locals 10
    .param p1, "in"    # [B
    .param p2, "inPos"    # I
    .param p3, "inAvail"    # I
    .param p4, "context"    # Lorg/apache/commons/codec/binary/BaseNCodec$Context;

    .prologue
    .line 383
    iget-boolean v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    if-eqz v5, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    if-gez p3, :cond_3

    .line 389
    const/4 v5, 0x1

    iput-boolean v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->eof:Z

    .line 390
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_2

    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    if-eqz v5, :cond_0

    .line 393
    :cond_2
    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    invoke-virtual {p0, v5, p4}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 394
    .local v1, "buffer":[B
    iget v4, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 395
    .local v4, "savedPos":I
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    packed-switch v5, :pswitch_data_0

    .line 439
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Impossible modulus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 399
    :pswitch_0
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x3

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 400
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x2

    shl-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 401
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v1, v5

    .line 402
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v1, v5

    .line 403
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v1, v5

    .line 404
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v1, v5

    .line 405
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v1, v5

    .line 406
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v1, v5

    .line 441
    :goto_1
    :pswitch_1
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    iget v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 443
    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    if-lez v5, :cond_0

    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-lez v5, :cond_0

    .line 444
    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    const/4 v6, 0x0

    iget v7, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v8, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v8, v8

    invoke-static {v5, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    goto/16 :goto_0

    .line 409
    :pswitch_2
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0xb

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 410
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x6

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 411
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x1

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 412
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x4

    shl-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 413
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v1, v5

    .line 414
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v1, v5

    .line 415
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v1, v5

    .line 416
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v1, v5

    goto/16 :goto_1

    .line 419
    :pswitch_3
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x13

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 420
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0xe

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 421
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x9

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 422
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x4

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 423
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x1

    shl-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 424
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v1, v5

    .line 425
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v1, v5

    .line 426
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v1, v5

    goto/16 :goto_1

    .line 429
    :pswitch_4
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x1b

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 430
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x16

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 431
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x11

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 432
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0xc

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 433
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x7

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 434
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x2

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 435
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x3

    shl-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 436
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    const/16 v6, 0x3d

    aput-byte v6, v1, v5

    goto/16 :goto_1

    .line 448
    .end local v1    # "buffer":[B
    .end local v4    # "savedPos":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    move v3, p2

    .end local p2    # "inPos":I
    .local v3, "inPos":I
    :goto_2
    if-ge v2, p3, :cond_6

    .line 449
    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->encodeSize:I

    invoke-virtual {p0, v5, p4}, Lorg/apache/commons/codec/binary/Base32;->ensureBufferSize(ILorg/apache/commons/codec/binary/BaseNCodec$Context;)[B

    move-result-object v1

    .line 450
    .restart local v1    # "buffer":[B
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x5

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    .line 451
    add-int/lit8 p2, v3, 0x1

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    aget-byte v0, p1, v3

    .line 452
    .local v0, "b":I
    if-gez v0, :cond_4

    .line 453
    add-int/lit16 v0, v0, 0x100

    .line 455
    :cond_4
    iget-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v5, 0x8

    shl-long/2addr v6, v5

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    .line 456
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->modulus:I

    if-nez v5, :cond_5

    .line 457
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x23

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 458
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x1e

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 459
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x19

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 460
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0x14

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 461
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0xf

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 462
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/16 v7, 0xa

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 463
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    const/4 v7, 0x5

    shr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 464
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->encodeTable:[B

    iget-wide v8, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->lbitWorkArea:J

    long-to-int v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, v1, v5

    .line 465
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    add-int/lit8 v5, v5, 0x8

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 466
    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    if-lez v5, :cond_5

    iget v5, p0, Lorg/apache/commons/codec/binary/Base32;->lineLength:I

    iget v6, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    if-gt v5, v6, :cond_5

    .line 467
    iget-object v5, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    const/4 v6, 0x0

    iget v7, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v8, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v8, v8

    invoke-static {v5, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 468
    iget v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    iget-object v6, p0, Lorg/apache/commons/codec/binary/Base32;->lineSeparator:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->pos:I

    .line 469
    const/4 v5, 0x0

    iput v5, p4, Lorg/apache/commons/codec/binary/BaseNCodec$Context;->currentLinePos:I

    .line 448
    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, p2

    .end local p2    # "inPos":I
    .restart local v3    # "inPos":I
    goto/16 :goto_2

    .end local v0    # "b":I
    .end local v1    # "buffer":[B
    :cond_6
    move p2, v3

    .end local v3    # "inPos":I
    .restart local p2    # "inPos":I
    goto/16 :goto_0

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isInAlphabet(B)Z
    .locals 2
    .param p1, "octet"    # B

    .prologue
    .line 485
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/codec/binary/Base32;->decodeTable:[B

    aget-byte v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
