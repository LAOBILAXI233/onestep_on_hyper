.class final Laurelienribon/tweenengine/equations/Expo$2;
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
    .line 23
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Expo;-><init>()V

    return-void
.end method


.method public final compute(F)F
    .locals 6
    .param p1, "t"    # F

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/high16 v1, -0x3ee00000    # -10.0f

    mul-float/2addr v1, p1

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    neg-float v1, v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "Expo.OUT"

    return-object v0
.end method
