.class public Laurelienribon/tweenengine/paths/Linear;
.super Ljava/lang/Object;
.source "Linear.java"

.implements Laurelienribon/tweenengine/TweenPath;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public compute(F[FI)F
    .locals 4
    .param p1, "t"    # F
    .param p2, "points"    # [F
    .param p3, "pointsCnt"    # I

    .prologue
    .line 11
    add-int/lit8 v1, p3, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 12
    .local v0, "segment":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 13
    add-int/lit8 v1, p3, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 15
    add-int/lit8 v1, p3, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    int-to-float v2, v0

    sub-float p1, v1, v2

    .line 17
    aget v1, p2, v0

    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    aget v3, p2, v0

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    return v1
.end method
