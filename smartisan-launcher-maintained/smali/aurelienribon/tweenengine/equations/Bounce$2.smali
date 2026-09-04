.class final Laurelienribon/tweenengine/equations/Bounce$2;
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
    .line 23
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Bounce;-><init>()V

    return-void
.end method


.method public final compute(F)F
    .locals 5
    .param p1, "t"    # F

    .prologue
    const/high16 v4, 0x40f20000    # 7.5625f

    .line 26
    float-to-double v0, p1

    const-wide v2, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 27
    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    .line 33
    :goto_0
    return v0

    .line 28
    :cond_0
    float-to-double v0, p1

    const-wide v2, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 29
    const v0, 0x3f0ba2e9

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    add-float/2addr v0, v1

    goto :goto_0

    .line 30
    :cond_1
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 31
    const v0, 0x3f51745d

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f700000    # 0.9375f

    add-float/2addr v0, v1

    goto :goto_0

    .line 33
    :cond_2
    const v0, 0x3f745d17

    sub-float/2addr p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f7c0000    # 0.984375f

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "Bounce.OUT"

    return-object v0
.end method
