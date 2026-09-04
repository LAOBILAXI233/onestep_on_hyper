.class public final Lcom/smartisanos/smengine/math/FastMath;
.super Ljava/lang/Object;
.source "FastMath.java"


.field public static final DBL_EPSILON:D = 2.220446049250313E-16

.field public static final DEG_TO_RAD:F = 0.017453292f

.field public static final FLT_EPSILON:F = 1.1920929E-7f

.field public static final HALF_PI:F = 1.5707964f

.field public static final INV_PI:F = 0.31830987f

.field public static final INV_TWO_PI:F = 0.15915494f

.field public static final ONE_THIRD:F = 0.33333334f

.field public static final PI:F = 3.1415927f

.field public static final QUARTER_PI:F = 0.7853982f

.field public static final RAD_TO_DEG:F = 57.295776f

.field public static final TWO_PI:F = 6.2831855f

.field public static final ZERO_TOLERANCE:F = 1.0E-4f

.field public static final rand:Ljava/util/Random;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/smartisanos/smengine/math/FastMath;->rand:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static abs(F)F
    .locals 1
    .param p0, "fValue"    # F

    .prologue
    .line 522
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 523
    neg-float p0, p0

    .line 525
    .end local p0    # "fValue":F
    :cond_0
    return p0
.end method

.method public static acos(F)F
    .locals 2
    .param p0, "fValue"    # F

    .prologue
    .line 422
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v0, p0

    if-gez v0, :cond_1

    .line 423
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 424
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 430
    :goto_0
    return v0

    .line 427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 430
    :cond_1
    const v0, 0x40490fdb    # (float)Math.PI

    goto :goto_0
.end method

.method public static asin(F)F
    .locals 2
    .param p0, "fValue"    # F

    .prologue
    .line 443
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, v0, p0

    if-gez v0, :cond_1

    .line 444
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    .line 445
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 451
    :goto_0
    return v0

    .line 448
    :cond_0
    const v0, 0x3fc90fdb

    goto :goto_0

    .line 451
    :cond_1
    const v0, -0x4036f025

    goto :goto_0
.end method

