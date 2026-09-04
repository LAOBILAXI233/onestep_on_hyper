.class final Laurelienribon/tweenengine/Timeline$2;
.super Laurelienribon/tweenengine/Pool;
.source "Timeline.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laurelienribon/tweenengine/Pool",
        "<",
        "Laurelienribon/tweenengine/Timeline;",
        ">;"
    }
.end annotation


.method constructor <init>(ILaurelienribon/tweenengine/Pool$Callback;)V
    .locals 0
    .param p1, "initCapacity"    # I

    .prologue
    .line 56
    .local p2, "callback":Laurelienribon/tweenengine/Pool$Callback;, "Laurelienribon/tweenengine/Pool$Callback<Laurelienribon/tweenengine/Timeline;>;"
    invoke-direct {p0, p1, p2}, Laurelienribon/tweenengine/Pool;-><init>(ILaurelienribon/tweenengine/Pool$Callback;)V

    return-void
.end method


.method protected create()Laurelienribon/tweenengine/Timeline;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Laurelienribon/tweenengine/Timeline;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laurelienribon/tweenengine/Timeline;-><init>(Laurelienribon/tweenengine/Timeline$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Laurelienribon/tweenengine/Timeline$2;->create()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    return-object v0
.end method
