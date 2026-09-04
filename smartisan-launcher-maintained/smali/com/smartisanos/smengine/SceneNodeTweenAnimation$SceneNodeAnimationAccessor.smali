.class final Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeAnimationAccessor;
.super Ljava/lang/Object;
.source "SceneNodeTweenAnimation.java"

.implements Laurelienribon/tweenengine/TweenAccessor;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SceneNodeAnimationAccessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laurelienribon/tweenengine/TweenAccessor",
        "<",
        "Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;",
        ">;"
    }
.end annotation


.method private constructor <init>()V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/smartisanos/smengine/SceneNodeTweenAnimation$1;

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeAnimationAccessor;-><init>()V

    return-void
.end method


.method public getValues(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;I[F)I
    .locals 12
    .param p1, "target"    # Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    .param p2, "tweenType"    # I
    .param p3, "returnValues"    # [F

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 345
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v6, v10

    .line 451
    :goto_0
    return v6

    .line 348
    :pswitch_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->getTranslate()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    .line 349
    .local v4, "t":Lcom/smartisanos/smengine/math/Vector3f;
    iget v8, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v8, p3, v10

    .line 350
    iget v8, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v8, p3, v7

    .line 351
    iget v7, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v7, p3, v9

    goto :goto_0

    .line 356
    .end local v4    # "t":Lcom/smartisanos/smengine/math/Vector3f;
    :pswitch_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    .line 357
    .local v1, "s":Lcom/smartisanos/smengine/math/Vector3f;
    iget v8, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    aput v8, p3, v10

    .line 358
    iget v8, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    aput v8, p3, v7

    .line 359
    iget v7, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    aput v7, p3, v9

    goto :goto_0

    .line 364
    .end local v1    # "s":Lcom/smartisanos/smengine/math/Vector3f;
    :pswitch_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->getAngle()F

    move-result v0

    .line 365
    .local v0, "a":F
    aput v0, p3, v10

    move v6, v7

    .line 366
    goto :goto_0

    .line 369
    .end local v0    # "a":F
    :pswitch_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->getSkewX()F

    move-result v2

    .line 370
    .local v2, "sx":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->getSkewY()F

    move-result v3

    .line 371
    .local v3, "sy":F
    aput v2, p3, v10

    .line 372
    aput v3, p3, v7

    move v6, v7

    .line 373
    goto :goto_0

    .line 377
    .end local v2    # "sx":F
    .end local v3    # "sy":F
    :pswitch_5
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->getColor4f()Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v4

    .line 378
    .local v4, "t":Lcom/smartisanos/smengine/math/Vector4f;
    iget v11, v4, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v11, p3, v10

    .line 379
    iget v10, v4, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v10, p3, v7

    .line 380
    iget v7, v4, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v7, p3, v9

    .line 381
    iget v7, v4, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v7, p3, v6

    move v6, v8

    .line 382
    goto :goto_0

    .line 386
    .end local v4    # "t":Lcom/smartisanos/smengine/math/Vector4f;
    :pswitch_6
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->getTranslateX()F

    move-result v5

    .line 387
    .local v5, "v":F
    aput v5, p3, v10

    move v6, v7

    .line 388
    goto :goto_0

    .line 392
    .end local v5    # "v":F
    :pswitch_7
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->getTranslateY()F

    move-result v5

    .line 393
    .restart local v5    # "v":F
    aput v5, p3, v10

    move v6, v7

    .line 394
    goto :goto_0

    .line 398
    .end local v5    # "v":F
    :pswitch_8
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->getTranslateZ()F

    move-result v5

    .line 399
    .restart local v5    # "v":F
    aput v5, p3, v10

    move v6, v7

    .line 400
    goto :goto_0

    .line 404
    .end local v5    # "v":F
    :pswitch_9
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->getTexCoordLimit()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v5

    .line 405
    .local v5, "v":Lcom/smartisanos/smengine/math/Vector2f;
    iget v6, v5, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    aput v6, p3, v10

    .line 406
    iget v6, v5, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    aput v6, p3, v7

    move v6, v9

    .line 407
    goto :goto_0

    .line 411
    .end local v5    # "v":Lcom/smartisanos/smengine/math/Vector2f;
    :pswitch_a
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->getInnerShadowSizeH()Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v5

    .line 412
    .local v5, "v":Lcom/smartisanos/smengine/math/Vector4f;
    iget v11, v5, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v11, p3, v10

    .line 413
    iget v10, v5, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v10, p3, v7

    .line 414
    iget v7, v5, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v7, p3, v9

    .line 415
    iget v7, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v7, p3, v6

    move v6, v8

    .line 416
    goto/16 :goto_0

    .line 420
    .end local v5    # "v":Lcom/smartisanos/smengine/math/Vector4f;
    :pswitch_b
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->getInnerShadowSizeV()Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v5

    .line 421
    .restart local v5    # "v":Lcom/smartisanos/smengine/math/Vector4f;
    iget v11, v5, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v11, p3, v10

    .line 422
    iget v10, v5, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v10, p3, v7

    .line 423
    iget v7, v5, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v7, p3, v9

    .line 424
    iget v7, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v7, p3, v6

    move v6, v8

    .line 425
    goto/16 :goto_0

    .line 429
    .end local v5    # "v":Lcom/smartisanos/smengine/math/Vector4f;
    :pswitch_c
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->getInnerShadowAlphaRangeH()Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v5

    .line 430
    .restart local v5    # "v":Lcom/smartisanos/smengine/math/Vector4f;
    iget v11, v5, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v11, p3, v10

    .line 431
    iget v10, v5, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v10, p3, v7

    .line 432
    iget v7, v5, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v7, p3, v9

    .line 433
    iget v7, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v7, p3, v6

    move v6, v8

    .line 434
    goto/16 :goto_0

    .line 438
    .end local v5    # "v":Lcom/smartisanos/smengine/math/Vector4f;
    :pswitch_d
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->getInnerShadowAlphaRangeV()Lcom/smartisanos/smengine/math/Vector4f;

    move-result-object v5

    .line 439
    .restart local v5    # "v":Lcom/smartisanos/smengine/math/Vector4f;
    iget v11, v5, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    aput v11, p3, v10

    .line 440
    iget v10, v5, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    aput v10, p3, v7

    .line 441
    iget v7, v5, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    aput v7, p3, v9

    .line 442
    iget v7, v5, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    aput v7, p3, v6

    move v6, v8

    .line 443
    goto/16 :goto_0

    .line 447
    .end local v5    # "v":Lcom/smartisanos/smengine/math/Vector4f;
    :pswitch_e
    const/4 v6, 0x0

    aput v6, p3, v10

    move v6, v7

    .line 448
    goto/16 :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
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

.method public bridge synthetic getValues(Ljava/lang/Object;I[F)I
    .locals 1

    .prologue
    .line 341
    check-cast p1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeAnimationAccessor;->getValues(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;I[F)I

    move-result v0

    return v0
.end method

.method public setValues(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;I[F)V
    .locals 6
    .param p1, "target"    # Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;
    .param p2, "tweenType"    # I
    .param p3, "newValues"    # [F

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 457
    invoke-static {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$000(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    invoke-static {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$000(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/Animation$AnimationListener;

    move-result-object v0

    invoke-static {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$100(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBeforeUpdateOneFrame(Lcom/smartisanos/smengine/SceneNode;)V

    .line 459
    invoke-static {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$000(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/Animation$AnimationListener;

    move-result-object v0

    invoke-static {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$100(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBeforeUpdateOneFrameWithData(Lcom/smartisanos/smengine/SceneNode;I[F)V

    .line 462
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 536
    :goto_0
    invoke-static {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$000(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/Animation$AnimationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 537
    invoke-static {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$000(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/Animation$AnimationListener;

    move-result-object v0

    invoke-static {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$100(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onAfterUpdateOneFrame(Lcom/smartisanos/smengine/SceneNode;)V

    .line 538
    invoke-static {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$000(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/Animation$AnimationListener;

    move-result-object v0

    invoke-static {p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->access$100(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onAfterUpdateOneFrameWithData(Lcom/smartisanos/smengine/SceneNode;I[F)V

    .line 541
    :cond_1
    return-void

    .line 465
    :pswitch_0
    aget v0, p3, v2

    aget v1, p3, v5

    aget v2, p3, v3

    invoke-virtual {p1, v0, v1, v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setTranslate(FFFZ)V

    goto :goto_0

    .line 470
    :pswitch_1
    aget v0, p3, v2

    aget v1, p3, v5

    aget v2, p3, v3

    invoke-virtual {p1, v0, v1, v2, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setScale(FFFZ)V

    goto :goto_0

    .line 475
    :pswitch_2
    aget v0, p3, v2

    invoke-virtual {p1, v0, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setAngle(FZ)V

    goto :goto_0

    .line 479
    :pswitch_3
    aget v0, p3, v2

    invoke-virtual {p1, v0, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setSkewX(FZ)V

    .line 480
    aget v0, p3, v5

    invoke-virtual {p1, v0, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setSkewY(FZ)V

    goto :goto_0

    .line 485
    :pswitch_4
    aget v1, p3, v2

    aget v2, p3, v5

    aget v3, p3, v3

    aget v4, p3, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setColor4f(FFFFZ)V

    goto :goto_0

    .line 490
    :pswitch_5
    aget v0, p3, v2

    aget v1, p3, v5

    invoke-virtual {p1, v0, v1, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setTexCoordLimit(FFZ)V

    goto :goto_0

    .line 495
    :pswitch_6
    aget v0, p3, v2

    invoke-virtual {p1, v0, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setTranslateX(FZ)V

    goto :goto_0

    .line 500
    :pswitch_7
    aget v0, p3, v2

    invoke-virtual {p1, v0, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setTranslateY(FZ)V

    goto :goto_0

    .line 505
    :pswitch_8
    aget v0, p3, v2

    invoke-virtual {p1, v0, v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setTranslateZ(FZ)V

    goto :goto_0

    .line 510
    :pswitch_9
    aget v1, p3, v2

    aget v2, p3, v5

    aget v3, p3, v3

    aget v4, p3, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setInnerShadowSizeH(FFFFZ)V

    goto :goto_0

    .line 515
    :pswitch_a
    aget v1, p3, v2

    aget v2, p3, v5

    aget v3, p3, v3

    aget v4, p3, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setInnerShadowSizeV(FFFFZ)V

    goto/16 :goto_0

    .line 520
    :pswitch_b
    aget v1, p3, v2

    aget v2, p3, v5

    aget v3, p3, v3

    aget v4, p3, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setInnerShadowAlphaRangeH(FFFFZ)V

    goto/16 :goto_0

    .line 525
    :pswitch_c
    aget v1, p3, v2

    aget v2, p3, v5

    aget v3, p3, v3

    aget v4, p3, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;->setInnerShadowAlphaRangeV(FFFFZ)V

    goto/16 :goto_0

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public bridge synthetic setValues(Ljava/lang/Object;I[F)V
    .locals 0

    .prologue
    .line 341
    check-cast p1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;

    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeAnimationAccessor;->setValues(Lcom/smartisanos/smengine/SceneNodeTweenAnimation$SceneNodeValue;I[F)V

    return-void
.end method