.method public static atan(F)F
    .locals 2
    .param p0, "fValue"    # F

    .prologue
    .line 461
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static atan2(FF)F
    .locals 4
    .param p0, "fY"    # F
    .param p1, "fX"    # F

    .prologue
    .line 472
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static cartesianToSpherical(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5
    .param p0, "cartCoords"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/4 v4, 0x0

    .line 788
    if-nez p1, :cond_0

    .line 789
    new-instance p1, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p1    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 791
    .restart local p1    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 792
    .local v0, "x":F
    cmpl-float v1, v0, v4

    if-nez v1, :cond_1

    .line 793
    const/high16 v0, 0x34000000

    .line 795
    :cond_1
    mul-float v1, v0, v0

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v1

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 798
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    div-float/2addr v1, v0

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->atan(F)F

    move-result v1

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 799
    cmpg-float v1, v0, v4

    if-gez v1, :cond_2

    .line 800
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const v2, 0x40490fdb    # (float)Math.PI

    add-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 802
    :cond_2
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->asin(F)F

    move-result v1

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 803
    return-object p1
.end method

.method public static cartesianZToSpherical(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5
    .param p0, "cartCoords"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    const/4 v4, 0x0

    .line 830
    if-nez p1, :cond_0

    .line 831
    new-instance p1, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p1    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 833
    .restart local p1    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 834
    .local v0, "x":F
    cmpl-float v1, v0, v4

    if-nez v1, :cond_1

    .line 835
    const/high16 v0, 0x34000000

    .line 837
    :cond_1
    mul-float v1, v0, v0

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v3, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v1

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 840
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    div-float/2addr v1, v0

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->atan(F)F

    move-result v1

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 841
    cmpg-float v1, v0, v4

    if-gez v1, :cond_2

    .line 842
    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const v2, 0x40490fdb    # (float)Math.PI

    add-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 844
    :cond_2
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->asin(F)F

    move-result v1

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 845
    return-object p1
.end method

.method public static ceil(F)F
    .locals 2
    .param p0, "fValue"    # F

    .prologue
    .line 482
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "input"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 895
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "min":F
    :goto_0
    return p1

    .restart local p1    # "min":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static computeNormal(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p0, "v1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "v2"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "v3"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 711
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/math/Vector3f;->subtract(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 712
    .local v0, "a1":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/math/Vector3f;->subtract(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    .line 713
    .local v1, "a2":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/math/Vector3f;->crossLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector3f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    return-object v2
.end method

.method public static convertFloatToHalf(F)S
    .locals 4
    .param p0, "flt"    # F

    .prologue
    const/4 v2, 0x0

    .line 937
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "NaN to half conversion not supported!"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 939
    :cond_0
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v1, p0, v1

    if-nez v1, :cond_1

    .line 940
    const/16 v1, 0x7c00

    .line 959
    :goto_0
    return v1

    .line 941
    :cond_1
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v1, p0, v1

    if-nez v1, :cond_2

    .line 942
    const/16 v1, -0x400

    goto :goto_0

    .line 943
    :cond_2
    cmpl-float v1, p0, v2

    if-nez v1, :cond_3

    .line 944
    const/4 v1, 0x0

    goto :goto_0

    .line 945
    :cond_3
    const/high16 v1, -0x80000000

    cmpl-float v1, p0, v1

    if-nez v1, :cond_4

    .line 946
    const/16 v1, -0x8000

    goto :goto_0

    .line 947
    :cond_4
    const v1, 0x477fe000    # 65504.0f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_5

    .line 949
    const/16 v1, 0x7bff

    goto :goto_0

    .line 950
    :cond_5
    const v1, -0x38802000    # -65504.0f

    cmpg-float v1, p0, v1

    if-gez v1, :cond_6

    .line 951
    const/16 v1, -0x401

    goto :goto_0

    .line 952
    :cond_6
    cmpl-float v1, p0, v2

    if-lez v1, :cond_7

    const v1, 0x337ffff3

    cmpg-float v1, p0, v1

    if-gez v1, :cond_7

    .line 953
    const/4 v1, 0x1

    goto :goto_0

    .line 954
    :cond_7
    cmpg-float v1, p0, v2

    if-gez v1, :cond_8

    const v1, -0x4c80000d

    cmpl-float v1, p0, v1

    if-lez v1, :cond_8

    .line 955
    const/16 v1, -0x7fff

    goto :goto_0

    .line 958
    :cond_8
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 959
    .local v0, "f":I
    shr-int/lit8 v1, v0, 0x10

    const v2, 0x8000

    and-int/2addr v1, v2

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v2, v0

    const/high16 v3, 0x38000000

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0xd

    and-int/lit16 v2, v2, 0x7c00

    or-int/2addr v1, v2

    shr-int/lit8 v2, v0, 0xd

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v1, v2

    int-to-short v1, v1

    goto :goto_0
.end method

.method public static convertHalfToFloat(S)F
    .locals 3
    .param p0, "half"    # S

    .prologue
    .line 919
    sparse-switch p0, :sswitch_data_0

    .line 930
    const v0, 0x8000

    and-int/2addr v0, p0

    shl-int/lit8 v0, v0, 0x10

    and-int/lit16 v1, p0, 0x7c00

    const v2, 0x1c000

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0xd

    or-int/2addr v0, v1

    and-int/lit16 v1, p0, 0x3ff

    shl-int/lit8 v1, v1, 0xd

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    :goto_0
    return v0

    .line 921
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 923
    :sswitch_1
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 925
    :sswitch_2
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 927
    :sswitch_3
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    goto :goto_0

    .line 919
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7c00 -> :sswitch_2
        0x8000 -> :sswitch_1
        0xfc00 -> :sswitch_3
    .end sparse-switch
.end method

.method public static copysign(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 877
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    cmpg-float v0, p0, v1

    if-gtz v0, :cond_1

    .line 878
    neg-float p0, p0

    .line 882
    .end local p0    # "x":F
    :cond_0
    :goto_0
    return p0

    .line 879
    .restart local p0    # "x":F
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    cmpl-float v0, p0, v1

    if-ltz v0, :cond_0

    .line 880
    neg-float p0, p0

    goto :goto_0
.end method

.method public static cos(F)F
    .locals 2
    .param p0, "v"    # F

    .prologue
    .line 492
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static counterClockwise(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)I
    .locals 9
    .param p0, "p0"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p1, "p1"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p2, "p2"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v8, 0x0

    .line 653
    iget v6, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v7, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    sub-float v0, v6, v7

    .line 654
    .local v0, "dx1":F
    iget v6, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v7, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    sub-float v2, v6, v7

    .line 655
    .local v2, "dy1":F
    iget v6, p2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v7, p0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    sub-float v1, v6, v7

    .line 656
    .local v1, "dx2":F
    iget v6, p2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v7, p0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    sub-float v3, v6, v7

    .line 657
    .local v3, "dy2":F
    mul-float v6, v0, v3

    mul-float v7, v2, v1

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 669
    :cond_0
    :goto_0
    return v4

    .line 660
    :cond_1
    mul-float v6, v0, v3

    mul-float v7, v2, v1

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    move v4, v5

    .line 661
    goto :goto_0

    .line 663
    :cond_2
    mul-float v6, v0, v1

    cmpg-float v6, v6, v8

    if-ltz v6, :cond_3

    mul-float v6, v2, v3

    cmpg-float v6, v6, v8

    if-gez v6, :cond_4

    :cond_3
    move v4, v5

    .line 664
    goto :goto_0

    .line 666
    :cond_4
    mul-float v5, v0, v0

    mul-float v6, v2, v2

    add-float/2addr v5, v6

    mul-float v6, v1, v1

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 669
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static determinant(DDDDDDDDDDDDDDDD)F
    .locals 18
    .param p0, "m00"    # D
    .param p2, "m01"    # D
    .param p4, "m02"    # D
    .param p6, "m03"    # D
    .param p8, "m10"    # D
    .param p10, "m11"    # D
    .param p12, "m12"    # D
    .param p14, "m13"    # D
    .param p16, "m20"    # D
    .param p18, "m21"    # D
    .param p20, "m22"    # D
    .param p22, "m23"    # D
    .param p24, "m30"    # D
    .param p26, "m31"    # D
    .param p28, "m32"    # D
    .param p30, "m33"    # D

    .prologue
    .line 724
    mul-double v12, p16, p26

    mul-double v14, p18, p24

    sub-double v0, v12, v14

    .line 725
    .local v0, "det01":D
    mul-double v12, p16, p28

    mul-double v14, p20, p24

    sub-double v2, v12, v14

    .line 726
    .local v2, "det02":D
    mul-double v12, p16, p30

    mul-double v14, p22, p24

    sub-double v4, v12, v14

    .line 727
    .local v4, "det03":D
    mul-double v12, p18, p28

    mul-double v14, p20, p26

    sub-double v6, v12, v14

    .line 728
    .local v6, "det12":D
    mul-double v12, p18, p30

    mul-double v14, p22, p26

    sub-double v8, v12, v14

    .line 729
    .local v8, "det13":D
    mul-double v12, p20, p30

    mul-double v14, p22, p28

    sub-double v10, v12, v14

    .line 730
    .local v10, "det23":D
    mul-double v12, p10, v10

    mul-double v14, p12, v8

    sub-double/2addr v12, v14

    mul-double v14, p14, v6

    add-double/2addr v12, v14

    mul-double v12, v12, p0

    mul-double v14, p8, v10

    mul-double v16, p12, v4

    sub-double v14, v14, v16

    mul-double v16, p14, v2

    add-double v14, v14, v16

    mul-double v14, v14, p2

    sub-double/2addr v12, v14

    mul-double v14, p8, v8

    mul-double v16, p10, v4

    sub-double v14, v14, v16

    mul-double v16, p14, v0

    add-double v14, v14, v16

    mul-double v14, v14, p4

    add-double/2addr v12, v14

    mul-double v14, p8, v6

    mul-double v16, p10, v2

    sub-double v14, v14, v16

    mul-double v16, p12, v0

    add-double v14, v14, v16

    mul-double v14, v14, p6

    sub-double/2addr v12, v14

    double-to-float v12, v12

    return v12
.end method

.method public static exp(F)F
    .locals 2
    .param p0, "fValue"    # F

    .prologue
    .line 512
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static extrapolateLinear(FFF)F
    .locals 2
    .param p0, "scale"    # F
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F

    .prologue
    .line 172
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float v1, p0, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public static extrapolateLinear(FLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p0, "scale"    # F
    .param p1, "startValue"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "endValue"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/smartisanos/smengine/math/FastMath;->extrapolateLinear(FLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public static extrapolateLinear(FLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p0, "scale"    # F
    .param p1, "startValue"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "endValue"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 187
    if-nez p3, :cond_0

    .line 188
    new-instance p3, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p3    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 193
    .restart local p3    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-static {p0, v0, v1}, Lcom/smartisanos/smengine/math/FastMath;->extrapolateLinear(FFF)F

    move-result v0

    iput v0, p3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 194
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {p0, v0, v1}, Lcom/smartisanos/smengine/math/FastMath;->extrapolateLinear(FFF)F

    move-result v0

    iput v0, p3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 195
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {p0, v0, v1}, Lcom/smartisanos/smengine/math/FastMath;->extrapolateLinear(FFF)F

    move-result v0

    iput v0, p3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 196
    return-object p3
.end method

.method public static fastInvSqrt(F)F
    .locals 4
    .param p0, "x"    # F

    .prologue
    .line 549
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v2, p0

    .line 550
    .local v1, "xhalf":F
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 551
    .local v0, "i":I
    const v2, 0x5f375a86

    shr-int/lit8 v3, v0, 0x1

    sub-int v0, v2, v3

    .line 552
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 553
    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v3, v1, p0

    mul-float/2addr v3, p0

    sub-float/2addr v2, v3

    mul-float/2addr p0, v2

    .line 554
    return p0
.end method

.method public static floor(F)F
    .locals 2
    .param p0, "fValue"    # F

    .prologue
    .line 535
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static getBezierP1toP2Length(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)F
    .locals 9
    .param p0, "p0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "p1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "p2"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "p3"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 401
    const v6, 0x3ca3d70a    # 0.02f

    .local v6, "delta":F
    const/4 v0, 0x0

    .local v0, "t":F
    const/4 v7, 0x0

    .line 402
    .local v7, "result":F
    invoke-virtual {p0}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .local v8, "v1":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 403
    .local v5, "v2":Lcom/smartisanos/smengine/math/Vector3f;
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 404
    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/math/FastMath;->interpolateBezier(FLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 405
    invoke-virtual {v8, v5}, Lcom/smartisanos/smengine/math/Vector3f;->subtractLocal(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->length()F

    move-result v1

    add-float/2addr v7, v1

    .line 406
    invoke-virtual {v8, v5}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 407
    add-float/2addr v0, v6

    goto :goto_0

    .line 409
    :cond_0
    return v7
.end method

.method public static getCatmullRomP1toP2Length(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;FFF)F
    .locals 29
    .param p0, "p0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "p1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "p2"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "p3"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p4, "startRange"    # F
    .param p5, "endRange"    # F
    .param p6, "curveTension"    # F

    .prologue
    .line 369
    const v23, 0x3a83126f    # 0.001f

    .line 370
    .local v23, "epsilon":F
    add-float v1, p4, p5

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v20, v1, v2

    .line 371
    .local v20, "middleValue":F
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 372
    .local v7, "start":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_0

    move/from16 v1, p4

    move/from16 v2, p6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 373
    invoke-static/range {v1 .. v7}, Lcom/smartisanos/smengine/math/FastMath;->interpolateCatmullRom(FFLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 375
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v14

    .line 376
    .local v14, "end":Lcom/smartisanos/smengine/math/Vector3f;
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p5, v1

    if-eqz v1, :cond_1

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 377
    invoke-static/range {v8 .. v14}, Lcom/smartisanos/smengine/math/FastMath;->interpolateCatmullRom(FFLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    :cond_1
    move/from16 v1, v20

    move/from16 v2, p6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 379
    invoke-static/range {v1 .. v6}, Lcom/smartisanos/smengine/math/FastMath;->interpolateCatmullRom(FFLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v28

    .line 380
    .local v28, "middle":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v14, v7}, Lcom/smartisanos/smengine/math/Vector3f;->subtract(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->length()F

    move-result v24

    .line 381
    .local v24, "l":F
    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/smartisanos/smengine/math/Vector3f;->subtract(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->length()F

    move-result v25

    .line 382
    .local v25, "l1":F
    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Lcom/smartisanos/smengine/math/Vector3f;->subtract(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->length()F

    move-result v26

    .line 383
    .local v26, "l2":F
    add-float v27, v25, v26

    .line 384
    .local v27, "len":F
    add-float v1, v24, v23

    cmpg-float v1, v1, v27

    if-gez v1, :cond_2

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move/from16 v19, p4

    move/from16 v21, p6

    .line 385
    invoke-static/range {v15 .. v21}, Lcom/smartisanos/smengine/math/FastMath;->getCatmullRomP1toP2Length(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;FFF)F

    move-result v25

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move/from16 v21, p5

    move/from16 v22, p6

    .line 386
    invoke-static/range {v16 .. v22}, Lcom/smartisanos/smengine/math/FastMath;->getCatmullRomP1toP2Length(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;FFF)F

    move-result v26

    .line 388
    :cond_2
    add-float v24, v25, v26

    .line 389
    return v24
.end method

.method public static interpolateBezier(FFFFF)F
    .locals 6
    .param p0, "u"    # F
    .param p1, "p0"    # F
    .param p2, "p1"    # F
    .param p3, "p2"    # F
    .param p4, "p3"    # F

    .prologue
    const/high16 v5, 0x40400000    # 3.0f

    .line 302
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v0, v3, p0

    .line 303
    .local v0, "oneMinusU":F
    mul-float v1, v0, v0

    .line 304
    .local v1, "oneMinusU2":F
    mul-float v2, p0, p0

    .line 305
    .local v2, "u2":F
    mul-float v3, p1, v1

    mul-float/2addr v3, v0

    mul-float v4, v5, p2

    mul-float/2addr v4, p0

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    mul-float v4, v5, p3

    mul-float/2addr v4, v2

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    mul-float v4, p4, v2

    mul-float/2addr v4, p0

    add-float/2addr v3, v4

    return v3
.end method

.method public static interpolateBezier(FLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 6
    .param p0, "u"    # F
    .param p1, "p0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "p1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "p2"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p4, "p3"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 353
    const/4 v5, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/math/FastMath;->interpolateBezier(FLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public static interpolateBezier(FLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 4
    .param p0, "u"    # F
    .param p1, "p0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "p1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "p2"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p4, "p3"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p5, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 328
    if-nez p5, :cond_0

    .line 329
    new-instance p5, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p5    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 331
    .restart local p5    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-static {p0, v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/FastMath;->interpolateBezier(FFFFF)F

    move-result v0

    iput v0, p5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 332
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v2, p3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v3, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {p0, v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/FastMath;->interpolateBezier(FFFFF)F

    move-result v0

    iput v0, p5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 333
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v2, p3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v3, p4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {p0, v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/FastMath;->interpolateBezier(FFFFF)F

    move-result v0

    iput v0, p5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 334
    return-object p5
.end method

.method public static interpolateCatmullRom(FFFFFF)F
    .locals 8
    .param p0, "u"    # F
    .param p1, "T"    # F
    .param p2, "p0"    # F
    .param p3, "p1"    # F
    .param p4, "p2"    # F
    .param p5, "p3"    # F

    .prologue
    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 231
    move v0, p3

    .line 232
    .local v0, "c1":F
    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v4, p1

    mul-float/2addr v4, p2

    mul-float v5, p1, p4

    add-float v1, v4, v5

    .line 233
    .local v1, "c2":F
    mul-float v4, v6, p1

    mul-float/2addr v4, p2

    sub-float v5, p1, v7

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    mul-float v5, v6, p1

    sub-float v5, v7, v5

    mul-float/2addr v5, p4

    add-float/2addr v4, v5

    neg-float v5, p1

    mul-float/2addr v5, p5

    add-float v2, v4, v5

    .line 234
    .local v2, "c3":F
    neg-float v4, p1

    mul-float/2addr v4, p2

    sub-float v5, v6, p1

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    sub-float v5, p1, v6

    mul-float/2addr v5, p4

    add-float/2addr v4, v5

    mul-float v5, p1, p5

    add-float v3, v4, v5

    .line 236
    .local v3, "c4":F
    mul-float v4, v3, p0

    add-float/2addr v4, v2

    mul-float/2addr v4, p0

    add-float/2addr v4, v1

    mul-float/2addr v4, p0

    add-float/2addr v4, v0

    return v4
.end method

.method public static interpolateCatmullRom(FFLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 7
    .param p0, "u"    # F
    .param p1, "T"    # F
    .param p2, "p0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "p1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p4, "p2"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p5, "p3"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 283
    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/smengine/math/FastMath;->interpolateCatmullRom(FFLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public static interpolateCatmullRom(FFLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 6
    .param p0, "u"    # F
    .param p1, "T"    # F
    .param p2, "p0"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "p1"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p4, "p2"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p5, "p3"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p6, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 257
    if-nez p6, :cond_0

    .line 258
    new-instance p6, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p6    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 260
    .restart local p6    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v4, p4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v5, p5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/math/FastMath;->interpolateCatmullRom(FFFFFF)F

    move-result v0

    iput v0, p6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 261
    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v3, p3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, p4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v5, p5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/math/FastMath;->interpolateCatmullRom(FFFFFF)F

    move-result v0

    iput v0, p6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 262
    iget v2, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v3, p3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v4, p4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v5, p5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/math/FastMath;->interpolateCatmullRom(FFFFFF)F

    move-result v0

    iput v0, p6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 263
    return-object p6
.end method

.method public static interpolateLinear(FFF)F
    .locals 2
    .param p0, "scale"    # F
    .param p1, "startValue"    # F
    .param p2, "endValue"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 107
    cmpl-float v0, p1, p2

    if-nez v0, :cond_1

    .line 116
    .end local p1    # "startValue":F
    :cond_0
    :goto_0
    return p1

    .line 110
    .restart local p1    # "startValue":F
    :cond_1
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-lez v0, :cond_0

    .line 113
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_2

    move p1, p2

    .line 114
    goto :goto_0

    .line 116
    :cond_2
    sub-float v0, v1, p0

    mul-float/2addr v0, p1

    mul-float v1, p0, p2

    add-float p1, v0, v1

    goto :goto_0
.end method

.method public static interpolateLinear(FLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1
    .param p0, "scale"    # F
    .param p1, "startValue"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "endValue"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/smartisanos/smengine/math/FastMath;->interpolateLinear(FLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public static interpolateLinear(FLcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 2
    .param p0, "scale"    # F
    .param p1, "startValue"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "endValue"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 133
    if-nez p3, :cond_0

    .line 134
    new-instance p3, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p3    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 136
    .restart local p3    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    invoke-static {p0, v0, v1}, Lcom/smartisanos/smengine/math/FastMath;->interpolateLinear(FFF)F

    move-result v0

    iput v0, p3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 137
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {p0, v0, v1}, Lcom/smartisanos/smengine/math/FastMath;->interpolateLinear(FFF)F

    move-result v0

    iput v0, p3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 138
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iget v1, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {p0, v0, v1}, Lcom/smartisanos/smengine/math/FastMath;->interpolateLinear(FFF)F

    move-result v0

    iput v0, p3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 139
    return-object p3
.end method

.method public static invSqrt(F)F
    .locals 4
    .param p0, "fValue"    # F

    .prologue
    .line 545
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 1
    .param p0, "number"    # I

    .prologue
    .line 87
    if-lez p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(F)F
    .locals 2
    .param p0, "fValue"    # F

    .prologue
    .line 564
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static log(FF)F
    .locals 4
    .param p0, "value"    # F
    .param p1, "base"    # F

    .prologue
    .line 575
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static nearestPowerOfTwo(I)I
    .locals 6
    .param p0, "number"    # I

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 91
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static nextRandomFloat()F
    .locals 1

    .prologue
    .line 743
    sget-object v0, Lcom/smartisanos/smengine/math/FastMath;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    return v0
.end method

.method public static nextRandomFloat(FF)F
    .locals 2
    .param p0, "min"    # F
    .param p1, "max"    # F

    .prologue
    .line 747
    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static nextRandomInt()I
    .locals 1

    .prologue
    .line 761
    sget-object v0, Lcom/smartisanos/smengine/math/FastMath;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static nextRandomInt(II)I
    .locals 2
    .param p0, "min"    # I
    .param p1, "max"    # I

    .prologue
    .line 757
    invoke-static {}, Lcom/smartisanos/smengine/math/FastMath;->nextRandomFloat()F

    move-result v0

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static normalize(FFF)F
    .locals 2
    .param p0, "val"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 856
    invoke-static {p0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 857
    :cond_0
    const/4 p0, 0x0

    .line 866
    .end local p0    # "val":F
    :cond_1
    return p0

    .line 859
    .restart local p0    # "val":F
    :cond_2
    sub-float v0, p2, p1

    .line 860
    .local v0, "range":F
    :goto_0
    cmpl-float v1, p0, p2

    if-lez v1, :cond_3

    .line 861
    sub-float/2addr p0, v0

    goto :goto_0

    .line 863
    :cond_3
    :goto_1
    cmpg-float v1, p0, p1

    if-gez v1, :cond_1

    .line 864
    add-float/2addr p0, v0

    goto :goto_1
.end method

.method public static pointInsideTriangle(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)I
    .locals 5
    .param p0, "t0"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p1, "t1"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p2, "t2"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p3, "p"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 682
    invoke-static {p0, p1, p3}, Lcom/smartisanos/smengine/math/FastMath;->counterClockwise(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)I

    move-result v0

    .line 683
    .local v0, "val1":I
    if-nez v0, :cond_1

    move v2, v3

    .line 700
    :cond_0
    :goto_0
    return v2

    .line 686
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/smartisanos/smengine/math/FastMath;->counterClockwise(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)I

    move-result v1

    .line 687
    .local v1, "val2":I
    if-nez v1, :cond_2

    move v2, v3

    .line 688
    goto :goto_0

    .line 690
    :cond_2
    if-eq v1, v0, :cond_3

    move v2, v4

    .line 691
    goto :goto_0

    .line 693
    :cond_3
    invoke-static {p2, p0, p3}, Lcom/smartisanos/smengine/math/FastMath;->counterClockwise(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)I

    move-result v2

    .line 694
    .local v2, "val3":I
    if-nez v2, :cond_4

    move v2, v3

    .line 695
    goto :goto_0

    .line 697
    :cond_4
    if-eq v2, v0, :cond_0

    move v2, v4

    .line 698
    goto :goto_0
.end method

.method public static pow(FF)F
    .locals 4
    .param p0, "fBase"    # F
    .param p1, "fExponent"    # F

    .prologue
    .line 586
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static saturate(F)F
    .locals 2
    .param p0, "input"    # F

    .prologue
    .line 905
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lcom/smartisanos/smengine/math/FastMath;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method public static sign(F)F
    .locals 1
    .param p0, "fValue"    # F

    .prologue
    .line 640
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    return v0
.end method

.method public static sign(I)I
    .locals 1
    .param p0, "iValue"    # I

    .prologue
    .line 625
    if-lez p0, :cond_0

    .line 626
    const/4 v0, 0x1

    .line 631
    :goto_0
    return v0

    .line 628
    :cond_0
    if-gez p0, :cond_1

    .line 629
    const/4 v0, -0x1

    goto :goto_0

    .line 631
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sin(F)F
    .locals 2
    .param p0, "v"    # F

    .prologue
    .line 502
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static sphericalToCartesian(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p0, "sphereCoords"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 770
    if-nez p1, :cond_0

    .line 771
    new-instance p1, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p1    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 773
    .restart local p1    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {v2}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 774
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {v2}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 775
    .local v0, "a":F
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 776
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 778
    return-object p1
.end method

.method public static sphericalToCartesianZ(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;
    .locals 3
    .param p0, "sphereCoords"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p1, "store"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 812
    if-nez p1, :cond_0

    .line 813
    new-instance p1, Lcom/smartisanos/smengine/math/Vector3f;

    .end local p1    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 815
    .restart local p1    # "store":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {v2}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 816
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v2, p0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {v2}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 817
    .local v0, "a":F
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->cos(F)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 818
    iget v1, p0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {v1}, Lcom/smartisanos/smengine/math/FastMath;->sin(F)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 820
    return-object p1
.end method

.method public static sqr(F)F
    .locals 1
    .param p0, "fValue"    # F

    .prologue
    .line 595
    mul-float v0, p0, p0

    return v0
.end method

.method public static sqrt(F)F
    .locals 2
    .param p0, "fValue"    # F

    .prologue
    .line 605
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static tan(F)F
    .locals 2
    .param p0, "fValue"    # F

    .prologue
    .line 616
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
