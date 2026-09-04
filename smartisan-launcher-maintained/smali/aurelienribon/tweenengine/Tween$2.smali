.class final Laurelienribon/tweenengine/Tween$2;
.super Laurelienribon/tweenengine/Pool;
.source "Tween.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/Tween;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laurelienribon/tweenengine/Pool",
        "<",
        "Laurelienribon/tweenengine/Tween;",
        ">;"
    }
.end annotation


.method constructor <init>(ILaurelienribon/tweenengine/Pool$Callback;)V
    .locals 0
    .param p1, "initCapacity"    # I

    .prologue
    .line 126
    .local p2, "callback":Laurelienribon/tweenengine/Pool$Callback;, "Laurelienribon/tweenengine/Pool$Callback<Laurelienribon/tweenengine/Tween;>;"
    invoke-direct {p0, p1, p2}, Laurelienribon/tweenengine/Pool;-><init>(ILaurelienribon/tweenengine/Pool$Callback;)V

    return-void
.end method


.method protected create()Laurelienribon/tweenengine/Tween;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Laurelienribon/tweenengine/Tween;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laurelienribon/tweenengine/Tween;-><init>(Laurelienribon/tweenengine/Tween$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Laurelienribon/tweenengine/Tween$2;->create()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    return-object v0
.end method
