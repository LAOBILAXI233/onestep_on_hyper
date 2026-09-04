.class public final Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;
.super Ljava/lang/Object;
.source "ByteSourceJsonBootstrapper.java"


.field static final UTF8_BOM_1:B = -0x11t

.field static final UTF8_BOM_2:B = -0x45t

.field static final UTF8_BOM_3:B = -0x41t


.field private _bigEndian:Z

.field private final _bufferRecyclable:Z

.field private _bytesPerChar:I

.field private final _context:Lcom/fasterxml/jackson/core/io/IOContext;

.field private final _in:Ljava/io/InputStream;

.field private final _inputBuffer:[B

.field private _inputEnd:I

.field private _inputPtr:I


.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "in"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    .line 88
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 89
    iput-object p2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;

    .line 90
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/io/IOContext;->allocReadIOBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    .line 93
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bufferRecyclable:Z

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/io/IOContext;[BII)V
    .locals 1
    .param p1, "ctxt"    # Lcom/fasterxml/jackson/core/io/IOContext;
    .param p2, "inputBuffer"    # [B
    .param p3, "inputStart"    # I
    .param p4, "inputLen"    # I

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    .line 97
    iput-object p1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;

    .line 99
    iput-object p2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    .line 100
    iput p3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    .line 101
    add-int v0, p3, p4

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bufferRecyclable:Z

    .line 105
    return-void
.end method

.method private checkUTF16(I)Z
    .locals 3
    .param p1, "i16"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 482
    const v2, 0xff00

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    .line 483
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    .line 491
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    move v0, v1

    .line 492
    :cond_0
    return v0

    .line 484
    :cond_1
    and-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_0

    .line 485
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    goto :goto_0
.end method

.method private checkUTF32(I)Z
    .locals 3
    .param p1, "quad"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 462
    shr-int/lit8 v2, p1, 0x8

    if-nez v2, :cond_1

    .line 463
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    .line 476
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    move v0, v1

    .line 477
    :cond_0
    return v0

    .line 464
    :cond_1
    const v2, 0xffffff

    and-int/2addr v2, p1

    if-nez v2, :cond_2

    .line 465
    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    goto :goto_0

    .line 466
    :cond_2
    const v2, -0xff0001

    and-int/2addr v2, p1

    if-nez v2, :cond_3

    .line 467
    const-string v0, "3412"

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_3
    const v2, -0xff01

    and-int/2addr v2, p1

    if-nez v2, :cond_0

    .line 469
    const-string v0, "2143"

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleBOM(I)Z
    .locals 6
    .param p1, "quad"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 414
    sparse-switch p1, :sswitch_data_0

    .line 434
    :goto_0
    ushr-int/lit8 v0, p1, 0x10

    .line 435
    .local v0, "msw":I
    const v3, 0xfeff

    if-ne v0, v3, :cond_0

    .line 436
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    .line 437
    iput v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    .line 438
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    .line 454
    .end local v0    # "msw":I
    :goto_1
    return v1

    .line 416
    :sswitch_0
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    .line 417
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    .line 418
    iput v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    goto :goto_1

    .line 421
    :sswitch_1
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    .line 422
    iput v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    .line 423
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    goto :goto_1

    .line 426
    :sswitch_2
    const-string v3, "2143"

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :sswitch_3
    const-string v3, "3412"

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    .restart local v0    # "msw":I
    :cond_0
    const v3, 0xfffe

    if-ne v0, v3, :cond_1

    .line 442
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    .line 443
    iput v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    .line 444
    iput-boolean v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    goto :goto_1

    .line 448
    :cond_1
    ushr-int/lit8 v3, p1, 0x8

    const v4, 0xefbbbf

    if-ne v3, v4, :cond_2

    .line 449
    iget v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    .line 450
    iput v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    .line 451
    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    goto :goto_1

    :cond_2
    move v1, v2

    .line 454
    goto :goto_1

    .line 414
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1010000 -> :sswitch_3
        -0x20000 -> :sswitch_1
        0xfeff -> :sswitch_0
        0xfffe -> :sswitch_2
    .end sparse-switch
.end method

.method public static hasJSONFormat(Lcom/fasterxml/jackson/core/format/InputAccessor;)Lcom/fasterxml/jackson/core/format/MatchStrength;
    .locals 9
    .param p0, "acc"    # Lcom/fasterxml/jackson/core/format/InputAccessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5b

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/16 v5, 0x22

    .line 279
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_1

    .line 280
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 360
    :cond_0
    :goto_0
    return-object v2

    .line 282
    :cond_1
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B

    move-result v0

    .line 284
    .local v0, "b":B
    const/16 v3, -0x11

    if-ne v0, v3, :cond_7

    .line 285
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_2

    .line 286
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 288
    :cond_2
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B

    move-result v3

    const/16 v4, -0x45

    if-eq v3, v4, :cond_3

    .line 289
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 291
    :cond_3
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_4

    .line 292
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 294
    :cond_4
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B

    move-result v3

    const/16 v4, -0x41

    if-eq v3, v4, :cond_5

    .line 295
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 297
    :cond_5
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z

    move-result v3

    if-nez v3, :cond_6

    .line 298
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 300
    :cond_6
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B

    move-result v0

    .line 303
    :cond_7
    invoke-static {p0, v0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->skipSpace(Lcom/fasterxml/jackson/core/format/InputAccessor;B)I

    move-result v1

    .line 304
    .local v1, "ch":I
    if-gez v1, :cond_8

    .line 305
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 308
    :cond_8
    const/16 v3, 0x7b

    if-ne v1, v3, :cond_c

    .line 310
    invoke-static {p0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->skipSpace(Lcom/fasterxml/jackson/core/format/InputAccessor;)I

    move-result v1

    .line 311
    if-gez v1, :cond_9

    .line 312
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 314
    :cond_9
    if-eq v1, v5, :cond_a

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_b

    .line 315
    :cond_a
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 318
    :cond_b
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 322
    :cond_c
    if-ne v1, v8, :cond_10

    .line 323
    invoke-static {p0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->skipSpace(Lcom/fasterxml/jackson/core/format/InputAccessor;)I

    move-result v1

    .line 324
    if-gez v1, :cond_d

    .line 325
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 328
    :cond_d
    const/16 v3, 0x5d

    if-eq v1, v3, :cond_e

    if-ne v1, v8, :cond_f

    .line 329
    :cond_e
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 331
    :cond_f
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_0

    .line 334
    :cond_10
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->WEAK_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 337
    .local v2, "strength":Lcom/fasterxml/jackson/core/format/MatchStrength;
    if-eq v1, v5, :cond_0

    .line 340
    if-gt v1, v7, :cond_11

    if-ge v1, v6, :cond_0

    .line 343
    :cond_11
    const/16 v3, 0x2d

    if-ne v1, v3, :cond_14

    .line 344
    invoke-static {p0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->skipSpace(Lcom/fasterxml/jackson/core/format/InputAccessor;)I

    move-result v1

    .line 345
    if-gez v1, :cond_12

    .line 346
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto/16 :goto_0

    .line 348
    :cond_12
    if-gt v1, v7, :cond_13

    if-ge v1, v6, :cond_0

    :cond_13
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto/16 :goto_0

    .line 351
    :cond_14
    const/16 v3, 0x6e

    if-ne v1, v3, :cond_15

    .line 352
    const-string v3, "ull"

    invoke-static {p0, v3, v2}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->tryMatch(Lcom/fasterxml/jackson/core/format/InputAccessor;Ljava/lang/String;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/core/format/MatchStrength;

    move-result-object v2

    goto/16 :goto_0

    .line 354
    :cond_15
    const/16 v3, 0x74

    if-ne v1, v3, :cond_16

    .line 355
    const-string v3, "rue"

    invoke-static {p0, v3, v2}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->tryMatch(Lcom/fasterxml/jackson/core/format/InputAccessor;Ljava/lang/String;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/core/format/MatchStrength;

    move-result-object v2

    goto/16 :goto_0

    .line 357
    :cond_16
    const/16 v3, 0x66

    if-ne v1, v3, :cond_17

    .line 358
    const-string v3, "alse"

    invoke-static {p0, v3, v2}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->tryMatch(Lcom/fasterxml/jackson/core/format/InputAccessor;Ljava/lang/String;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/core/format/MatchStrength;

    move-result-object v2

    goto/16 :goto_0

    .line 360
    :cond_17
    sget-object v2, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto/16 :goto_0
.end method

.method private reportWeirdUCS4(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 502
    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported UCS-4 endianness ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static skipSpace(Lcom/fasterxml/jackson/core/format/InputAccessor;)I
    .locals 1
    .param p0, "acc"    # Lcom/fasterxml/jackson/core/format/InputAccessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    const/4 v0, -0x1

    .line 382
    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B

    move-result v0

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->skipSpace(Lcom/fasterxml/jackson/core/format/InputAccessor;B)I

    move-result v0

    goto :goto_0
.end method

.method private static skipSpace(Lcom/fasterxml/jackson/core/format/InputAccessor;B)I
    .locals 2
    .param p0, "acc"    # Lcom/fasterxml/jackson/core/format/InputAccessor;
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    :goto_0
    and-int/lit16 v0, p1, 0xff

    .line 389
    .local v0, "ch":I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 393
    .end local v0    # "ch":I
    :goto_1
    return v0

    .line 392
    .restart local v0    # "ch":I
    :cond_0
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z

    move-result v1

    if-nez v1, :cond_1

    .line 393
    const/4 v0, -0x1

    goto :goto_1

    .line 395
    :cond_1
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B

    move-result p1

    .line 396
    goto :goto_0
.end method

.method public static skipUTF8BOM(Ljava/io/DataInput;)I
    .locals 4
    .param p0, "input"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 188
    .local v0, "b":I
    const/16 v1, 0xef

    if-eq v0, v1, :cond_0

    move v1, v0

    .line 203
    :goto_0
    return v1

    .line 193
    :cond_0
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 194
    const/16 v1, 0xbb

    if-eq v0, v1, :cond_1

    .line 195
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected byte 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " following 0xEF; should get 0xBB as part of UTF-8 BOM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_1
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 199
    const/16 v1, 0xbf

    if-eq v0, v1, :cond_2

    .line 200
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected byte 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " following 0xEF 0xBB; should get 0xBF as part of UTF-8 BOM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_2
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v1

    goto :goto_0
.end method

.method private static tryMatch(Lcom/fasterxml/jackson/core/format/InputAccessor;Ljava/lang/String;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/core/format/MatchStrength;
    .locals 4
    .param p0, "acc"    # Lcom/fasterxml/jackson/core/format/InputAccessor;
    .param p1, "matchStr"    # Ljava/lang/String;
    .param p2, "fullMatchStrength"    # Lcom/fasterxml/jackson/core/format/MatchStrength;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 367
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->hasMoreBytes()Z

    move-result v2

    if-nez v2, :cond_1

    .line 368
    sget-object p2, Lcom/fasterxml/jackson/core/format/MatchStrength;->INCONCLUSIVE:Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 374
    .end local p2    # "fullMatchStrength":Lcom/fasterxml/jackson/core/format/MatchStrength;
    :cond_0
    :goto_1
    return-object p2

    .line 370
    .restart local p2    # "fullMatchStrength":Lcom/fasterxml/jackson/core/format/MatchStrength;
    :cond_1
    invoke-interface {p0}, Lcom/fasterxml/jackson/core/format/InputAccessor;->nextByte()B

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    .line 371
    sget-object p2, Lcom/fasterxml/jackson/core/format/MatchStrength;->NO_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    goto :goto_1

    .line 366
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


.method public constructParser(ILcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;I)Lcom/fasterxml/jackson/core/JsonParser;
    .locals 15
    .param p1, "parserFeatures"    # I
    .param p2, "codec"    # Lcom/fasterxml/jackson/core/ObjectCodec;
    .param p3, "rootByteSymbols"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .param p4, "rootCharSymbols"    # Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;
    .param p5, "factoryFeatures"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->detectEncoding()Lcom/fasterxml/jackson/core/JsonEncoding;

    move-result-object v14

    .line 248
    .local v14, "enc":Lcom/fasterxml/jackson/core/JsonEncoding;
    sget-object v2, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    if-ne v14, v2, :cond_0

    .line 252
    sget-object v2, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->CANONICALIZE_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    move-object/from16 v0, p3

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->makeChild(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    move-result-object v7

    .line 254
    .local v7, "can":Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    new-instance v2, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v8, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v9, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    iget v10, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    iget-boolean v11, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bufferRecyclable:Z

    move/from16 v4, p1

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v11}, Lcom/fasterxml/jackson/core/json/UTF8StreamJsonParser;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/InputStream;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;[BIIZ)V

    .line 258
    .end local v7    # "can":Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    :goto_0
    return-object v2

    :cond_0
    new-instance v8, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;

    iget-object v9, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->constructReader()Ljava/io/Reader;

    move-result-object v11

    invoke-virtual/range {p4 .. p5}, Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;->makeChild(I)Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;

    move-result-object v13

    move/from16 v10, p1

    move-object/from16 v12, p2

    invoke-direct/range {v8 .. v13}, Lcom/fasterxml/jackson/core/json/ReaderBasedJsonParser;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;ILjava/io/Reader;Lcom/fasterxml/jackson/core/ObjectCodec;Lcom/fasterxml/jackson/core/sym/CharsToNameCanonicalizer;)V

    move-object v2, v8

    goto :goto_0
.end method

.method public constructReader()Ljava/io/Reader;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->getEncoding()Lcom/fasterxml/jackson/core/JsonEncoding;

    move-result-object v10

    .line 216
    .local v10, "enc":Lcom/fasterxml/jackson/core/JsonEncoding;
    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/JsonEncoding;->bits()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 239
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Internal error"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :sswitch_0
    iget-object v2, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;

    .line 223
    .local v2, "in":Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 224
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    invoke-direct {v0, v1, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 233
    .end local v2    # "in":Ljava/io/InputStream;
    .local v0, "in":Ljava/io/InputStream;
    :goto_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/core/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 236
    .end local v0    # "in":Ljava/io/InputStream;
    :goto_1
    return-object v3

    .line 229
    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_0
    iget v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    if-ge v1, v3, :cond_1

    .line 230
    new-instance v0, Lcom/fasterxml/jackson/core/io/MergedStream;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/io/MergedStream;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BII)V

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 236
    .end local v0    # "in":Ljava/io/InputStream;
    :sswitch_1
    new-instance v3, Lcom/fasterxml/jackson/core/io/UTF32Reader;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v7, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    iget v8, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/io/IOContext;->getEncoding()Lcom/fasterxml/jackson/core/JsonEncoding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonEncoding;->isBigEndian()Z

    move-result v9

    invoke-direct/range {v3 .. v9}, Lcom/fasterxml/jackson/core/io/UTF32Reader;-><init>(Lcom/fasterxml/jackson/core/io/IOContext;Ljava/io/InputStream;[BIIZ)V

    goto :goto_1

    .restart local v2    # "in":Ljava/io/InputStream;
    :cond_1
    move-object v0, v2

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    goto :goto_0

    .line 216
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public detectEncoding()Lcom/fasterxml/jackson/core/JsonEncoding;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v1, 0x0

    .line 129
    .local v1, "foundEncoding":Z
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->ensureLoaded(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x18

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int v3, v4, v5

    .line 135
    .local v3, "quad":I
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->handleBOM(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    const/4 v1, 0x1

    .line 161
    .end local v3    # "quad":I
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 162
    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    .line 174
    .local v0, "enc":Lcom/fasterxml/jackson/core/JsonEncoding;
    :goto_1
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_context:Lcom/fasterxml/jackson/core/io/IOContext;

    invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/core/io/IOContext;->setEncoding(Lcom/fasterxml/jackson/core/JsonEncoding;)V

    .line 175
    return-object v0

    .line 144
    .end local v0    # "enc":Lcom/fasterxml/jackson/core/JsonEncoding;
    .restart local v3    # "quad":I
    :cond_1
    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->checkUTF32(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 145
    const/4 v1, 0x1

    goto :goto_0

    .line 146
    :cond_2
    ushr-int/lit8 v4, v3, 0x10

    invoke-direct {p0, v4}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->checkUTF16(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    const/4 v1, 0x1

    goto :goto_0

    .line 150
    .end local v3    # "quad":I
    :cond_3
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->ensureLoaded(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    iget-object v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v6, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    .line 153
    .local v2, "i16":I
    invoke-direct {p0, v2}, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->checkUTF16(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    const/4 v1, 0x1

    goto :goto_0

    .line 164
    .end local v2    # "i16":I
    :cond_4
    iget v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bytesPerChar:I

    packed-switch v4, :pswitch_data_0

    .line 171
    :pswitch_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Internal error"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    :pswitch_1
    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF8:Lcom/fasterxml/jackson/core/JsonEncoding;

    .line 166
    .restart local v0    # "enc":Lcom/fasterxml/jackson/core/JsonEncoding;
    goto :goto_1

    .line 167
    .end local v0    # "enc":Lcom/fasterxml/jackson/core/JsonEncoding;
    :pswitch_2
    iget-boolean v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    if-eqz v4, :cond_5

    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_BE:Lcom/fasterxml/jackson/core/JsonEncoding;

    .line 168
    .restart local v0    # "enc":Lcom/fasterxml/jackson/core/JsonEncoding;
    :goto_2
    goto :goto_1

    .line 167
    .end local v0    # "enc":Lcom/fasterxml/jackson/core/JsonEncoding;
    :cond_5
    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF16_LE:Lcom/fasterxml/jackson/core/JsonEncoding;

    goto :goto_2

    .line 169
    :pswitch_3
    iget-boolean v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_bigEndian:Z

    if-eqz v4, :cond_6

    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_BE:Lcom/fasterxml/jackson/core/JsonEncoding;

    .line 170
    .restart local v0    # "enc":Lcom/fasterxml/jackson/core/JsonEncoding;
    :goto_3
    goto :goto_1

    .line 169
    .end local v0    # "enc":Lcom/fasterxml/jackson/core/JsonEncoding;
    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/core/JsonEncoding;->UTF32_LE:Lcom/fasterxml/jackson/core/JsonEncoding;

    goto :goto_3

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected ensureLoaded(I)Z
    .locals 8
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 515
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    iget v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputPtr:I

    sub-int v1, v3, v4

    .line 516
    .local v1, "gotten":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 519
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;

    if-nez v3, :cond_1

    .line 520
    const/4 v0, -0x1

    .line 524
    .local v0, "count":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 525
    const/4 v2, 0x0

    .line 530
    .end local v0    # "count":I
    :cond_0
    return v2

    .line 522
    :cond_1
    iget-object v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    iget-object v6, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputBuffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_1

    .line 527
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/fasterxml/jackson/core/json/ByteSourceJsonBootstrapper;->_inputEnd:I

    .line 528
    add-int/2addr v1, v0

    .line 529
    goto :goto_0
.end method
