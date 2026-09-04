.class final Laurelienribon/tweenengine/equations/Expo$1;
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
    .line 11
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Expo;-><init>()V

    return-void
.end method


.method public final compute(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    const/4 v0, 0x0

    .line 14
    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p1, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "Expo.IN"

    return-object v0
.end method
