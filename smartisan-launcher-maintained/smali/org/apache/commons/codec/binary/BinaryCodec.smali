.class public Lorg/apache/commons/codec/binary/BinaryCodec;
.super Ljava/lang/Object;
.source "BinaryCodec.java"

.implements Lorg/apache/commons/codec/BinaryDecoder;
.implements Lorg/apache/commons/codec/BinaryEncoder;


.field private static final BITS:[I

.field private static final BIT_0:I = 0x1

.field private static final BIT_1:I = 0x2

.field private static final BIT_2:I = 0x4

.field private static final BIT_3:I = 0x8

.field private static final BIT_4:I = 0x10

.field private static final BIT_5:I = 0x20

.field private static final BIT_6:I = 0x40

.field private static final BIT_7:I = 0x80

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final EMPTY_CHAR_ARRAY:[C


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    new-array v0, v1, [C

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    .line 45
    new-array v0, v1, [B

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 71
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAscii([B)[B
    .locals 6
    .param p0, "ascii"    # [B

    .prologue
    .line 199
    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    sget-object v3, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 215
    :cond_0
    return-object v3

    .line 203
    :cond_1
    array-length v4, p0

    shr-int/lit8 v4, v4, 0x3

    new-array v3, v4, [B

    .line 208
    .local v3, "l_raw":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    .local v2, "jj":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 209
    const/4 v0, 0x0

    .local v0, "bits":I
    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 210
    sub-int v4, v2, v0

    aget-byte v4, p0, v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_2

    .line 211
    aget-byte v4, v3, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 209
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0
.end method

.method public static fromAscii([C)[B
    .locals 6
    .param p0, "ascii"    # [C

    .prologue
    .line 172
    if-eqz p0, :cond_0

    array-length v4, p0

    if-nez v4, :cond_2

    .line 173
    :cond_0
    sget-object v3, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 188
    :cond_1
    return-object v3

    .line 176
    :cond_2
    array-length v4, p0

    shr-int/lit8 v4, v4, 0x3

    new-array v3, v4, [B

    .line 181
    .local v3, "l_raw":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    .local v2, "jj":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 182
    const/4 v0, 0x0

    .local v0, "bits":I
    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_4

    .line 183
    sub-int v4, v2, v0

    aget-char v4, p0, v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_3

    .line 184
    aget-byte v4, v3, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 182
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 181
    :cond_4
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0
.end method

.method private static isEmpty([B)Z
    .locals 1
    .param p0, "array"    # [B

    .prologue
    .line 226
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toAsciiBytes([B)[B
    .locals 6
    .param p0, "raw"    # [B

    .prologue
    .line 239
    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    sget-object v3, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 257
    :cond_0
    return-object v3

    .line 243
    :cond_1
    array-length v4, p0

    shl-int/lit8 v4, v4, 0x3

    new-array v3, v4, [B

    .line 248
    .local v3, "l_ascii":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "jj":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 249
    const/4 v0, 0x0

    .local v0, "bits":I
    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 250
    aget-byte v4, p0, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    and-int/2addr v4, v5

    if-nez v4, :cond_2

    .line 251
    sub-int v4, v2, v0

    const/16 v5, 0x30

    aput-byte v5, v3, v4

    .line 249
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 253
    :cond_2
    sub-int v4, v2, v0

    const/16 v5, 0x31

    aput-byte v5, v3, v4

    goto :goto_2

    .line 248
    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0
.end method

.method public static toAsciiChars([B)[C
    .locals 6
    .param p0, "raw"    # [B

    .prologue
    .line 269
    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->isEmpty([B)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 270
    sget-object v3, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_CHAR_ARRAY:[C

    .line 287
    :cond_0
    return-object v3

    .line 273
    :cond_1
    array-length v4, p0

    shl-int/lit8 v4, v4, 0x3

    new-array v3, v4, [C

    .line 278
    .local v3, "l_ascii":[C
    const/4 v1, 0x0

    .local v1, "ii":I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, "jj":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_0

    .line 279
    const/4 v0, 0x0

    .local v0, "bits":I
    :goto_1
    sget-object v4, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 280
    aget-byte v4, p0, v1

    sget-object v5, Lorg/apache/commons/codec/binary/BinaryCodec;->BITS:[I

    aget v5, v5, v0

    and-int/2addr v4, v5

    if-nez v4, :cond_2

    .line 281
    sub-int v4, v2, v0

    const/16 v5, 0x30

    aput-char v5, v3, v4

    .line 279
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_2
    sub-int v4, v2, v0

    const/16 v5, 0x31

    aput-char v5, v3, v4

    goto :goto_2

    .line 278
    :cond_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x8

    goto :goto_0
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 2
    .param p0, "raw"    # [B

    .prologue
    .line 299
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "ascii"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 116
    if-nez p1, :cond_0

    .line 117
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 126
    .end local p1    # "ascii":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 119
    .restart local p1    # "ascii":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 120
    check-cast p1, [B

    .end local p1    # "ascii":Ljava/lang/Object;
    check-cast p1, [B

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    goto :goto_0

    .line 122
    .restart local p1    # "ascii":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, [C

    if-eqz v0, :cond_2

    .line 123
    check-cast p1, [C

    .end local p1    # "ascii":Ljava/lang/Object;
    check-cast p1, [C

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_0

    .line 125
    .restart local p1    # "ascii":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 126
    check-cast p1, Ljava/lang/String;

    .end local p1    # "ascii":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_0

    .line 128
    .restart local p1    # "ascii":Ljava/lang/Object;
    :cond_3
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode([B)[B
    .locals 1
    .param p1, "ascii"    # [B

    .prologue
    .line 141
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "raw"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 98
    instance-of v0, p1, [B

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    const-string v1, "argument not a byte array"

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    check-cast p1, [B

    .end local p1    # "raw":Ljava/lang/Object;
    check-cast p1, [B

    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiChars([B)[C

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .locals 1
    .param p1, "raw"    # [B

    .prologue
    .line 83
    invoke-static {p1}, Lorg/apache/commons/codec/binary/BinaryCodec;->toAsciiBytes([B)[B

    move-result-object v0

    return-object v0
.end method

.method public toByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "ascii"    # Ljava/lang/String;

    .prologue
    .line 153
    if-nez p1, :cond_0

    .line 154
    sget-object v0, Lorg/apache/commons/codec/binary/BinaryCodec;->EMPTY_BYTE_ARRAY:[B

    .line 156
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/BinaryCodec;->fromAscii([C)[B

    move-result-object v0

    goto :goto_0
.end method
