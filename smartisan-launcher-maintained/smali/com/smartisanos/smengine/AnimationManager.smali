.class public Lcom/smartisanos/smengine/AnimationManager;
.super Ljava/lang/Object;
.source "AnimationManager.java"


.field private mAnimationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mRemovedAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mTweenManager:Laurelienribon/tweenengine/TweenManager;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Laurelienribon/tweenengine/TweenManager;

    invoke-direct {v0}, Laurelienribon/tweenengine/TweenManager;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/AnimationManager;->mTweenManager:Laurelienribon/tweenengine/TweenManager;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/AnimationManager;->mAnimationList:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/AnimationManager;->mRemovedAnimList:Ljava/util/ArrayList;

    .line 23
    return-void
.end method

.method private isContain(Lcom/smartisanos/smengine/Animation;)Z
    .locals 3
    .param p1, "anim"    # Lcom/smartisanos/smengine/Animation;

    .prologue
    .line 53
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/smengine/AnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/smartisanos/smengine/AnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/Animation;

    .line 55
    .local v1, "tmpAnim":Lcom/smartisanos/smengine/Animation;
    if-ne v1, p1, :cond_0

    .line 56
    const/4 v2, 0x1

    .line 59
    .end local v1    # "tmpAnim":Lcom/smartisanos/smengine/Animation;
    :goto_1
    return v2

    .line 53
    .restart local v1    # "tmpAnim":Lcom/smartisanos/smengine/Animation;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "tmpAnim":Lcom/smartisanos/smengine/Animation;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateAnim(F)V
    .locals 4
    .param p1, "deltaT"    # F

    .prologue
    .line 72
    iget-object v3, p0, Lcom/smartisanos/smengine/AnimationManager;->mRemovedAnimList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 73
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/smengine/AnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 74
    iget-object v3, p0, Lcom/smartisanos/smengine/AnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/Animation;

    .line 75
    .local v1, "anim":Lcom/smartisanos/smengine/Animation;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Animation;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    iget-object v3, p0, Lcom/smartisanos/smengine/AnimationManager;->mRemovedAnimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v1}, Lcom/smartisanos/smengine/Animation;->isPaused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/Animation;->onFrame(F)V

    goto :goto_1

    .line 81
    .end local v1    # "anim":Lcom/smartisanos/smengine/Animation;
    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/smartisanos/smengine/AnimationManager;->mRemovedAnimList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 82
    iget-object v3, p0, Lcom/smartisanos/smengine/AnimationManager;->mRemovedAnimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/Animation;

    .line 83
    .local v0, "a":Lcom/smartisanos/smengine/Animation;
    iget-object v3, p0, Lcom/smartisanos/smengine/AnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 85
    .end local v0    # "a":Lcom/smartisanos/smengine/Animation;
    :cond_3
    return-void
.end method


.method public forceFinishAllAnimation()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "#### All tween animation force finish!!!!!!!!!!!!!!!!!!"

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;)V

    .line 26
    :cond_0
    const/high16 v0, 0x447a0000    # 1000.0f

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/AnimationManager;->update(F)V

    .line 27
    return-void
.end method

.method public remove(Lcom/smartisanos/smengine/Animation;)V
    .locals 1
    .param p1, "anim"    # Lcom/smartisanos/smengine/Animation;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method public start(Laurelienribon/tweenengine/Tween;)V
    .locals 1
    .param p1, "anim"    # Laurelienribon/tweenengine/Tween;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationManager;->mTweenManager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Tween;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public start(Lcom/smartisanos/smengine/Animation;)V
    .locals 1
    .param p1, "anim"    # Lcom/smartisanos/smengine/Animation;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/AnimationManager;->isContain(Lcom/smartisanos/smengine/Animation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    return-void
.end method

.method public startTimeLine(Laurelienribon/tweenengine/Timeline;)V
    .locals 1
    .param p1, "timeLine"    # Laurelienribon/tweenengine/Timeline;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationManager;->mTweenManager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Timeline;->start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public update(F)V
    .locals 3
    .param p1, "deltaT"    # F

    .prologue
    .line 31
    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v0, p1, v2

    .line 32
    .local v0, "delta":F
    iget-object v2, p0, Lcom/smartisanos/smengine/AnimationManager;->mTweenManager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v2}, Laurelienribon/tweenengine/TweenManager;->getObjects()Ljava/util/ArrayList;

    move-result-object v1

    .line 34
    .local v1, "objects":Ljava/util/List;, "Ljava/util/List<Laurelienribon/tweenengine/BaseTween<*>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 35
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/smengine/AnimationManager;->mTweenManager:Laurelienribon/tweenengine/TweenManager;

    invoke-virtual {v2, v0}, Laurelienribon/tweenengine/TweenManager;->update(F)V

    .line 41
    iget-object v2, p0, Lcom/smartisanos/smengine/AnimationManager;->mAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 42
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 44
    :cond_1
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/AnimationManager;->updateAnim(F)V

    .line 45
    return-void
.end method
