.class final Laurelienribon/tweenengine/equations/Quad$3;
.super Laurelienribon/tweenengine/equations/Quad;
.source "Quad.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/equations/Quad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Quad;-><init>()V

    return-void
.end method


.method public final compute(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 38
    mul-float/2addr p1, v1

    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    .line 39
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    sub-float/2addr p1, v2

    sub-float v1, p1, v1

    mul-float/2addr v1, p1

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "Quad.INOUT"

    return-object v0
.end method
