.class public abstract Laurelienribon/tweenengine/equations/Quint;
.super Laurelienribon/tweenengine/TweenEquation;
.source "Quint.java"


.field public static final IN:Laurelienribon/tweenengine/equations/Quint;

.field public static final INOUT:Laurelienribon/tweenengine/equations/Quint;

.field public static final OUT:Laurelienribon/tweenengine/equations/Quint;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Laurelienribon/tweenengine/equations/Quint$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Quint$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Quint;->IN:Laurelienribon/tweenengine/equations/Quint;

    .line 23
    new-instance v0, Laurelienribon/tweenengine/equations/Quint$2;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Quint$2;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Quint;->OUT:Laurelienribon/tweenengine/equations/Quint;

    .line 35
    new-instance v0, Laurelienribon/tweenengine/equations/Quint$3;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Quint$3;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Quint;->INOUT:Laurelienribon/tweenengine/equations/Quint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    return-void
.end method
