.class final Laurelienribon/tweenengine/equations/Back$3;
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
    .line 37
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Back;-><init>()V

    return-void
.end method


.method public final compute(F)F
    .locals 6
    .param p1, "t"    # F

    .prologue
    const v5, 0x3fc33333    # 1.525f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 40
    iget v0, p0, Laurelienribon/tweenengine/equations/Back$3;->param_s:F

    .line 41
    .local v0, "s":F
    mul-float/2addr p1, v3

    cmpg-float v1, p1, v2

    if-gez v1, :cond_0

    mul-float v1, p1, p1

    mul-float/2addr v0, v5

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    .line 42
    :goto_0
    return v1

    :cond_0
    sub-float/2addr p1, v3

    mul-float v1, p1, p1

    mul-float/2addr v0, v5

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v2, v0

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    mul-float/2addr v1, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "Back.INOUT"

    return-object v0
.end method
