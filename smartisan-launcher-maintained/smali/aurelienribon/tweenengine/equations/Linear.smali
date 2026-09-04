.class public abstract Laurelienribon/tweenengine/equations/Linear;
.super Laurelienribon/tweenengine/TweenEquation;
.source "Linear.java"


.field public static final INOUT:Laurelienribon/tweenengine/equations/Linear;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Laurelienribon/tweenengine/equations/Linear$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Linear$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    return-void
.end method
