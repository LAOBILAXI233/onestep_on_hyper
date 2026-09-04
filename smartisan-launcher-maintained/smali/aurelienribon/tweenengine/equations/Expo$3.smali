.class final Laurelienribon/tweenengine/equations/Expo$3;
.super Laurelienribon/tweenengine/equations/Expo;
.source "Expo.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/equations/Expo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Expo;-><init>()V

    return-void
.end method


.method public final compute(F)F
    .locals 7
    .param p1, "t"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    cmpl-float v2, p1, v0

    if-nez v2, :cond_0

    .line 41
    :goto_0
    return v0

    .line 39
    :cond_0
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 40
    :cond_1
    mul-float/2addr p1, v6

    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    const/high16 v0, 0x41200000    # 10.0f

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v3

    goto :goto_0

    .line 41
    :cond_2
    const/high16 v0, -0x3ee00000    # -10.0f

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    neg-float v0, v0

    add-float/2addr v0, v6

    mul-float/2addr v0, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "Expo.INOUT"

    return-object v0
.end method
