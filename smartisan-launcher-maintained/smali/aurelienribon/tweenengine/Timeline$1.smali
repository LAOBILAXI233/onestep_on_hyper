.class final Laurelienribon/tweenengine/Timeline$1;
.super Ljava/lang/Object;
.source "Timeline.java"

.implements Laurelienribon/tweenengine/Pool$Callback;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laurelienribon/tweenengine/Timeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laurelienribon/tweenengine/Pool$Callback",
        "<",
        "Laurelienribon/tweenengine/Timeline;",
        ">;"
    }
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onPool(Laurelienribon/tweenengine/Timeline;)V
    .locals 0
    .param p1, "obj"    # Laurelienribon/tweenengine/Timeline;

    .prologue
    .line 52
    invoke-virtual {p1}, Laurelienribon/tweenengine/Timeline;->reset()V

    return-void
.end method

.method public bridge synthetic onPool(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Timeline$1;->onPool(Laurelienribon/tweenengine/Timeline;)V

    return-void
.end method

.method public onUnPool(Laurelienribon/tweenengine/Timeline;)V
    .locals 0
    .param p1, "obj"    # Laurelienribon/tweenengine/Timeline;

    .prologue
    .line 53
    invoke-virtual {p1}, Laurelienribon/tweenengine/Timeline;->reset()V

    return-void
.end method

.method public bridge synthetic onUnPool(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Laurelienribon/tweenengine/Timeline;

    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/Timeline$1;->onUnPool(Laurelienribon/tweenengine/Timeline;)V

    return-void
.end method
