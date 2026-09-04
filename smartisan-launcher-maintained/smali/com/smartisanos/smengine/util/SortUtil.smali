.class public Lcom/smartisanos/smengine/util/SortUtil;
.super Ljava/lang/Object;
.source "SortUtil.java"


.field private static final INSERTION_SORT_THRESHOLD:I = 0x7


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gsort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 6
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "comp"    # Ljava/util/Comparator;

    .prologue
    .line 103
    const/4 v2, 0x1

    .line 104
    .local v2, "pos":I
    const/4 v0, 0x0

    .line 105
    .local v0, "last":I
    array-length v1, p0

    .line 107
    .local v1, "length":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 108
    aget-object v4, p0, v2

    add-int/lit8 v5, v2, -0x1

    aget-object v5, p0, v5

    invoke-interface {p1, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 109
    if-eqz v0, :cond_0

    .line 110
    move v2, v0

    .line 111
    const/4 v0, 0x0

    .line 113
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    aget-object v3, p0, v2

    .line 116
    .local v3, "tmp":Ljava/lang/Object;
    add-int/lit8 v4, v2, -0x1

    aget-object v4, p0, v4

    aput-object v4, p0, v2

    .line 117
    add-int/lit8 v4, v2, -0x1

    aput-object v3, p0, v4

    .line 119
    const/4 v4, 0x1

    if-le v2, v4, :cond_3

    .line 120
    if-nez v0, :cond_2

    .line 121
    move v0, v2

    .line 123
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 125
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v3    # "tmp":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Lcom/smartisanos/smengine/util/SortUtil$1;

    invoke-direct {v0}, Lcom/smartisanos/smengine/util/SortUtil$1;-><init>()V

    .line 188
    .local v0, "ic":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Float;>;"
    const/16 v3, 0x1f

    new-array v1, v3, [Ljava/lang/Float;

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const/high16 v4, 0x41000000    # 8.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const/high16 v4, 0x41100000    # 9.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const/high16 v4, 0x41300000    # 11.0f

    .line 189
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const/high16 v4, 0x41600000    # 14.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const/high16 v4, 0x41700000    # 15.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xe

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xf

    const/high16 v4, 0x41980000    # 19.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x10

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x11

    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x12

    const/high16 v4, 0x41800000    # 16.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x13

    const/high16 v4, 0x41880000    # 17.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x14

    const/high16 v4, 0x41a80000    # 21.0f

    .line 190
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const/high16 v4, 0x41b80000    # 23.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x17

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x18

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x19

    const/high16 v4, 0x41d80000    # 27.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    const/high16 v4, 0x41d00000    # 26.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x1b

    const/high16 v4, 0x41e80000    # 29.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x1c

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x1d

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x1e

    const/high16 v4, 0x41f80000    # 31.0f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    .line 191
    .local v1, "original":[Ljava/lang/Float;
    array-length v3, v1

    new-array v2, v3, [Ljava/lang/Float;

    .line 194
    .local v2, "sorted":[Ljava/lang/Float;
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/smartisanos/smengine/util/SortUtil;->test([Ljava/lang/Float;[Ljava/lang/Float;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private static merge([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 9
    .param p0, "src"    # [Ljava/lang/Object;
    .param p1, "dest"    # [Ljava/lang/Object;
    .param p2, "low"    # I
    .param p3, "middle"    # I
    .param p4, "high"    # I
    .param p5, "comp"    # Ljava/util/Comparator;

    .prologue
    .line 354
    add-int/lit8 v1, p3, -0x1

    .line 355
    .local v1, "leftEnd":I
    move v5, p2

    .line 356
    .local v5, "pos":I
    sub-int v7, p4, p2

    add-int/lit8 v4, v7, 0x1

    .local v4, "numElements":I
    move v6, v5

    .end local v5    # "pos":I
    .local v6, "pos":I
    move v3, p3

    .end local p3    # "middle":I
    .local v3, "middle":I
    move v2, p2

    .line 358
    .end local p2    # "low":I
    .local v2, "low":I
    :goto_0
    if-gt v2, v1, :cond_1

    if-gt v3, p4, :cond_1

    .line 359
    aget-object v7, p0, v2

    aget-object v8, p0, v3

    invoke-interface {p5, v7, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-gtz v7, :cond_0

    .line 360
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "low":I
    .restart local p2    # "low":I
    aget-object v7, p0, v2

    aput-object v7, p1, v6

    move v6, v5

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    move v2, p2

    .end local p2    # "low":I
    .restart local v2    # "low":I
    goto :goto_0

    .line 362
    :cond_0
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "middle":I
    .restart local p3    # "middle":I
    aget-object v7, p0, v3

    aput-object v7, p1, v6

    move v6, v5

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    move v3, p3

    .end local p3    # "middle":I
    .restart local v3    # "middle":I
    goto :goto_0

    .line 366
    :cond_1
    :goto_1
    if-gt v2, v1, :cond_2

    .line 367
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    add-int/lit8 p2, v2, 0x1

    .end local v2    # "low":I
    .restart local p2    # "low":I
    aget-object v7, p0, v2

    aput-object v7, p1, v6

    move v6, v5

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    move v2, p2

    .end local p2    # "low":I
    .restart local v2    # "low":I
    goto :goto_1

    .line 370
    :cond_2
    :goto_2
    if-gt v3, p4, :cond_3

    .line 371
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    add-int/lit8 p3, v3, 0x1

    .end local v3    # "middle":I
    .restart local p3    # "middle":I
    aget-object v7, p0, v3

    aput-object v7, p1, v6

    move v6, v5

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    move v3, p3

    .end local p3    # "middle":I
    .restart local v3    # "middle":I
    goto :goto_2

    .line 374
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v4, :cond_4

    .line 375
    aget-object v7, p1, p4

    aput-object v7, p0, p4

    .line 374
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p4, p4, -0x1

    goto :goto_3

    .line 377
    :cond_4
    return-void
.end method

.method public static msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 7
    .param p0, "src"    # [Ljava/lang/Object;
    .param p1, "dest"    # [Ljava/lang/Object;
    .param p2, "low"    # I
    .param p3, "high"    # I
    .param p4, "comp"    # Ljava/util/Comparator;

    .prologue
    .line 344
    if-ge p2, p3, :cond_0

    .line 345
    add-int v0, p2, p3

    div-int/lit8 v6, v0, 0x2

    .line 346
    .local v6, "center":I
    invoke-static {p0, p1, p2, v6, p4}, Lcom/smartisanos/smengine/util/SortUtil;->msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 347
    add-int/lit8 v0, v6, 0x1

    invoke-static {p0, p1, v0, p3, p4}, Lcom/smartisanos/smengine/util/SortUtil;->msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 348
    add-int/lit8 v3, v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/util/SortUtil;->merge([Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 350
    .end local v6    # "center":I
    :cond_0
    return-void
.end method

.method public static msort([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2
    .param p0, "src"    # [Ljava/lang/Object;
    .param p1, "dest"    # [Ljava/lang/Object;
    .param p2, "comp"    # Ljava/util/Comparator;

    .prologue
    .line 330
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/smartisanos/smengine/util/SortUtil;->msort([Ljava/lang/Object;[Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 331
    return-void
.end method

.method public static qsort([IIILjava/util/Comparator;)V
    .locals 6
    .param p0, "a"    # [I
    .param p1, "lo0"    # I
    .param p2, "hi0"    # I
    .param p3, "comp"    # Ljava/util/Comparator;

    .prologue
    .line 271
    if-gt p2, p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    sub-int v4, p2, p1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 279
    aget v4, p0, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget v5, p0, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    .line 280
    aget v3, p0, p1

    .line 281
    .local v3, "t":I
    aget v4, p0, p2

    aput v4, p0, p1

    .line 282
    aput v3, p0, p2

    goto :goto_0

    .line 288
    .end local v3    # "t":I
    :cond_2
    add-int v4, p1, p2

    div-int/lit8 v4, v4, 0x2

    aget v2, p0, v4

    .line 291
    .local v2, "mid":I
    add-int/lit8 v1, p1, -0x1

    .local v1, "lo":I
    add-int/lit8 v0, p2, 0x1

    .line 297
    .local v0, "hi":I
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    aget v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 301
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v0, v0, -0x1

    aget v5, p0, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_4

    .line 304
    if-le v0, v1, :cond_5

    .line 305
    aget v3, p0, v1

    .line 306
    .restart local v3    # "t":I
    aget v4, p0, v0

    aput v4, p0, v1

    .line 307
    aput v3, p0, v0

    goto :goto_1

    .line 315
    .end local v3    # "t":I
    :cond_5
    add-int/lit8 v4, v1, -0x1

    if-ge p1, v4, :cond_6

    .line 316
    add-int/lit8 v4, v1, -0x1

    invoke-static {p0, p1, v4, p3}, Lcom/smartisanos/smengine/util/SortUtil;->qsort([IIILjava/util/Comparator;)V

    .line 321
    :cond_6
    add-int/lit8 v4, v0, 0x1

    if-ge v4, p2, :cond_0

    .line 322
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4, p2, p3}, Lcom/smartisanos/smengine/util/SortUtil;->qsort([IIILjava/util/Comparator;)V

    goto :goto_0
.end method

.method public static qsort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 6
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo0"    # I
    .param p2, "hi0"    # I
    .param p3, "comp"    # Ljava/util/Comparator;

    .prologue
    .line 214
    if-gt p2, p1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    sub-int v4, p2, p1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 222
    aget-object v4, p0, p2

    aget-object v5, p0, p1

    invoke-interface {p3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_0

    .line 223
    aget-object v3, p0, p1

    .line 224
    .local v3, "t":Ljava/lang/Object;
    aget-object v4, p0, p2

    aput-object v4, p0, p1

    .line 225
    aput-object v3, p0, p2

    goto :goto_0

    .line 231
    .end local v3    # "t":Ljava/lang/Object;
    :cond_2
    add-int v4, p1, p2

    div-int/lit8 v4, v4, 0x2

    aget-object v2, p0, v4

    .line 234
    .local v2, "mid":Ljava/lang/Object;
    add-int/lit8 v1, p1, -0x1

    .local v1, "lo":I
    add-int/lit8 v0, p2, 0x1

    .line 240
    .local v0, "hi":I
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    aget-object v4, p0, v1

    invoke-interface {p3, v4, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 244
    :cond_4
    add-int/lit8 v0, v0, -0x1

    aget-object v4, p0, v0

    invoke-interface {p3, v2, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_4

    .line 247
    if-le v0, v1, :cond_5

    .line 248
    aget-object v3, p0, v1

    .line 249
    .restart local v3    # "t":Ljava/lang/Object;
    aget-object v4, p0, v0

    aput-object v4, p0, v1

    .line 250
    aput-object v3, p0, v0

    goto :goto_1

    .line 258
    .end local v3    # "t":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v4, v1, -0x1

    if-ge p1, v4, :cond_6

    .line 259
    add-int/lit8 v4, v1, -0x1

    invoke-static {p0, p1, v4, p3}, Lcom/smartisanos/smengine/util/SortUtil;->qsort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 264
    :cond_6
    add-int/lit8 v4, v0, 0x1

    if-ge v4, p2, :cond_0

    .line 265
    add-int/lit8 v4, v0, 0x1

    invoke-static {p0, v4, p2, p3}, Lcom/smartisanos/smengine/util/SortUtil;->qsort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_0
.end method

.method public static qsort([Ljava/lang/Object;ILjava/util/Comparator;)V
    .locals 5
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "length"    # I
    .param p2, "comp"    # Ljava/util/Comparator;

    .prologue
    .line 76
    const/4 v1, 0x1

    .line 77
    .local v1, "pos":I
    const/4 v0, 0x0

    .line 79
    .local v0, "last":I
    :goto_0
    if-ge v1, p1, :cond_4

    .line 80
    aget-object v3, p0, v1

    add-int/lit8 v4, v1, -0x1

    aget-object v4, p0, v4

    invoke-interface {p2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 81
    if-eqz v0, :cond_0

    .line 82
    move v1, v0

    .line 83
    const/4 v0, 0x0

    .line 85
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    aget-object v2, p0, v1

    .line 88
    .local v2, "tmp":Ljava/lang/Object;
    add-int/lit8 v3, v1, -0x1

    aget-object v3, p0, v3

    aput-object v3, p0, v1

    .line 89
    add-int/lit8 v3, v1, -0x1

    aput-object v2, p0, v3

    .line 91
    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    .line 92
    if-nez v0, :cond_2

    .line 93
    move v0, v1

    .line 95
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 97
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "tmp":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method public static qsort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "comp"    # Ljava/util/Comparator;

    .prologue
    .line 202
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1, p1}, Lcom/smartisanos/smengine/util/SortUtil;->qsort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 203
    return-void
.end method

.method private static test([Ljava/lang/Float;[Ljava/lang/Float;Ljava/util/Comparator;)V
    .locals 12
    .param p0, "original"    # [Ljava/lang/Float;
    .param p1, "sorted"    # [Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Float;",
            "[",
            "Ljava/lang/Float;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "ic":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Float;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 149
    .local v4, "time":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const v3, 0xf4240

    if-ge v2, v3, :cond_0

    .line 150
    const/4 v3, 0x0

    const/4 v6, 0x0

    array-length v7, p0

    invoke-static {p0, v3, p1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    invoke-static {p1, p2}, Lcom/smartisanos/smengine/util/SortUtil;->gsort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 154
    .local v0, "dt":J
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GSort "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    long-to-double v8, v0

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 157
    const/4 v2, 0x0

    :goto_1
    const v3, 0xf4240

    if-ge v2, v3, :cond_1

    .line 158
    const/4 v3, 0x0

    const/4 v6, 0x0

    array-length v7, p0

    invoke-static {p0, v3, p1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    invoke-static {p1, p2}, Lcom/smartisanos/smengine/util/SortUtil;->qsort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 161
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 162
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QSort "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    long-to-double v8, v0

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 165
    const/4 v2, 0x0

    :goto_2
    const v3, 0xf4240

    if-ge v2, v3, :cond_2

    .line 166
    const/4 v3, 0x0

    const/4 v6, 0x0

    array-length v7, p0

    invoke-static {p0, v3, p1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    invoke-static {p0, p1, p2}, Lcom/smartisanos/smengine/util/SortUtil;->msort([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 169
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 170
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSort "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    long-to-double v8, v0

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 173
    const/4 v2, 0x0

    :goto_3
    const v3, 0xf4240

    if-ge v2, v3, :cond_3

    .line 174
    const/4 v3, 0x0

    const/4 v6, 0x0

    array-length v7, p0

    invoke-static {p0, v3, p1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 175
    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 177
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 178
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ASort "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    long-to-double v8, v0

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    return-void
.end method
