.class final Laurelienribon/tweenengine/equations/Bounce$3;
.super Laurelienribon/tweenengine/equations/Bounce;
.source "Bounce.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/equations/Bounce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Bounce;-><init>()V

    return-void
.end method


.method public final compute(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 46
    cmpg-float v0, p1, v3

    if-gez v0, :cond_0

    sget-object v0, Laurelienribon/tweenengine/equations/Bounce$3;->IN:Laurelienribon/tweenengine/equations/Bounce;

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/equations/Bounce;->compute(F)F

    move-result v0

    mul-float/2addr v0, v3

    .line 47
    :goto_0
    return v0

    :cond_0
    sget-object v0, Laurelienribon/tweenengine/equations/Bounce$3;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/equations/Bounce;->compute(F)F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v3

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "Bounce.INOUT"

    return-object v0
.end method
