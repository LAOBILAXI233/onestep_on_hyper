.class final Laurelienribon/tweenengine/equations/Quad$2;
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
    .line 23
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Quad;-><init>()V

    return-void
.end method


.method public final compute(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    .line 26
    neg-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "Quad.OUT"

    return-object v0
.end method
