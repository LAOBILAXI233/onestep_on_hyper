.class final Laurelienribon/tweenengine/equations/Overshoot$1;
.super Laurelienribon/tweenengine/equations/Overshoot;
.source "Overshoot.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/equations/Overshoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Overshoot;-><init>()V

    return-void
.end method


.method public compute(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    sub-float/2addr p1, v3

    .line 12
    mul-float v0, p1, p1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "Overshoot.INOUT"

    return-object v0
.end method
