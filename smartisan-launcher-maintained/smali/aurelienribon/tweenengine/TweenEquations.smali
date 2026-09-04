.class public interface abstract Laurelienribon/tweenengine/TweenEquations;
.super Ljava/lang/Object;
.source "TweenEquations.java"


.field public static final easeInBack:Laurelienribon/tweenengine/equations/Back;

.field public static final easeInBounce:Laurelienribon/tweenengine/equations/Bounce;

.field public static final easeInCirc:Laurelienribon/tweenengine/equations/Circ;

.field public static final easeInCubic:Laurelienribon/tweenengine/equations/Cubic;

.field public static final easeInElastic:Laurelienribon/tweenengine/equations/Elastic;

.field public static final easeInExpo:Laurelienribon/tweenengine/equations/Expo;

.field public static final easeInOutBack:Laurelienribon/tweenengine/equations/Back;

.field public static final easeInOutBounce:Laurelienribon/tweenengine/equations/Bounce;

.field public static final easeInOutCirc:Laurelienribon/tweenengine/equations/Circ;

.field public static final easeInOutCubic:Laurelienribon/tweenengine/equations/Cubic;

.field public static final easeInOutElastic:Laurelienribon/tweenengine/equations/Elastic;

.field public static final easeInOutExpo:Laurelienribon/tweenengine/equations/Expo;

.field public static final easeInOutQuad:Laurelienribon/tweenengine/equations/Quad;

.field public static final easeInOutQuart:Laurelienribon/tweenengine/equations/Quart;

.field public static final easeInOutQuint:Laurelienribon/tweenengine/equations/Quint;

.field public static final easeInOutSine:Laurelienribon/tweenengine/equations/Sine;

.field public static final easeInQuad:Laurelienribon/tweenengine/equations/Quad;

.field public static final easeInQuart:Laurelienribon/tweenengine/equations/Quart;

.field public static final easeInQuint:Laurelienribon/tweenengine/equations/Quint;

.field public static final easeInSine:Laurelienribon/tweenengine/equations/Sine;

.field public static final easeNone:Laurelienribon/tweenengine/equations/Linear;

.field public static final easeOutBack:Laurelienribon/tweenengine/equations/Back;

.field public static final easeOutBounce:Laurelienribon/tweenengine/equations/Bounce;

.field public static final easeOutCirc:Laurelienribon/tweenengine/equations/Circ;

.field public static final easeOutCubic:Laurelienribon/tweenengine/equations/Cubic;

.field public static final easeOutElastic:Laurelienribon/tweenengine/equations/Elastic;

.field public static final easeOutExpo:Laurelienribon/tweenengine/equations/Expo;

.field public static final easeOutQuad:Laurelienribon/tweenengine/equations/Quad;

.field public static final easeOutQuart:Laurelienribon/tweenengine/equations/Quart;

.field public static final easeOutQuint:Laurelienribon/tweenengine/equations/Quint;

