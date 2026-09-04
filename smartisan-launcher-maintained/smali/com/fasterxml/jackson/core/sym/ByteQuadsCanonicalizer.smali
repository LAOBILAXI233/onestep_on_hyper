.class public final Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
.super Ljava/lang/Object;
.source "ByteQuadsCanonicalizer.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;
    }
.end annotation


.field private static final DEFAULT_T_SIZE:I = 0x40

.field static final MAX_ENTRIES_FOR_REUSE:I = 0x1770

.field private static final MAX_T_SIZE:I = 0x10000

.field private static final MIN_HASH_SIZE:I = 0x10

.field private static final MULT:I = 0x21

.field private static final MULT2:I = 0x1003f

.field private static final MULT3:I = 0x1f


.field private _count:I

.field private final _failOnDoS:Z

.field private _hashArea:[I

.field private _hashShared:Z

.field private _hashSize:I

.field private _intern:Z

.field private _longNameOffset:I

.field private _names:[Ljava/lang/String;

.field private transient _needRehash:Z

.field private final _parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

.field private _secondaryStart:I

.field private final _seed:I

.field private _spilloverEnd:I

.field private final _tableInfo:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _tertiaryShift:I

.field private _tertiaryStart:I


.method private constructor <init>(IZIZ)V
    .locals 3
    .param p1, "sz"    # I
    .param p2, "intern"    # Z
    .param p3, "seed"    # I
    .param p4, "failOnDoS"    # Z

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 224
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    .line 225
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    .line 226
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_failOnDoS:Z

    .line 228
    const/16 v1, 0x10

    if-ge p1, v1, :cond_1

    .line 229
    const/16 p1, 0x10

    .line 241
    :cond_0
    :goto_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->createInitial(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 242
    return-void

    .line 233
    :cond_1
    add-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 234
    const/16 v0, 0x10

    .line 235
    .local v0, "curr":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 236
    add-int/2addr v0, v0

    goto :goto_1

    .line 238
    :cond_2
    move p1, v0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;ZIZLcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V
    .locals 2
    .param p1, "parent"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .param p2, "intern"    # Z
    .param p3, "seed"    # I
    .param p4, "failOnDoS"    # Z
    .param p5, "state"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .line 251
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    .line 252
    iput-boolean p2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    .line 253
    iput-boolean p4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_failOnDoS:Z

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    .line 257
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 258
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->size:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 259
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shl-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    .line 260
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    .line 261
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->tertiaryShift:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    .line 263
    iget-object v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->mainHash:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 264
    iget-object v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->names:[Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 266
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->spilloverEnd:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 267
    iget v0, p5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->longNameOffset:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_needRehash:Z

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 272
    return-void
.end method

.method private _appendLongName([II)I
    .locals 6
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I

    .prologue
    .line 941
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 944
    .local v2, "start":I
    add-int v4, v2, p2

    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v5, v5

    if-le v4, v5, :cond_0

    .line 946
    add-int v4, v2, p2

    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v5, v5

    sub-int v3, v4, v5

    .line 948
    .local v3, "toAdd":I
    const/16 v4, 0x1000

    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 950
    .local v0, "minAdd":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v4, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v1, v4, v5

    .line 951
    .local v1, "newSize":I
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 953
    .end local v0    # "minAdd":I
    .end local v1    # "newSize":I
    .end local v3    # "toAdd":I
    :cond_0
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    invoke-static {p1, v4, v5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 954
    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 955
    return v2
.end method

.method private final _calcOffset(I)I
    .locals 2
    .param p1, "hash"    # I

    .prologue
    .line 606
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    add-int/lit8 v1, v1, -0x1

    and-int v0, p1, v1

    .line 608
    .local v0, "ix":I
    shl-int/lit8 v1, v0, 0x2

    return v1
.end method

.method static _calcTertiaryShift(I)I
    .locals 2
    .param p0, "primarySlots"    # I

    .prologue
    .line 1193
    shr-int/lit8 v0, p0, 0x2

    .line 1196
    .local v0, "tertSlots":I
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 1197
    const/4 v1, 0x4

    .line 1206
    :goto_0
    return v1

    .line 1199
    :cond_0
    const/16 v1, 0x100

    if-gt v0, v1, :cond_1

    .line 1200
    const/4 v1, 0x5

    goto :goto_0

    .line 1202
    :cond_1
    const/16 v1, 0x400

    if-gt v0, v1, :cond_2

    .line 1203
    const/4 v1, 0x6

    goto :goto_0

    .line 1206
    :cond_2
    const/4 v1, 0x7

    goto :goto_0
.end method

.method private _findOffsetForAdd(I)I
    .locals 9
    .param p1, "hash"    # I

    .prologue
    const/4 v8, 0x1

    .line 892
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v3

    .line 893
    .local v3, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 894
    .local v2, "hashArea":[I
    add-int/lit8 v5, v3, 0x3

    aget v5, v2, v5

    if-nez v5, :cond_1

    move v4, v3

    .line 936
    :cond_0
    :goto_0
    return v4

    .line 899
    :cond_1
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v6, v3, 0x3

    shl-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 900
    .local v4, "offset2":I
    add-int/lit8 v5, v4, 0x3

    aget v5, v2, v5

    if-eqz v5, :cond_0

    .line 906
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v6, v6, 0x2

    shr-int v6, v3, v6

    iget v7, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int/2addr v6, v7

    add-int v4, v5, v6

    .line 907
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int v0, v8, v5

    .line 908
    .local v0, "bucketSize":I
    add-int v1, v4, v0

    .local v1, "end":I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 909
    add-int/lit8 v5, v4, 0x3

    aget v5, v2, v5

    if-eqz v5, :cond_0

    .line 908
    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 916
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 917
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 927
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shl-int/lit8 v1, v5, 0x3

    .line 928
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-lt v5, v1, :cond_4

    .line 929
    iget-boolean v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_failOnDoS:Z

    if-eqz v5, :cond_3

    .line 930
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_reportTooManyCollisions()V

    .line 934
    :cond_3
    iput-boolean v8, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_needRehash:Z

    :cond_4
    move v4, v3

    .line 936
    goto :goto_0
.end method

.method private _findSecondary(II)Ljava/lang/String;
    .locals 10
    .param p1, "origOffset"    # I
    .param p2, "q1"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 623
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v7, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v7, v7, 0x2

    shr-int v7, p1, v7

    iget v8, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int/2addr v7, v8

    add-int v4, v6, v7

    .line 624
    .local v4, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 625
    .local v2, "hashArea":[I
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int v0, v9, v6

    .line 626
    .local v0, "bucketSize":I
    add-int v1, v4, v0

    .local v1, "end":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 627
    add-int/lit8 v6, v4, 0x3

    aget v3, v2, v6

    .line 628
    .local v3, "len":I
    aget v6, v2, v4

    if-ne p2, v6, :cond_1

    if-ne v9, v3, :cond_1

    .line 629
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v6, v4, 0x2

    aget-object v5, v5, v6

    .line 643
    .end local v3    # "len":I
    :cond_0
    :goto_1
    return-object v5

    .line 631
    .restart local v3    # "len":I
    :cond_1
    if-eqz v3, :cond_0

    .line 626
    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 638
    .end local v3    # "len":I
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v4

    :goto_2
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v4, v6, :cond_0

    .line 639
    aget v6, v2, v4

    if-ne p2, v6, :cond_3

    add-int/lit8 v6, v4, 0x3

    aget v6, v2, v6

    if-ne v9, v6, :cond_3

    .line 640
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v6, v4, 0x2

    aget-object v5, v5, v6

    goto :goto_1

    .line 638
    :cond_3
    add-int/lit8 v4, v4, 0x4

    goto :goto_2
.end method

.method private _findSecondary(III)Ljava/lang/String;
    .locals 10
    .param p1, "origOffset"    # I
    .param p2, "q1"    # I
    .param p3, "q2"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x2

    .line 648
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v7, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v7, v7, 0x2

    shr-int v7, p1, v7

    iget v8, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int/2addr v7, v8

    add-int v4, v6, v7

    .line 649
    .local v4, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 651
    .local v2, "hashArea":[I
    const/4 v6, 0x1

    iget v7, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int v0, v6, v7

    .line 652
    .local v0, "bucketSize":I
    add-int v1, v4, v0

    .local v1, "end":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 653
    add-int/lit8 v6, v4, 0x3

    aget v3, v2, v6

    .line 654
    .local v3, "len":I
    aget v6, v2, v4

    if-ne p2, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    if-ne p3, v6, :cond_1

    if-ne v9, v3, :cond_1

    .line 655
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v6, v4, 0x2

    aget-object v5, v5, v6

    .line 666
    .end local v3    # "len":I
    :cond_0
    :goto_1
    return-object v5

    .line 657
    .restart local v3    # "len":I
    :cond_1
    if-eqz v3, :cond_0

    .line 652
    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 661
    .end local v3    # "len":I
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v4

    :goto_2
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v4, v6, :cond_0

    .line 662
    aget v6, v2, v4

    if-ne p2, v6, :cond_3

    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    if-ne p3, v6, :cond_3

    add-int/lit8 v6, v4, 0x3

    aget v6, v2, v6

    if-ne v9, v6, :cond_3

    .line 663
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v6, v4, 0x2

    aget-object v5, v5, v6

    goto :goto_1

    .line 661
    :cond_3
    add-int/lit8 v4, v4, 0x4

    goto :goto_2
.end method

.method private _findSecondary(IIII)Ljava/lang/String;
    .locals 10
    .param p1, "origOffset"    # I
    .param p2, "q1"    # I
    .param p3, "q2"    # I
    .param p4, "q3"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x3

    .line 671
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v7, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v7, v7, 0x2

    shr-int v7, p1, v7

    iget v8, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int/2addr v7, v8

    add-int v4, v6, v7

    .line 672
    .local v4, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 674
    .local v2, "hashArea":[I
    const/4 v6, 0x1

    iget v7, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int v0, v6, v7

    .line 675
    .local v0, "bucketSize":I
    add-int v1, v4, v0

    .local v1, "end":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 676
    add-int/lit8 v6, v4, 0x3

    aget v3, v2, v6

    .line 677
    .local v3, "len":I
    aget v6, v2, v4

    if-ne p2, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    if-ne p3, v6, :cond_1

    add-int/lit8 v6, v4, 0x2

    aget v6, v2, v6

    if-ne p4, v6, :cond_1

    if-ne v9, v3, :cond_1

    .line 678
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v6, v4, 0x2

    aget-object v5, v5, v6

    .line 690
    .end local v3    # "len":I
    :cond_0
    :goto_1
    return-object v5

    .line 680
    .restart local v3    # "len":I
    :cond_1
    if-eqz v3, :cond_0

    .line 675
    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 684
    .end local v3    # "len":I
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v4

    :goto_2
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v4, v6, :cond_0

    .line 685
    aget v6, v2, v4

    if-ne p2, v6, :cond_3

    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    if-ne p3, v6, :cond_3

    add-int/lit8 v6, v4, 0x2

    aget v6, v2, v6

    if-ne p4, v6, :cond_3

    add-int/lit8 v6, v4, 0x3

    aget v6, v2, v6

    if-ne v9, v6, :cond_3

    .line 687
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v6, v4, 0x2

    aget-object v5, v5, v6

    goto :goto_1

    .line 684
    :cond_3
    add-int/lit8 v4, v4, 0x4

    goto :goto_2
.end method

.method private _findSecondary(II[II)Ljava/lang/String;
    .locals 9
    .param p1, "origOffset"    # I
    .param p2, "hash"    # I
    .param p3, "q"    # [I
    .param p4, "qlen"    # I

    .prologue
    const/4 v5, 0x0

    .line 695
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    iget v7, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    add-int/lit8 v7, v7, 0x2

    shr-int v7, p1, v7

    iget v8, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int/2addr v7, v8

    add-int v4, v6, v7

    .line 696
    .local v4, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 698
    .local v2, "hashArea":[I
    const/4 v6, 0x1

    iget v7, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    shl-int v0, v6, v7

    .line 699
    .local v0, "bucketSize":I
    add-int v1, v4, v0

    .local v1, "end":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 700
    add-int/lit8 v6, v4, 0x3

    aget v3, v2, v6

    .line 701
    .local v3, "len":I
    aget v6, v2, v4

    if-ne p2, v6, :cond_1

    if-ne p4, v3, :cond_1

    .line 702
    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    invoke-direct {p0, p3, p4, v6}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 703
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v6, v4, 0x2

    aget-object v5, v5, v6

    .line 717
    .end local v3    # "len":I
    :cond_0
    :goto_1
    return-object v5

    .line 706
    .restart local v3    # "len":I
    :cond_1
    if-eqz v3, :cond_0

    .line 699
    add-int/lit8 v4, v4, 0x4

    goto :goto_0

    .line 710
    .end local v3    # "len":I
    :cond_2
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v4

    :goto_2
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    if-ge v4, v6, :cond_0

    .line 711
    aget v6, v2, v4

    if-ne p2, v6, :cond_3

    add-int/lit8 v6, v4, 0x3

    aget v6, v2, v6

    if-ne p4, v6, :cond_3

    .line 712
    add-int/lit8 v6, v4, 0x1

    aget v6, v2, v6

    invoke-direct {p0, p3, p4, v6}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 713
    iget-object v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v6, v4, 0x2

    aget-object v5, v5, v6

    goto :goto_1

    .line 710
    :cond_3
    add-int/lit8 v4, v4, 0x4

    goto :goto_2
.end method

.method private final _spilloverStart()I
    .locals 2

    .prologue
    .line 1174
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 1175
    .local v0, "offset":I
    shl-int/lit8 v1, v0, 0x3

    sub-int/2addr v1, v0

    return v1
.end method

.method private _verifyLongName([III)Z
    .locals 7
    .param p1, "q"    # [I
    .param p2, "qlen"    # I
    .param p3, "spillOffset"    # I

    .prologue
    const/4 v4, 0x0

    .line 722
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 724
    .local v0, "hashArea":[I
    const/4 v1, 0x0

    .line 726
    .local v1, "ix":I
    packed-switch p2, :pswitch_data_0

    .line 728
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName2([III)Z

    move-result v4

    .line 743
    :cond_0
    :goto_0
    return v4

    .line 730
    :pswitch_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ix":I
    .local v2, "ix":I
    aget v5, p1, v1

    add-int/lit8 v3, p3, 0x1

    .end local p3    # "spillOffset":I
    .local v3, "spillOffset":I
    aget v6, v0, p3

    if-eq v5, v6, :cond_1

    move v1, v2

    .end local v2    # "ix":I
    .restart local v1    # "ix":I
    move p3, v3

    .end local v3    # "spillOffset":I
    .restart local p3    # "spillOffset":I
    goto :goto_0

    .end local v1    # "ix":I
    .end local p3    # "spillOffset":I
    .restart local v2    # "ix":I
    .restart local v3    # "spillOffset":I
    :cond_1
    move v1, v2

    .end local v2    # "ix":I
    .restart local v1    # "ix":I
    move p3, v3

    .line 732
    .end local v3    # "spillOffset":I
    .restart local p3    # "spillOffset":I
    :pswitch_1
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ix":I
    .restart local v2    # "ix":I
    aget v5, p1, v1

    add-int/lit8 v3, p3, 0x1

    .end local p3    # "spillOffset":I
    .restart local v3    # "spillOffset":I
    aget v6, v0, p3

    if-eq v5, v6, :cond_2

    move v1, v2

    .end local v2    # "ix":I
    .restart local v1    # "ix":I
    move p3, v3

    .end local v3    # "spillOffset":I
    .restart local p3    # "spillOffset":I
    goto :goto_0

    .end local v1    # "ix":I
    .end local p3    # "spillOffset":I
    .restart local v2    # "ix":I
    .restart local v3    # "spillOffset":I
    :cond_2
    move v1, v2

    .end local v2    # "ix":I
    .restart local v1    # "ix":I
    move p3, v3

    .line 734
    .end local v3    # "spillOffset":I
    .restart local p3    # "spillOffset":I
    :pswitch_2
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ix":I
    .restart local v2    # "ix":I
    aget v5, p1, v1

    add-int/lit8 v3, p3, 0x1

    .end local p3    # "spillOffset":I
    .restart local v3    # "spillOffset":I
    aget v6, v0, p3

    if-eq v5, v6, :cond_3

    move v1, v2

    .end local v2    # "ix":I
    .restart local v1    # "ix":I
    move p3, v3

    .end local v3    # "spillOffset":I
    .restart local p3    # "spillOffset":I
    goto :goto_0

    .end local v1    # "ix":I
    .end local p3    # "spillOffset":I
    .restart local v2    # "ix":I
    .restart local v3    # "spillOffset":I
    :cond_3
    move v1, v2

    .end local v2    # "ix":I
    .restart local v1    # "ix":I
    move p3, v3

    .line 736
    .end local v3    # "spillOffset":I
    .restart local p3    # "spillOffset":I
    :pswitch_3
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ix":I
    .restart local v2    # "ix":I
    aget v5, p1, v1

    add-int/lit8 v3, p3, 0x1

    .end local p3    # "spillOffset":I
    .restart local v3    # "spillOffset":I
    aget v6, v0, p3

    if-eq v5, v6, :cond_4

    move v1, v2

    .end local v2    # "ix":I
    .restart local v1    # "ix":I
    move p3, v3

    .end local v3    # "spillOffset":I
    .restart local p3    # "spillOffset":I
    goto :goto_0

    .end local v1    # "ix":I
    .end local p3    # "spillOffset":I
    .restart local v2    # "ix":I
    .restart local v3    # "spillOffset":I
    :cond_4
    move v1, v2

    .end local v2    # "ix":I
    .restart local v1    # "ix":I
    move p3, v3

    .line 738
    .end local v3    # "spillOffset":I
    .restart local p3    # "spillOffset":I
    :pswitch_4
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ix":I
    .restart local v2    # "ix":I
    aget v5, p1, v1

    add-int/lit8 v3, p3, 0x1

    .end local p3    # "spillOffset":I
    .restart local v3    # "spillOffset":I
    aget v6, v0, p3

    if-eq v5, v6, :cond_5

    move v1, v2

    .end local v2    # "ix":I
    .restart local v1    # "ix":I
    move p3, v3

    .end local v3    # "spillOffset":I
    .restart local p3    # "spillOffset":I
    goto :goto_0

    .line 739
    .end local v1    # "ix":I
    .end local p3    # "spillOffset":I
    .restart local v2    # "ix":I
    .restart local v3    # "spillOffset":I
    :cond_5
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "ix":I
    .restart local v1    # "ix":I
    aget v5, p1, v2

    add-int/lit8 p3, v3, 0x1

    .end local v3    # "spillOffset":I
    .restart local p3    # "spillOffset":I
    aget v6, v0, v3

    if-ne v5, v6, :cond_0

    .line 740
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ix":I
    .restart local v2    # "ix":I
    aget v5, p1, v1

    add-int/lit8 v3, p3, 0x1

    .end local p3    # "spillOffset":I
    .restart local v3    # "spillOffset":I
    aget v6, v0, p3

    if-eq v5, v6, :cond_6

    move v1, v2

    .end local v2    # "ix":I
    .restart local v1    # "ix":I
    move p3, v3

    .end local v3    # "spillOffset":I
    .restart local p3    # "spillOffset":I
    goto :goto_0

    .line 741
    .end local v1    # "ix":I
    .end local p3    # "spillOffset":I
    .restart local v2    # "ix":I
    .restart local v3    # "spillOffset":I
    :cond_6
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "ix":I
    .restart local v1    # "ix":I
    aget v5, p1, v2

    add-int/lit8 p3, v3, 0x1

    .end local v3    # "spillOffset":I
    .restart local p3    # "spillOffset":I
    aget v6, v0, v3

    if-ne v5, v6, :cond_0

    .line 743
    const/4 v4, 0x1

    goto :goto_0

    .line 726
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private _verifyLongName2([III)Z
    .locals 5
    .param p1, "q"    # [I
    .param p2, "qlen"    # I
    .param p3, "spillOffset"    # I

    .prologue
    .line 748
    const/4 v0, 0x0

    .line 750
    .local v0, "ix":I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "ix":I
    .local v1, "ix":I
    aget v3, p1, v0

    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, p3, 0x1

    .end local p3    # "spillOffset":I
    .local v2, "spillOffset":I
    aget v4, v4, p3

    if-eq v3, v4, :cond_0

    .line 751
    const/4 v3, 0x0

    .line 754
    :goto_1
    return v3

    .line 753
    :cond_0
    if-lt v1, p2, :cond_1

    .line 754
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .end local v1    # "ix":I
    .restart local v0    # "ix":I
    move p3, v2

    .end local v2    # "spillOffset":I
    .restart local p3    # "spillOffset":I
    goto :goto_0
.end method

.method private _verifyNeedForRehash()V
    .locals 8

    .prologue
    .line 862
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shr-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_1

    .line 863
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v2

    sub-int/2addr v1, v2

    shr-int/lit8 v0, v1, 0x2

    .line 864
    .local v0, "spillCount":I
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 v1, v1, 0x7

    if-gt v0, v1, :cond_0

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    int-to-double v2, v1

    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    int-to-double v4, v1

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 866
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_needRehash:Z

    .line 869
    .end local v0    # "spillCount":I
    :cond_1
    return-void
.end method

.method private _verifySharing()V
    .locals 2

    .prologue
    .line 873
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 875
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 879
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyNeedForRehash()V

    .line 881
    :cond_0
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_needRehash:Z

    if-eqz v0, :cond_1

    .line 882
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->rehash()V

    .line 884
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .prologue
    .line 17
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .prologue
    .line 17
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    return v0
.end method

.method static synthetic access$200(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .prologue
    .line 17
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    return v0
.end method

.method static synthetic access$300(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)[I
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .prologue
    .line 17
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    return v0
.end method

.method static synthetic access$600(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    .prologue
    .line 17
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    return v0
.end method

.method public static createRoot()Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .locals 6

    .prologue
    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 290
    .local v0, "now":J
    long-to-int v3, v0

    const/16 v4, 0x20

    ushr-long v4, v0, v4

    long-to-int v4, v4

    add-int/2addr v3, v4

    or-int/lit8 v2, v3, 0x1

    .line 291
    .local v2, "seed":I
    invoke-static {v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->createRoot(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    move-result-object v3

    return-object v3
.end method

.method protected static createRoot(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .locals 3
    .param p0, "seed"    # I

    .prologue
    const/4 v2, 0x1

    .line 299
    new-instance v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    const/16 v1, 0x40

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;-><init>(IZIZ)V

    return-object v0
.end method

.method private mergeChild(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V
    .locals 3
    .param p1, "childState"    # Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    .prologue
    .line 335
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    .line 336
    .local v0, "childCount":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    .line 340
    .local v1, "currState":Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;
    iget v2, v1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    if-ne v0, v2, :cond_0

    .line 353
    :goto_0
    return-void

    .line 348
    :cond_0
    const/16 v2, 0x1770

    if-le v0, v2, :cond_1

    .line 350
    const/16 v2, 0x40

    invoke-static {v2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->createInitial(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    move-result-object p1

    .line 352
    :cond_1
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private nukeSymbols(Z)V
    .locals 2
    .param p1, "fill"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1151
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 1153
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 1155
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_longNameOffset:I

    .line 1156
    if-eqz p1, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1158
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1160
    :cond_0
    return-void
.end method

.method private rehash()V
    .locals 17

    .prologue
    .line 1066
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_needRehash:Z

    .line 1068
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 1072
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 1073
    .local v9, "oldHashArea":[I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 1074
    .local v10, "oldNames":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 1075
    .local v11, "oldSize":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 1076
    .local v7, "oldCount":I
    add-int v5, v11, v11

    .line 1077
    .local v5, "newSize":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    .line 1082
    .local v8, "oldEnd":I
    const/high16 v14, 0x10000

    if-le v5, v14, :cond_1

    .line 1083
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->nukeSymbols(Z)V

    .line 1144
    :cond_0
    return-void

    .line 1087
    :cond_1
    array-length v14, v9

    shl-int/lit8 v15, v11, 0x3

    add-int/2addr v14, v15

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 1088
    move-object/from16 v0, p0

    iput v5, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    .line 1089
    shl-int/lit8 v14, v5, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    .line 1090
    move-object/from16 v0, p0

    iget v14, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v15, v15, 0x1

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    .line 1091
    invoke-static {v5}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcTertiaryShift(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryShift:I

    .line 1094
    array-length v14, v10

    shl-int/lit8 v14, v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    .line 1095
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->nukeSymbols(Z)V

    .line 1102
    const/4 v1, 0x0

    .line 1103
    .local v1, "copyCount":I
    const/16 v14, 0x10

    new-array v12, v14, [I

    .line 1104
    .local v12, "q":[I
    const/4 v6, 0x0

    .local v6, "offset":I
    move v2, v8

    .local v2, "end":I
    :goto_0
    if-ge v6, v2, :cond_4

    .line 1105
    add-int/lit8 v14, v6, 0x3

    aget v3, v9, v14

    .line 1106
    .local v3, "len":I
    if-nez v3, :cond_2

    .line 1104
    :goto_1
    add-int/lit8 v6, v6, 0x4

    goto :goto_0

    .line 1109
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 1110
    shr-int/lit8 v14, v6, 0x2

    aget-object v4, v10, v14

    .line 1111
    .local v4, "name":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 1128
    array-length v14, v12

    if-le v3, v14, :cond_3

    .line 1129
    new-array v12, v3, [I

    .line 1132
    :cond_3
    add-int/lit8 v14, v6, 0x1

    aget v13, v9, v14

    .line 1133
    .local v13, "qoff":I
    const/4 v14, 0x0

    invoke-static {v9, v13, v12, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1134
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_1

    .line 1113
    .end local v13    # "qoff":I
    :pswitch_0
    const/4 v14, 0x0

    aget v15, v9, v6

    aput v15, v12, v14

    .line 1114
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v14}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_1

    .line 1117
    :pswitch_1
    const/4 v14, 0x0

    aget v15, v9, v6

    aput v15, v12, v14

    .line 1118
    const/4 v14, 0x1

    add-int/lit8 v15, v6, 0x1

    aget v15, v9, v15

    aput v15, v12, v14

    .line 1119
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v14}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_1

    .line 1122
    :pswitch_2
    const/4 v14, 0x0

    aget v15, v9, v6

    aput v15, v12, v14

    .line 1123
    const/4 v14, 0x1

    add-int/lit8 v15, v6, 0x1

    aget v15, v9, v15

    aput v15, v12, v14

    .line 1124
    const/4 v14, 0x2

    add-int/lit8 v15, v6, 0x2

    aget v15, v9, v15

    aput v15, v12, v14

    .line 1125
    const/4 v14, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v14}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->addName(Ljava/lang/String;[II)Ljava/lang/String;

    goto :goto_1

    .line 1141
    .end local v3    # "len":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    if-eq v1, v7, :cond_0

    .line 1142
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed rehash(): old count="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", copyCount="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


.method protected _reportTooManyCollisions()V
    .locals 3

    .prologue
    .line 1181
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    const/16 v1, 0x400

    if-gt v0, v1, :cond_0

    .line 1182
    return-void

    .line 1184
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Spill-over slots in symbol table with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries, hash area of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slots is now full (all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shr-int/lit8 v2, v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slots -- suspect a DoS attack based on hash collisions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " You can disable the check via `JsonFactory.Feature.FAIL_ON_SYMBOL_HASH_OVERFLOW`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q1"    # I

    .prologue
    .line 764
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 765
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v1, :cond_0

    .line 766
    sget-object v1, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 768
    :cond_0
    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v0

    .line 769
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput p2, v1, v0

    .line 770
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    aput v3, v1, v2

    .line 771
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v2, v0, 0x2

    aput-object p1, v1, v2

    .line 772
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 773
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyNeedForRehash()V

    .line 774
    return-object p1
.end method

.method public addName(Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q1"    # I
    .param p3, "q2"    # I

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 779
    iget-boolean v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v2, :cond_0

    .line 780
    sget-object v2, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 782
    :cond_0
    if-nez p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v0

    .line 783
    .local v0, "hash":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v1

    .line 784
    .local v1, "offset":I
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput p2, v2, v1

    .line 785
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v3, v1, 0x1

    aput p3, v2, v3

    .line 786
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v3, v1, 0x3

    const/4 v4, 0x2

    aput v4, v2, v3

    .line 787
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v3, v1, 0x2

    aput-object p1, v2, v3

    .line 788
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 789
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyNeedForRehash()V

    .line 790
    return-object p1

    .line 782
    .end local v0    # "hash":I
    .end local v1    # "offset":I
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(II)I

    move-result v0

    goto :goto_0
.end method

.method public addName(Ljava/lang/String;III)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q1"    # I
    .param p3, "q2"    # I
    .param p4, "q3"    # I

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 795
    iget-boolean v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v1, :cond_0

    .line 796
    sget-object v1, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 798
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(III)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v0

    .line 799
    .local v0, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput p2, v1, v0

    .line 800
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x1

    aput p3, v1, v2

    .line 801
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x2

    aput p4, v1, v2

    .line 802
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v2, v0, 0x3

    const/4 v3, 0x3

    aput v3, v1, v2

    .line 803
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v2, v0, 0x2

    aput-object p1, v1, v2

    .line 804
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 805
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyNeedForRehash()V

    .line 806
    return-object p1
.end method

.method public addName(Ljava/lang/String;[II)Ljava/lang/String;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "q"    # [I
    .param p3, "qlen"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 811
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifySharing()V

    .line 812
    iget-boolean v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_intern:Z

    if-eqz v3, :cond_0

    .line 813
    sget-object v3, Lcom/fasterxml/jackson/core/util/InternCache;->instance:Lcom/fasterxml/jackson/core/util/InternCache;

    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/core/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 817
    :cond_0
    packed-switch p3, :pswitch_data_0

    .line 843
    invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash([II)I

    move-result v0

    .line 844
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v2

    .line 846
    .local v2, "offset":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aput v0, v3, v2

    .line 847
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_appendLongName([II)I

    move-result v1

    .line 848
    .local v1, "longStart":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v4

    .line 849
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v4, v2, 0x3

    aput p3, v3, v4

    .line 852
    .end local v0    # "hash":I
    .end local v1    # "longStart":I
    :goto_0
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v4, v2, 0x2

    aput-object p1, v3, v4

    .line 855
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    .line 856
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyNeedForRehash()V

    .line 857
    return-object p1

    .line 820
    .end local v2    # "offset":I
    :pswitch_0
    aget v3, p2, v6

    invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v2

    .line 821
    .restart local v2    # "offset":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v4, p2, v6

    aput v4, v3, v2

    .line 822
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v4, v2, 0x3

    aput v7, v3, v4

    goto :goto_0

    .line 827
    .end local v2    # "offset":I
    :pswitch_1
    aget v3, p2, v6

    aget v4, p2, v7

    invoke-virtual {p0, v3, v4}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v2

    .line 828
    .restart local v2    # "offset":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v4, p2, v6

    aput v4, v3, v2

    .line 829
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v4, v2, 0x1

    aget v5, p2, v7

    aput v5, v3, v4

    .line 830
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v4, v2, 0x3

    aput v8, v3, v4

    goto :goto_0

    .line 835
    .end local v2    # "offset":I
    :pswitch_2
    aget v3, p2, v6

    aget v4, p2, v7

    aget v5, p2, v8

    invoke-virtual {p0, v3, v4, v5}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(III)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findOffsetForAdd(I)I

    move-result v2

    .line 836
    .restart local v2    # "offset":I
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v4, p2, v6

    aput v4, v3, v2

    .line 837
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v4, v2, 0x1

    aget v5, p2, v7

    aput v5, v3, v4

    .line 838
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v4, v2, 0x2

    aget v5, p2, v8

    aput v5, v3, v4

    .line 839
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    add-int/lit8 v4, v2, 0x3

    const/4 v5, 0x3

    aput v5, v3, v4

    goto :goto_0

    .line 817
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bucketCount()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    return v0
.end method

.method public calcHash(I)I
    .locals 2
    .param p1, "q1"    # I

    .prologue
    .line 980
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int v0, p1, v1

    .line 986
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    .line 987
    shl-int/lit8 v1, v0, 0x3

    xor-int/2addr v0, v1

    .line 988
    ushr-int/lit8 v1, v0, 0xc

    add-int/2addr v0, v1

    .line 989
    return v0
.end method

.method public calcHash(II)I
    .locals 2
    .param p1, "q1"    # I
    .param p2, "q2"    # I

    .prologue
    .line 996
    move v0, p1

    .line 998
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 999
    ushr-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    .line 1000
    mul-int/lit8 v1, p2, 0x21

    add-int/2addr v0, v1

    .line 1001
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int/2addr v0, v1

    .line 1002
    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    .line 1003
    ushr-int/lit8 v1, v0, 0x4

    xor-int/2addr v0, v1

    .line 1004
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1006
    return v0
.end method

.method public calcHash(III)I
    .locals 2
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "q3"    # I

    .prologue
    .line 1011
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int v0, p1, v1

    .line 1012
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x9

    add-int/2addr v0, v1

    .line 1013
    mul-int/lit8 v0, v0, 0x1f

    .line 1014
    add-int/2addr v0, p2

    .line 1015
    mul-int/lit8 v0, v0, 0x21

    .line 1016
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 1017
    xor-int/2addr v0, p3

    .line 1019
    ushr-int/lit8 v1, v0, 0x4

    add-int/2addr v0, v1

    .line 1021
    ushr-int/lit8 v1, v0, 0xf

    add-int/2addr v0, v1

    .line 1022
    shl-int/lit8 v1, v0, 0x9

    xor-int/2addr v0, v1

    .line 1024
    return v0
.end method

.method public calcHash([II)I
    .locals 5
    .param p1, "q"    # [I
    .param p2, "qlen"    # I

    .prologue
    .line 1029
    const/4 v3, 0x4

    if-ge p2, v3, :cond_0

    .line 1030
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 1037
    :cond_0
    const/4 v3, 0x0

    aget v3, p1, v3

    iget v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    xor-int v0, v3, v4

    .line 1038
    .local v0, "hash":I
    ushr-int/lit8 v3, v0, 0x9

    add-int/2addr v0, v3

    .line 1039
    const/4 v3, 0x1

    aget v3, p1, v3

    add-int/2addr v0, v3

    .line 1040
    ushr-int/lit8 v3, v0, 0xf

    add-int/2addr v0, v3

    .line 1041
    mul-int/lit8 v0, v0, 0x21

    .line 1042
    const/4 v3, 0x2

    aget v3, p1, v3

    xor-int/2addr v0, v3

    .line 1043
    ushr-int/lit8 v3, v0, 0x4

    add-int/2addr v0, v3

    .line 1045
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_1

    .line 1046
    aget v2, p1, v1

    .line 1047
    .local v2, "next":I
    shr-int/lit8 v3, v2, 0x15

    xor-int/2addr v2, v3

    .line 1048
    add-int/2addr v0, v2

    .line 1045
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1050
    .end local v2    # "next":I
    :cond_1
    const v3, 0x1003f

    mul-int/2addr v0, v3

    .line 1053
    ushr-int/lit8 v3, v0, 0x13

    add-int/2addr v0, v3

    .line 1054
    shl-int/lit8 v3, v0, 0x5

    xor-int/2addr v0, v3

    .line 1055
    return v0
.end method

.method public findName(I)Ljava/lang/String;
    .locals 8
    .param p1, "q1"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 470
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(I)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v2

    .line 472
    .local v2, "offset":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 474
    .local v0, "hashArea":[I
    add-int/lit8 v5, v2, 0x3

    aget v1, v0, v5

    .line 476
    .local v1, "len":I
    if-ne v1, v7, :cond_1

    .line 477
    aget v5, v0, v2

    if-ne v5, p1, :cond_2

    .line 478
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v5, v2, 0x2

    aget-object v4, v4, v5

    .line 497
    :cond_0
    :goto_0
    return-object v4

    .line 480
    :cond_1
    if-eqz v1, :cond_0

    .line 484
    :cond_2
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v6, v2, 0x3

    shl-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 486
    .local v3, "offset2":I
    add-int/lit8 v5, v3, 0x3

    aget v1, v0, v5

    .line 488
    if-ne v1, v7, :cond_3

    .line 489
    aget v4, v0, v3

    if-ne v4, p1, :cond_4

    .line 490
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v5, v3, 0x2

    aget-object v4, v4, v5

    goto :goto_0

    .line 492
    :cond_3
    if-eqz v1, :cond_0

    .line 497
    :cond_4
    invoke-direct {p0, v2, p1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public findName(II)Ljava/lang/String;
    .locals 8
    .param p1, "q1"    # I
    .param p2, "q2"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x2

    .line 502
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(II)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v2

    .line 504
    .local v2, "offset":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 506
    .local v0, "hashArea":[I
    add-int/lit8 v5, v2, 0x3

    aget v1, v0, v5

    .line 508
    .local v1, "len":I
    if-ne v1, v7, :cond_1

    .line 509
    aget v5, v0, v2

    if-ne p1, v5, :cond_2

    add-int/lit8 v5, v2, 0x1

    aget v5, v0, v5

    if-ne p2, v5, :cond_2

    .line 510
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v5, v2, 0x2

    aget-object v4, v4, v5

    .line 527
    :cond_0
    :goto_0
    return-object v4

    .line 512
    :cond_1
    if-eqz v1, :cond_0

    .line 516
    :cond_2
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v6, v2, 0x3

    shl-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 518
    .local v3, "offset2":I
    add-int/lit8 v5, v3, 0x3

    aget v1, v0, v5

    .line 520
    if-ne v1, v7, :cond_3

    .line 521
    aget v4, v0, v3

    if-ne p1, v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    if-ne p2, v4, :cond_4

    .line 522
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v5, v3, 0x2

    aget-object v4, v4, v5

    goto :goto_0

    .line 524
    :cond_3
    if-eqz v1, :cond_0

    .line 527
    :cond_4
    invoke-direct {p0, v2, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(III)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public findName(III)Ljava/lang/String;
    .locals 8
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "q3"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x3

    .line 532
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash(III)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v2

    .line 533
    .local v2, "offset":I
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 534
    .local v0, "hashArea":[I
    add-int/lit8 v5, v2, 0x3

    aget v1, v0, v5

    .line 536
    .local v1, "len":I
    if-ne v1, v7, :cond_1

    .line 537
    aget v5, v0, v2

    if-ne p1, v5, :cond_2

    add-int/lit8 v5, v2, 0x1

    aget v5, v0, v5

    if-ne v5, p2, :cond_2

    add-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    if-ne v5, p3, :cond_2

    .line 538
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v5, v2, 0x2

    aget-object v4, v4, v5

    .line 555
    :cond_0
    :goto_0
    return-object v4

    .line 540
    :cond_1
    if-eqz v1, :cond_0

    .line 544
    :cond_2
    iget v5, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v6, v2, 0x3

    shl-int/lit8 v6, v6, 0x2

    add-int v3, v5, v6

    .line 546
    .local v3, "offset2":I
    add-int/lit8 v5, v3, 0x3

    aget v1, v0, v5

    .line 548
    if-ne v1, v7, :cond_3

    .line 549
    aget v4, v0, v3

    if-ne p1, v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    if-ne v4, p2, :cond_4

    add-int/lit8 v4, v3, 0x2

    aget v4, v0, v4

    if-ne v4, p3, :cond_4

    .line 550
    iget-object v4, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v5, v3, 0x2

    aget-object v4, v4, v5

    goto :goto_0

    .line 552
    :cond_3
    if-eqz v1, :cond_0

    .line 555
    :cond_4
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(IIII)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public findName([II)Ljava/lang/String;
    .locals 10
    .param p1, "q"    # [I
    .param p2, "qlen"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 564
    const/4 v6, 0x4

    if-ge p2, v6, :cond_2

    .line 565
    const/4 v6, 0x3

    if-ne p2, v6, :cond_0

    .line 566
    aget v6, p1, v7

    aget v7, p1, v8

    aget v8, p1, v9

    invoke-virtual {p0, v6, v7, v8}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(III)Ljava/lang/String;

    move-result-object v6

    .line 598
    :goto_0
    return-object v6

    .line 568
    :cond_0
    if-ne p2, v9, :cond_1

    .line 569
    aget v6, p1, v7

    aget v7, p1, v8

    invoke-virtual {p0, v6, v7}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 571
    :cond_1
    aget v6, p1, v7

    invoke-virtual {p0, v6}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->findName(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 573
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->calcHash([II)I

    move-result v0

    .line 574
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_calcOffset(I)I

    move-result v4

    .line 576
    .local v4, "offset":I
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    .line 578
    .local v1, "hashArea":[I
    add-int/lit8 v6, v4, 0x3

    aget v2, v1, v6

    .line 580
    .local v2, "len":I
    aget v6, v1, v4

    if-ne v0, v6, :cond_3

    if-ne v2, p2, :cond_3

    .line 582
    add-int/lit8 v6, v4, 0x1

    aget v6, v1, v6

    invoke-direct {p0, p1, p2, v6}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 583
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v7, v4, 0x2

    aget-object v6, v6, v7

    goto :goto_0

    .line 586
    :cond_3
    if-nez v2, :cond_4

    .line 587
    const/4 v6, 0x0

    goto :goto_0

    .line 590
    :cond_4
    iget v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    shr-int/lit8 v7, v4, 0x3

    shl-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 592
    .local v5, "offset2":I
    add-int/lit8 v6, v5, 0x3

    aget v3, v1, v6

    .line 593
    .local v3, "len2":I
    aget v6, v1, v5

    if-ne v0, v6, :cond_5

    if-ne v3, p2, :cond_5

    .line 594
    add-int/lit8 v6, v5, 0x1

    aget v6, v1, v6

    invoke-direct {p0, p1, p2, v6}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_verifyLongName([III)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 595
    iget-object v6, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_names:[Ljava/lang/String;

    shr-int/lit8 v7, v5, 0x2

    aget-object v6, v6, v7

    goto :goto_0

    .line 598
    :cond_5
    invoke-direct {p0, v4, v0, p1, p2}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_findSecondary(II[II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public hashSeed()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    return v0
.end method

.method public makeChild(I)Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;
    .locals 6
    .param p1, "flags"    # I

    .prologue
    .line 307
    new-instance v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->INTERN_FIELD_NAMES:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v2

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_seed:I

    sget-object v1, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->FAIL_ON_SYMBOL_HASH_OVERFLOW:Lcom/fasterxml/jackson/core/JsonFactory$Feature;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/core/JsonFactory$Feature;->enabledIn(I)Z

    move-result v4

    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;-><init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;ZIZLcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V

    return-object v0
.end method

.method public maybeDirty()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public primaryCount()I
    .locals 4

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "count":I
    const/4 v2, 0x3

    .local v2, "offset":I
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    .local v1, "end":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 393
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v2

    if-eqz v3, :cond_0

    .line 394
    add-int/lit8 v0, v0, 0x1

    .line 392
    :cond_0
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 397
    :cond_1
    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->maybeDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_parent:Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;

    new-instance v1, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    invoke-direct {v1, p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;-><init>(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;)V

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->mergeChild(Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;)V

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashShared:Z

    .line 331
    :cond_0
    return-void
.end method

.method public secondaryCount()I
    .locals 4

    .prologue
    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "count":I
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_secondaryStart:I

    add-int/lit8 v2, v3, 0x3

    .line 407
    .local v2, "offset":I
    iget v1, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    .local v1, "end":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 408
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v2

    if-eqz v3, :cond_0

    .line 409
    add-int/lit8 v0, v0, 0x1

    .line 407
    :cond_0
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 412
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tableInfo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;

    iget v0, v0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer$TableInfo;->count:I

    .line 367
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    goto :goto_0
.end method

.method public spilloverCount()I
    .locals 2

    .prologue
    .line 436
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverEnd:I

    invoke-direct {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_spilloverStart()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public tertiaryCount()I
    .locals 4

    .prologue
    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "count":I
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_tertiaryStart:I

    add-int/lit8 v2, v3, 0x3

    .line 422
    .local v2, "offset":I
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    add-int v1, v2, v3

    .local v1, "end":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 423
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v2

    if-eqz v3, :cond_0

    .line 424
    add-int/lit8 v0, v0, 0x1

    .line 422
    :cond_0
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 427
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->primaryCount()I

    move-result v0

    .line 453
    .local v0, "pri":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->secondaryCount()I

    move-result v1

    .line 454
    .local v1, "sec":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->tertiaryCount()I

    move-result v3

    .line 455
    .local v3, "tert":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->spilloverCount()I

    move-result v2

    .line 456
    .local v2, "spill":I
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->totalCount()I

    move-result v4

    .line 457
    .local v4, "total":I
    const-string v5, "[%s: size=%d, hashSize=%d, %d/%d/%d/%d pri/sec/ter/spill (=%s), total:%d]"

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    add-int v8, v0, v1

    add-int/2addr v8, v3

    add-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public totalCount()I
    .locals 4

    .prologue
    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, "count":I
    const/4 v2, 0x3

    .local v2, "offset":I
    iget v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashSize:I

    shl-int/lit8 v1, v3, 0x3

    .local v1, "end":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 443
    iget-object v3, p0, Lcom/fasterxml/jackson/core/sym/ByteQuadsCanonicalizer;->_hashArea:[I

    aget v3, v3, v2

    if-eqz v3, :cond_0

    .line 444
    add-int/lit8 v0, v0, 0x1

    .line 442
    :cond_0
    add-int/lit8 v2, v2, 0x4

    goto :goto_0

    .line 447
    :cond_1
    return v0
.end method
