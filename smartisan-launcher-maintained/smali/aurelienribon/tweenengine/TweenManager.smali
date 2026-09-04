.class public Laurelienribon/tweenengine/TweenManager;
.super Ljava/lang/Object;
.source "TweenManager.java"


.field private static final TAG:Ljava/lang/String; = "TweenManager"


.field private isPaused:Z

.field private final objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Laurelienribon/tweenengine/BaseTween",
            "<*>;>;"
        }
    .end annotation
.end field


.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Laurelienribon/tweenengine/TweenManager;->isPaused:Z

    return-void
.end method

.method private static getTimelinesCount(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laurelienribon/tweenengine/BaseTween",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "objs":Ljava/util/List;, "Ljava/util/List<Laurelienribon/tweenengine/BaseTween<*>;>;"
    const/4 v0, 0x0

    .line 231
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 232
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/BaseTween;

    .line 233
    .local v3, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    instance-of v4, v3, Laurelienribon/tweenengine/Timeline;

    if-eqz v4, :cond_0

    .line 234
    check-cast v3, Laurelienribon/tweenengine/Timeline;

    .end local v3    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    invoke-virtual {v3}, Laurelienribon/tweenengine/Timeline;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Laurelienribon/tweenengine/TweenManager;->getTimelinesCount(Ljava/util/List;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v0, v4

    .line 231
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    :cond_1
    return v0
.end method

.method private static getTweensCount(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laurelienribon/tweenengine/BaseTween",
            "<*>;>;)I"
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "objs":Ljava/util/List;, "Ljava/util/List<Laurelienribon/tweenengine/BaseTween<*>;>;"
    const/4 v0, 0x0

    .line 221
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 222
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/BaseTween;

    .line 223
    .local v3, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    instance-of v4, v3, Laurelienribon/tweenengine/Tween;

    if-eqz v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 221
    .end local v3    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .restart local v3    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_0
    check-cast v3, Laurelienribon/tweenengine/Timeline;

    .end local v3    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    invoke-virtual {v3}, Laurelienribon/tweenengine/Timeline;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Laurelienribon/tweenengine/TweenManager;->getTweensCount(Ljava/util/List;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 226
    :cond_1
    return v0
.end method

.method public static setAutoRemove(Laurelienribon/tweenengine/BaseTween;Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laurelienribon/tweenengine/BaseTween",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "object":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    iput-boolean p1, p0, Laurelienribon/tweenengine/BaseTween;->isAutoRemoveEnabled:Z

    .line 35
    return-void
.end method

.method public static setAutoStart(Laurelienribon/tweenengine/BaseTween;Z)V
    .locals 0
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laurelienribon/tweenengine/BaseTween",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "object":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    iput-boolean p1, p0, Laurelienribon/tweenengine/BaseTween;->isAutoStartEnabled:Z

    .line 45
    return-void
.end method


.method public add(Laurelienribon/tweenengine/BaseTween;)Laurelienribon/tweenengine/TweenManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laurelienribon/tweenengine/BaseTween",
            "<*>;)",
            "Laurelienribon/tweenengine/TweenManager;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "object":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    iget-boolean v0, p1, Laurelienribon/tweenengine/BaseTween;->isAutoStartEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Laurelienribon/tweenengine/BaseTween;->start()Ljava/lang/Object;

    .line 62
    :cond_1
    return-object p0
.end method

.method public containsTarget(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 71
    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/BaseTween;

    .line 72
    .local v2, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    invoke-virtual {v2, p1}, Laurelienribon/tweenengine/BaseTween;->containsTarget(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 74
    .end local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :goto_1
    return v3

    .line 70
    .restart local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public containsTarget(Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "tweenType"    # I

    .prologue
    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 83
    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/BaseTween;

    .line 84
    .local v2, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    invoke-virtual {v2, p1, p2}, Laurelienribon/tweenengine/BaseTween;->containsTarget(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 86
    .end local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :goto_1
    return v3

    .line 82
    .restart local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public ensureCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    .prologue
    .line 126
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 127
    return-void
.end method

.method public getObjects()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Laurelienribon/tweenengine/BaseTween",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRunningTimelinesCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-static {v0}, Laurelienribon/tweenengine/TweenManager;->getTimelinesCount(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getRunningTweensCount()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-static {v0}, Laurelienribon/tweenengine/TweenManager;->getTweensCount(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public killAll()V
    .locals 4

    .prologue
    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 94
    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/BaseTween;

    .line 95
    .local v2, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    invoke-virtual {v2}, Laurelienribon/tweenengine/BaseTween;->kill()V

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_0
    return-void
.end method

.method public killTarget(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 105
    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/BaseTween;

    .line 106
    .local v2, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    invoke-virtual {v2, p1}, Laurelienribon/tweenengine/BaseTween;->killTarget(Ljava/lang/Object;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_0
    return-void
.end method

.method public killTarget(Ljava/lang/Object;I)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "tweenType"    # I

    .prologue
    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 117
    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/BaseTween;

    .line 118
    .local v2, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    invoke-virtual {v2, p1, p2}, Laurelienribon/tweenengine/BaseTween;->killTarget(Ljava/lang/Object;I)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/TweenManager;->isPaused:Z

    .line 134
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Laurelienribon/tweenengine/TweenManager;->isPaused:Z

    .line 141
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public update(F)V
    .locals 4
    .param p1, "delta"    # F

    .prologue
    .line 157
    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 158
    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laurelienribon/tweenengine/BaseTween;

    .line 159
    .local v2, "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    invoke-virtual {v2}, Laurelienribon/tweenengine/BaseTween;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Laurelienribon/tweenengine/BaseTween;->isAutoRemoveEnabled:Z

    if-eqz v3, :cond_0

    .line 160
    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 161
    invoke-virtual {v2}, Laurelienribon/tweenengine/BaseTween;->free()V

    .line 157
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 165
    .end local v2    # "obj":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    :cond_1
    iget-boolean v3, p0, Laurelienribon/tweenengine/TweenManager;->isPaused:Z

    if-nez v3, :cond_3

    .line 166
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    .line 167
    const/4 v0, 0x0

    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "n":I
    :goto_1
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v3, p1}, Laurelienribon/tweenengine/BaseTween;->update(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    .end local v1    # "n":I
    :cond_2
    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_2
    if-ltz v0, :cond_3

    iget-object v3, p0, Laurelienribon/tweenengine/TweenManager;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v3, p1}, Laurelienribon/tweenengine/BaseTween;->update(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 172
    :cond_3
    return-void
.end method
