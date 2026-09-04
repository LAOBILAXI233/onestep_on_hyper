.class public Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
.super Lcom/smartisanos/smengine/Animation;
.source "SceneNodeTweenAnimation.java"

.implements Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeAnimationAccessor;,
        Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    }
.end annotation


.field public static final COLOR4F:I = 0x3

.field public static final INNER_SHADOW_ALPHA_RANGE_H:I = 0xb

.field public static final INNER_SHADOW_ALPHA_RANGE_V:I = 0xc

.field public static final INNER_SHADOW_SIZE_H:I = 0x9

.field public static final INNER_SHADOW_SIZE_V:I = 0xa

.field public static final JUST_FOR_TIMER:I = 0x14

.field public static final ROTATE_ANGLE:I = 0x2

.field public static final SCALE:I = 0x1

.field public static final SKEW_ANGLE:I = 0x8

.field public static final TEX_COORD_LIMIT:I = 0x7

.field public static final TRANSLATE:I = 0x0

.field public static final TRANSLATE_X:I = 0x4

.field public static final TRANSLATE_Y:I = 0x5

.field public static final TRANSLATE_Z:I = 0x6


.field private mTween:Laurelienribon/tweenengine/Tween;


.method public constructor <init>(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 3
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/4 v2, 0x0

    .line 637
    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation;-><init>()V

    .line 638
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;-><init>(Lcom/smartisanos/smengine/SceneNode;FFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    .line 639
    return-void
.end method

.method public constructor <init>(Lcom/smartisanos/smengine/SceneNode;Z)V
    .locals 3
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "isUpdateSceneNode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 640
    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation;-><init>()V

    .line 641
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;-><init>(Lcom/smartisanos/smengine/SceneNode;FFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    .line 642
    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setUpdateSceneNode(Z)V

    .line 643
    return-void
.end method

.method private setTweenTargetValue(Laurelienribon/tweenengine/Tween;)V
    .locals 6
    .param p1, "tween"    # Laurelienribon/tweenengine/Tween;

    .prologue
    const/4 v1, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 546
    iget v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValueType:I

    packed-switch v0, :pswitch_data_0

    .line 627
    :pswitch_0
    new-instance v0, Lcom/smartisanos/smengine/Animation$AnimationException;

    const-string v1, "unknown target value type"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/Animation$AnimationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :pswitch_1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v2, v2, v4

    invoke-virtual {p1, v0, v1, v2}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    .line 629
    :goto_0
    return-void

    .line 556
    :pswitch_2
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v2, v2, v4

    invoke-virtual {p1, v0, v1, v2}, Laurelienribon/tweenengine/Tween;->target(FFF)Laurelienribon/tweenengine/Tween;

    goto :goto_0

    .line 563
    :pswitch_3
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Tween;->target(F)Laurelienribon/tweenengine/Tween;

    goto :goto_0

    .line 568
    :pswitch_4
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v3

    invoke-virtual {p1, v0, v1}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    goto :goto_0

    .line 574
    :pswitch_5
    new-array v0, v1, [F

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v5

    aput v1, v0, v5

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Tween;->target([F)Laurelienribon/tweenengine/Tween;

    goto :goto_0

    .line 580
    :pswitch_6
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v0, v0, v2

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v3

    invoke-virtual {p1, v0, v1}, Laurelienribon/tweenengine/Tween;->target(FF)Laurelienribon/tweenengine/Tween;

    goto :goto_0

    .line 586
    :pswitch_7
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Tween;->target(F)Laurelienribon/tweenengine/Tween;

    goto :goto_0

    .line 592
    :pswitch_8
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Tween;->target(F)Laurelienribon/tweenengine/Tween;

    goto :goto_0

    .line 598
    :pswitch_9
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Tween;->target(F)Laurelienribon/tweenengine/Tween;

    goto :goto_0

    .line 603
    :pswitch_a
    new-array v0, v1, [F

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v5

    aput v1, v0, v5

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Tween;->target([F)Laurelienribon/tweenengine/Tween;

    goto/16 :goto_0

    .line 608
    :pswitch_b
    new-array v0, v1, [F

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v5

    aput v1, v0, v5

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Tween;->target([F)Laurelienribon/tweenengine/Tween;

    goto/16 :goto_0

    .line 613
    :pswitch_c
    new-array v0, v1, [F

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v5

    aput v1, v0, v5

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Tween;->target([F)Laurelienribon/tweenengine/Tween;

    goto/16 :goto_0

    .line 618
    :pswitch_d
    new-array v0, v1, [F

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v3

    aput v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v4

    aput v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v1, v1, v5

    aput v1, v0, v5

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Tween;->target([F)Laurelienribon/tweenengine/Tween;

    goto/16 :goto_0

    .line 623
    :pswitch_e
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aget v0, v0, v2

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Tween;->target(F)Laurelienribon/tweenengine/Tween;

    goto/16 :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
    .end packed-switch
.end method


.method protected createTween()Laurelienribon/tweenengine/Tween;
    .locals 4

    .prologue
    .line 714
    iget v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValueType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 715
    new-instance v1, Lcom/smartisanos/smengine/Animation$AnimationException;

    const-string v2, "target value type is invalid"

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/Animation$AnimationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    if-nez v1, :cond_1

    .line 718
    new-instance v1, Lcom/smartisanos/smengine/Animation$AnimationException;

    const-string v2, "target value is null error"

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/Animation$AnimationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 720
    :cond_1
    iget v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mDuration:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 721
    new-instance v1, Lcom/smartisanos/smengine/Animation$AnimationException;

    const-string v2, "duration is null"

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/Animation$AnimationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 723
    :cond_2
    const-class v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    invoke-static {v1}, Laurelienribon/tweenengine/Tween;->getRegisteredAccessor(Ljava/lang/Class;)Laurelienribon/tweenengine/TweenAccessor;

    move-result-object v0

    .line 724
    .local v0, "a":Laurelienribon/tweenengine/TweenAccessor;, "Laurelienribon/tweenengine/TweenAccessor<Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;>;"
    if-nez v0, :cond_3

    .line 725
    const-class v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeAnimationAccessor;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeAnimationAccessor;-><init>(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$1;)V

    invoke-static {v1, v2}, Laurelienribon/tweenengine/Tween;->registerAccessor(Ljava/lang/Class;Laurelienribon/tweenengine/TweenAccessor;)V

    .line 727
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    iget v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValueType:I

    iget v3, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mDuration:F

    invoke-static {v1, v2, v3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 728
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-direct {p0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setTweenTargetValue(Laurelienribon/tweenengine/Tween;)V

    .line 729
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    iget v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mEaseInOutType:I

    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->toTweenEaseType(I)Laurelienribon/tweenengine/TweenEquation;

    move-result-object v2

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mDelay:F

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    .line 730
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    new-instance v2, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;

    invoke-direct {v2, p0}, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;-><init>(Lcom/smartisanos/smengine/Animation;)V

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    .line 731
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->setCallbackTriggers(I)Ljava/lang/Object;

    .line 732
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->setName(Ljava/lang/String;)V

    .line 733
    iget v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mRepeatCount:I

    if-lez v1, :cond_4

    .line 734
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    iget v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mRepeatCount:I

    iget v3, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mRepeatDelay:F

    invoke-virtual {v1, v2, v3}, Laurelienribon/tweenengine/Tween;->repeat(IF)Ljava/lang/Object;

    .line 737
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v1, p0}, Laurelienribon/tweenengine/Tween;->setObjectFreeObserver(Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;)V

    .line 738
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mUserData:Ljava/lang/Byte;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    return-object v1
.end method

.method public forceFinish()V
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->update(F)V

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 753
    :cond_0
    return-void
.end method

.method public getCurrentTween()Laurelienribon/tweenengine/Tween;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    return-object v0
.end method

.method public getEasing()Laurelienribon/tweenengine/TweenEquation;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->getEasing()Laurelienribon/tweenengine/TweenEquation;

    move-result-object v0

    .line 670
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserData()B
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->getUserData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    .line 986
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isFinished()Z

    move-result v0

    .line 693
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isPaused()Z

    move-result v0

    .line 709
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isStarted()Z

    move-result v0

    .line 686
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->kill()V

    .line 676
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 677
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onKill()V

    .line 681
    :cond_0
    return-void
.end method

.method public objectFree(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 652
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-ne v0, p1, :cond_0

    .line 653
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 655
    :cond_0
    return-void
.end method

.method public onFrame(F)V
    .locals 0
    .param p1, "deltaT"    # F

    .prologue
    .line 757
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 698
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation;->reset()V

    .line 699
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 700
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    .line 701
    .local v0, "snv":Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->reset()V

    .line 703
    .end local v0    # "snv":Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 704
    return-void
.end method

.method public setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V
    .locals 1
    .param p1, "l"    # Lcom/smartisanos/smengine/Animation$AnimationListener;

    .prologue
    .line 994
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/Animation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 995
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    invoke-static {v0, p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$002(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;Lcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 996
    return-void
.end method

.method public setFromTo(IFF)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "from"    # F
    .param p3, "to"    # F

    .prologue
    const/4 v2, 0x0

    .line 767
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    .line 768
    .local v0, "snv":Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    iput p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValueType:I

    .line 769
    sparse-switch p1, :sswitch_data_0

    .line 799
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown animation value type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 772
    :sswitch_0
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aput p3, v1, v2

    .line 773
    invoke-virtual {v0, p2, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setAngle(FZ)V

    .line 801
    :goto_0
    :sswitch_1
    return-void

    .line 779
    :sswitch_2
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aput p3, v1, v2

    .line 780
    invoke-virtual {v0, p2, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setTranslateX(FZ)V

    goto :goto_0

    .line 785
    :sswitch_3
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aput p3, v1, v2

    .line 786
    invoke-virtual {v0, p2, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setTranslateY(FZ)V

    goto :goto_0

    .line 791
    :sswitch_4
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aput p3, v1, v2

    .line 792
    invoke-virtual {v0, p2, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setTranslateZ(FZ)V

    goto :goto_0

    .line 769
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public setFromTo(IFFFF)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "fromx"    # F
    .param p3, "fromy"    # F
    .param p4, "tox"    # F
    .param p5, "toy"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 803
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    .line 804
    .local v0, "snv":Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    iput p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValueType:I

    .line 805
    packed-switch p1, :pswitch_data_0

    .line 821
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown animation value type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 807
    :pswitch_0
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aput p4, v1, v2

    .line 808
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aput p5, v1, v3

    .line 809
    invoke-virtual {v0, p2, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setSkewX(FZ)V

    .line 810
    invoke-virtual {v0, p3, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setSkewY(FZ)V

    .line 823
    :goto_0
    return-void

    .line 815
    :pswitch_1
    invoke-virtual {v0, p2, p3, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setTexCoordLimit(FFZ)V

    .line 816
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aput p4, v1, v2

    .line 817
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aput p5, v1, v3

    goto :goto_0

    .line 805
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFromTo(IFFFFFF)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "fromx"    # F
    .param p3, "fromy"    # F
    .param p4, "fromz"    # F
    .param p5, "tox"    # F
    .param p6, "toy"    # F
    .param p7, "toz"    # F

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 825
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    .line 826
    .local v0, "snv":Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    iput p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValueType:I

    .line 827
    packed-switch p1, :pswitch_data_0

    .line 846
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown animation value type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 830
    :pswitch_0
    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setScale(FFFZ)V

    .line 831
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aput p5, v1, v2

    .line 832
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aput p6, v1, v3

    .line 833
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aput p7, v1, v4

    .line 848
    :goto_0
    return-void

    .line 839
    :pswitch_1
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aput p5, v1, v2

    .line 840
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aput p6, v1, v3

    .line 841
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    aput p7, v1, v4

    .line 842
    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setTranslate(FFFZ)V

    goto :goto_0

    .line 827
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFromTo(IFFFFFFFF)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "fromx"    # F
    .param p3, "fromy"    # F
    .param p4, "fromz"    # F
    .param p5, "fromw"    # F
    .param p6, "tox"    # F
    .param p7, "toy"    # F
    .param p8, "toz"    # F
    .param p9, "tow"    # F

    .prologue
    .line 850
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    .line 851
    .local v0, "snv":Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    iput p1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValueType:I

    .line 852
    packed-switch p1, :pswitch_data_0

    .line 899
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown animation value type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 855
    :pswitch_1
    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setColor4f(FFFFZ)V

    .line 856
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x0

    aput p6, v1, v2

    .line 857
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x1

    aput p7, v1, v2

    .line 858
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x2

    aput p8, v1, v2

    .line 859
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x3

    aput p9, v1, v2

    .line 901
    :goto_0
    return-void

    .line 864
    :pswitch_2
    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setInnerShadowSizeH(FFFFZ)V

    .line 865
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x0

    aput p6, v1, v2

    .line 866
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x1

    aput p7, v1, v2

    .line 867
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x2

    aput p8, v1, v2

    .line 868
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x3

    aput p9, v1, v2

    goto :goto_0

    .line 873
    :pswitch_3
    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setInnerShadowSizeV(FFFFZ)V

    .line 874
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x0

    aput p6, v1, v2

    .line 875
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x1

    aput p7, v1, v2

    .line 876
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x2

    aput p8, v1, v2

    .line 877
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x3

    aput p9, v1, v2

    goto :goto_0

    .line 882
    :pswitch_4
    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setInnerShadowAlphaRangeH(FFFFZ)V

    .line 883
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x0

    aput p6, v1, v2

    .line 884
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x1

    aput p7, v1, v2

    .line 885
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x2

    aput p8, v1, v2

    .line 886
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x3

    aput p9, v1, v2

    goto :goto_0

    .line 891
    :pswitch_5
    const/4 v5, 0x0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setInnerShadowAlphaRangeV(FFFFZ)V

    .line 892
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x0

    aput p6, v1, v2

    .line 893
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x1

    aput p7, v1, v2

    .line 894
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x2

    aput p8, v1, v2

    .line 895
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mTargetValue:[F

    const/4 v2, 0x3

    aput p9, v1, v2

    goto :goto_0

    .line 852
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setPreserveNodeColor(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 635
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setPreserveColor(Z)V

    .line 636
    return-void
.end method

.method public setPreserveNodeScale(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 632
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setPreserveScale(Z)V

    .line 633
    return-void
.end method

.method public setRotateAxis(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 1
    .param p1, "axis"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 763
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    .line 764
    .local v0, "snv":Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setAxis(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 765
    return-void
.end method

.method public setSceneNode(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 4
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 657
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 658
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    check-cast v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    .line 659
    .local v1, "snv":Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    invoke-static {v1, p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$102(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/SceneNode;

    .line 660
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 661
    .local v0, "scale":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$300(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v3, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 662
    invoke-static {v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$300(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v3, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 663
    invoke-static {v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$300(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v3, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 665
    .end local v0    # "scale":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v1    # "snv":Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    :cond_0
    return-void
.end method

.method public setUpdateSceneNode(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 645
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 646
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    .line 647
    .local v0, "snv":Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    invoke-static {v0, p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$202(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;Z)Z

    .line 649
    .end local v0    # "snv":Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    :cond_0
    return-void
.end method

.method public setUseColorForConstantBlendColor(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 759
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mAccessorTarget:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    .line 760
    .local v0, "snv":Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    invoke-static {v0, p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$502(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;Z)Z

    .line 761
    return-void
.end method

.method public setUserData(B)V
    .locals 2
    .param p1, "data"    # B

    .prologue
    .line 976
    const/4 v0, -0x1

    if-lt v0, p1, :cond_0

    .line 977
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid user data, must >= 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 979
    :cond_0
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->mUserData:Ljava/lang/Byte;

    .line 980
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 744
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->createTween()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    .line 745
    .local v0, "tween":Laurelienribon/tweenengine/Tween;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/AnimationManager;->start(Laurelienribon/tweenengine/Tween;)V

    .line 746
    return-void
.end method
