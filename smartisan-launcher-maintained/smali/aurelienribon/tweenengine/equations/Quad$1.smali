.class final Laurelienribon/tweenengine/equations/Quad$1;
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
    .line 11
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Quad;-><init>()V

    return-void
.end method


.method public final compute(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 14
    mul-float v0, p1, p1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "Quad.IN"

    return-object v0
.end method
