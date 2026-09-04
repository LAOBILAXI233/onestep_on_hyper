.class public abstract Laurelienribon/tweenengine/equations/Overshoot;
.super Laurelienribon/tweenengine/TweenEquation;
.source "Overshoot.java"


.field public static final INOUT:Laurelienribon/tweenengine/equations/Overshoot;

.field private static final mTension:F = 2.0f


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Laurelienribon/tweenengine/equations/Overshoot$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Overshoot$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Overshoot;->INOUT:Laurelienribon/tweenengine/equations/Overshoot;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    return-void
.end method
