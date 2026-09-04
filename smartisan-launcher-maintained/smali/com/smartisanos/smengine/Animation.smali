.class public abstract Lcom/smartisanos/smengine/Animation;
.super Ljava/lang/Object;
.source "Animation.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/Animation$AnimationListener;,
        Lcom/smartisanos/smengine/Animation$MyTweenCallBack;,
        Lcom/smartisanos/smengine/Animation$AnimationException;
    }
.end annotation


.field public static final BACK_IN:I = 0x4

.field public static final BACK_IN_OUT:I = 0x6

.field public static final BACK_OUT:I = 0x5

.field public static final BEZIER_IN_OUT:I = 0x1d

.field public static final BOUNCE_IN:I = 0x7

.field public static final BOUNCE_IN_OUT:I = 0x9

.field public static final BOUNCE_OUT:I = 0x8

.field public static final CIRC_IN:I = 0xa

.field public static final CIRC_IN_OUT:I = 0xc

.field public static final CIRC_OUT:I = 0xb

.field public static final CUBIC_IN:I = 0xd

.field public static final CUBIC_IN_OUT:I = 0xf

.field public static final CUBIC_OUT:I = 0xe

.field public static final EXPO_IN:I = 0x10

.field public static final EXPO_IN_OUT:I = 0x12

.field public static final EXPO_OUT:I = 0x11

.field public static final INVALID_TARGET_VALUE_TYPE:I = -0x1

.field public static final LINEAR:I = 0x13

.field public static final OVERSHOOT_IN_OUT:I = 0x1e

.field public static final QUAD_IN:I = 0x1

.field public static final QUAD_IN_OUT:I = 0x3

.field public static final QUAD_OUT:I = 0x2

.field public static final QUART_IN:I = 0x14

.field public static final QUART_IN_OUT:I = 0x16

.field public static final QUART_OUT:I = 0x15

.field public static final QUINT_IN:I = 0x17

.field public static final QUINT_IN_OUT:I = 0x19

.field public static final QUINT_OUT:I = 0x18

.field public static final SINE_IN:I = 0x1a

.field public static final SINE_IN_OUT:I = 0x1c

.field public static final SINE_OUT:I = 0x1b

.field private static final TAG:Ljava/lang/String; = "ANIMATION"

.field private static final TARGET_VALUE_NUM:I = 0x4


.field protected final FORCE_FINISH:F

.field protected mAccessorTarget:Ljava/lang/Object;

.field protected mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

.field protected mDelay:F

.field protected mDuration:F

.field protected mEaseInOutType:I

.field protected mIsFinished:Z

.field protected mIsPaused:Z

.field protected mIsStarted:Z

.field private mName:Ljava/lang/String;

.field protected mRepeatCount:I

.field protected mRepeatDelay:F