.field public static final easeOutSine:Laurelienribon/tweenengine/equations/Sine;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeNone:Laurelienribon/tweenengine/equations/Linear;

    .line 22
    sget-object v0, Laurelienribon/tweenengine/equations/Quad;->IN:Laurelienribon/tweenengine/equations/Quad;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInQuad:Laurelienribon/tweenengine/equations/Quad;

    .line 23
    sget-object v0, Laurelienribon/tweenengine/equations/Quad;->OUT:Laurelienribon/tweenengine/equations/Quad;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeOutQuad:Laurelienribon/tweenengine/equations/Quad;

    .line 24
    sget-object v0, Laurelienribon/tweenengine/equations/Quad;->INOUT:Laurelienribon/tweenengine/equations/Quad;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInOutQuad:Laurelienribon/tweenengine/equations/Quad;

    .line 25
    sget-object v0, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInCubic:Laurelienribon/tweenengine/equations/Cubic;

    .line 26
    sget-object v0, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeOutCubic:Laurelienribon/tweenengine/equations/Cubic;

    .line 27
    sget-object v0, Laurelienribon/tweenengine/equations/Cubic;->INOUT:Laurelienribon/tweenengine/equations/Cubic;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInOutCubic:Laurelienribon/tweenengine/equations/Cubic;

    .line 28
    sget-object v0, Laurelienribon/tweenengine/equations/Quart;->IN:Laurelienribon/tweenengine/equations/Quart;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInQuart:Laurelienribon/tweenengine/equations/Quart;

    .line 29
    sget-object v0, Laurelienribon/tweenengine/equations/Quart;->OUT:Laurelienribon/tweenengine/equations/Quart;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeOutQuart:Laurelienribon/tweenengine/equations/Quart;

    .line 30
    sget-object v0, Laurelienribon/tweenengine/equations/Quart;->INOUT:Laurelienribon/tweenengine/equations/Quart;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInOutQuart:Laurelienribon/tweenengine/equations/Quart;

    .line 31
    sget-object v0, Laurelienribon/tweenengine/equations/Quint;->IN:Laurelienribon/tweenengine/equations/Quint;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInQuint:Laurelienribon/tweenengine/equations/Quint;

    .line 32
    sget-object v0, Laurelienribon/tweenengine/equations/Quint;->OUT:Laurelienribon/tweenengine/equations/Quint;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeOutQuint:Laurelienribon/tweenengine/equations/Quint;

    .line 33
    sget-object v0, Laurelienribon/tweenengine/equations/Quint;->INOUT:Laurelienribon/tweenengine/equations/Quint;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInOutQuint:Laurelienribon/tweenengine/equations/Quint;

    .line 34
    sget-object v0, Laurelienribon/tweenengine/equations/Circ;->IN:Laurelienribon/tweenengine/equations/Circ;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInCirc:Laurelienribon/tweenengine/equations/Circ;

    .line 35
    sget-object v0, Laurelienribon/tweenengine/equations/Circ;->OUT:Laurelienribon/tweenengine/equations/Circ;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeOutCirc:Laurelienribon/tweenengine/equations/Circ;

    .line 36
    sget-object v0, Laurelienribon/tweenengine/equations/Circ;->INOUT:Laurelienribon/tweenengine/equations/Circ;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInOutCirc:Laurelienribon/tweenengine/equations/Circ;

    .line 37
    sget-object v0, Laurelienribon/tweenengine/equations/Sine;->IN:Laurelienribon/tweenengine/equations/Sine;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInSine:Laurelienribon/tweenengine/equations/Sine;

    .line 38
    sget-object v0, Laurelienribon/tweenengine/equations/Sine;->OUT:Laurelienribon/tweenengine/equations/Sine;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeOutSine:Laurelienribon/tweenengine/equations/Sine;

    .line 39
    sget-object v0, Laurelienribon/tweenengine/equations/Sine;->INOUT:Laurelienribon/tweenengine/equations/Sine;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInOutSine:Laurelienribon/tweenengine/equations/Sine;

    .line 40
    sget-object v0, Laurelienribon/tweenengine/equations/Expo;->IN:Laurelienribon/tweenengine/equations/Expo;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInExpo:Laurelienribon/tweenengine/equations/Expo;

    .line 41
    sget-object v0, Laurelienribon/tweenengine/equations/Expo;->OUT:Laurelienribon/tweenengine/equations/Expo;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeOutExpo:Laurelienribon/tweenengine/equations/Expo;

    .line 42
    sget-object v0, Laurelienribon/tweenengine/equations/Expo;->INOUT:Laurelienribon/tweenengine/equations/Expo;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInOutExpo:Laurelienribon/tweenengine/equations/Expo;

    .line 43
    sget-object v0, Laurelienribon/tweenengine/equations/Back;->IN:Laurelienribon/tweenengine/equations/Back;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInBack:Laurelienribon/tweenengine/equations/Back;

    .line 44
    sget-object v0, Laurelienribon/tweenengine/equations/Back;->OUT:Laurelienribon/tweenengine/equations/Back;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeOutBack:Laurelienribon/tweenengine/equations/Back;

    .line 45
    sget-object v0, Laurelienribon/tweenengine/equations/Back;->INOUT:Laurelienribon/tweenengine/equations/Back;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInOutBack:Laurelienribon/tweenengine/equations/Back;

    .line 46
    sget-object v0, Laurelienribon/tweenengine/equations/Bounce;->IN:Laurelienribon/tweenengine/equations/Bounce;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInBounce:Laurelienribon/tweenengine/equations/Bounce;

    .line 47
    sget-object v0, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeOutBounce:Laurelienribon/tweenengine/equations/Bounce;

    .line 48
    sget-object v0, Laurelienribon/tweenengine/equations/Bounce;->INOUT:Laurelienribon/tweenengine/equations/Bounce;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInOutBounce:Laurelienribon/tweenengine/equations/Bounce;

    .line 49
    sget-object v0, Laurelienribon/tweenengine/equations/Elastic;->IN:Laurelienribon/tweenengine/equations/Elastic;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInElastic:Laurelienribon/tweenengine/equations/Elastic;

    .line 50
    sget-object v0, Laurelienribon/tweenengine/equations/Elastic;->OUT:Laurelienribon/tweenengine/equations/Elastic;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeOutElastic:Laurelienribon/tweenengine/equations/Elastic;

    .line 51
    sget-object v0, Laurelienribon/tweenengine/equations/Elastic;->INOUT:Laurelienribon/tweenengine/equations/Elastic;

    sput-object v0, Laurelienribon/tweenengine/TweenEquations;->easeInOutElastic:Laurelienribon/tweenengine/equations/Elastic;

    return-void
.end method
