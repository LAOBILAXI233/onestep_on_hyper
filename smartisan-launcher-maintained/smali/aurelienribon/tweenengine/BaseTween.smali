.class public abstract Laurelienribon/tweenengine/BaseTween;
.super Ljava/lang/Object;
.source "BaseTween.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;
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


.field static final synthetic $assertionsDisabled:Z


.field private callback:Laurelienribon/tweenengine/TweenCallback;

.field private callbackTriggers:I

.field private currentTime:F

.field protected delay:F

.field private deltaTime:F

.field protected duration:F

.field protected freeObserver:Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;

.field isAutoRemoveEnabled:Z

.field isAutoStartEnabled:Z

.field private isFinished:Z

.field private isInitialized:Z

.field private isIterationStep:Z

.field private isKilled:Z

.field private isPaused:Z

.field private isStarted:Z

.field private isYoyo:Z

.field private name:Ljava/lang/String;

.field private repeatCnt:I

.field private repeatDelay:F

.field private step:I

.field private userData:Ljava/lang/Object;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Laurelienribon/tweenengine/BaseTween;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private initialize()V
    .locals 5

    .prologue
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 454
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v0, v1

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 455
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->initializeOverride()V

    .line 456
    iput-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    .line 457
    iput-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 458
    const/4 v0, 0x0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 459
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 460
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    invoke-direct {p0, v0}, Laurelienribon/tweenengine/BaseTween;->isNearZero(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iput v4, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 463
    :cond_0
    iput v4, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 464
    invoke-virtual {p0, v3}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 465
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 467
    :cond_1
    return-void
.end method

.method private isNearZero(F)Z
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 447
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    float-to-double v0, p1

    const-wide v2, -0x414f39085f4a1273L    # -1.0E-6

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    float-to-double v0, p1

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 448
    const/4 v0, 0x1

    .line 450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private testCompletion()V
    .locals 2

    .prologue
    .line 565
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v0, :cond_1

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isFinished:Z

    .line 566
    return-void

    .line 565
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private testRelaunch()V
    .locals 5

    .prologue
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 470
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-nez v1, :cond_2

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v1, :cond_2

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    if-gez v1, :cond_2

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_2

    .line 471
    sget-boolean v1, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 472
    :cond_0
    iput-boolean v4, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 473
    const/4 v1, 0x0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 474
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    sub-float v0, v3, v1

    .line 475
    .local v0, "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 476
    iput v3, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 477
    invoke-virtual {p0, v4}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 478
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 479
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v2, v2, -0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/BaseTween;->updateOverride(IIZF)V

    .line 492
    .end local v0    # "delta":F
    :cond_1
    :goto_0
    return-void

    .line 481
    :cond_2
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-nez v1, :cond_1

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v1, :cond_1

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v1, v2

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 482
    sget-boolean v1, Laurelienribon/tweenengine/BaseTween;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 483
    :cond_3
    iput-boolean v4, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 484
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 485
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    sub-float v0, v3, v1

    .line 486
    .restart local v0    # "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 487
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 488
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 489
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 490
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/BaseTween;->updateOverride(IIZF)V

    goto :goto_0
.end method

.method private updateStep()V
    .locals 7

    .prologue
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 495
    :goto_0
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 496
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-nez v1, :cond_1

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v1, v2

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    .line 497
    iput-boolean v6, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 498
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 500
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    sub-float v0, v4, v1

    .line 501
    .local v0, "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 502
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 504
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->isReverse(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceStartValues()V

    .line 505
    :goto_1
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 506
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/BaseTween;->updateOverride(IIZF)V

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceEndValues()V

    goto :goto_1

    .line 508
    .end local v0    # "delta":F
    :cond_1
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-nez v1, :cond_3

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v1, v2

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 509
    iput-boolean v6, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 510
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 512
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    sub-float v0, v1, v2

    .line 513
    .restart local v0    # "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 514
    iput v4, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 516
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->isReverse(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceEndValues()V

    .line 517
    :goto_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 518
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v2, v2, -0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/BaseTween;->updateOverride(IIZF)V

    goto/16 :goto_0

    .line 516
    :cond_2
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceStartValues()V

    goto :goto_2

    .line 520
    .end local v0    # "delta":F
    :cond_3
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-eqz v1, :cond_5

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v1, v2

    cmpg-float v1, v1, v4

    if-gez v1, :cond_5

    .line 521
    iput-boolean v5, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 522
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 524
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    sub-float v0, v4, v1

    .line 525
    .restart local v0    # "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 526
    iput v4, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 528
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v2, v2, 0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/BaseTween;->updateOverride(IIZF)V

    .line 529
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 531
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    if-gez v1, :cond_4

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v1, :cond_4

    const/16 v1, 0x80

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    goto/16 :goto_0

    .line 532
    :cond_4
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    goto/16 :goto_0

    .line 534
    .end local v0    # "delta":F
    :cond_5
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-eqz v1, :cond_7

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v1, v2

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    .line 535
    iput-boolean v5, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 536
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 538
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    sub-float v0, v1, v2

    .line 539
    .restart local v0    # "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 540
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 542
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    add-int/lit8 v2, v2, -0x1

    iget-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/BaseTween;->updateOverride(IIZF)V

    .line 543
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 545
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_6

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-ltz v1, :cond_6

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->callCallback(I)V

    .line 546
    :cond_6
    iput v4, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    goto/16 :goto_0

    .line 548
    .end local v0    # "delta":F
    :cond_7
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    if-eqz v1, :cond_9

    .line 549
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 550
    .restart local v0    # "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 551
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    add-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 552
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    iget-boolean v3, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Laurelienribon/tweenengine/BaseTween;->updateOverride(IIZF)V

    .line 562
    .end local v0    # "delta":F
    :cond_8
    :goto_3
    return-void

    .line 556
    :cond_9
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 557
    .restart local v0    # "delta":F
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    sub-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 558
    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    add-float/2addr v1, v0

    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    goto :goto_3
.end method


.method public build()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    return-object p0
.end method

.method protected callCallback(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 394
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-object v0, p0, Laurelienribon/tweenengine/BaseTween;->callback:Laurelienribon/tweenengine/TweenCallback;

    if-eqz v0, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->callbackTriggers:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Laurelienribon/tweenengine/BaseTween;->callback:Laurelienribon/tweenengine/TweenCallback;

    invoke-interface {v0, p1, p0}, Laurelienribon/tweenengine/TweenCallback;->onEvent(ILaurelienribon/tweenengine/BaseTween;)V

    .line 395
    :cond_0
    return-void
.end method

.method protected abstract containsTarget(Ljava/lang/Object;)Z
.end method

.method protected abstract containsTarget(Ljava/lang/Object;I)Z
.end method

.method public delay(F)Ljava/lang/Object;
    .locals 1
    .param p1, "delay"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    add-float/2addr v0, p1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    .line 124
    return-object p0
.end method

.method protected abstract forceEndValues()V
.end method

.method protected abstract forceStartValues()V
.end method

.method protected forceToEnd(F)V
    .locals 1
    .param p1, "time"    # F

    .prologue
    .line 386
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->getFullDuration()F

    move-result v0

    sub-float v0, p1, v0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 387
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 389
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Laurelienribon/tweenengine/BaseTween;->isReverse(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceStartValues()V

    .line 391
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceEndValues()V

    goto :goto_0
.end method

.method protected forceToStart()V
    .locals 2

    .prologue
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v1, 0x0

    .line 378
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    neg-float v0, v0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 379
    const/4 v0, -0x1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 380
    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 381
    invoke-virtual {p0, v1}, Laurelienribon/tweenengine/BaseTween;->isReverse(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceEndValues()V

    .line 383
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->forceStartValues()V

    goto :goto_0
.end method

.method public free()V
    .locals 0

    .prologue
    .line 141
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    return-void
.end method

.method public getCurrentTime()F
    .locals 1

    .prologue
    .line 314
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    return v0
.end method

.method public getDelay()F
    .locals 1

    .prologue
    .line 254
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    return v0
.end method

.method public getDuration()F
    .locals 1

    .prologue
    .line 261
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    return v0
.end method

.method public getFullDuration()F
    .locals 3

    .prologue
    .line 286
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-gez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    .line 287
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    add-float/2addr v0, v1

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    add-float/2addr v1, v2

    iget v2, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-object v0, p0, Laurelienribon/tweenengine/BaseTween;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 268
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    return v0
.end method

.method public getRepeatDelay()F
    .locals 1

    .prologue
    .line 275
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    return v0
.end method

.method public getStep()I
    .locals 1

    .prologue
    .line 307
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    return v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-object v0, p0, Laurelienribon/tweenengine/BaseTween;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method protected initializeOverride()V
    .locals 0

    .prologue
    .line 372
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 339
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isKilled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 330
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 354
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    return v0
.end method

.method protected isReverse(I)Z
    .locals 2
    .param p1, "step"    # I

    .prologue
    .line 398
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    if-eqz v0, :cond_0

    rem-int/lit8 v0, p1, 0x4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 321
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    return v0
.end method

.method protected isValid(I)Z
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 402
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    if-ltz p1, :cond_0

    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    mul-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isYoyo()Z
    .locals 1

    .prologue
    .line 347
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    return v0
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 132
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isKilled:Z

    .line 133
    return-void
.end method

.method protected killTarget(Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 406
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    invoke-virtual {p0, p1}, Laurelienribon/tweenengine/BaseTween;->containsTarget(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->kill()V

    .line 407
    :cond_0
    return-void
.end method

.method protected killTarget(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "tweenType"    # I

    .prologue
    .line 410
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    invoke-virtual {p0, p1, p2}, Laurelienribon/tweenengine/BaseTween;->containsTarget(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->kill()V

    .line 411
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    .line 148
    return-void
.end method

.method public repeat(IF)Ljava/lang/Object;
    .locals 2
    .param p1, "count"    # I
    .param p2, "delay"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v0, 0x0

    .line 166
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t change the repetitions of a tween or timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iput p1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    .line 168
    cmpl-float v1, p2, v0

    if-ltz v1, :cond_1

    .end local p2    # "delay":F
    :goto_0
    iput p2, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    .line 170
    return-object p0

    .restart local p2    # "delay":F
    :cond_1
    move p2, v0

    .line 168
    goto :goto_0
.end method

.method public repeatYoyo(IF)Ljava/lang/Object;
    .locals 2
    .param p1, "count"    # I
    .param p2, "delay"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v0, 0x0

    .line 183
    iget-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You can\'t change the repetitions of a tween or timeline once it is started"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iput p1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    .line 185
    cmpl-float v1, p2, v0

    if-ltz v1, :cond_1

    .end local p2    # "delay":F
    :goto_0
    iput p2, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    .line 187
    return-object p0

    .restart local p2    # "delay":F
    :cond_1
    move p2, v0

    .line 185
    goto :goto_0
.end method

.method protected reset()V
    .locals 3

    .prologue
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    const/4 v0, -0x2

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->step:I

    .line 51
    iput v1, p0, Laurelienribon/tweenengine/BaseTween;->repeatCnt:I

    .line 52
    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isYoyo:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isIterationStep:Z

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->repeatDelay:F

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->duration:F

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->delay:F

    .line 55
    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isKilled:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isFinished:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    iput-boolean v1, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    .line 57
    iput-object v2, p0, Laurelienribon/tweenengine/BaseTween;->callback:Laurelienribon/tweenengine/TweenCallback;

    .line 58
    const/16 v0, 0x8

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->callbackTriggers:I

    .line 59
    iput-object v2, p0, Laurelienribon/tweenengine/BaseTween;->userData:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isAutoStartEnabled:Z

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isAutoRemoveEnabled:Z

    .line 62
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 154
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    .line 155
    return-void
.end method

.method public setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;
    .locals 0
    .param p1, "callback"    # Laurelienribon/tweenengine/TweenCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laurelienribon/tweenengine/TweenCallback;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iput-object p1, p0, Laurelienribon/tweenengine/BaseTween;->callback:Laurelienribon/tweenengine/TweenCallback;

    .line 199
    return-object p0
.end method

.method public setCallbackTriggers(I)Ljava/lang/Object;
    .locals 0
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iput p1, p0, Laurelienribon/tweenengine/BaseTween;->callbackTriggers:I

    .line 230
    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    .line 68
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iput-object p1, p0, Laurelienribon/tweenengine/BaseTween;->name:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setObjectFreeObserver(Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;)V
    .locals 0
    .param p1, "obj"    # Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;

    .prologue
    .line 77
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iput-object p1, p0, Laurelienribon/tweenengine/BaseTween;->freeObserver:Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;

    .line 78
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iput-object p1, p0, Laurelienribon/tweenengine/BaseTween;->userData:Ljava/lang/Object;

    .line 242
    return-object p0
.end method

.method public start()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    invoke-virtual {p0}, Laurelienribon/tweenengine/BaseTween;->build()Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    .line 102
    return-object p0
.end method

.method public start(Laurelienribon/tweenengine/TweenManager;)Ljava/lang/Object;
    .locals 0
    .param p1, "manager"    # Laurelienribon/tweenengine/TweenManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laurelienribon/tweenengine/TweenManager;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    invoke-virtual {p1, p0}, Laurelienribon/tweenengine/TweenManager;->add(Laurelienribon/tweenengine/BaseTween;)Laurelienribon/tweenengine/TweenManager;

    .line 113
    return-object p0
.end method

.method public update(F)V
    .locals 2
    .param p1, "delta"    # F

    .prologue
    .line 428
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isKilled:Z

    if-eqz v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    iput p1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    .line 432
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    if-nez v0, :cond_2

    .line 433
    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;->initialize()V

    .line 436
    :cond_2
    iget-boolean v0, p0, Laurelienribon/tweenengine/BaseTween;->isInitialized:Z

    if-eqz v0, :cond_3

    .line 437
    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;->testRelaunch()V

    .line 438
    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;->updateStep()V

    .line 439
    invoke-direct {p0}, Laurelienribon/tweenengine/BaseTween;->testCompletion()V

    .line 442
    :cond_3
    iget v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    iget v1, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    add-float/2addr v0, v1

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->currentTime:F

    .line 443
    const/4 v0, 0x0

    iput v0, p0, Laurelienribon/tweenengine/BaseTween;->deltaTime:F

    goto :goto_0
.end method

.method protected updateOverride(IIZF)V
    .locals 0
    .param p1, "step"    # I
    .param p2, "lastStep"    # I
    .param p3, "isIterationStep"    # Z
    .param p4, "delta"    # F

    .prologue
    .line 375
    .local p0, "this":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<TT;>;"
    return-void
.end method
