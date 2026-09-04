.class public Laurelienribon/tweenengine/paths/CatmullRom;
.super Ljava/lang/Object;
.source "CatmullRom.java"

.implements Laurelienribon/tweenengine/TweenPath;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private catmullRomSpline(FFFFF)F
    .locals 10
    .param p1, "a"    # F
    .param p2, "b"    # F
    .param p3, "c"    # F
    .param p4, "d"    # F
    .param p5, "t"    # F

    .prologue
    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 29
    sub-float v6, p3, p1

    mul-float v4, v6, v7

    .line 30
    .local v4, "t1":F
    sub-float v6, p4, p2

    mul-float v5, v6, v7

    .line 32
    .local v5, "t2":F
    mul-float v6, v8, p5

    mul-float/2addr v6, p5

    mul-float/2addr v6, p5

    mul-float v7, v9, p5

    mul-float/2addr v7, p5

    sub-float/2addr v6, v7

    const/high16 v7, 0x3f800000    # 1.0f

    add-float v0, v6, v7

    .line 33
    .local v0, "h1":F
    const/high16 v6, -0x40000000    # -2.0f

    mul-float/2addr v6, p5

    mul-float/2addr v6, p5

    mul-float/2addr v6, p5

    mul-float v7, v9, p5

    mul-float/2addr v7, p5

    add-float v1, v6, v7

    .line 34
    .local v1, "h2":F
    mul-float v6, p5, p5

    mul-float/2addr v6, p5

    mul-float v7, v8, p5

    mul-float/2addr v7, p5

    sub-float/2addr v6, v7

    add-float v2, v6, p5

    .line 35
    .local v2, "h3":F
    mul-float v6, p5, p5

    mul-float/2addr v6, p5

    mul-float v7, p5, p5

    sub-float v3, v6, v7

    .line 37
    .local v3, "h4":F
    mul-float v6, p2, v0

    mul-float v7, p3, v1

    add-float/2addr v6, v7

    mul-float v7, v4, v2

    add-float/2addr v6, v7

    mul-float v7, v5, v3

    add-float/2addr v6, v7

    return v6
.end method


.method public compute(F[FI)F
    .locals 7
    .param p1, "t"    # F
    .param p2, "points"    # [F
    .param p3, "pointsCnt"    # I

    .prologue
    const/4 v2, 0x0

    .line 11
    add-int/lit8 v0, p3, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v6, v0

    .line 12
    .local v6, "segment":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 13
    add-int/lit8 v0, p3, -0x2

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 15
    add-int/lit8 v0, p3, -0x1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    int-to-float v1, v6

    sub-float p1, v0, v1

    .line 17
    if-nez v6, :cond_0

    .line 18
    aget v1, p2, v2

    aget v2, p2, v2

    const/4 v0, 0x1

    aget v3, p2, v0

    const/4 v0, 0x2

    aget v4, p2, v0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Laurelienribon/tweenengine/paths/CatmullRom;->catmullRomSpline(FFFFF)F

    move-result v0

    .line 25
    :goto_0
    return v0

    .line 21
    :cond_0
    add-int/lit8 v0, p3, -0x2

    if-ne v6, v0, :cond_1

    .line 22
    add-int/lit8 v0, p3, -0x3

    aget v1, p2, v0

    add-int/lit8 v0, p3, -0x2

    aget v2, p2, v0

    add-int/lit8 v0, p3, -0x1

    aget v3, p2, v0

    add-int/lit8 v0, p3, -0x1

    aget v4, p2, v0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Laurelienribon/tweenengine/paths/CatmullRom;->catmullRomSpline(FFFFF)F

    move-result v0

    goto :goto_0

    .line 25
    :cond_1
    add-int/lit8 v0, v6, -0x1

    aget v1, p2, v0

    aget v2, p2, v6

    add-int/lit8 v0, v6, 0x1

    aget v3, p2, v0

    add-int/lit8 v0, v6, 0x2

    aget v4, p2, v0

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Laurelienribon/tweenengine/paths/CatmullRom;->catmullRomSpline(FFFFF)F

    move-result v0

    goto :goto_0
.end method
