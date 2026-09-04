.class public Laurelienribon/tweenengine/primitives/MutableInteger;
.super Ljava/lang/Number;
.source "MutableInteger.java"

.implements Laurelienribon/tweenengine/TweenAccessor;


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Laurelienribon/tweenengine/TweenAccessor",
        "<",
        "Laurelienribon/tweenengine/primitives/MutableInteger;",
        ">;"
    }
.end annotation


.field private value:I


.method public constructor <init>(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 12
    iput p1, p0, Laurelienribon/tweenengine/primitives/MutableInteger;->value:I

    .line 13
    return-void
.end method


.method public doubleValue()D
    .locals 2

    .prologue
    .line 22
    iget v0, p0, Laurelienribon/tweenengine/primitives/MutableInteger;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Laurelienribon/tweenengine/primitives/MutableInteger;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public getValues(Laurelienribon/tweenengine/primitives/MutableInteger;I[F)I
    .locals 2
    .param p1, "target"    # Laurelienribon/tweenengine/primitives/MutableInteger;
    .param p2, "tweenType"    # I
    .param p3, "returnValues"    # [F

    .prologue
    .line 26
    const/4 v0, 0x0

    iget v1, p1, Laurelienribon/tweenengine/primitives/MutableInteger;->value:I

    int-to-float v1, v1

    aput v1, p3, v0

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getValues(Ljava/lang/Object;I[F)I
    .locals 1

    .prologue
    .line 8
    check-cast p1, Laurelienribon/tweenengine/primitives/MutableInteger;

    invoke-virtual {p0, p1, p2, p3}, Laurelienribon/tweenengine/primitives/MutableInteger;->getValues(Laurelienribon/tweenengine/primitives/MutableInteger;I[F)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Laurelienribon/tweenengine/primitives/MutableInteger;->value:I

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 20
    iget v0, p0, Laurelienribon/tweenengine/primitives/MutableInteger;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 16
    iput p1, p0, Laurelienribon/tweenengine/primitives/MutableInteger;->value:I

    .line 17
    return-void
.end method

.method public setValues(Laurelienribon/tweenengine/primitives/MutableInteger;I[F)V
    .locals 1
    .param p1, "target"    # Laurelienribon/tweenengine/primitives/MutableInteger;
    .param p2, "tweenType"    # I
    .param p3, "newValues"    # [F

    .prologue
    .line 32
    const/4 v0, 0x0

    aget v0, p3, v0

    float-to-int v0, v0

    iput v0, p1, Laurelienribon/tweenengine/primitives/MutableInteger;->value:I

    .line 33
    return-void
.end method

.method public bridge synthetic setValues(Ljava/lang/Object;I[F)V
    .locals 0

    .prologue
    .line 8
    check-cast p1, Laurelienribon/tweenengine/primitives/MutableInteger;

    invoke-virtual {p0, p1, p2, p3}, Laurelienribon/tweenengine/primitives/MutableInteger;->setValues(Laurelienribon/tweenengine/primitives/MutableInteger;I[F)V

    return-void
.end method
