.class public final Lorg/apache/http/util/ByteArrayBuffer;
.super Ljava/lang/Object;
.source "ByteArrayBuffer.java"

.implements Ljava/io/Serializable;


.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field private static final serialVersionUID:J = 0x3c7eae24203b8ca4L


.field private buffer:[B

.field private len:I


.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "Buffer capacity"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    .line 56
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    .line 57
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "newlen"    # I

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [B

    .line 61
    .local v0, "newbuffer":[B
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    .line 63
    return-void
.end method


.method public append(I)V
    .locals 4
    .param p1, "b"    # I

    .prologue
    .line 103
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    add-int/lit8 v0, v1, 0x1

    .line 104
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 105
    invoke-direct {p0, v0}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    .line 107
    :cond_0
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 108
    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 109
    return-void
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 1
    .param p1, "b"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->buffer()[C

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/ByteArrayBuffer;->append([CII)V

    goto :goto_0
.end method

.method public append([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 78
    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    if-ltz p2, :cond_2

    array-length v1, p1

    if-gt p2, v1, :cond_2

    if-ltz p3, :cond_2

    add-int v1, p2, p3

    if-ltz v1, :cond_2

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_3

    .line 83
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " b.length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_3
    if-eqz p3, :cond_0

    .line 88
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    add-int v0, v1, p3

    .line 89
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 90
    invoke-direct {p0, v0}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    .line 92
    :cond_4
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    goto :goto_0
.end method

.method public append([CII)V
    .locals 7
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    if-ltz p2, :cond_2

    array-length v4, p1

    if-gt p2, v4, :cond_2

    if-ltz p3, :cond_2

    add-int v4, p2, p3

    if-ltz v4, :cond_2

    add-int v4, p2, p3

    array-length v5, p1

    if-le v4, v5, :cond_3

    .line 131
    :cond_2
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "off: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " len: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " b.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    :cond_3
    if-eqz p3, :cond_0

    .line 136
    iget v3, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 137
    .local v3, "oldlen":I
    add-int v2, v3, p3

    .line 138
    .local v2, "newlen":I
    iget-object v4, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v4, v4

    if-le v2, v4, :cond_4

    .line 139
    invoke-direct {p0, v2}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    .line 141
    :cond_4
    move v0, p2

    .local v0, "i1":I
    move v1, v3

    .local v1, "i2":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 142
    iget-object v4, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    aget-char v5, p1, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 141
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    :cond_5
    iput v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    goto :goto_0
.end method

.method public buffer()[B
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    return-object v0
.end method

.method public byteAt(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 174
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "required"    # I

    .prologue
    .line 234
    if-gtz p1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    sub-int v0, v1, v2

    .line 238
    .local v0, "available":I
    if-le p1, v0, :cond_0

    .line 239
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lorg/apache/http/util/ByteArrayBuffer;->expand(I)V

    goto :goto_0
.end method

.method public indexOf(B)I
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 345
    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;->indexOf(BII)I

    move-result v0

    return v0
.end method

.method public indexOf(BII)I
    .locals 5
    .param p1, "b"    # B
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    const/4 v3, -0x1

    .line 313
    move v0, p2

    .line 314
    .local v0, "beginIndex":I
    if-gez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 317
    :cond_0
    move v1, p3

    .line 318
    .local v1, "endIndex":I
    iget v4, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    if-le v1, v4, :cond_1

    .line 319
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 321
    :cond_1
    if-le v0, v1, :cond_3

    move v2, v3

    .line 329
    :cond_2
    :goto_0
    return v2

    .line 324
    :cond_3
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 325
    iget-object v4, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    aget-byte v4, v4, v2

    if-eq v4, p1, :cond_2

    .line 324
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 329
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 263
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0 or > buffer len: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_1
    iput p1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    .line 267
    return-void
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    new-array v0, v1, [B

    .line 183
    .local v0, "b":[B
    iget v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    if-lez v1, :cond_0

    .line 184
    iget-object v1, p0, Lorg/apache/http/util/ByteArrayBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/util/ByteArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    :cond_0
    return-object v0
.end method
