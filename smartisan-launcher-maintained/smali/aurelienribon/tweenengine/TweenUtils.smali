.class public Laurelienribon/tweenengine/TweenUtils;
.super Ljava/lang/Object;
.source "TweenUtils.java"


.field private static easings:[Laurelienribon/tweenengine/TweenEquation;


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseEasing(Ljava/lang/String;)Laurelienribon/tweenengine/TweenEquation;
    .locals 4
    .param p0, "easingName"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v1, Laurelienribon/tweenengine/TweenUtils;->easings:[Laurelienribon/tweenengine/TweenEquation;

    if-nez v1, :cond_0

    .line 32
    const/16 v1, 0x1f

    new-array v1, v1, [Laurelienribon/tweenengine/TweenEquation;

    const/4 v2, 0x0

    sget-object v3, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Laurelienribon/tweenengine/equations/Quad;->IN:Laurelienribon/tweenengine/equations/Quad;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Laurelienribon/tweenengine/equations/Quad;->OUT:Laurelienribon/tweenengine/equations/Quad;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Laurelienribon/tweenengine/equations/Quad;->INOUT:Laurelienribon/tweenengine/equations/Quad;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Laurelienribon/tweenengine/equations/Cubic;->INOUT:Laurelienribon/tweenengine/equations/Cubic;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Laurelienribon/tweenengine/equations/Quart;->IN:Laurelienribon/tweenengine/equations/Quart;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Laurelienribon/tweenengine/equations/Quart;->OUT:Laurelienribon/tweenengine/equations/Quart;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Laurelienribon/tweenengine/equations/Quart;->INOUT:Laurelienribon/tweenengine/equations/Quart;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Laurelienribon/tweenengine/equations/Quint;->IN:Laurelienribon/tweenengine/equations/Quint;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Laurelienribon/tweenengine/equations/Quint;->OUT:Laurelienribon/tweenengine/equations/Quint;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Laurelienribon/tweenengine/equations/Quint;->INOUT:Laurelienribon/tweenengine/equations/Quint;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Laurelienribon/tweenengine/equations/Circ;->IN:Laurelienribon/tweenengine/equations/Circ;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Laurelienribon/tweenengine/equations/Circ;->OUT:Laurelienribon/tweenengine/equations/Circ;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Laurelienribon/tweenengine/equations/Circ;->INOUT:Laurelienribon/tweenengine/equations/Circ;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Laurelienribon/tweenengine/equations/Sine;->IN:Laurelienribon/tweenengine/equations/Sine;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Laurelienribon/tweenengine/equations/Sine;->OUT:Laurelienribon/tweenengine/equations/Sine;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Laurelienribon/tweenengine/equations/Sine;->INOUT:Laurelienribon/tweenengine/equations/Sine;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Laurelienribon/tweenengine/equations/Expo;->IN:Laurelienribon/tweenengine/equations/Expo;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Laurelienribon/tweenengine/equations/Expo;->OUT:Laurelienribon/tweenengine/equations/Expo;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Laurelienribon/tweenengine/equations/Expo;->INOUT:Laurelienribon/tweenengine/equations/Expo;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Laurelienribon/tweenengine/equations/Back;->IN:Laurelienribon/tweenengine/equations/Back;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Laurelienribon/tweenengine/equations/Back;->OUT:Laurelienribon/tweenengine/equations/Back;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Laurelienribon/tweenengine/equations/Back;->INOUT:Laurelienribon/tweenengine/equations/Back;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Laurelienribon/tweenengine/equations/Bounce;->IN:Laurelienribon/tweenengine/equations/Bounce;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Laurelienribon/tweenengine/equations/Bounce;->INOUT:Laurelienribon/tweenengine/equations/Bounce;

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    sget-object v3, Laurelienribon/tweenengine/equations/Elastic;->IN:Laurelienribon/tweenengine/equations/Elastic;

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    sget-object v3, Laurelienribon/tweenengine/equations/Elastic;->OUT:Laurelienribon/tweenengine/equations/Elastic;

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    sget-object v3, Laurelienribon/tweenengine/equations/Elastic;->INOUT:Laurelienribon/tweenengine/equations/Elastic;

    aput-object v3, v1, v2

    sput-object v1, Laurelienribon/tweenengine/TweenUtils;->easings:[Laurelienribon/tweenengine/TweenEquation;

    .line 46
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Laurelienribon/tweenengine/TweenUtils;->easings:[Laurelienribon/tweenengine/TweenEquation;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 47
    sget-object v1, Laurelienribon/tweenengine/TweenUtils;->easings:[Laurelienribon/tweenengine/TweenEquation;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    sget-object v1, Laurelienribon/tweenengine/TweenUtils;->easings:[Laurelienribon/tweenengine/TweenEquation;

    aget-object v1, v1, v0

    .line 51
    :goto_1
    return-object v1

    .line 46
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
