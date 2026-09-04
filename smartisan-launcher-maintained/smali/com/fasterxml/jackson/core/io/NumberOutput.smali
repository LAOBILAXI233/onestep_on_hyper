.class public final Lcom/fasterxml/jackson/core/io/NumberOutput;
.super Ljava/lang/Object;
.source "NumberOutput.java"


.field private static BILLION:I

.field private static BILLION_L:J

.field private static MAX_INT_AS_LONG:J

.field private static MILLION:I

.field private static MIN_INT_AS_LONG:J

.field static final SMALLEST_INT:Ljava/lang/String;

.field static final SMALLEST_LONG:Ljava/lang/String;

.field private static final TRIPLET_TO_CHARS:[I

.field private static final sSmallIntStrs:[Ljava/lang/String;

.field private static final sSmallIntStrs2:[Ljava/lang/String;


.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0xa

    .line 5
    const v6, 0xf4240

    sput v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    .line 6
    const v6, 0x3b9aca00

    sput v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    .line 7
    const-wide/32 v6, 0x3b9aca00

    sput-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    .line 9
    const-wide/32 v6, -0x80000000

    sput-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    .line 10
    const-wide/32 v6, 0x7fffffff

    sput-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    .line 12
    const/high16 v6, -0x80000000

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    .line 13
    const-wide/high16 v6, -0x8000000000000000L

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    .line 21
    const/16 v6, 0x3e8

    new-array v6, v6, [I

    sput-object v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, "fullIx":I
    const/4 v3, 0x0

    .local v3, "i1":I
    :goto_0
    if-ge v3, v9, :cond_2

    .line 29
    const/4 v4, 0x0

    .local v4, "i2":I
    :goto_1
    if-ge v4, v9, :cond_1

    .line 30
    const/4 v5, 0x0

    .local v5, "i3":I
    move v2, v1

    .end local v1    # "fullIx":I
    .local v2, "fullIx":I
    :goto_2
    if-ge v5, v9, :cond_0

    .line 31
    add-int/lit8 v6, v3, 0x30

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v7, v4, 0x30

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    add-int/lit8 v7, v5, 0x30

    or-int v0, v6, v7

    .line 34
    .local v0, "enc":I
    sget-object v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "fullIx":I
    .restart local v1    # "fullIx":I
    aput v0, v6, v2

    .line 30
    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .end local v1    # "fullIx":I
    .restart local v2    # "fullIx":I
    goto :goto_2

    .line 29
    .end local v0    # "enc":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v1, v2

    .end local v2    # "fullIx":I
    .restart local v1    # "fullIx":I
    goto :goto_1

    .line 28
    .end local v5    # "i3":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 40
    .end local v4    # "i2":I
    :cond_2
    const/16 v6, 0xb

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "0"

    aput-object v7, v6, v10

    const-string v7, "1"

    aput-object v7, v6, v11

    const-string v7, "2"

    aput-object v7, v6, v12

    const-string v7, "3"

    aput-object v7, v6, v13

    const/4 v7, 0x4

    const-string v8, "4"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "5"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "6"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "7"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "8"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "9"

    aput-object v8, v6, v7

    const-string v7, "10"

    aput-object v7, v6, v9

    sput-object v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    .line 43
    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "-1"

    aput-object v7, v6, v10

    const-string v7, "-2"

    aput-object v7, v6, v11

    const-string v7, "-3"

    aput-object v7, v6, v12

    const-string v7, "-4"

    aput-object v7, v6, v13

    const/4 v7, 0x4

    const-string v8, "-5"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "-6"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "-7"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "-8"

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "-9"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "-10"

    aput-object v8, v6, v7

    sput-object v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _full3(I[BI)I
    .locals 3
    .param p0, "t"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .prologue
    .line 457
    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v2, p0

    .line 458
    .local v0, "enc":I
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    .line 459
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 460
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    int-to-byte v2, v0

    aput-byte v2, p1, p2

    .line 461
    return v1
.end method

.method private static _full3(I[CI)I
    .locals 3
    .param p0, "t"    # I
    .param p1, "b"    # [C
    .param p2, "off"    # I

    .prologue
    .line 448
    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v2, p0

    .line 449
    .local v0, "enc":I
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    shr-int/lit8 v2, v0, 0x10

    int-to-char v2, v2

    aput-char v2, p1, p2

    .line 450
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    aput-char v2, p1, v1

    .line 451
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    and-int/lit8 v2, v0, 0x7f

    int-to-char v2, v2

    aput-char v2, p1, p2

    .line 452
    return v1
.end method

.method private static _leading3(I[BI)I
    .locals 3
    .param p0, "t"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .prologue
    .line 435
    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v2, p0

    .line 436
    .local v0, "enc":I
    const/16 v2, 0x9

    if-le p0, v2, :cond_1

    .line 437
    const/16 v2, 0x63

    if-le p0, v2, :cond_0

    .line 438
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    move p2, v1

    .line 440
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    move p2, v1

    .line 442
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_1
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    int-to-byte v2, v0

    aput-byte v2, p1, p2

    .line 443
    return v1
.end method

.method private static _leading3(I[CI)I
    .locals 3
    .param p0, "t"    # I
    .param p1, "b"    # [C
    .param p2, "off"    # I

    .prologue
    .line 422
    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v2, p0

    .line 423
    .local v0, "enc":I
    const/16 v2, 0x9

    if-le p0, v2, :cond_1

    .line 424
    const/16 v2, 0x63

    if-le p0, v2, :cond_0

    .line 425
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    shr-int/lit8 v2, v0, 0x10

    int-to-char v2, v2

    aput-char v2, p1, p2

    move p2, v1

    .line 427
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    aput-char v2, p1, p2

    move p2, v1

    .line 429
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_1
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    and-int/lit8 v2, v0, 0x7f

    int-to-char v2, v2

    aput-char v2, p1, p2

    .line 430
    return v1
.end method

.method private static _outputFullBillion(I[BI)I
    .locals 6
    .param p0, "v"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .prologue
    .line 361
    div-int/lit16 v4, p0, 0x3e8

    .line 362
    .local v4, "thousands":I
    mul-int/lit16 v5, v4, 0x3e8

    sub-int v3, p0, v5

    .line 363
    .local v3, "ones":I
    div-int/lit16 v1, v4, 0x3e8

    .line 364
    .local v1, "millions":I
    mul-int/lit16 v5, v1, 0x3e8

    sub-int/2addr v4, v5

    .line 366
    sget-object v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v5, v1

    .line 367
    .local v0, "enc":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    shr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 368
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    .line 369
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    int-to-byte v5, v0

    aput-byte v5, p1, p2

    .line 371
    sget-object v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v5, v4

    .line 372
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    .line 373
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 374
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    int-to-byte v5, v0

    aput-byte v5, p1, v2

    .line 376
    sget-object v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v5, v3

    .line 377
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    shr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 378
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    .line 379
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    int-to-byte v5, v0

    aput-byte v5, p1, p2

    .line 381
    return v2
.end method

.method private static _outputFullBillion(I[CI)I
    .locals 6
    .param p0, "v"    # I
    .param p1, "b"    # [C
    .param p2, "off"    # I

    .prologue
    .line 306
    div-int/lit16 v4, p0, 0x3e8

    .line 307
    .local v4, "thousands":I
    mul-int/lit16 v5, v4, 0x3e8

    sub-int v3, p0, v5

    .line 308
    .local v3, "ones":I
    div-int/lit16 v1, v4, 0x3e8

    .line 310
    .local v1, "millions":I
    sget-object v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v5, v1

    .line 311
    .local v0, "enc":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    shr-int/lit8 v5, v0, 0x10

    int-to-char v5, v5

    aput-char v5, p1, p2

    .line 312
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v5, v0, 0x8

    and-int/lit8 v5, v5, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, v2

    .line 313
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    and-int/lit8 v5, v0, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, p2

    .line 315
    mul-int/lit16 v5, v1, 0x3e8

    sub-int/2addr v4, v5

    .line 316
    sget-object v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v5, v4

    .line 317
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v5, v0, 0x10

    int-to-char v5, v5

    aput-char v5, p1, v2

    .line 318
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    shr-int/lit8 v5, v0, 0x8

    and-int/lit8 v5, v5, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, p2

    .line 319
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    and-int/lit8 v5, v0, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, v2

    .line 321
    sget-object v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v5, v3

    .line 322
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    shr-int/lit8 v5, v0, 0x10

    int-to-char v5, v5

    aput-char v5, p1, p2

    .line 323
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v5, v0, 0x8

    and-int/lit8 v5, v5, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, v2

    .line 324
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    and-int/lit8 v5, v0, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, p2

    .line 326
    return v2
.end method

.method private static _outputSmallestI([BI)I
    .locals 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    .line 491
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 492
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, p1

    .end local p1    # "off":I
    .local v2, "off":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 493
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "off":I
    .restart local p1    # "off":I
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 492
    add-int/lit8 v0, v0, 0x1

    move v2, p1

    .end local p1    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    .line 495
    :cond_0
    return v2
.end method

.method private static _outputSmallestI([CI)I
    .locals 3
    .param p0, "b"    # [C
    .param p1, "off"    # I

    .prologue
    .line 484
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 485
    .local v0, "len":I
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_INT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 486
    add-int v1, p1, v0

    return v1
.end method

.method private static _outputSmallestL([BI)I
    .locals 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    .line 475
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 476
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, p1

    .end local p1    # "off":I
    .local v2, "off":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 477
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "off":I
    .restart local p1    # "off":I
    sget-object v3, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 476
    add-int/lit8 v0, v0, 0x1

    move v2, p1

    .end local p1    # "off":I
    .restart local v2    # "off":I
    goto :goto_0

    .line 479
    :cond_0
    return v2
.end method

.method private static _outputSmallestL([CI)I
    .locals 3
    .param p0, "b"    # [C
    .param p1, "off"    # I

    .prologue
    .line 468
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 469
    .local v0, "len":I
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->SMALLEST_LONG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 470
    add-int v1, p1, v0

    return v1
.end method

.method private static _outputUptoBillion(I[BI)I
    .locals 6
    .param p0, "v"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .prologue
    .line 331
    sget v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    if-ge p0, v5, :cond_1

    .line 332
    const/16 v5, 0x3e8

    if-ge p0, v5, :cond_0

    .line 333
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result v5

    .line 356
    :goto_0
    return v5

    .line 335
    :cond_0
    div-int/lit16 v4, p0, 0x3e8

    .line 336
    .local v4, "thousands":I
    mul-int/lit16 v5, v4, 0x3e8

    sub-int v3, p0, v5

    .line 337
    .local v3, "ones":I
    invoke-static {p1, p2, v4, v3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputUptoMillion([BIII)I

    move-result v5

    goto :goto_0

    .line 339
    .end local v3    # "ones":I
    .end local v4    # "thousands":I
    :cond_1
    div-int/lit16 v4, p0, 0x3e8

    .line 340
    .restart local v4    # "thousands":I
    mul-int/lit16 v5, v4, 0x3e8

    sub-int v3, p0, v5

    .line 341
    .restart local v3    # "ones":I
    div-int/lit16 v1, v4, 0x3e8

    .line 342
    .local v1, "millions":I
    mul-int/lit16 v5, v1, 0x3e8

    sub-int/2addr v4, v5

    .line 344
    invoke-static {v1, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result p2

    .line 346
    sget-object v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v5, v4

    .line 347
    .local v0, "enc":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    shr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 348
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    .line 349
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    int-to-byte v5, v0

    aput-byte v5, p1, p2

    .line 351
    sget-object v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v5, v3

    .line 352
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v5, v0, 0x10

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    .line 353
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    shr-int/lit8 v5, v0, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, p2

    .line 354
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    int-to-byte v5, v0

    aput-byte v5, p1, v2

    move v5, p2

    .line 356
    goto :goto_0
.end method

.method private static _outputUptoBillion(I[CI)I
    .locals 6
    .param p0, "v"    # I
    .param p1, "b"    # [C
    .param p2, "off"    # I

    .prologue
    .line 276
    sget v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    if-ge p0, v5, :cond_1

    .line 277
    const/16 v5, 0x3e8

    if-ge p0, v5, :cond_0

    .line 278
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result v5

    .line 301
    :goto_0
    return v5

    .line 280
    :cond_0
    div-int/lit16 v4, p0, 0x3e8

    .line 281
    .local v4, "thousands":I
    mul-int/lit16 v5, v4, 0x3e8

    sub-int v3, p0, v5

    .line 282
    .local v3, "ones":I
    invoke-static {p1, p2, v4, v3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputUptoMillion([CIII)I

    move-result v5

    goto :goto_0

    .line 284
    .end local v3    # "ones":I
    .end local v4    # "thousands":I
    :cond_1
    div-int/lit16 v4, p0, 0x3e8

    .line 285
    .restart local v4    # "thousands":I
    mul-int/lit16 v5, v4, 0x3e8

    sub-int v3, p0, v5

    .line 286
    .restart local v3    # "ones":I
    div-int/lit16 v1, v4, 0x3e8

    .line 287
    .local v1, "millions":I
    mul-int/lit16 v5, v1, 0x3e8

    sub-int/2addr v4, v5

    .line 289
    invoke-static {v1, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result p2

    .line 291
    sget-object v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v5, v4

    .line 292
    .local v0, "enc":I
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .local v2, "off":I
    shr-int/lit8 v5, v0, 0x10

    int-to-char v5, v5

    aput-char v5, p1, p2

    .line 293
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v5, v0, 0x8

    and-int/lit8 v5, v5, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, v2

    .line 294
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    and-int/lit8 v5, v0, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, p2

    .line 296
    sget-object v5, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v5, v3

    .line 297
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    shr-int/lit8 v5, v0, 0x10

    int-to-char v5, v5

    aput-char v5, p1, v2

    .line 298
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "off":I
    .restart local v2    # "off":I
    shr-int/lit8 v5, v0, 0x8

    and-int/lit8 v5, v5, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, p2

    .line 299
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    and-int/lit8 v5, v0, 0x7f

    int-to-char v5, v5

    aput-char v5, p1, v2

    move v5, p2

    .line 301
    goto :goto_0
.end method

.method private static _outputUptoMillion([BIII)I
    .locals 3
    .param p0, "b"    # [B
    .param p1, "off"    # I
    .param p2, "thousands"    # I
    .param p3, "ones"    # I

    .prologue
    .line 404
    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v2, p2

    .line 405
    .local v0, "enc":I
    const/16 v2, 0x9

    if-le p2, v2, :cond_1

    .line 406
    const/16 v2, 0x63

    if-le p2, v2, :cond_0

    .line 407
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .local v1, "off":I
    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    move p1, v1

    .line 409
    .end local v1    # "off":I
    .restart local p1    # "off":I
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .restart local v1    # "off":I
    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    move p1, v1

    .line 411
    .end local v1    # "off":I
    .restart local p1    # "off":I
    :cond_1
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .restart local v1    # "off":I
    int-to-byte v2, v0

    aput-byte v2, p0, p1

    .line 413
    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v2, p3

    .line 414
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "off":I
    .restart local p1    # "off":I
    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 415
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .restart local v1    # "off":I
    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    .line 416
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "off":I
    .restart local p1    # "off":I
    int-to-byte v2, v0

    aput-byte v2, p0, v1

    .line 417
    return p1
.end method

.method private static _outputUptoMillion([CIII)I
    .locals 3
    .param p0, "b"    # [C
    .param p1, "off"    # I
    .param p2, "thousands"    # I
    .param p3, "ones"    # I

    .prologue
    .line 386
    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v2, p2

    .line 387
    .local v0, "enc":I
    const/16 v2, 0x9

    if-le p2, v2, :cond_1

    .line 388
    const/16 v2, 0x63

    if-le p2, v2, :cond_0

    .line 389
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .local v1, "off":I
    shr-int/lit8 v2, v0, 0x10

    int-to-char v2, v2

    aput-char v2, p0, p1

    move p1, v1

    .line 391
    .end local v1    # "off":I
    .restart local p1    # "off":I
    :cond_0
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .restart local v1    # "off":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    aput-char v2, p0, p1

    move p1, v1

    .line 393
    .end local v1    # "off":I
    .restart local p1    # "off":I
    :cond_1
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .restart local v1    # "off":I
    and-int/lit8 v2, v0, 0x7f

    int-to-char v2, v2

    aput-char v2, p0, p1

    .line 395
    sget-object v2, Lcom/fasterxml/jackson/core/io/NumberOutput;->TRIPLET_TO_CHARS:[I

    aget v0, v2, p3

    .line 396
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "off":I
    .restart local p1    # "off":I
    shr-int/lit8 v2, v0, 0x10

    int-to-char v2, v2

    aput-char v2, p0, v1

    .line 397
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "off":I
    .restart local v1    # "off":I
    shr-int/lit8 v2, v0, 0x8

    and-int/lit8 v2, v2, 0x7f

    int-to-char v2, v2

    aput-char v2, p0, p1

    .line 398
    add-int/lit8 p1, v1, 0x1

    .end local v1    # "off":I
    .restart local p1    # "off":I
    and-int/lit8 v2, v0, 0x7f

    int-to-char v2, v2

    aput-char v2, p0, v1

    .line 399
    return p1
.end method

.method public static outputInt(I[BI)I
    .locals 5
    .param p0, "v"    # I
    .param p1, "b"    # [B
    .param p2, "off"    # I

    .prologue
    .line 111
    if-gez p0, :cond_1

    .line 112
    const/high16 v4, -0x80000000

    if-ne p0, v4, :cond_0

    .line 113
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputSmallestI([BI)I

    move-result v4

    .line 151
    :goto_0
    return v4

    .line 115
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    const/16 v4, 0x2d

    aput-byte v4, p1, p2

    .line 116
    neg-int p0, p0

    move p2, v1

    .line 119
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_1
    sget v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    if-ge p0, v4, :cond_4

    .line 120
    const/16 v4, 0x3e8

    if-ge p0, v4, :cond_3

    .line 121
    const/16 v4, 0xa

    if-ge p0, v4, :cond_2

    .line 122
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    add-int/lit8 v4, p0, 0x30

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    move p2, v1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    :goto_1
    move v4, p2

    .line 132
    goto :goto_0

    .line 124
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result p2

    goto :goto_1

    .line 127
    :cond_3
    div-int/lit16 v3, p0, 0x3e8

    .line 128
    .local v3, "thousands":I
    mul-int/lit16 v4, v3, 0x3e8

    sub-int/2addr p0, v4

    .line 129
    invoke-static {v3, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result p2

    .line 130
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[BI)I

    move-result p2

    goto :goto_1

    .line 134
    .end local v3    # "thousands":I
    :cond_4
    sget v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v4, :cond_6

    .line 135
    sget v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int/2addr p0, v4

    .line 136
    sget v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v4, :cond_5

    .line 137
    sget v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int/2addr p0, v4

    .line 138
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    const/16 v4, 0x32

    aput-byte v4, p1, p2

    move p2, v1

    .line 142
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :goto_2
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[BI)I

    move-result v4

    goto :goto_0

    .line 140
    :cond_5
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    const/16 v4, 0x31

    aput-byte v4, p1, p2

    move p2, v1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_2

    .line 144
    :cond_6
    div-int/lit16 v0, p0, 0x3e8

    .line 145
    .local v0, "newValue":I
    mul-int/lit16 v4, v0, 0x3e8

    sub-int v2, p0, v4

    .line 146
    .local v2, "ones":I
    move p0, v0

    .line 147
    div-int/lit16 v0, v0, 0x3e8

    .line 148
    mul-int/lit16 v4, v0, 0x3e8

    sub-int v3, p0, v4

    .line 149
    .restart local v3    # "thousands":I
    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result p2

    .line 150
    invoke-static {v3, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[BI)I

    move-result p2

    .line 151
    invoke-static {v2, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[BI)I

    move-result v4

    goto :goto_0
.end method

.method public static outputInt(I[CI)I
    .locals 5
    .param p0, "v"    # I
    .param p1, "b"    # [C
    .param p2, "off"    # I

    .prologue
    .line 58
    if-gez p0, :cond_1

    .line 59
    const/high16 v4, -0x80000000

    if-ne p0, v4, :cond_0

    .line 62
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputSmallestI([CI)I

    move-result v4

    .line 106
    :goto_0
    return v4

    .line 64
    :cond_0
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .local v1, "off":I
    const/16 v4, 0x2d

    aput-char v4, p1, p2

    .line 65
    neg-int p0, p0

    move p2, v1

    .line 68
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :cond_1
    sget v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->MILLION:I

    if-ge p0, v4, :cond_4

    .line 69
    const/16 v4, 0x3e8

    if-ge p0, v4, :cond_3

    .line 70
    const/16 v4, 0xa

    if-ge p0, v4, :cond_2

    .line 71
    add-int/lit8 v4, p0, 0x30

    int-to-char v4, v4

    aput-char v4, p1, p2

    .line 72
    add-int/lit8 v4, p2, 0x1

    goto :goto_0

    .line 74
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result v4

    goto :goto_0

    .line 76
    :cond_3
    div-int/lit16 v3, p0, 0x3e8

    .line 77
    .local v3, "thousands":I
    mul-int/lit16 v4, v3, 0x3e8

    sub-int/2addr p0, v4

    .line 78
    invoke-static {v3, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result p2

    .line 79
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[CI)I

    move-result p2

    move v4, p2

    .line 80
    goto :goto_0

    .line 88
    .end local v3    # "thousands":I
    :cond_4
    sget v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v4, :cond_6

    .line 89
    sget v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int/2addr p0, v4

    .line 90
    sget v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    if-lt p0, v4, :cond_5

    .line 91
    sget v4, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION:I

    sub-int/2addr p0, v4

    .line 92
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    const/16 v4, 0x32

    aput-char v4, p1, p2

    move p2, v1

    .line 96
    .end local v1    # "off":I
    .restart local p2    # "off":I
    :goto_1
    invoke-static {p0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[CI)I

    move-result v4

    goto :goto_0

    .line 94
    :cond_5
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "off":I
    .restart local v1    # "off":I
    const/16 v4, 0x31

    aput-char v4, p1, p2

    move p2, v1

    .end local v1    # "off":I
    .restart local p2    # "off":I
    goto :goto_1

    .line 98
    :cond_6
    div-int/lit16 v0, p0, 0x3e8

    .line 99
    .local v0, "newValue":I
    mul-int/lit16 v4, v0, 0x3e8

    sub-int v2, p0, v4

    .line 100
    .local v2, "ones":I
    move p0, v0

    .line 101
    div-int/lit16 v0, v0, 0x3e8

    .line 102
    mul-int/lit16 v4, v0, 0x3e8

    sub-int v3, p0, v4

    .line 104
    .restart local v3    # "thousands":I
    invoke-static {v0, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result p2

    .line 105
    invoke-static {v3, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[CI)I

    move-result p2

    .line 106
    invoke-static {v2, p1, p2}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_full3(I[CI)I

    move-result v4

    goto :goto_0
.end method

.method public static outputLong(J[BI)I
    .locals 8
    .param p0, "v"    # J
    .param p2, "b"    # [B
    .param p3, "off"    # I

    .prologue
    .line 194
    const-wide/16 v6, 0x0

    cmp-long v3, p0, v6

    if-gez v3, :cond_3

    .line 195
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    cmp-long v3, p0, v6

    if-lez v3, :cond_0

    .line 196
    long-to-int v3, p0

    invoke-static {v3, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v3

    .line 223
    :goto_0
    return v3

    .line 198
    :cond_0
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v3, p0, v6

    if-nez v3, :cond_1

    .line 199
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputSmallestL([BI)I

    move-result v3

    goto :goto_0

    .line 201
    :cond_1
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "off":I
    .local v2, "off":I
    const/16 v3, 0x2d

    aput-byte v3, p2, p3

    .line 202
    neg-long p0, p0

    move p3, v2

    .line 210
    .end local v2    # "off":I
    .restart local p3    # "off":I
    :cond_2
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    div-long v4, p0, v6

    .line 211
    .local v4, "upper":J
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    mul-long/2addr v6, v4

    sub-long/2addr p0, v6

    .line 214
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    .line 215
    long-to-int v3, v4

    invoke-static {v3, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputUptoBillion(I[BI)I

    move-result p3

    .line 223
    :goto_1
    long-to-int v3, p0

    invoke-static {v3, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[BI)I

    move-result v3

    goto :goto_0

    .line 204
    .end local v4    # "upper":J
    :cond_3
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v3, p0, v6

    if-gtz v3, :cond_2

    .line 205
    long-to-int v3, p0

    invoke-static {v3, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[BI)I

    move-result v3

    goto :goto_0

    .line 218
    .restart local v4    # "upper":J
    :cond_4
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    div-long v0, v4, v6

    .line 219
    .local v0, "hi":J
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    mul-long/2addr v6, v0

    sub-long/2addr v4, v6

    .line 220
    long-to-int v3, v0

    invoke-static {v3, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[BI)I

    move-result p3

    .line 221
    long-to-int v3, v4

    invoke-static {v3, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[BI)I

    move-result p3

    goto :goto_1
.end method

.method public static outputLong(J[CI)I
    .locals 8
    .param p0, "v"    # J
    .param p2, "b"    # [C
    .param p3, "off"    # I

    .prologue
    .line 160
    const-wide/16 v6, 0x0

    cmp-long v3, p0, v6

    if-gez v3, :cond_3

    .line 161
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->MIN_INT_AS_LONG:J

    cmp-long v3, p0, v6

    if-lez v3, :cond_0

    .line 162
    long-to-int v3, p0

    invoke-static {v3, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v3

    .line 189
    :goto_0
    return v3

    .line 164
    :cond_0
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v3, p0, v6

    if-nez v3, :cond_1

    .line 165
    invoke-static {p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputSmallestL([CI)I

    move-result v3

    goto :goto_0

    .line 167
    :cond_1
    add-int/lit8 v2, p3, 0x1

    .end local p3    # "off":I
    .local v2, "off":I
    const/16 v3, 0x2d

    aput-char v3, p2, p3

    .line 168
    neg-long p0, p0

    move p3, v2

    .line 176
    .end local v2    # "off":I
    .restart local p3    # "off":I
    :cond_2
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    div-long v4, p0, v6

    .line 177
    .local v4, "upper":J
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    mul-long/2addr v6, v4

    sub-long/2addr p0, v6

    .line 180
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_4

    .line 181
    long-to-int v3, v4

    invoke-static {v3, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputUptoBillion(I[CI)I

    move-result p3

    .line 189
    :goto_1
    long-to-int v3, p0

    invoke-static {v3, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[CI)I

    move-result v3

    goto :goto_0

    .line 170
    .end local v4    # "upper":J
    :cond_3
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->MAX_INT_AS_LONG:J

    cmp-long v3, p0, v6

    if-gtz v3, :cond_2

    .line 171
    long-to-int v3, p0

    invoke-static {v3, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->outputInt(I[CI)I

    move-result v3

    goto :goto_0

    .line 184
    .restart local v4    # "upper":J
    :cond_4
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    div-long v0, v4, v6

    .line 185
    .local v0, "hi":J
    sget-wide v6, Lcom/fasterxml/jackson/core/io/NumberOutput;->BILLION_L:J

    mul-long/2addr v6, v0

    sub-long/2addr v4, v6

    .line 186
    long-to-int v3, v0

    invoke-static {v3, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_leading3(I[CI)I

    move-result p3

    .line 187
    long-to-int v3, v4

    invoke-static {v3, p2, p3}, Lcom/fasterxml/jackson/core/io/NumberOutput;->_outputFullBillion(I[CI)I

    move-result p3

    goto :goto_1
.end method

.method public static toString(D)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # D

    .prologue
    .line 258
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(F)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # F

    .prologue
    .line 265
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # I

    .prologue
    .line 238
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    array-length v1, v1

    if-ge p0, v1, :cond_1

    .line 239
    if-ltz p0, :cond_0

    .line 240
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs:[Ljava/lang/String;

    aget-object v1, v1, p0

    .line 247
    :goto_0
    return-object v1

    .line 242
    :cond_0
    neg-int v1, p0

    add-int/lit8 v0, v1, -0x1

    .line 243
    .local v0, "v2":I
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 244
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberOutput;->sSmallIntStrs2:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_0

    .line 247
    .end local v0    # "v2":I
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # J

    .prologue
    .line 251
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 252
    long-to-int v0, p0

    invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
