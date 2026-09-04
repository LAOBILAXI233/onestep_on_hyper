.class public final Lorg/apache/http/util/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"

.implements Ljava/io/Serializable;


.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field private static final serialVersionUID:J = -0x562aa19b667920bfL


.field private buffer:[C

.field private len:I


.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "Buffer capacity"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    .line 57
    new-array v0, p1, [C

    iput-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    .line 58
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "newlen"    # I

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [C

    .line 62
    .local v0, "newbuffer":[C
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    .line 64
    return-void
.end method


.method public append(C)V
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 155
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int/lit8 v0, v1, 0x1

    .line 156
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 157
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 159
    :cond_0
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    aput-char p1, v1, v2

    .line 160
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 161
    return-void
.end method

.method public append(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 228
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 104
    if-eqz p1, :cond_1

    move-object v1, p1

    .line 105
    .local v1, "s":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 106
    .local v2, "strlen":I
    iget v3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int v0, v3, v2

    .line 107
    .local v0, "newlen":I
    iget-object v3, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v3, v3

    if-le v0, v3, :cond_0

    .line 108
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 110
    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v5, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {v1, v3, v2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 111
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 112
    return-void

    .line 104
    .end local v0    # "newlen":I
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "strlen":I
    :cond_1
    const-string v1, "null"

    goto :goto_0
.end method

.method public append(Lorg/apache/http/util/ByteArrayBuffer;II)V
    .locals 1
    .param p1, "b"    # Lorg/apache/http/util/ByteArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    goto :goto_0
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 3
    .param p1, "b"    # Lorg/apache/http/util/CharArrayBuffer;

    .prologue
    .line 142
    if-nez p1, :cond_0

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p1, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    const/4 v1, 0x0

    iget v2, p1, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    goto :goto_0
.end method

.method public append(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 1
    .param p1, "b"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p1, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    goto :goto_0
.end method

.method public append([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 178
    if-nez p1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 181
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

    .line 183
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

    .line 185
    :cond_3
    if-eqz p3, :cond_0

    .line 188
    iget v3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 189
    .local v3, "oldlen":I
    add-int v2, v3, p3

    .line 190
    .local v2, "newlen":I
    iget-object v4, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v4, v4

    if-le v2, v4, :cond_4

    .line 191
    invoke-direct {p0, v2}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 193
    :cond_4
    move v0, p2

    .local v0, "i1":I
    move v1, v3

    .local v1, "i2":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 194
    iget-object v4, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    aput-char v5, v4, v1

    .line 193
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 196
    :cond_5
    iput v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    goto :goto_0
.end method

.method public append([CII)V
    .locals 4
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 79
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 82
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

    .line 84
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

    .line 86
    :cond_3
    if-eqz p3, :cond_0

    .line 89
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int v0, v1, p3

    .line 90
    .local v0, "newlen":I
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_4

    .line 91
    invoke-direct {p0, v0}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    .line 93
    :cond_4
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    goto :goto_0
.end method

.method public buffer()[C
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 236
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "required"    # I

    .prologue
    .line 303
    if-gtz p1, :cond_1

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v1, v1

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    sub-int v0, v1, v2

    .line 307
    .local v0, "available":I
    if-le p1, v0, :cond_0

    .line 308
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lorg/apache/http/util/CharArrayBuffer;->expand(I)V

    goto :goto_0
.end method

.method public indexOf(I)I
    .locals 2
    .param p1, "ch"    # I

    .prologue
    .line 401
    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(III)I

    move-result v0

    return v0
.end method

.method public indexOf(III)I
    .locals 5
    .param p1, "ch"    # I
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    const/4 v3, -0x1

    .line 371
    move v0, p2

    .line 372
    .local v0, "beginIndex":I
    if-gez v0, :cond_0

    .line 373
    const/4 v0, 0x0

    .line 375
    :cond_0
    move v1, p3

    .line 376
    .local v1, "endIndex":I
    iget v4, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-le v1, v4, :cond_1

    .line 377
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 379
    :cond_1
    if-le v0, v1, :cond_3

    move v2, v3

    .line 387
    :cond_2
    :goto_0
    return v2

    .line 382
    :cond_3
    move v2, v0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 383
    iget-object v4, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v4, v4, v2

    if-eq v4, p1, :cond_2

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v3

    .line 387
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 336
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

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
    .line 346
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

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
    .line 291
    iget v0, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    return v0
.end method

.method public setLength(I)V
    .locals 3
    .param p1, "len"    # I

    .prologue
    .line 323
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 324
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

    iget-object v2, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    iput p1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    .line 327
    return-void
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 419
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public substringTrimmed(II)Ljava/lang/String;
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 439
    move v0, p1

    .line 440
    .local v0, "beginIndex":I
    move v1, p2

    .line 441
    .local v1, "endIndex":I
    if-gez v0, :cond_0

    .line 442
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Negative beginIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 444
    :cond_0
    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-le v1, v2, :cond_1

    .line 445
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    :cond_1
    if-le v0, v1, :cond_2

    .line 448
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beginIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > endIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 450
    :cond_2
    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_3
    :goto_1
    if-le v1, v0, :cond_4

    iget-object v2, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    add-int/lit8 v3, v1, -0x1

    aget-char v2, v2, v3

    invoke-static {v2}, Lorg/apache/http/protocol/HTTP;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 454
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 456
    :cond_4
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    sub-int v4, v1, v0

    invoke-direct {v2, v3, v0, v4}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public toCharArray()[C
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    new-array v0, v1, [C

    .line 245
    .local v0, "b":[C
    iget v1, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    if-lez v1, :cond_0

    .line 246
    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    iget v2, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 461
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/http/util/CharArrayBuffer;->buffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/apache/http/util/CharArrayBuffer;->len:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
