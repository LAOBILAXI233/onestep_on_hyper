.class public abstract Laurelienribon/tweenengine/equations/Back;
.super Laurelienribon/tweenengine/TweenEquation;
.source "Back.java"


.field public static final IN:Laurelienribon/tweenengine/equations/Back;

.field public static final INOUT:Laurelienribon/tweenengine/equations/Back;

.field public static final OUT:Laurelienribon/tweenengine/equations/Back;


.field protected param_s:F


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Laurelienribon/tweenengine/equations/Back$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Back$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Back;->IN:Laurelienribon/tweenengine/equations/Back;

    .line 24
    new-instance v0, Laurelienribon/tweenengine/equations/Back$2;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Back$2;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Back;->OUT:Laurelienribon/tweenengine/equations/Back;

    .line 37
    new-instance v0, Laurelienribon/tweenengine/equations/Back$3;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Back$3;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Back;->INOUT:Laurelienribon/tweenengine/equations/Back;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    .line 53
    const v0, 0x3fd9cd60

    iput v0, p0, Laurelienribon/tweenengine/equations/Back;->param_s:F

    return-void
.end method


.method public s(F)Laurelienribon/tweenengine/equations/Back;
    .locals 0
    .param p1, "s"    # F

    .prologue
    .line 56
    iput p1, p0, Laurelienribon/tweenengine/equations/Back;->param_s:F

    .line 57
    return-object p0
.end method
