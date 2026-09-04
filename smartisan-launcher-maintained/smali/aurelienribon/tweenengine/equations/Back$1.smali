.class final Laurelienribon/tweenengine/equations/Back$1;
.super Laurelienribon/tweenengine/equations/Back;
.source "Back.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/equations/Back;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Back;-><init>()V

    return-void
.end method


.method public final compute(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    .line 14
    iget v0, p0, Laurelienribon/tweenengine/equations/Back$1;->param_s:F

    .line 15
    .local v0, "s":F
    mul-float v1, p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "Back.IN"

    return-object v0
.end method
