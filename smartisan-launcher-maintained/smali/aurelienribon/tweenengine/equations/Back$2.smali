.class final Laurelienribon/tweenengine/equations/Back$2;
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
    .line 24
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Back;-><init>()V

    return-void
.end method


.method public final compute(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 27
    iget v0, p0, Laurelienribon/tweenengine/equations/Back$2;->param_s:F

    .line 28
    .local v0, "s":F
    sub-float/2addr p1, v3

    mul-float v1, p1, p1

    add-float v2, v0, v3

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "Back.OUT"

    return-object v0
.end method
