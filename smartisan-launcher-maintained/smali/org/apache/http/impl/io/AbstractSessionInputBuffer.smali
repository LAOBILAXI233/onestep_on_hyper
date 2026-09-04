.class public abstract Lorg/apache/http/impl/io/AbstractSessionInputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionInputBuffer.java"

.implements Lorg/apache/http/io/SessionInputBuffer;
.implements Lorg/apache/http/io/BufferInfo;


.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


.field private ascii:Z

.field private buffer:[B

.field private bufferlen:I

.field private bufferpos:I

.field private cbuf:Ljava/nio/CharBuffer;

.field private charset:Ljava/nio/charset/Charset;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private instream:Ljava/io/InputStream;

.field private linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

.field private maxLineLen:I

.field private metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

.field private minChunkLimit:I

.field private onMalformedCharAction:Ljava/nio/charset/CodingErrorAction;

.field private onUnmappableCharAction:Ljava/nio/charset/CodingErrorAction;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method private appendDecoded(Lorg/apache/http/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "bbuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    const/4 v0, 0x0

    .line 368
    :goto_0
    return v0

    .line 351
    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v2, :cond_1

    .line 352
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 353
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->onMalformedCharAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 354
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->onUnmappableCharAction:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    .line 356
    :cond_1
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    if-nez v2, :cond_2

    .line 357
    const/16 v2, 0x400

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    .line 359
    :cond_2
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "len":I
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 362
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v2, p2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 363
    .local v1, "result":Ljava/nio/charset/CoderResult;
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lorg/apache/http/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    .line 364
    goto :goto_1

    .line 365
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    :cond_3
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 366
    .restart local v1    # "result":Ljava/nio/charset/CoderResult;
    invoke-direct {p0, v1, p1, p2}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->handleDecodingResult(Ljava/nio/charset/CoderResult;Lorg/apache/http/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v0, v2

    .line 367
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private handleDecodingResult(Ljava/nio/charset/CoderResult;Lorg/apache/http/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "result"    # Ljava/nio/charset/CoderResult;
    .param p2, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p3, "bbuf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 378
    :cond_0
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 379
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 380
    .local v0, "len":I
    :goto_0
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->get()C

    move-result v1

    invoke-virtual {p2, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    goto :goto_0

    .line 383
    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->cbuf:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    .line 384
    return v0
.end method

.method private lineFromLineBuffer(Lorg/apache/http/util/CharArrayBuffer;)I
    .locals 5
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 305
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v1

    .line 306
    .local v1, "len":I
    if-lez v1, :cond_1

    .line 307
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;->byteAt(I)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 308
    add-int/lit8 v1, v1, -0x1

    .line 311
    :cond_0
    if-lez v1, :cond_1

    .line 312
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;->byteAt(I)I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 313
    add-int/lit8 v1, v1, -0x1

    .line 317
    :cond_1
    iget-boolean v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    if-eqz v2, :cond_2

    .line 318
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {p1, v2, v4, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/ByteArrayBuffer;II)V

    .line 323
    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    .line 324
    return v1

    .line 320
    :cond_2
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v2

    invoke-static {v2, v4, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 321
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->appendDecoded(Lorg/apache/http/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    goto :goto_0
.end method

.method private lineFromReadBuffer(Lorg/apache/http/util/CharArrayBuffer;I)I
    .locals 6
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    iget v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 330
    .local v3, "off":I
    move v1, p2

    .line 331
    .local v1, "i":I
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 332
    if-le v1, v3, :cond_0

    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    add-int/lit8 v5, v1, -0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    .line 334
    add-int/lit8 v1, v1, -0x1

    .line 336
    :cond_0
    sub-int v2, v1, v3

    .line 337
    .local v2, "len":I
    iget-boolean v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    if-eqz v4, :cond_1

    .line 338
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {p1, v4, v3, v2}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    .line 343
    :goto_0
    return v2

    .line 340
    :cond_1
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-static {v4, v3, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 341
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->appendDecoded(Lorg/apache/http/util/CharArrayBuffer;Ljava/nio/ByteBuffer;)I

    move-result v2

    goto :goto_0
.end method

.method private locateLF()I
    .locals 3

    .prologue
    .line 226
    iget v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    if-ge v0, v1, :cond_1

    .line 227
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 231
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 226
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


.method public available()I
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->length()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    array-length v0, v0

    return v0
.end method

.method protected createTransportMetrics()Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    return-object v0
.end method

.method protected fillBuffer()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v3, -0x1

    .line 149
    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    if-lez v4, :cond_1

    .line 150
    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int v1, v4, v5

    .line 151
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 152
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    iget-object v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-static {v4, v5, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    :cond_0
    iput v7, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 155
    iput v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 158
    .end local v1    # "len":I
    :cond_1
    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 159
    .local v2, "off":I
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    array-length v4, v4

    sub-int v1, v4, v2

    .line 160
    .restart local v1    # "len":I
    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {v4, v5, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 161
    .local v0, "l":I
    if-ne v0, v3, :cond_2

    move v0, v3

    .line 166
    .end local v0    # "l":I
    :goto_0
    return v0

    .line 164
    .restart local v0    # "l":I
    :cond_2
    add-int v3, v2, v0

    iput v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 165
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    goto :goto_0
.end method

.method public getMetrics()Lorg/apache/http/io/HttpTransportMetrics;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method protected hasBufferedData()Z
    .locals 2

    .prologue
    .line 171
    iget v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    iget v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init(Ljava/io/InputStream;ILorg/apache/http/params/HttpParams;)V
    .locals 5
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    const/4 v4, 0x0

    .line 96
    const-string v3, "Input stream"

    invoke-static {p1, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 97
    const-string v3, "Buffer size"

    invoke-static {p2, v3}, Lorg/apache/http/util/Args;->notNegative(ILjava/lang/String;)I

    .line 98
    const-string v3, "HTTP parameters"

    invoke-static {p3, v3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    .line 100
    new-array v3, p2, [B

    iput-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    .line 101
    iput v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 102
    iput v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 103
    new-instance v3, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v3, p2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    iput-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    .line 104
    const-string v3, "http.protocol.element-charset"

    invoke-interface {p3, v3}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 105
    .local v2, "charset":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/nio/charset/Charset;

    .line 106
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/nio/charset/Charset;

    sget-object v4, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    .line 107
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 108
    const-string v3, "http.connection.max-line-length"

    const/4 v4, -0x1

    invoke-interface {p3, v3, v4}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    .line 109
    const-string v3, "http.connection.min-chunk-limit"

    const/16 v4, 0x200

    invoke-interface {p3, v3, v4}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I

    .line 110
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->createTransportMetrics()Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    .line 111
    const-string v3, "http.malformed.input.action"

    invoke-interface {p3, v3}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/CodingErrorAction;

    .line 113
    .local v0, "a1":Ljava/nio/charset/CodingErrorAction;
    if-eqz v0, :cond_1

    .end local v0    # "a1":Ljava/nio/charset/CodingErrorAction;
    :goto_1
    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->onMalformedCharAction:Ljava/nio/charset/CodingErrorAction;

    .line 114
    const-string v3, "http.unmappable.input.action"

    invoke-interface {p3, v3}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/CodingErrorAction;

    .line 116
    .local v1, "a2":Ljava/nio/charset/CodingErrorAction;
    if-eqz v1, :cond_2

    .end local v1    # "a2":Ljava/nio/charset/CodingErrorAction;
    :goto_2
    iput-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->onUnmappableCharAction:Ljava/nio/charset/CodingErrorAction;

    .line 117
    return-void

    .line 105
    :cond_0
    sget-object v3, Lorg/apache/http/Consts;->ASCII:Ljava/nio/charset/Charset;

    goto :goto_0

    .line 113
    .restart local v0    # "a1":Ljava/nio/charset/CodingErrorAction;
    :cond_1
    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_1

    .line 116
    .end local v0    # "a1":Ljava/nio/charset/CodingErrorAction;
    .restart local v1    # "a2":Ljava/nio/charset/CodingErrorAction;
    :cond_2
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    goto :goto_2
.end method

.method public length()I
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v0

    .line 178
    .local v0, "noRead":I
    if-ne v0, v1, :cond_0

    .line 182
    .end local v0    # "noRead":I
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 219
    if-nez p1, :cond_0

    .line 222
    :goto_0
    return v0

    :cond_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 186
    if-nez p1, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 214
    :goto_0
    return v0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    iget v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 191
    .local v0, "chunk":I
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-static {v3, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 192
    iget v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    goto :goto_0

    .line 197
    .end local v0    # "chunk":I
    :cond_1
    iget v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->minChunkLimit:I

    if-le p3, v3, :cond_3

    .line 198
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 199
    .local v2, "read":I
    if-lez v2, :cond_2

    .line 200
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    :cond_2
    move v0, v2

    .line 202
    goto :goto_0

    .line 205
    .end local v2    # "read":I
    :cond_3
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v3

    if-nez v3, :cond_4

    .line 206
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v1

    .line 207
    .local v1, "noRead":I
    if-ne v1, v0, :cond_3

    goto :goto_0

    .line 211
    .end local v1    # "noRead":I
    :cond_4
    iget v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 212
    .restart local v0    # "chunk":I
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-static {v3, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    iget v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    goto :goto_0
.end method

.method public readLine(Lorg/apache/http/util/CharArrayBuffer;)I
    .locals 8
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 250
    const-string v5, "Char array buffer"

    invoke-static {p1, v5}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 251
    const/4 v2, 0x0

    .line 252
    .local v2, "noRead":I
    const/4 v3, 0x1

    .line 253
    .local v3, "retry":Z
    :cond_0
    if-eqz v3, :cond_6

    .line 255
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->locateLF()I

    move-result v0

    .line 256
    .local v0, "i":I
    if-eq v0, v4, :cond_4

    .line 258
    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 260
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->lineFromReadBuffer(Lorg/apache/http/util/CharArrayBuffer;I)I

    move-result v4

    .line 286
    .end local v0    # "i":I
    :cond_1
    :goto_0
    return v4

    .line 262
    .restart local v0    # "i":I
    :cond_2
    const/4 v3, 0x0

    .line 263
    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int v1, v5, v6

    .line 264
    .local v1, "len":I
    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    iget-object v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v7, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-virtual {v5, v6, v7, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 265
    add-int/lit8 v5, v0, 0x1

    iput v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 278
    .end local v1    # "len":I
    :cond_3
    :goto_1
    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    if-lez v5, :cond_0

    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v5

    iget v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    if-lt v5, v6, :cond_0

    .line 279
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Maximum line length limit exceeded"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 268
    :cond_4
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 269
    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int v1, v5, v6

    .line 270
    .restart local v1    # "len":I
    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    iget-object v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v7, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    invoke-virtual {v5, v6, v7, v1}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 271
    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iput v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 273
    .end local v1    # "len":I
    :cond_5
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v2

    .line 274
    if-ne v2, v4, :cond_3

    .line 275
    const/4 v3, 0x0

    goto :goto_1

    .line 282
    .end local v0    # "i":I
    :cond_6
    if-ne v2, v4, :cond_7

    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v5}, Lorg/apache/http/util/ByteArrayBuffer;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 286
    :cond_7
    invoke-direct {p0, p1}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->lineFromLineBuffer(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v4

    goto :goto_0
.end method

.method public readLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v2, 0x40

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 389
    .local v0, "charbuffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v1

    .line 390
    .local v1, "l":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 391
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 393
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
