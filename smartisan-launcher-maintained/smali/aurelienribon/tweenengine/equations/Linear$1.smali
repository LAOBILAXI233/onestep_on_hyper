.class final Laurelienribon/tweenengine/equations/Linear$1;
.super Laurelienribon/tweenengine/equations/Linear;
.source "Linear.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/equations/Linear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Laurelienribon/tweenengine/equations/Linear;-><init>()V

    return-void
.end method


.method public compute(F)F
    .locals 0
    .param p1, "t"    # F

    .prologue
    .line 14
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "Linear.INOUT"

    return-object v0
.end method
