.class final Lcom/smartisan/pullToRefresh/CubicInterpolator$1;
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
    .line 8
    invoke-direct {p0}, Lcom/smartisan/pullToRefresh/CubicInterpolator;-><init>()V

    return-void
.end method


.method public final getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 11
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const-string v0, "CubicInterpolator.IN"

    return-object v0
.end method
