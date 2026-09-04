.class public abstract Laurelienribon/tweenengine/equations/Elastic;
.super Laurelienribon/tweenengine/TweenEquation;
.source "Elastic.java"


.field public static final IN:Laurelienribon/tweenengine/equations/Elastic;

.field public static final INOUT:Laurelienribon/tweenengine/equations/Elastic;

.field public static final OUT:Laurelienribon/tweenengine/equations/Elastic;

.field private static final PI:F = 3.1415927f


.field protected param_a:F

.field protected param_p:F

.field protected setA:Z

.field protected setP:Z


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Laurelienribon/tweenengine/equations/Elastic$1;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Elastic$1;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Elastic;->IN:Laurelienribon/tweenengine/equations/Elastic;

    .line 31
    new-instance v0, Laurelienribon/tweenengine/equations/Elastic$2;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Elastic$2;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Elastic;->OUT:Laurelienribon/tweenengine/equations/Elastic;

    .line 49
    new-instance v0, Laurelienribon/tweenengine/equations/Elastic$3;

    invoke-direct {v0}, Laurelienribon/tweenengine/equations/Elastic$3;-><init>()V

    sput-object v0, Laurelienribon/tweenengine/equations/Elastic;->INOUT:Laurelienribon/tweenengine/equations/Elastic;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Laurelienribon/tweenengine/TweenEquation;-><init>()V

    .line 72
    iput-boolean v0, p0, Laurelienribon/tweenengine/equations/Elastic;->setA:Z

    .line 73
    iput-boolean v0, p0, Laurelienribon/tweenengine/equations/Elastic;->setP:Z

    return-void
.end method


.method public a(F)Laurelienribon/tweenengine/equations/Elastic;
    .locals 1
    .param p1, "a"    # F

    .prologue
    .line 76
    iput p1, p0, Laurelienribon/tweenengine/equations/Elastic;->param_a:F

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/equations/Elastic;->setA:Z

    .line 78
    return-object p0
.end method

.method public p(F)Laurelienribon/tweenengine/equations/Elastic;
    .locals 1
    .param p1, "p"    # F

    .prologue
    .line 82
    iput p1, p0, Laurelienribon/tweenengine/equations/Elastic;->param_p:F

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/equations/Elastic;->setP:Z

    .line 84
    return-object p0
.end method
