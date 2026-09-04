.class public Lcom/smartisanos/launcher/view/CellConvertAnimation;
.super Lcom/smartisanos/smengine/Animation;
.source "CellConvertAnimation.java"

.implements Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertccessor;,
        Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;
    }
.end annotation


.field private mTween:Laurelienribon/tweenengine/Tween;


.method public constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 1
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation;-><init>()V

    .line 24
    new-instance v0, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;

    invoke-direct {v0, p1}, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mAccessorTarget:Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public static ConvertAnimSlotToDock(Lcom/smartisanos/smengine/AnimationTimeLine;Lcom/smartisanos/launcher/view/Cell;F)V
    .locals 8
    .param p0, "animationTimeLine"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "time"    # F

    .prologue
    .line 245
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getLastConvertProgress()F

    move-result v2

    .line 247
    .local v2, "srcProgress":F
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-instance v6, Lcom/smartisanos/launcher/view/CellConvertAnimation$1;

    invoke-direct {v6, p1}, Lcom/smartisanos/launcher/view/CellConvertAnimation$1;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->triggerConvertAnimation(Lcom/smartisanos/launcher/view/Cell;FFFZZLjava/lang/Runnable;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v7

    .line 267
    .local v7, "convertAnimation":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 268
    return-void
.end method

.method public static ConvertAnimSlotToPage(Lcom/smartisanos/smengine/AnimationTimeLine;Lcom/smartisanos/launcher/view/Cell;F)V
    .locals 8
    .param p0, "animationTimeLine"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "time"    # F

    .prologue
    const/4 v3, 0x0

    .line 271
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getLastConvertProgress()F

    move-result v2

    .line 273
    .local v2, "srcProgress":F
    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v6, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;

    invoke-direct {v6, p1}, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->triggerConvertAnimation(Lcom/smartisanos/launcher/view/Cell;FFFZZLjava/lang/Runnable;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v7

    .line 307
    .local v7, "convertAnimation":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual {p0, v3, v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 308
    return-void
.end method

.method private static getAlpha(Lcom/smartisanos/smengine/SceneNode;)F
    .locals 4
    .param p0, "sceneNode"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 464
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 465
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v1, :cond_0

    .line 466
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/math/Vector4f;

    .line 467
    .local v0, "color":Lcom/smartisanos/smengine/math/Vector4f;
    if-eqz v0, :cond_0

    .line 468
    iget v2, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 473
    .end local v0    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_0
    return v2
.end method

.method public static getBackgroundMaxScale()F
    .locals 1

    .prologue
    .line 28
    const v0, 0x3f4ccccd    # 0.8f

    return v0
.end method

.method public static setConvertProgress(Lcom/smartisanos/launcher/view/Cell;F)V
    .locals 13
    .param p0, "cell"    # Lcom/smartisanos/launcher/view/Cell;
    .param p1, "progress"    # F

    .prologue
    .line 202
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 204
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Cell;->getLastConvertProgress()F

    move-result v2

    .line 205
    .local v2, "srcProgress":F
    const/4 v0, 0x0

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3e99999a    # 0.3f

    mul-float v1, v0, v4

    .line 207
    .local v1, "time":F
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->triggerConvertAnimation(Lcom/smartisanos/launcher/view/Cell;FFFZZLjava/lang/Runnable;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v12

    .line 208
    .local v12, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v12, :cond_0

    .line 209
    invoke-virtual {v12}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 241
    .end local v1    # "time":F
    .end local v2    # "srcProgress":F
    .end local v12    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 215
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->getBackgroundMaxScale()F

    move-result v4

    sub-float v11, v0, v4

    .line 216
    .local v11, "animProgress":F
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Cell;->getLastConvertProgress()F

    move-result v2

    .line 217
    .restart local v2    # "srcProgress":F
    move v3, p1

    .line 218
    .local v3, "desProgress":F
    cmpl-float v0, v3, v11

    if-lez v0, :cond_2

    .line 219
    const/high16 v3, 0x3f800000    # 1.0f

    .line 221
    :cond_2
    cmpl-float v0, v2, v3

    if-eqz v0, :cond_0

    .line 222
    sub-float v0, v3, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3ecccccd    # 0.4f

    mul-float v1, v0, v4

    .line 223
    .restart local v1    # "time":F
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->triggerConvertAnimation(Lcom/smartisanos/launcher/view/Cell;FFFZZLjava/lang/Runnable;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v12

    .line 224
    .restart local v12    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v12, :cond_0

    .line 225
    invoke-virtual {v12}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto :goto_0

    .line 229
    .end local v1    # "time":F
    .end local v2    # "srcProgress":F
    .end local v3    # "desProgress":F
    .end local v11    # "animProgress":F
    .end local v12    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Cell;->getLastConvertProgress()F

    move-result v2

    .line 232
    .restart local v2    # "srcProgress":F
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_0

    .line 233
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3e99999a    # 0.3f

    mul-float v1, v0, v4

    .line 234
    .restart local v1    # "time":F
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    move v5, v1

    move v6, v2

    invoke-static/range {v4 .. v10}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->triggerConvertAnimation(Lcom/smartisanos/launcher/view/Cell;FFFZZLjava/lang/Runnable;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v12

    .line 235
    .restart local v12    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v12, :cond_0

    .line 236
    invoke-virtual {v12}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto :goto_0
.end method

.method private setTweenTargetValue(Laurelienribon/tweenengine/Tween;)V
    .locals 2
    .param p1, "tween"    # Laurelienribon/tweenengine/Tween;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTargetValue:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Laurelienribon/tweenengine/Tween;->target(F)Laurelienribon/tweenengine/Tween;

    .line 74
    return-void
.end method

.method private static triggerConvertAnimation(Lcom/smartisanos/launcher/view/Cell;FFFZZLjava/lang/Runnable;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 33
    .param p0, "cell"    # Lcom/smartisanos/launcher/view/Cell;
    .param p1, "time"    # F
    .param p2, "fromProgress"    # F
    .param p3, "toProgress"    # F
    .param p4, "toPage"    # Z
    .param p5, "toDock"    # Z
    .param p6, "finisher"    # Ljava/lang/Runnable;

    .prologue
    .line 312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    .line 313
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 315
    :cond_0
    new-instance v4, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v4}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 316
    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v30

    .line 317
    .local v30, "currentLP":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v30

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, p2

    mul-float v5, v4, v7

    .line 318
    .local v5, "fromScaleX":F
    move-object/from16 v0, v30

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, p2

    mul-float v6, v4, v7

    .line 319
    .local v6, "fromScaleY":F
    move-object/from16 v0, v30

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, p3

    mul-float v8, v4, v7

    .line 320
    .local v8, "toScaleX":F
    move-object/from16 v0, v30

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, p3

    mul-float v9, v4, v7

    .line 322
    .local v9, "toScaleY":F
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 323
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->setShowBackground(Z)V

    .line 324
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->setShowOuterShadow(Z)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->showOuterShadow()V

    .line 326
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->createBackgroundOverlay()V

    .line 328
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 329
    .local v3, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 330
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 331
    const/4 v4, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 332
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 335
    const/4 v10, 0x0

    .line 336
    .local v10, "animg":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 337
    new-instance v10, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v10    # "animg":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    invoke-direct {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 338
    .restart local v10    # "animg":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 339
    const/16 v4, 0xe

    invoke-virtual {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 342
    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v7, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v4, v7, :cond_7

    .line 343
    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v32

    .line 344
    .local v32, "single":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/4 v11, 0x1

    move-object/from16 v0, v32

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->select_cell_gaussian_background_sale_x_factor:F

    mul-float v12, v5, v4

    move-object/from16 v0, v32

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->select_cell_gaussian_background_sale_y_factor:F

    mul-float v13, v6, v4

    const/high16 v14, 0x3f800000    # 1.0f

    move-object/from16 v0, v32

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->select_cell_gaussian_background_sale_x_factor:F

    mul-float v15, v8, v4

    move-object/from16 v0, v32

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->select_cell_gaussian_background_sale_y_factor:F

    mul-float v16, v9, v4

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-virtual/range {v10 .. v17}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 350
    .end local v32    # "single":Lcom/smartisanos/launcher/data/LayoutProperty;
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 353
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->getAlpha(Lcom/smartisanos/smengine/SceneNode;)F

    move-result v13

    .line 354
    .local v13, "fromAlpha":F
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v4, p3

    invoke-static {}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->getBackgroundMaxScale()F

    move-result v7

    div-float v17, v4, v7

    .line 355
    .local v17, "toAlpha":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v17, v4

    if-lez v4, :cond_2

    const/high16 v17, 0x3f800000    # 1.0f

    .line 356
    :cond_2
    cmpl-float v4, v13, v17

    if-eqz v4, :cond_3

    .line 357
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 358
    .restart local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 359
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 360
    const/4 v12, 0x3

    move-object v11, v3

    move v14, v13

    move v15, v13

    move/from16 v16, v13

    move/from16 v18, v17

    move/from16 v19, v17

    move/from16 v20, v17

    invoke-virtual/range {v11 .. v20}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 363
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 364
    new-instance v10, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v10    # "animg":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    invoke-direct {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 365
    .restart local v10    # "animg":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 366
    const/16 v4, 0xe

    invoke-virtual {v10, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 367
    const/4 v11, 0x3

    move v12, v13

    move v14, v13

    move v15, v13

    move/from16 v16, v17

    move/from16 v18, v17

    move/from16 v19, v17

    invoke-virtual/range {v10 .. v19}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v10}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 372
    :cond_3
    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v31

    .line 373
    .local v31, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->calculateCellSize()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v29

    .line 374
    .local v29, "cellSize":Lcom/smartisanos/smengine/math/Vector2f;
    move-object/from16 v0, v29

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move-object/from16 v0, v31

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_shadow_image_width:F

    move-object/from16 v0, v31

    iget v11, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_shadow_image_content_width:F

    div-float/2addr v7, v11

    mul-float/2addr v4, v7

    move-object/from16 v0, v29

    iput v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 375
    move-object/from16 v0, v29

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move-object/from16 v0, v31

    iget v7, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_shadow_image_height:F

    move-object/from16 v0, v31

    iget v11, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_shadow_image_content_height:F

    div-float/2addr v7, v11

    mul-float/2addr v4, v7

    move-object/from16 v0, v29

    iput v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 376
    move-object/from16 v0, v29

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, p2

    mul-float v5, v4, v7

    .line 377
    move-object/from16 v0, v29

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, p2

    mul-float v6, v4, v7

    .line 378
    move-object/from16 v0, v29

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, p3

    mul-float v8, v4, v7

    .line 379
    move-object/from16 v0, v29

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, p3

    mul-float v9, v4, v7

    .line 380
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getDisplayOuterShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 381
    .restart local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 382
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 383
    const/16 v19, 0x1

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v18, v3

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v18 .. v25}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 384
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 385
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 386
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getDisplayOuterShadow()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 387
    .restart local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 388
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 389
    if-eqz p4, :cond_8

    .line 390
    const/16 v19, 0x3

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    move-object/from16 v18, v3

    move/from16 v23, v13

    invoke-virtual/range {v18 .. v27}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 399
    :cond_4
    :goto_1
    move-object/from16 v0, v30

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_overlay_image_width:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, p2

    mul-float v5, v4, v7

    .line 400
    move-object/from16 v0, v30

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_overlay_image_height:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, p2

    mul-float v6, v4, v7

    .line 401
    move-object/from16 v0, v30

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_overlay_image_width:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, p3

    mul-float v8, v4, v7

    .line 402
    move-object/from16 v0, v30

    iget v4, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_up_overlay_image_height:F

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, v7, p3

    mul-float v9, v4, v7

    .line 403
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundOverlayRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 404
    .restart local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 405
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 406
    const/16 v19, 0x1

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v18, v3

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v18 .. v25}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 407
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 409
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundOverlayRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 410
    .restart local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 411
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 412
    if-eqz p4, :cond_9

    .line 413
    const/16 v19, 0x3

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, v3

    move/from16 v20, v13

    move/from16 v21, v13

    move/from16 v22, v13

    move/from16 v23, v13

    invoke-virtual/range {v18 .. v27}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 422
    :cond_5
    :goto_2
    sget-boolean v4, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v4, :cond_6

    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v7, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v4, v7, :cond_6

    .line 423
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/Cell;->enableShowAppName(Z)V

    .line 424
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 425
    if-eqz p5, :cond_a

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->getAlpha(Lcom/smartisanos/smengine/SceneNode;)F

    move-result v13

    .line 427
    const/high16 v17, 0x3f800000    # 1.0f

    .line 433
    :goto_3
    cmpl-float v4, v13, v17

    if-eqz v4, :cond_6

    .line 434
    new-instance v3, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 435
    .restart local v3    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 436
    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 437
    const/4 v12, 0x3

    move-object v11, v3

    move v14, v13

    move v15, v13

    move/from16 v16, v13

    move/from16 v18, v17

    move/from16 v19, v17

    move/from16 v20, v17

    invoke-virtual/range {v11 .. v20}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 438
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 442
    :cond_6
    new-instance v28, Lcom/smartisanos/launcher/view/CellConvertAnimation;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/CellConvertAnimation;-><init>(Lcom/smartisanos/launcher/view/Cell;)V

    .line 443
    .local v28, "cellConvertAnimation":Lcom/smartisanos/launcher/view/CellConvertAnimation;
    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->setDuration(F)V

    .line 444
    const/16 v4, 0xe

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->setEasingInOutType(I)V

    .line 445
    move-object/from16 v0, v28

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->setFromTo(FF)V

    .line 446
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v7, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v4, v7, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v7, Lcom/smartisanos/launcher/view/CellConvertAnimation$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v7, v0, v1}, Lcom/smartisanos/launcher/view/CellConvertAnimation$3;-><init>(Lcom/smartisanos/launcher/view/Cell;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v4

    .line 347
    .end local v13    # "fromAlpha":F
    .end local v17    # "toAlpha":F
    .end local v28    # "cellConvertAnimation":Lcom/smartisanos/launcher/view/CellConvertAnimation;
    .end local v29    # "cellSize":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v31    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    :cond_7
    const/4 v11, 0x1

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move v12, v5

    move v13, v6

    move v15, v8

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v17}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    goto/16 :goto_0

    .line 393
    .restart local v13    # "fromAlpha":F
    .restart local v17    # "toAlpha":F
    .restart local v29    # "cellSize":Lcom/smartisanos/smengine/math/Vector2f;
    .restart local v31    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    :cond_8
    cmpl-float v4, v13, v17

    if-eqz v4, :cond_4

    .line 394
    const/16 v19, 0x3

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x3f800000    # 1.0f

    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v18, v3

    move/from16 v23, v13

    move/from16 v27, v17

    invoke-virtual/range {v18 .. v27}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 395
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_1

    .line 416
    :cond_9
    cmpl-float v4, v13, v17

    if-eqz v4, :cond_5

    .line 417
    const/4 v12, 0x3

    move-object v11, v3

    move v14, v13

    move v15, v13

    move/from16 v16, v13

    move/from16 v18, v17

    move/from16 v19, v17

    move/from16 v20, v17

    invoke-virtual/range {v11 .. v20}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_2

    .line 429
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->getAlpha(Lcom/smartisanos/smengine/SceneNode;)F

    move-result v13

    .line 430
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v17, v4, p3

    .line 431
    invoke-static {}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->getBackgroundMaxScale()F

    move-result v4

    cmpg-float v4, v17, v4

    if-gez v4, :cond_b

    const/16 v17, 0x0

    :goto_4
    goto/16 :goto_3

    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->getBackgroundMaxScale()F

    move-result v4

    sub-float v4, v17, v4

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->getBackgroundMaxScale()F

    move-result v11

    sub-float/2addr v7, v11

    div-float v17, v4, v7

    goto :goto_4
.end method


.method protected createTween()Laurelienribon/tweenengine/Tween;
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTargetValue:[F

    if-nez v1, :cond_0

    .line 143
    new-instance v1, Lcom/smartisanos/smengine/Animation$AnimationException;

    const-string v2, "target value is null error"

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/Animation$AnimationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :cond_0
    iget v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mDuration:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 146
    new-instance v1, Lcom/smartisanos/smengine/Animation$AnimationException;

    const-string v2, "duration is null"

    invoke-direct {v1, v2}, Lcom/smartisanos/smengine/Animation$AnimationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_1
    const-class v1, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;

    invoke-static {v1}, Laurelienribon/tweenengine/Tween;->getRegisteredAccessor(Ljava/lang/Class;)Laurelienribon/tweenengine/TweenAccessor;

    move-result-object v0

    .line 149
    .local v0, "a":Laurelienribon/tweenengine/TweenAccessor;, "Laurelienribon/tweenengine/TweenAccessor<Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;>;"
    if-nez v0, :cond_2

    .line 150
    const-class v1, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;

    new-instance v2, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertccessor;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertccessor;-><init>(Lcom/smartisanos/launcher/view/CellConvertAnimation$1;)V

    invoke-static {v1, v2}, Laurelienribon/tweenengine/Tween;->registerAccessor(Ljava/lang/Class;Laurelienribon/tweenengine/TweenAccessor;)V

    .line 152
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mAccessorTarget:Ljava/lang/Object;

    iget v2, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTargetValueType:I

    iget v3, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mDuration:F

    invoke-static {v1, v2, v3}, Laurelienribon/tweenengine/Tween;->to(Ljava/lang/Object;IF)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 153
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->setTweenTargetValue(Laurelienribon/tweenengine/Tween;)V

    .line 154
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    iget v2, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mEaseInOutType:I

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->toTweenEaseType(I)Laurelienribon/tweenengine/TweenEquation;

    move-result-object v2

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->ease(Laurelienribon/tweenengine/TweenEquation;)Laurelienribon/tweenengine/Tween;

    move-result-object v1

    iget v2, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mDelay:F

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->delay(F)Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    new-instance v2, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;

    invoke-direct {v2, p0}, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;-><init>(Lcom/smartisanos/smengine/Animation;)V

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->setCallback(Laurelienribon/tweenengine/TweenCallback;)Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->setCallbackTriggers(I)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->setName(Ljava/lang/String;)V

    .line 158
    iget v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mRepeatCount:I

    if-lez v1, :cond_3

    .line 159
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    iget v2, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mRepeatCount:I

    iget v3, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mRepeatDelay:F

    invoke-virtual {v1, v2, v3}, Laurelienribon/tweenengine/Tween;->repeat(IF)Ljava/lang/Object;

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v1, p0}, Laurelienribon/tweenengine/Tween;->setObjectFreeObserver(Laurelienribon/tweenengine/BaseTween$ObjectFreeObserver;)V

    .line 163
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mUserData:Ljava/lang/Byte;

    invoke-virtual {v1, v2}, Laurelienribon/tweenengine/Tween;->setUserData(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    return-object v1
.end method

.method public forceFinish()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-virtual {v0, v1}, Laurelienribon/tweenengine/Tween;->update(F)V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 179
    :cond_0
    return-void
.end method

.method public getCurrentTween()Laurelienribon/tweenengine/Tween;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    return-object v0
.end method

.method public getEasing()Laurelienribon/tweenengine/TweenEquation;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->getEasing()Laurelienribon/tweenengine/TweenEquation;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isFinished()Z

    move-result v0

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isPaused()Z

    move-result v0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->isStarted()Z

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    invoke-virtual {v0}, Laurelienribon/tweenengine/Tween;->kill()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 97
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onKill()V

    .line 101
    :cond_0
    return-void
.end method

.method public objectFree(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    if-ne v0, p1, :cond_0

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 81
    :cond_0
    return-void
.end method

.method public onFrame(F)V
    .locals 0
    .param p1, "deltaT"    # F

    .prologue
    .line 184
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation;->reset()V

    .line 124
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mAccessorTarget:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mAccessorTarget:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;

    .line 126
    .local v0, "snv":Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;->reset()V

    .line 128
    .end local v0    # "snv":Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 129
    return-void
.end method

.method public setFromTo(FF)V
    .locals 3
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mAccessorTarget:Ljava/lang/Object;

    check-cast v0, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;

    .line 188
    .local v0, "snv":Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation;->mTargetValue:[F

    aput p2, v1, v2

    .line 189
    invoke-virtual {v0, p1, v2}, Lcom/smartisanos/launcher/view/CellConvertAnimation$CellConvertValue;->setConvertProgress(FZ)V

    .line 191
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/CellConvertAnimation;->createTween()Laurelienribon/tweenengine/Tween;

    move-result-object v0

    .line 170
    .local v0, "tween":Laurelienribon/tweenengine/Tween;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getAnimationManager()Lcom/smartisanos/smengine/AnimationManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/AnimationManager;->start(Laurelienribon/tweenengine/Tween;)V

    .line 171
    return-void
.end method
