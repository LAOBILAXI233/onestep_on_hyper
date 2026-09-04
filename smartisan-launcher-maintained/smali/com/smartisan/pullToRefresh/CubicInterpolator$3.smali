.class final Lcom/smartisan/pullToRefresh/CubicInterpolator$3;
.super Lcom/smartisan/pullToRefresh/CubicInterpolator;
.source "CubicInterpolator.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/pullToRefresh/CubicInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/CubicInterpolator;-><init>()V

    return-void
.end method


.method public final getInterpolation(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v1, 0x40000000    # 2.0f

    .line 35
    mul-float/2addr p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 36
    mul-float v0, v2, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    .line 37
    :goto_0
    return v0

    :cond_0
    sub-float/2addr p1, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "CubicInterpolator.INOUT"

    return-object v0
.end method