.field protected mTargetValue:[F

.field protected mTargetValueType:I

.field protected mUserData:Ljava/lang/Byte;


.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/Animation;->mTargetValue:[F

    .line 185
    const/4 v0, 0x3

    iput v0, p0, Lcom/smartisanos/smengine/Animation;->mEaseInOutType:I

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/smengine/Animation;->mTargetValueType:I

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/Animation;->mIsStarted:Z

    .line 191
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Animation;->mIsFinished:Z

    .line 192
    iput-boolean v1, p0, Lcom/smartisanos/smengine/Animation;->mIsPaused:Z

    .line 194
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/smartisanos/smengine/Animation;->FORCE_FINISH:F

    return-void
.end method


.method protected createTimeline()Laurelienribon/tweenengine/Timeline;
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createTween()Laurelienribon/tweenengine/Tween;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method public forceFinish()V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public getCurrentTimeline()Laurelienribon/tweenengine/Timeline;
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentTween()Laurelienribon/tweenengine/Tween;
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEasing()Laurelienribon/tweenengine/TweenEquation;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/smartisanos/smengine/Animation;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Animation;->mIsFinished:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Animation;->mIsPaused:Z

    return v0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/smartisanos/smengine/Animation;->mIsStarted:Z

    return v0
.end method

.method public kill()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public onFrame(F)V
    .locals 0
    .param p1, "deltaT"    # F

    .prologue
    .line 274
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 197
    iput-object v5, p0, Lcom/smartisanos/smengine/Animation;->mUserData:Ljava/lang/Byte;

    .line 198
    iput v2, p0, Lcom/smartisanos/smengine/Animation;->mDuration:F

    .line 199
    const/4 v1, 0x3

    iput v1, p0, Lcom/smartisanos/smengine/Animation;->mEaseInOutType:I

    .line 200
    iput v3, p0, Lcom/smartisanos/smengine/Animation;->mRepeatCount:I

    .line 201
    iput v2, p0, Lcom/smartisanos/smengine/Animation;->mRepeatDelay:F

    .line 202
    iput v2, p0, Lcom/smartisanos/smengine/Animation;->mDelay:F

    .line 203
    const/4 v1, -0x1

    iput v1, p0, Lcom/smartisanos/smengine/Animation;->mTargetValueType:I

    .line 204
    iput-boolean v3, p0, Lcom/smartisanos/smengine/Animation;->mIsStarted:Z

    .line 205
    iput-boolean v4, p0, Lcom/smartisanos/smengine/Animation;->mIsFinished:Z

    .line 206
    iput-boolean v4, p0, Lcom/smartisanos/smengine/Animation;->mIsPaused:Z

    .line 207
    iput-object v5, p0, Lcom/smartisanos/smengine/Animation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 208
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/smartisanos/smengine/Animation;->mTargetValue:[F

    aput v2, v1, v0

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method

.method public setAccessorTarget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/smartisanos/smengine/Animation;->mAccessorTarget:Ljava/lang/Object;

    .line 236
    return-void
.end method

.method public setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V
    .locals 1
    .param p1, "l"    # Lcom/smartisanos/smengine/Animation$AnimationListener;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/smartisanos/smengine/Animation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    .line 267
    iget-object v0, p0, Lcom/smartisanos/smengine/Animation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/smartisanos/smengine/Animation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->setCurrentAnimation(Lcom/smartisanos/smengine/Animation;)V

    .line 270
    :cond_0
    return-void
.end method

.method public setDelay(F)V
    .locals 0
    .param p1, "delay"    # F

    .prologue
    .line 225
    iput p1, p0, Lcom/smartisanos/smengine/Animation;->mDelay:F

    .line 226
    return-void
.end method

.method public setDuration(F)V
    .locals 0
    .param p1, "d"    # F

    .prologue
    .line 213
    iput p1, p0, Lcom/smartisanos/smengine/Animation;->mDuration:F

    .line 214
    return-void
.end method

.method public setEasingInOutType(I)V
    .locals 0
    .param p1, "easeInOut"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/smartisanos/smengine/Animation;->mEaseInOutType:I

    .line 217
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/smartisanos/smengine/Animation;->mName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setRepeartDelay(F)V
    .locals 0
    .param p1, "d"    # F

    .prologue
    .line 222
    iput p1, p0, Lcom/smartisanos/smengine/Animation;->mRepeatDelay:F

    .line 223
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/smartisanos/smengine/Animation;->mRepeatCount:I

    .line 220
    return-void
.end method

.method public setTargetValue([F)V
    .locals 0
    .param p1, "obj"    # [F

    .prologue
    .line 242
    iput-object p1, p0, Lcom/smartisanos/smengine/Animation;->mTargetValue:[F

    .line 243
    return-void
.end method

.method public setTargetValueType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/smartisanos/smengine/Animation;->mTargetValueType:I

    .line 240
    return-void
.end method

.method public abstract start()V
.end method

.method protected toTweenEaseType(I)Laurelienribon/tweenengine/TweenEquation;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 283
    packed-switch p1, :pswitch_data_0

    .line 407
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unknown ease type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :pswitch_0
    sget-object v0, Laurelienribon/tweenengine/equations/Quad;->IN:Laurelienribon/tweenengine/equations/Quad;

    .line 403
    :goto_0
    return-object v0

    .line 290
    :pswitch_1
    sget-object v0, Laurelienribon/tweenengine/equations/Quad;->OUT:Laurelienribon/tweenengine/equations/Quad;

    goto :goto_0

    .line 294
    :pswitch_2
    sget-object v0, Laurelienribon/tweenengine/equations/Quad;->INOUT:Laurelienribon/tweenengine/equations/Quad;

    goto :goto_0

    .line 298
    :pswitch_3
    sget-object v0, Laurelienribon/tweenengine/equations/Back;->IN:Laurelienribon/tweenengine/equations/Back;

    goto :goto_0

    .line 302
    :pswitch_4
    sget-object v0, Laurelienribon/tweenengine/equations/Back;->OUT:Laurelienribon/tweenengine/equations/Back;

    goto :goto_0

    .line 306
    :pswitch_5
    sget-object v0, Laurelienribon/tweenengine/equations/Back;->INOUT:Laurelienribon/tweenengine/equations/Back;

    goto :goto_0

    .line 310
    :pswitch_6
    sget-object v0, Laurelienribon/tweenengine/equations/Bounce;->IN:Laurelienribon/tweenengine/equations/Bounce;

    goto :goto_0

    .line 314
    :pswitch_7
    sget-object v0, Laurelienribon/tweenengine/equations/Bounce;->OUT:Laurelienribon/tweenengine/equations/Bounce;

    goto :goto_0

    .line 318
    :pswitch_8
    sget-object v0, Laurelienribon/tweenengine/equations/Bounce;->INOUT:Laurelienribon/tweenengine/equations/Bounce;

    goto :goto_0

    .line 322
    :pswitch_9
    sget-object v0, Laurelienribon/tweenengine/equations/Circ;->IN:Laurelienribon/tweenengine/equations/Circ;

    goto :goto_0

    .line 326
    :pswitch_a
    sget-object v0, Laurelienribon/tweenengine/equations/Circ;->OUT:Laurelienribon/tweenengine/equations/Circ;

    goto :goto_0

    .line 330
    :pswitch_b
    sget-object v0, Laurelienribon/tweenengine/equations/Circ;->INOUT:Laurelienribon/tweenengine/equations/Circ;

    goto :goto_0

    .line 334
    :pswitch_c
    sget-object v0, Laurelienribon/tweenengine/equations/Cubic;->IN:Laurelienribon/tweenengine/equations/Cubic;

    goto :goto_0

    .line 338
    :pswitch_d
    sget-object v0, Laurelienribon/tweenengine/equations/Cubic;->OUT:Laurelienribon/tweenengine/equations/Cubic;

    goto :goto_0

    .line 342
    :pswitch_e
    sget-object v0, Laurelienribon/tweenengine/equations/Cubic;->INOUT:Laurelienribon/tweenengine/equations/Cubic;

    goto :goto_0

    .line 346
    :pswitch_f
    sget-object v0, Laurelienribon/tweenengine/equations/Expo;->IN:Laurelienribon/tweenengine/equations/Expo;

    goto :goto_0

    .line 350
    :pswitch_10
    sget-object v0, Laurelienribon/tweenengine/equations/Expo;->OUT:Laurelienribon/tweenengine/equations/Expo;

    goto :goto_0

    .line 354
    :pswitch_11
    sget-object v0, Laurelienribon/tweenengine/equations/Expo;->INOUT:Laurelienribon/tweenengine/equations/Expo;

    goto :goto_0

    .line 358
    :pswitch_12
    sget-object v0, Laurelienribon/tweenengine/equations/Linear;->INOUT:Laurelienribon/tweenengine/equations/Linear;

    goto :goto_0

    .line 362
    :pswitch_13
    sget-object v0, Laurelienribon/tweenengine/equations/Quart;->IN:Laurelienribon/tweenengine/equations/Quart;

    goto :goto_0

    .line 366
    :pswitch_14
    sget-object v0, Laurelienribon/tweenengine/equations/Quart;->OUT:Laurelienribon/tweenengine/equations/Quart;

    goto :goto_0

    .line 370
    :pswitch_15
    sget-object v0, Laurelienribon/tweenengine/equations/Quart;->INOUT:Laurelienribon/tweenengine/equations/Quart;

    goto :goto_0

    .line 374
    :pswitch_16
    sget-object v0, Laurelienribon/tweenengine/equations/Quint;->IN:Laurelienribon/tweenengine/equations/Quint;

    goto :goto_0

    .line 378
    :pswitch_17
    sget-object v0, Laurelienribon/tweenengine/equations/Quint;->OUT:Laurelienribon/tweenengine/equations/Quint;

    goto :goto_0

    .line 383
    :pswitch_18
    sget-object v0, Laurelienribon/tweenengine/equations/Quint;->INOUT:Laurelienribon/tweenengine/equations/Quint;

    goto :goto_0

    .line 387
    :pswitch_19
    sget-object v0, Laurelienribon/tweenengine/equations/Sine;->IN:Laurelienribon/tweenengine/equations/Sine;

    goto :goto_0

    .line 391
    :pswitch_1a
    sget-object v0, Laurelienribon/tweenengine/equations/Sine;->OUT:Laurelienribon/tweenengine/equations/Sine;

    goto :goto_0

    .line 395
    :pswitch_1b
    sget-object v0, Laurelienribon/tweenengine/equations/Sine;->INOUT:Laurelienribon/tweenengine/equations/Sine;

    goto :goto_0

    .line 399
    :pswitch_1c
    new-instance v0, Lcom/smartisanos/smengine/BezierEquation;

    invoke-direct {v0}, Lcom/smartisanos/smengine/BezierEquation;-><init>()V

    goto :goto_0

    .line 403
    :pswitch_1d
    sget-object v0, Laurelienribon/tweenengine/equations/Overshoot;->INOUT:Laurelienribon/tweenengine/equations/Overshoot;

    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method
