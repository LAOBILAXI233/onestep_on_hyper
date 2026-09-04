.class abstract Laurelienribon/tweenengine/Pool;
.super Ljava/lang/Object;
.source "Pool.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laurelienribon/tweenengine/Pool$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


.field private final callback:Laurelienribon/tweenengine/Pool$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laurelienribon/tweenengine/Pool$Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


.method public constructor <init>(ILaurelienribon/tweenengine/Pool$Callback;)V
    .locals 1
    .param p1, "initCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Laurelienribon/tweenengine/Pool$Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, "this":Laurelienribon/tweenengine/Pool;, "Laurelienribon/tweenengine/Pool<TT;>;"
    .local p2, "callback":Laurelienribon/tweenengine/Pool$Callback;, "Laurelienribon/tweenengine/Pool$Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    .line 17
    iput-object p2, p0, Laurelienribon/tweenengine/Pool;->callback:Laurelienribon/tweenengine/Pool$Callback;

    .line 18
    return-void
.end method


.method public clear()V
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Laurelienribon/tweenengine/Pool;, "Laurelienribon/tweenengine/Pool<TT;>;"
    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 35
    return-void
.end method

.method protected abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public ensureCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    .prologue
    .line 42
    .local p0, "this":Laurelienribon/tweenengine/Pool;, "Laurelienribon/tweenengine/Pool<TT;>;"
    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 43
    return-void
.end method

.method public free(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Laurelienribon/tweenengine/Pool;, "Laurelienribon/tweenengine/Pool<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->callback:Laurelienribon/tweenengine/Pool$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->callback:Laurelienribon/tweenengine/Pool$Callback;

    invoke-interface {v0, p1}, Laurelienribon/tweenengine/Pool$Callback;->onPool(Ljava/lang/Object;)V

    .line 29
    :cond_0
    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_1
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Laurelienribon/tweenengine/Pool;, "Laurelienribon/tweenengine/Pool<TT;>;"
    iget-object v1, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Laurelienribon/tweenengine/Pool;->create()Ljava/lang/Object;

    move-result-object v0

    .line 22
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    :goto_0
    iget-object v1, p0, Laurelienribon/tweenengine/Pool;->callback:Laurelienribon/tweenengine/Pool$Callback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Laurelienribon/tweenengine/Pool;->callback:Laurelienribon/tweenengine/Pool$Callback;

    invoke-interface {v1, v0}, Laurelienribon/tweenengine/Pool$Callback;->onUnPool(Ljava/lang/Object;)V

    .line 23
    :cond_0
    return-object v0

    .line 21
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-object v1, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    iget-object v2, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Laurelienribon/tweenengine/Pool;, "Laurelienribon/tweenengine/Pool<TT;>;"
    iget-object v0, p0, Laurelienribon/tweenengine/Pool;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
