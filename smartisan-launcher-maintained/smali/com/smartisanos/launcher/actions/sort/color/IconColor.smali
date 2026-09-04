.class public Lcom/smartisanos/launcher/actions/sort/color/IconColor;
.super Ljava/lang/Object;
.source "IconColor.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;,
        Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;,
        Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;,
        Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    }
.end annotation


.field public static final COLOR_GROUP:[[Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

.field public static final colorComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    const-class v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->log:Lcom/smartisanos/launcher/LOG;

    .line 52
    const/4 v0, 0x7

    new-array v0, v0, [[Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    new-array v1, v6, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    sget-object v2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->RED:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->ORANGE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v5, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    sget-object v2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->YELLOW:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v6, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    sget-object v2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->GREEN:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->DARK_GREEN:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v3, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    sget-object v2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BLUE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->PURPLE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->PINK:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v5, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    sget-object v3, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BLACK:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    sget-object v3, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->GRAY:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v3, v2, v4

    sget-object v3, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->WHITE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    sget-object v3, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BROWN:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->COLOR_GROUP:[[Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    .line 347
    new-instance v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor$1;

    invoke-direct {v0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$1;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->colorComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static RGB2HSL(I[F)V
    .locals 11
    .param p0, "color"    # I
    .param p1, "hsl"    # [F

    .prologue
    const/high16 v10, 0x437f0000    # 255.0f

    const/high16 v9, 0x42700000    # 60.0f

    .line 624
    shr-int/lit8 v8, p0, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    div-float v6, v8, v10

    .line 625
    .local v6, "r":F
    shr-int/lit8 v8, p0, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    div-float v1, v8, v10

    .line 626
    .local v1, "g":F
    and-int/lit16 v8, p0, 0xff

    int-to-float v8, v8

    div-float v0, v8, v10

    .line 627
    .local v0, "b":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 628
    .local v4, "max":F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 630
    .local v5, "min":F
    cmpl-float v8, v4, v5

    if-nez v8, :cond_0

    .line 631
    const/4 v2, 0x0

    .line 641
    .local v2, "h":F
    :goto_0
    const/high16 v8, 0x3f000000    # 0.5f

    add-float v9, v4, v5

    mul-float v3, v8, v9

    .line 651
    .local v3, "l":F
    const v8, -0x48d83a54    # -1.0E-5f

    cmpg-float v8, v8, v4

    if-gez v8, :cond_4

    const v8, 0x3727c5ac    # 1.0E-5f

    cmpg-float v8, v4, v8

    if-gez v8, :cond_4

    .line 652
    const/4 v7, 0x0

    .line 656
    .local v7, "s":F
    :goto_1
    const/4 v8, 0x0

    aput v2, p1, v8

    .line 657
    const/4 v8, 0x1

    aput v7, p1, v8

    .line 658
    const/4 v8, 0x2

    aput v3, p1, v8

    .line 659
    return-void

    .line 632
    .end local v2    # "h":F
    .end local v3    # "l":F
    .end local v7    # "s":F
    :cond_0
    cmpl-float v8, v4, v6

    if-nez v8, :cond_1

    cmpl-float v8, v1, v0

    if-ltz v8, :cond_1

    .line 633
    sub-float v8, v1, v0

    mul-float/2addr v8, v9

    sub-float v9, v4, v5

    div-float/2addr v8, v9

    const/4 v9, 0x0

    add-float v2, v8, v9

    .restart local v2    # "h":F
    goto :goto_0

    .line 634
    .end local v2    # "h":F
    :cond_1
    cmpl-float v8, v4, v6

    if-nez v8, :cond_2

    cmpg-float v8, v1, v0

    if-gez v8, :cond_2

    .line 635
    sub-float v8, v1, v0

    mul-float/2addr v8, v9

    sub-float v9, v4, v5

    div-float/2addr v8, v9

    const/high16 v9, 0x43b40000    # 360.0f

    add-float v2, v8, v9

    .restart local v2    # "h":F
    goto :goto_0

    .line 636
    .end local v2    # "h":F
    :cond_2
    cmpl-float v8, v4, v1

    if-nez v8, :cond_3

    .line 637
    sub-float v8, v0, v6

    mul-float/2addr v8, v9

    sub-float v9, v4, v5

    div-float/2addr v8, v9

    const/high16 v9, 0x42f00000    # 120.0f

    add-float v2, v8, v9

    .restart local v2    # "h":F
    goto :goto_0

    .line 639
    .end local v2    # "h":F
    :cond_3
    sub-float v8, v6, v1

    mul-float/2addr v8, v9

    sub-float v9, v4, v5

    div-float/2addr v8, v9

    const/high16 v9, 0x43700000    # 240.0f

    add-float v2, v8, v9

    .restart local v2    # "h":F
    goto :goto_0

    .line 654
    .restart local v3    # "l":F
    :cond_4
    sub-float v8, v4, v5

    div-float v7, v8, v4

    .restart local v7    # "s":F
    goto :goto_1
.end method

.method static synthetic access$000(I[F)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # [F

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->RGB2HSL(I[F)V

    return-void
.end method

.method public static calculateIconColor(Landroid/graphics/Bitmap;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 662
    if-nez p0, :cond_0

    .line 663
    const/4 v0, 0x0

    .line 667
    :goto_0
    return-object v0

    .line 665
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->scaleImg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 666
    .local v1, "scaledImg":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->getMajorColor(Landroid/graphics/Bitmap;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v0

    .line 667
    .local v0, "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    goto :goto_0
.end method

.method public static getHue(I[F)Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    .locals 10
    .param p0, "color"    # I
    .param p1, "hsl"    # [F

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0xff

    .line 354
    shr-int/lit8 v8, p0, 0x18

    and-int/lit16 v0, v8, 0xff

    .line 355
    .local v0, "a":I
    shr-int/lit8 v8, p0, 0x10

    and-int/lit16 v5, v8, 0xff

    .line 356
    .local v5, "r":I
    shr-int/lit8 v8, p0, 0x8

    and-int/lit16 v2, v8, 0xff

    .line 357
    .local v2, "g":I
    and-int/lit16 v1, p0, 0xff

    .line 358
    .local v1, "b":I
    if-ge v0, v9, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-object v7

    .line 361
    :cond_1
    add-int v8, v5, v2

    add-int/2addr v8, v1

    if-nez v8, :cond_2

    .line 362
    if-ne v0, v9, :cond_2

    .line 363
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BLACK:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto :goto_0

    .line 367
    :cond_2
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->RGB2HSL(I[F)V

    .line 368
    const/4 v8, 0x0

    aget v3, p1, v8

    .line 369
    .local v3, "h":F
    const/4 v8, 0x1

    aget v6, p1, v8

    .line 370
    .local v6, "s":F
    const/4 v8, 0x2

    aget v4, p1, v8

    .line 372
    .local v4, "l":F
    invoke-static {v3, v6, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->isSkintone(FFF)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 373
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BROWN:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto :goto_0

    .line 375
    :cond_3
    invoke-static {v3, v6, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->isBlack(FFF)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 376
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BLACK:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto :goto_0

    .line 378
    :cond_4
    invoke-static {v3, v6, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->isGray(FFF)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 379
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->GRAY:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto :goto_0

    .line 381
    :cond_5
    invoke-static {v3, v6, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->isPink(FFF)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 382
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->PURPLE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto :goto_0

    .line 384
    :cond_6
    invoke-static {v3, v6, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->isBrown(FFF)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 385
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BROWN:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto :goto_0

    .line 387
    :cond_7
    invoke-static {v3, v6, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->isWhite(FFF)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 388
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->WHITE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto :goto_0

    .line 390
    :cond_8
    invoke-static {v3, v6, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->isRed(FFF)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 391
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->RED:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto :goto_0

    .line 393
    :cond_9
    invoke-static {v3, v6, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->isOrange(FFF)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 394
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->ORANGE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto :goto_0

    .line 396
    :cond_a
    invoke-static {v3, v6, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->isYellow(FFF)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 397
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->YELLOW:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto :goto_0

    .line 399
    :cond_b
    invoke-static {v3, v6, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->isPaleGreen(FFF)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 400
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->GREEN:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto :goto_0

    .line 402
    :cond_c
    invoke-static {v3, v6, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->isGreen(FFF)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 403
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->GREEN:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto :goto_0

    .line 405
    :cond_d
    invoke-static {v3, v6, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->isDarkGreen(FFF)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 406
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->DARK_GREEN:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto/16 :goto_0

    .line 408
    :cond_e
    invoke-static {v3, v6, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->isBlue(FFF)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 409
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BLUE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto/16 :goto_0

    .line 411
    :cond_f
    invoke-static {v3, v6, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->isPurple(FFF)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 412
    sget-object v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->PURPLE:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    goto/16 :goto_0
.end method

.method public static getHueByName(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    .locals 9
    .param p0, "colorName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 63
    if-eqz p0, :cond_4

    .line 64
    sget-object v5, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->COLOR_GROUP:[[Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v5, v4

    .line 65
    .local v0, "group":[Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    if-nez v0, :cond_1

    .line 64
    :cond_0
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 68
    :cond_1
    array-length v7, v0

    move v2, v3

    :goto_1
    if-ge v2, v7, :cond_0

    aget-object v1, v0, v2

    .line 69
    .local v1, "hue":Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    if-nez v1, :cond_3

    .line 68
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 78
    .end local v0    # "group":[Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    .end local v1    # "hue":Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    :goto_2
    return-object v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static getMajorColor(Landroid/graphics/Bitmap;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .locals 30
    .param p0, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 296
    const/4 v13, 0x0

    .line 297
    .local v13, "info":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    if-nez p0, :cond_1

    .line 298
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_0

    sget-object v25, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->log:Lcom/smartisanos/launcher/LOG;

    const-string v26, "A140"

    const-string v27, "getMajorColor error 1"

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v14, v13

    .line 344
    .end local v13    # "info":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .local v14, "info":Ljava/lang/Object;
    :goto_0
    return-object v14

    .line 301
    .end local v14    # "info":Ljava/lang/Object;
    .restart local v13    # "info":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 302
    .local v20, "time1":J
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    .line 303
    .local v24, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 304
    .local v9, "height":I
    new-instance v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;

    invoke-direct {v7}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;-><init>()V

    .line 305
    .local v7, "colorCount":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v10, v0, [F

    .line 307
    .local v10, "hsl_buf":[F
    sget v5, Lcom/smartisanos/launcher/data/Constants;->icon_resize_area:F

    .line 308
    .local v5, "area":F
    const/16 v19, 0x0

    .line 309
    .local v19, "transCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move/from16 v0, v24

    if-ge v12, v0, :cond_5

    .line 310
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    if-ge v15, v9, :cond_4

    .line 311
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v17

    .line 312
    .local v17, "pixel":I
    shr-int/lit8 v25, v17, 0x18

    move/from16 v0, v25

    and-int/lit16 v4, v0, 0xff

    .line 313
    .local v4, "alpha":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ge v4, v0, :cond_2

    .line 314
    add-int/lit8 v19, v19, 0x1

    .line 316
    :cond_2
    move/from16 v0, v17

    invoke-static {v0, v10}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->getHue(I[F)Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    move-result-object v11

    .line 317
    .local v11, "hueArea":Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    if-nez v11, :cond_3

    .line 310
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 320
    :cond_3
    invoke-virtual {v11}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->name()Ljava/lang/String;

    move-result-object v25

    move/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;->readPixel(ILjava/lang/String;)V

    goto :goto_3

    .line 309
    .end local v4    # "alpha":I
    .end local v11    # "hueArea":Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    .end local v17    # "pixel":I
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 323
    .end local v15    # "j":I
    :cond_5
    invoke-virtual {v7}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;->getMaxCountColor()Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;

    move-result-object v6

    .line 324
    .local v6, "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;
    if-nez v6, :cond_7

    .line 325
    sget-object v25, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->log:Lcom/smartisanos/launcher/LOG;

    const-string v26, "DEBUG"

    const-string v27, "no color was found !!!"

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v13, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .end local v13    # "info":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    sget-object v25, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->BLACK:Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;->name()Ljava/lang/String;

    move-result-object v25

    const/high16 v26, -0x1000000

    const/16 v27, 0x1

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;-><init>(Ljava/lang/String;III)V

    .line 327
    .restart local v13    # "info":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    mul-int v26, v24, v9

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    cmpg-float v25, v25, v5

    if-gez v25, :cond_6

    .line 328
    const/16 v25, 0x1

    move/from16 v0, v25

    iput-boolean v0, v13, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->resize:Z

    :cond_6
    move-object v14, v13

    .line 330
    .restart local v14    # "info":Ljava/lang/Object;
    goto/16 :goto_0

    .line 332
    .end local v14    # "info":Ljava/lang/Object;
    :cond_7
    iget-object v8, v6, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->name:Ljava/lang/String;

    .line 333
    .local v8, "colorName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->generateColorByArgb()I

    move-result v16

    .line 335
    .local v16, "majorColor":I
    new-instance v13, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .end local v13    # "info":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    iget v0, v6, Lcom/smartisanos/launcher/actions/sort/color/IconColor$Count;->colorCount:I

    move/from16 v25, v0

    iget v0, v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorCount;->count:I

    move/from16 v26, v0

    move/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v13, v8, v0, v1, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;-><init>(Ljava/lang/String;III)V

    .line 336
    .restart local v13    # "info":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    const/16 v18, 0x0

    .line 337
    .local v18, "showTime":Z
    if-eqz v18, :cond_8

    .line 338
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 339
    .local v22, "time2":J
    sget-boolean v25, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v25, :cond_8

    sget-object v25, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->log:Lcom/smartisanos/launcher/LOG;

    const-string v26, "A140"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "getMajorColor spend time ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sub-long v28, v22, v20

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]ms"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .end local v22    # "time2":J
    :cond_8
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    mul-int v26, v24, v9

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    cmpg-float v25, v25, v5

    if-gez v25, :cond_9

    .line 342
    const/16 v25, 0x1

    move/from16 v0, v25

    iput-boolean v0, v13, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->resize:Z

    :cond_9
    move-object v14, v13

    .line 344
    .restart local v14    # "info":Ljava/lang/Object;
    goto/16 :goto_0
.end method

.method private static inArea(FFF)Z
    .locals 1
    .param p0, "min"    # F
    .param p1, "value"    # F
    .param p2, "max"    # F

    .prologue
    .line 617
    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    cmpg-float v0, p1, p2

    if-gtz v0, :cond_0

    .line 618
    const/4 v0, 0x1

    .line 620
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static inAreaNoMax(FFF)Z
    .locals 1
    .param p0, "min"    # F
    .param p1, "value"    # F
    .param p2, "max"    # F

    .prologue
    .line 603
    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    .line 604
    const/4 v0, 0x1

    .line 606
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static inAreaNoMin(FFF)Z
    .locals 1
    .param p0, "min"    # F
    .param p1, "value"    # F
    .param p2, "max"    # F

    .prologue
    .line 610
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    cmpg-float v0, p1, p2

    if-gtz v0, :cond_0

    .line 611
    const/4 v0, 0x1

    .line 613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isBlack(FFF)Z
    .locals 7
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "lightness"    # F

    .prologue
    const v6, 0x3e6b851f    # 0.23f

    const v5, 0x3e4ccccd    # 0.2f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 570
    invoke-static {v3, p1, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v3, p2, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v0

    .line 573
    :cond_1
    const/high16 v1, 0x433c0000    # 188.0f

    const v2, 0x43928000    # 293.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4, p1, v5}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v3, p2, v6}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    :cond_2
    const/high16 v1, 0x433c0000    # 188.0f

    const v2, 0x43928000    # 293.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v5, p1, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v3, p2, v6}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isBlue(FFF)Z
    .locals 6
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "lightness"    # F

    .prologue
    const v5, 0x3e6b851f    # 0.23f

    const v4, 0x3e4ccccd    # 0.2f

    const/4 v0, 0x1

    const/high16 v3, 0x43700000    # 240.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 528
    const/high16 v1, 0x433c0000    # 188.0f

    invoke-static {v1, p0, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, p1, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v1, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    :cond_0
    :goto_0
    return v0

    .line 531
    :cond_1
    const/high16 v1, 0x433c0000    # 188.0f

    invoke-static {v1, p0, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v5, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 534
    :cond_2
    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {v3, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3f59999a    # 0.85f

    invoke-static {v1, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v5, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 537
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isBrown(FFF)Z
    .locals 6
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "lightness"    # F

    .prologue
    const/high16 v5, 0x42140000    # 37.0f

    const v4, 0x3dcccccd    # 0.1f

    const v2, 0x3ecccccd    # 0.4f

    const/4 v0, 0x1

    const v3, 0x3e19999a    # 0.15f

    .line 465
    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v5, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v4, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v3, p2, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v0

    .line 468
    :cond_1
    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v5, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v2, p1, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v3, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    :cond_2
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1, p0, v5}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v2, p1, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v3, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    :cond_3
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1, p0, v5}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v4, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v3, p2, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    :cond_4
    const/high16 v1, 0x43af0000    # 350.0f

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v4, p1, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v3, p2, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 480
    :cond_5
    const/4 v1, 0x0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_6

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v4, p1, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v3, p2, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    :cond_6
    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v3, p2, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static isDarkGreen(FFF)Z
    .locals 3
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "lightness"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 521
    const/high16 v0, 0x43160000    # 150.0f

    const/high16 v1, 0x433c0000    # 188.0f

    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3e19999a    # 0.15f

    invoke-static {v0, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x1

    .line 524
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGray(FFF)Z
    .locals 4
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "lightness"    # F

    .prologue
    const/4 v0, 0x1

    const v3, 0x3dcccccd    # 0.1f

    .line 583
    const/4 v1, 0x0

    invoke-static {v1, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v1, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 589
    :cond_0
    :goto_0
    return v0

    .line 586
    :cond_1
    const/high16 v1, 0x433c0000    # 188.0f

    const v2, 0x43928000    # 293.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v3, p1, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v1, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 589
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGreen(FFF)Z
    .locals 3
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "lightness"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 514
    const/high16 v0, 0x42b40000    # 90.0f

    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3e19999a    # 0.15f

    invoke-static {v0, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 515
    const/4 v0, 0x1

    .line 517
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOrange(FFF)Z
    .locals 4
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "lightness"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    .line 490
    const/high16 v0, 0x41800000    # 16.0f

    const/high16 v1, 0x42140000    # 37.0f

    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    const/4 v0, 0x1

    .line 493
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPaleGreen(FFF)Z
    .locals 3
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "lightness"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 507
    const/high16 v0, 0x42680000    # 58.0f

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3e19999a    # 0.15f

    invoke-static {v0, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    const/4 v0, 0x1

    .line 510
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPink(FFF)Z
    .locals 7
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "lightness"    # F

    .prologue
    const v6, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f000000    # 0.5f

    const v4, 0x3dcccccd    # 0.1f

    const/4 v0, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 437
    const/4 v1, 0x0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v4, p1, v5}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v1, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    :cond_0
    :goto_0
    return v0

    .line 440
    :cond_1
    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4, p1, v5}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v1, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    :cond_2
    const/high16 v1, 0x438c0000    # 280.0f

    const v2, 0x43928000    # 293.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3f266666    # 0.65f

    invoke-static {v4, p1, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3f666666    # 0.9f

    invoke-static {v1, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 446
    :cond_3
    const v1, 0x43928000    # 293.0f

    const/high16 v2, 0x43aa0000    # 340.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v4, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v5, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    :cond_4
    const/high16 v1, 0x43aa0000    # 340.0f

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x3f51eb85    # 0.82f

    invoke-static {v5, p1, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v6, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    :cond_5
    const/high16 v1, 0x43aa0000    # 340.0f

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v4, p1, v5}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v5, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    :cond_6
    const/high16 v1, 0x43af0000    # 350.0f

    const v2, 0x43b18000    # 355.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_7

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v4, p1, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v6, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    :cond_7
    const v1, 0x43b18000    # 355.0f

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x3f266666    # 0.65f

    invoke-static {v4, p1, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v6, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static isPurple(FFF)Z
    .locals 6
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "lightness"    # F

    .prologue
    const v5, 0x3dcccccd    # 0.1f

    const v4, 0x43928000    # 293.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 541
    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {v1, p0, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f59999a    # 0.85f

    invoke-static {v1, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3e6b851f    # 0.23f

    invoke-static {v1, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v0

    .line 544
    :cond_1
    const/high16 v1, 0x43700000    # 240.0f

    invoke-static {v1, p0, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v5, p1, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v1, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    :cond_2
    const/high16 v1, 0x43700000    # 240.0f

    invoke-static {v1, p0, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {v1, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3e6b851f    # 0.23f

    invoke-static {v1, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 550
    :cond_3
    const/high16 v1, 0x43aa0000    # 340.0f

    invoke-static {v4, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v5, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x3e19999a    # 0.15f

    invoke-static {v1, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 553
    :cond_4
    const/high16 v1, 0x43aa0000    # 340.0f

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x3f51eb85    # 0.82f

    invoke-static {v3, p1, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x3e19999a    # 0.15f

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v1, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    :cond_5
    const/high16 v1, 0x43aa0000    # 340.0f

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v5, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x3e19999a    # 0.15f

    invoke-static {v1, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static isRed(FFF)Z
    .locals 7
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "lightness"    # F

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    const v5, 0x3e19999a    # 0.15f

    const v4, 0x3e99999a    # 0.3f

    const/4 v0, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 418
    const/high16 v1, 0x43aa0000    # 340.0f

    const/high16 v2, 0x43af0000    # 350.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f51eb85    # 0.82f

    invoke-static {v1, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v5, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 421
    :cond_1
    const/high16 v1, 0x43af0000    # 350.0f

    const v2, 0x43b18000    # 355.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v1, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v5, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    :cond_2
    const v1, 0x43b18000    # 355.0f

    const/high16 v2, 0x43b40000    # 360.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3f266666    # 0.65f

    invoke-static {v1, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v4, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    :cond_3
    const/4 v1, 0x0

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v6, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v4, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    :cond_4
    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x41800000    # 16.0f

    invoke-static {v1, p0, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v6, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {v4, p2, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSkintone(FFF)Z
    .locals 6
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "lightness"    # F

    .prologue
    const/4 v0, 0x1

    const/high16 v5, 0x42140000    # 37.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const v2, 0x3dcccccd    # 0.1f

    .line 593
    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1, p0, v5}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-static {v1, p2, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMin(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    :cond_0
    :goto_0
    return v0

    .line 596
    :cond_1
    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v5, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2, p1, v3}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v1, p2, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMin(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWhite(FFF)Z
    .locals 2
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "lightness"    # F

    .prologue
    .line 563
    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v0, p1, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f666666    # 0.9f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p2, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    const/4 v0, 0x1

    .line 566
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isYellow(FFF)Z
    .locals 5
    .param p0, "hue"    # F
    .param p1, "saturation"    # F
    .param p2, "lightness"    # F

    .prologue
    const/4 v0, 0x1

    const/high16 v4, 0x42400000    # 48.0f

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 497
    const/high16 v1, 0x42680000    # 58.0f

    invoke-static {v4, p0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3e19999a    # 0.15f

    invoke-static {v1, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return v0

    .line 500
    :cond_1
    const/high16 v1, 0x42140000    # 37.0f

    invoke-static {v1, p0, v4}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inAreaNoMax(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v3, p1, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v3, p2, v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->inArea(FFF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static scaleImg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "origin"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 671
    const/16 v6, 0x40

    .line 672
    .local v6, "width":I
    const/16 v2, 0x40

    .line 673
    .local v2, "height":I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 674
    .local v4, "scaled":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 675
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 676
    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 677
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 678
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 679
    .local v5, "w":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 680
    .local v1, "h":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v9, v9, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v9, v9, v6, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, p0, v7, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 681
    return-object v4
.end method

.method public static splitByColor(Ljava/util/List;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v3, 0x0

    .line 83
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v4, v3

    .line 103
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/Map<Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    :goto_0
    return-object v4

    .line 86
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/Map<Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 87
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 88
    .local v1, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-nez v1, :cond_2

    .line 89
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "splitByColor error by item is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    :cond_2
    iget-object v6, v1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->getHUE()Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    move-result-object v0

    .line 92
    .local v0, "hue":Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    if-nez v0, :cond_3

    .line 93
    sget-object v5, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "item.color = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    invoke-virtual {v8}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "splitByColor hue is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    :cond_3
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 97
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-nez v2, :cond_4

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_4
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "hue":Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    .end local v1    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_5
    move-object v4, v3

    .line 103
    .restart local v4    # "map":Ljava/util/HashMap;, "Ljava/util/Map<Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    goto :goto_0
.end method
