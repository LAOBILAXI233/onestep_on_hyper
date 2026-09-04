.class public Lcom/smartisanos/smengine/AnimationTimeLine;
.super Lcom/smartisanos/smengine/Animation;
.source "AnimationTimeLine.java"

.implements Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;
    }
.end annotation


.field private mAnimDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeline:Laurelienribon/tweenengine/Timeline;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mAnimDataList:Ljava/util/ArrayList;

    return-void
.end method


.method public clearAllAnmiation()V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mAnimDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    .line 22
    return-void
.end method

.method protected createTimeline()Laurelienribon/tweenengine/Timeline;
    .locals 6

    .prologue
    .line 38
    invoke-static {}, Laurelienribon/tweenengine/Timeline;->createParallel()Laurelienribon/tweenengine/Timeline;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    .line 39
    iget-object v4, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    iget v5, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mDelay:F

    invoke-virtual {v4, v5}, Laurelienribon/tweenengine/Timeline;->delay(F)Ljava/lang/Object;

    .line 40
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mAnimDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 41
    iget-object v4, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mAnimDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;

    .line 42
    .local v0, "ad":Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;
    iget-object v4, v0, Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;->anim:Lcom/smartisanos/smengine/Animation;

    iget v5, v0, Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;->startTime:F

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/Animation;->setDelay(F)V

    .line 43
    iget-object v4, v0, Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;->anim:Lcom/smartisanos/smengine/Animation;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Animation;->createTween()Laurelienribon/tweenengine/Tween;

    move-result-object v3

    .line 44
    .local v3, "tween":Laurelienribon/tweenengine/Tween;
    iget-object v4, v0, Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;->anim:Lcom/smartisanos/smengine/Animation;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/Animation;->createTimeline()Laurelienribon/tweenengine/Timeline;

    move-result-object v2

    .line 45
    .local v2, "tl":Laurelienribon/tweenengine/Timeline;
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 46
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "tween and tl all null"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 48
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 49
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "tween and tl all not null"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 51
    :cond_1
    if-eqz v3, :cond_3

    .line 52
    iget-object v4, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v4, v3}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Timeline;

    .line 40
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_3
    if-eqz v2, :cond_2

    .line 54
    iget-object v4, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v4, v2}, Laurelienribon/tweenengine/Timeline;->push(Laurelienribon/tweenengine/Timeline;)Laurelienribon/tweenengine/Timeline;

    goto :goto_1

    .line 57
    .end local v0    # "ad":Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;
    .end local v2    # "tl":Laurelienribon/tweenengine/Timeline;
    .end local v3    # "tween":Laurelienribon/tweenengine/Tween;
    :cond_4
    iget-object v4, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    new-instance v5, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;

    invoke-direct {v5, p0}, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;-><init>(Lcom/smartisanos/smengine/Animation;)V

    invoke-virtual {v4, v5}, Laurelienribon/tweenengine/Timeline;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    .line 58
    iget-object v4, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    const/16 v5, 0xff

    invoke-virtual {v4, v5}, Laurelienribon/tweenengine/Timeline;->setCallbackTriggers(I)Ljava/lang/Object;

    .line 59
    iget-object v4, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v4, p0}, Laurelienribon/tweenengine/Timeline;->setObjectFreeObserver(Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;)V

    .line 60
    iget-object v4, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/AnimationTimeLine;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Laurelienribon/tweenengine/Timeline;->setName(Ljava/lang/String;)V

    .line 61
    iget-object v4, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    iget-object v5, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mUserData:Ljava/lang/Byte;

    invoke-virtual {v4, v5}, Laurelienribon/tweenengine/Timeline;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v4, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    return-object v4
.end method

.method public forceFinish()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Timeline;->update(F)V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    goto :goto_0
.end method

.method public getCurrentTimeline()Laurelienribon/tweenengine/Timeline;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    return-object v0
.end method

.method public getUserData()B
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->getUserData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->isFinished()Z

    move-result v0

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Timeline;->kill()V

    .line 84
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onKill()V

    .line 88
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    .line 89
    return-void
.end method

.method public objectFree(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    if-ne v0, p1, :cond_0

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    .line 35
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-object v1, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mAnimDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;

    .line 120
    .local v0, "animData":Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;
    if-eqz v0, :cond_0

    .line 121
    iget-object v2, v0, Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;->anim:Lcom/smartisanos/smengine/Animation;

    if-eqz v2, :cond_0

    .line 122
    iget-object v2, v0, Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;->anim:Lcom/smartisanos/smengine/Animation;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Animation;->reset()V

    .line 123
    iput-object v3, v0, Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;->anim:Lcom/smartisanos/smengine/Animation;

    goto :goto_0

    .line 127
    .end local v0    # "animData":Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mAnimDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 128
    iput-object v3, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mTimeline:Laurelienribon/tweenengine/Timeline;

    .line 129
    return-void
.end method

.method public setAnimation(FLcom/smartisanos/smengine/Animation;)V
    .locals 2
    .param p1, "startTime"    # F
    .param p2, "anim"    # Lcom/smartisanos/smengine/Animation;

    .prologue
    .line 24
    new-instance v0, Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;-><init>(Lcom/smartisanos/smengine/AnimationTimeLine$1;)V

    .line 25
    .local v0, "animData":Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;
    iput p1, v0, Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;->startTime:F

    .line 26
    iput-object p2, v0, Lcom/smartisanos/smengine/AnimationTimeLine$AnimData;->anim:Lcom/smartisanos/smengine/Animation;

    .line 27
    invoke-virtual {p2, p1}, Lcom/smartisanos/smengine/Animation;->setDelay(F)V

    .line 28
    iget-object v1, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mAnimDataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public setUserData(B)V
    .locals 2
    .param p1, "data"    # B

    .prologue
    .line 101
    const/4 v0, -0x1

    if-lt v0, p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid user data, must >= 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    iput-object v0, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mUserData:Ljava/lang/Byte;

    .line 105
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/smartisanos/smengine/AnimationTimeLine;->createTimeline()Laurelienribon/tweenengine/Timeline;

    move-result-object v0

    .line 67
    .local v0, "timeLine":Laurelienribon/tweenengine/Timeline;
    iget v1, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mRepeatCount:I

    if-lez v1, :cond_0

    .line 68
    iget v1, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mRepeatCount:I

    iget v2, p0, Lcom/smartisanos/smengine/AnimationTimeLine;->mRepeatDelay:F

    invoke-virtual {v0, v1, v2}, Laurelienribon/tweenengine/Timeline;->repeat(IF)Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/AnimationManager;->startTimeLine(Laurelienribon/tweenengine/Timeline;)V

    .line 71
    return-void
.end method
