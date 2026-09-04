.class final Laurelienribon/tweenengine/equations/Sine$3;
.super Laurelienribon/tweenengine/equations/Sine;
.source "Sine.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/equations/Sine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Sine;-><init>()V

    return-void
.end method


.method public final compute(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    .line 40
    const/high16 v0, -0x41000000    # -0.5f

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v1, p1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "Sine.INOUT"

    return-object v0
.end method
