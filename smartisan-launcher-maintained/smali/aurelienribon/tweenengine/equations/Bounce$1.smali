.class final Laurelienribon/tweenengine/equations/Bounce$1;
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
    .line 11
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Bounce;-><init>()V

    return-void
.end method


.method public final compute(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    sget-object v0, Laurelienribon/tweenengine/equations/Bounce$1;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    sub-float v1, v2, p1

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/equations/Bounce;->compute(F)F

    move-result v0

    sub-float v0, v2, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "Bounce.IN"

    return-object v0
.end method
