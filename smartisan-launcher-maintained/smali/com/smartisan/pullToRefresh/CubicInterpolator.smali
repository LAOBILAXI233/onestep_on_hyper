.class public Lcom/smartisan/pullToRefresh/CubicInterpolator;
.super Ljava/lang/Object;
.source "CubicInterpolator.java"

.implements Landroid/view/animation/Interpolator;


.field public static IN:Lcom/smartisan/pullToRefresh/CubicInterpolator;

.field public static final INOUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

.field public static final OUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/smartisan/pullToRefresh/CubicInterpolator$1;

    invoke-direct {v0}, Lcom/smartisan/pullToRefresh/CubicInterpolator$1;-><init>()V

    sput-object v0, Lcom/smartisan/pullToRefresh/CubicInterpolator;->IN:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    .line 20
    new-instance v0, Lcom/smartisan/pullToRefresh/CubicInterpolator$2;

    invoke-direct {v0}, Lcom/smartisan/pullToRefresh/CubicInterpolator$2;-><init>()V

    sput-object v0, Lcom/smartisan/pullToRefresh/CubicInterpolator;->OUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    .line 32
    new-instance v0, Lcom/smartisan/pullToRefresh/CubicInterpolator$3;

    invoke-direct {v0}, Lcom/smartisan/pullToRefresh/CubicInterpolator$3;-><init>()V

    sput-object v0, Lcom/smartisan/pullToRefresh/CubicInterpolator;->INOUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public getInterpolation(F)F
    .locals 1
    .param p1, "input"    # F

    .prologue
    .line 50
    sget-object v0, Lcom/smartisan/pullToRefresh/CubicInterpolator;->OUT:Lcom/smartisan/pullToRefresh/CubicInterpolator;

    invoke-virtual {v0, p1}, Lcom/smartisan/pullToRefresh/CubicInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
