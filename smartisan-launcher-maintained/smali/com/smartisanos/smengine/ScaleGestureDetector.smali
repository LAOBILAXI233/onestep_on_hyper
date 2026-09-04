.class public Lcom/smartisanos/smengine/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_MIN_MAJOR:I = 0x30

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mFocusX:F

.field private mFocusY:F

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mListener:Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mSpanSlop:I

.field private mTouchHistoryDirection:I

.field private mTouchHistoryLastAccepted:F

.field private mTouchHistoryLastAcceptedTime:J

.field private mTouchLower:F

.field private mTouchMinMajor:I

.field private mTouchUpper:F


.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mListener:Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;

    .line 166
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mSpanSlop:I

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 169
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/smartisanos/launcher/ResIds$dimen;->minScalingTouchMajor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchMinMajor:I

    .line 170
    sget v1, Lcom/smartisanos/launcher/ResIds$dimen;->minScalingSpan:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mMinSpan:I

    .line 171
    return-void
.end method

.method private addTouchHistory(Landroid/view/MotionEvent;)V
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 180
    .local v8, "currentTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 181
    .local v6, "count":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    move-wide/from16 v22, v0

    sub-long v22, v8, v22

    const-wide/16 v24, 0x80

    cmp-long v21, v22, v24

    if-ltz v21, :cond_7

    const/4 v4, 0x1

    .line 182
    .local v4, "accept":Z
    :goto_0
    const/16 v20, 0x0

    .line 183
    .local v20, "total":F
    const/16 v17, 0x0

    .line 184
    .local v17, "sampleCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v6, :cond_c

    .line 185
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_8

    const/4 v11, 0x1

    .line 186
    .local v11, "hasLastAccepted":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 187
    .local v12, "historySize":I
    add-int/lit8 v16, v12, 0x1

    .line 188
    .local v16, "pointerSampleCount":I
    const/4 v10, 0x0

    .local v10, "h":I
    :goto_3
    move/from16 v0, v16

    if-ge v10, v0, :cond_b

    .line 190
    if-ge v10, v12, :cond_9

    .line 191
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v10}, Landroid/view/MotionEvent;->getHistoricalTouchMajor(II)F

    move-result v14

    .line 195
    .local v14, "major":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchMinMajor:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v14, v21

    if-gez v21, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchMinMajor:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v14, v0

    .line 196
    :cond_0
    add-float v20, v20, v14

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v21, v0

    cmpl-float v21, v14, v21

    if-lez v21, :cond_2

    .line 199
    :cond_1
    move-object/from16 v0, p0

    iput v14, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchUpper:F

    .line 201
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchLower:F

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v21

    if-nez v21, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchLower:F

    move/from16 v21, v0

    cmpg-float v21, v14, v21

    if-gez v21, :cond_4

    .line 202
    :cond_3
    move-object/from16 v0, p0

    iput v14, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchLower:F

    .line 205
    :cond_4
    if-eqz v11, :cond_6

    .line 206
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v21, v0

    sub-float v21, v14, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->signum(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v7, v0

    .line 207
    .local v7, "directionSig":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchHistoryDirection:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v7, v0, :cond_5

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchHistoryDirection:I

    move/from16 v21, v0

    if-nez v21, :cond_6

    .line 209
    :cond_5
    move-object/from16 v0, p0

    iput v7, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchHistoryDirection:I

    .line 210
    if-ge v10, v12, :cond_a

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v18

    .line 212
    .local v18, "time":J
    :goto_5
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    .line 213
    const/4 v4, 0x0

    .line 188
    .end local v7    # "directionSig":I
    .end local v18    # "time":J
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 181
    .end local v4    # "accept":Z
    .end local v10    # "h":I
    .end local v11    # "hasLastAccepted":Z
    .end local v12    # "historySize":I
    .end local v13    # "i":I
    .end local v14    # "major":F
    .end local v16    # "pointerSampleCount":I
    .end local v17    # "sampleCount":I
    .end local v20    # "total":F
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 185
    .restart local v4    # "accept":Z
    .restart local v13    # "i":I
    .restart local v17    # "sampleCount":I
    .restart local v20    # "total":F
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 193
    .restart local v10    # "h":I
    .restart local v11    # "hasLastAccepted":Z
    .restart local v12    # "historySize":I
    .restart local v16    # "pointerSampleCount":I
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v14

    .restart local v14    # "major":F
    goto/16 :goto_4

    .line 211
    .restart local v7    # "directionSig":I
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v18

    goto :goto_5

    .line 217
    .end local v7    # "directionSig":I
    .end local v14    # "major":F
    :cond_b
    add-int v17, v17, v16

    .line 184
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 220
    .end local v10    # "h":I
    .end local v11    # "hasLastAccepted":Z
    .end local v12    # "historySize":I
    .end local v16    # "pointerSampleCount":I
    :cond_c
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v5, v20, v21

    .line 222
    .local v5, "avg":F
    if-eqz v4, :cond_d

    .line 223
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchLower:F

    move/from16 v22, v0

    add-float v21, v21, v22

    add-float v21, v21, v5

    const/high16 v22, 0x40400000    # 3.0f

    div-float v15, v21, v22

    .line 224
    .local v15, "newAccepted":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchUpper:F

    move/from16 v21, v0

    add-float v21, v21, v15

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchUpper:F

    .line 225
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchLower:F

    move/from16 v21, v0

    add-float v21, v21, v15

    const/high16 v22, 0x40000000    # 2.0f

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchLower:F

    .line 226
    move-object/from16 v0, p0

    iput v15, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    .line 227
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchHistoryDirection:I

    .line 228
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    .line 230
    .end local v15    # "newAccepted":F
    :cond_d
    return-void
.end method

.method private clearTouchHistory()V
    .locals 2

    .prologue
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 237
    iput v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchUpper:F

    .line 238
    iput v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchLower:F

    .line 239
    iput v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchHistoryDirection:I

    .line 241
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchHistoryLastAcceptedTime:J

    .line 242
    return-void
.end method


.method public getCurrentSpan()F
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpan:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpanX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 434
    iget v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpanY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 494
    iget-wide v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevSpan:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevSpanX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevSpanY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 475
    iget v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevSpan:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpan:F

    iget v1, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getTimeDelta()J
    .locals 4

    .prologue
    .line 485
    iget-wide v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 262
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrTime:J

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 266
    .local v4, "action":I
    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v4, v0, :cond_0

    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v4, v0, :cond_3

    :cond_0
    const/16 v20, 0x1

    .line 268
    .local v20, "streamComplete":Z
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v20, :cond_4

    .line 272
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mInProgress:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mListener:Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/smartisanos/smengine/ScaleGestureDetector;)V

    .line 274
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mInProgress:Z

    .line 275
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mInitialSpan:F

    .line 278
    :cond_2
    if-eqz v20, :cond_4

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/ScaleGestureDetector;->clearTouchHistory()V

    .line 280
    const/16 v26, 0x1

    .line 369
    :goto_1
    return v26

    .line 266
    .end local v20    # "streamComplete":Z
    :cond_3
    const/16 v20, 0x0

    goto :goto_0

    .line 284
    .restart local v20    # "streamComplete":Z
    :cond_4
    if-eqz v4, :cond_5

    const/16 v26, 0x6

    move/from16 v0, v26

    if-eq v4, v0, :cond_5

    const/16 v26, 0x5

    move/from16 v0, v26

    if-ne v4, v0, :cond_6

    :cond_5
    const/4 v5, 0x1

    .line 287
    .local v5, "configChanged":Z
    :goto_2
    const/16 v26, 0x6

    move/from16 v0, v26

    if-ne v4, v0, :cond_7

    const/4 v15, 0x1

    .line 288
    .local v15, "pointerUp":Z
    :goto_3
    if-eqz v15, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v16

    .line 291
    .local v16, "skipIndex":I
    :goto_4
    const/16 v21, 0x0

    .local v21, "sumX":F
    const/16 v22, 0x0

    .line 292
    .local v22, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 293
    .local v6, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5
    if-ge v14, v6, :cond_a

    .line 294
    move/from16 v0, v16

    if-ne v0, v14, :cond_9

    .line 293
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 284
    .end local v5    # "configChanged":Z
    .end local v6    # "count":I
    .end local v14    # "i":I
    .end local v15    # "pointerUp":Z
    .end local v16    # "skipIndex":I
    .end local v21    # "sumX":F
    .end local v22    # "sumY":F
    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    .line 287
    .restart local v5    # "configChanged":Z
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 288
    .restart local v15    # "pointerUp":Z
    :cond_8
    const/16 v16, -0x1

    goto :goto_4

    .line 295
    .restart local v6    # "count":I
    .restart local v14    # "i":I
    .restart local v16    # "skipIndex":I
    .restart local v21    # "sumX":F
    .restart local v22    # "sumY":F
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    add-float v21, v21, v26

    .line 296
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v26

    add-float v22, v22, v26

    goto :goto_6

    .line 298
    :cond_a
    if-eqz v15, :cond_b

    add-int/lit8 v11, v6, -0x1

    .line 299
    .local v11, "div":I
    :goto_7
    int-to-float v0, v11

    move/from16 v26, v0

    div-float v12, v21, v26

    .line 300
    .local v12, "focusX":F
    int-to-float v0, v11

    move/from16 v26, v0

    div-float v13, v22, v26

    .line 303
    .local v13, "focusY":F
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->addTouchHistory(Landroid/view/MotionEvent;)V

    .line 306
    const/4 v7, 0x0

    .local v7, "devSumX":F
    const/4 v8, 0x0

    .line 307
    .local v8, "devSumY":F
    const/4 v14, 0x0

    :goto_8
    if-ge v14, v6, :cond_d

    .line 308
    move/from16 v0, v16

    if-ne v0, v14, :cond_c

    .line 307
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .end local v7    # "devSumX":F
    .end local v8    # "devSumY":F
    .end local v11    # "div":I
    .end local v12    # "focusX":F
    .end local v13    # "focusY":F
    :cond_b
    move v11, v6

    .line 298
    goto :goto_7

    .line 311
    .restart local v7    # "devSumX":F
    .restart local v8    # "devSumY":F
    .restart local v11    # "div":I
    .restart local v12    # "focusX":F
    .restart local v13    # "focusY":F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mTouchHistoryLastAccepted:F

    move/from16 v26, v0

    const/high16 v27, 0x40000000    # 2.0f

    div-float v23, v26, v27

    .line 312
    .local v23, "touchSize":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v26

    sub-float v26, v26, v12

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    add-float v26, v26, v23

    add-float v7, v7, v26

    .line 313
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v26

    sub-float v26, v26, v13

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    add-float v26, v26, v23

    add-float v8, v8, v26

    goto :goto_9

    .line 315
    .end local v23    # "touchSize":F
    :cond_d
    int-to-float v0, v11

    move/from16 v26, v0

    div-float v9, v7, v26

    .line 316
    .local v9, "devX":F
    int-to-float v0, v11

    move/from16 v26, v0

    div-float v10, v8, v26

    .line 321
    .local v10, "devY":F
    const/high16 v26, 0x40000000    # 2.0f

    mul-float v18, v9, v26

    .line 322
    .local v18, "spanX":F
    const/high16 v26, 0x40000000    # 2.0f

    mul-float v19, v10, v26

    .line 323
    .local v19, "spanY":F
    mul-float v26, v18, v18

    mul-float v27, v19, v19

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v17, v0

    .line 328
    .local v17, "span":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mInProgress:Z

    move/from16 v25, v0

    .line 329
    .local v25, "wasInProgress":Z
    move-object/from16 v0, p0

    iput v12, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mFocusX:F

    .line 330
    move-object/from16 v0, p0

    iput v13, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mFocusY:F

    .line 331
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mInProgress:Z

    move/from16 v26, v0

    if-eqz v26, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mMinSpan:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpg-float v26, v17, v26

    if-ltz v26, :cond_e

    if-eqz v5, :cond_f

    .line 332
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mListener:Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/smartisanos/smengine/ScaleGestureDetector;)V

    .line 333
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mInProgress:Z

    .line 334
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mInitialSpan:F

    .line 336
    :cond_f
    if-eqz v5, :cond_10

    .line 337
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevSpanX:F

    .line 338
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevSpanY:F

    .line 339
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevSpan:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mInitialSpan:F

    .line 341
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mInProgress:Z

    move/from16 v26, v0

    if-nez v26, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mMinSpan:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v26, v17, v26

    if-ltz v26, :cond_12

    if-nez v25, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mInitialSpan:F

    move/from16 v26, v0

    sub-float v26, v17, v26

    .line 342
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mSpanSlop:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_12

    .line 343
    :cond_11
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevSpanX:F

    .line 344
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevSpanY:F

    .line 345
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevSpan:F

    .line 346
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrTime:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevTime:J

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mListener:Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/smartisanos/smengine/ScaleGestureDetector;)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mInProgress:Z

    .line 351
    :cond_12
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ne v4, v0, :cond_14

    .line 352
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpanX:F

    .line 353
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpanY:F

    .line 354
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpan:F

    .line 356
    const/16 v24, 0x1

    .line 357
    .local v24, "updatePrev":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mInProgress:Z

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mListener:Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/smartisanos/smengine/ScaleGestureDetector;)Z

    move-result v24

    .line 361
    :cond_13
    if-eqz v24, :cond_14

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevSpanX:F

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevSpanY:F

    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevSpan:F

    .line 365
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/smartisanos/smengine/ScaleGestureDetector;->mCurrTime:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/smartisanos/smengine/ScaleGestureDetector;->mPrevTime:J

    .line 369
    .end local v24    # "updatePrev":Z
    :cond_14
    const/16 v26, 0x1

    goto/16 :goto_1
.end method
