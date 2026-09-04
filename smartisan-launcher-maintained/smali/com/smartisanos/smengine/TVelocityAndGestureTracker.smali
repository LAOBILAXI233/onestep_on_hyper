.class public Lcom/smartisanos/smengine/TVelocityAndGestureTracker;
.super Ljava/lang/Object;
.source "TVelocityAndGestureTracker.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeUnit;,
        Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;,
        Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;,
        Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;
    }
.end annotation


.field private static final HISTORY_SIZE:I = 0x14

.field private static final TIME_EXCEED:J = 0x320L

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mCurPointId:I

.field private mDisableZoom:Z

.field private mEnableGesture:Z

.field private mEndPositions:[Lcom/smartisanos/smengine/math/Vector2f;

.field private mGestureListener:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;

.field private mIndex:I

.field private mMightSweep:Z

.field private mMightSwithTheme:Z

.field private mMightZoom:Z

.field private mMoveDirections:[Lcom/smartisanos/smengine/math/Vector2f;

.field private mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

.field private mScreenLocation:[I

.field private mStartPositions:[Lcom/smartisanos/smengine/math/Vector2f;

.field private mTouchSizeRecoder:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;

.field private mUnits:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x14

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mScreenLocation:[I

    .line 31
    iput-boolean v2, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMightZoom:Z

    .line 32
    iput-boolean v2, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mDisableZoom:Z

    .line 33
    iput-boolean v2, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMightSwithTheme:Z

    .line 34
    iput-boolean v2, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEnableGesture:Z

    .line 36
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mUnits:I

    .line 37
    const/4 v1, -0x1

    iput v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mIndex:I

    .line 41
    iput-boolean v2, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMightSweep:Z

    .line 44
    new-array v1, v5, [Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    iput-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 46
    iget-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    new-instance v2, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    invoke-direct {v2, p0, v6}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;-><init>(Lcom/smartisanos/smengine/TVelocityAndGestureTracker;Lcom/smartisanos/smengine/TVelocityAndGestureTracker$1;)V

    aput-object v2, v1, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    new-array v1, v4, [Lcom/smartisanos/smengine/math/Vector2f;

    iput-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mStartPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    .line 49
    new-array v1, v4, [Lcom/smartisanos/smengine/math/Vector2f;

    iput-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEndPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    .line 50
    new-array v1, v4, [Lcom/smartisanos/smengine/math/Vector2f;

    iput-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMoveDirections:[Lcom/smartisanos/smengine/math/Vector2f;

    .line 51
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    .line 52
    iget-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mStartPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    new-instance v2, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v2, v3, v3}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    aput-object v2, v1, v0

    .line 53
    iget-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEndPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    new-instance v2, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v2, v3, v3}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    aput-object v2, v1, v0

    .line 54
    iget-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMoveDirections:[Lcom/smartisanos/smengine/math/Vector2f;

    new-instance v2, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v2, v3, v3}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    aput-object v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :cond_1
    new-instance v1, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;

    invoke-direct {v1, p0, v6}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;-><init>(Lcom/smartisanos/smengine/TVelocityAndGestureTracker;Lcom/smartisanos/smengine/TVelocityAndGestureTracker$1;)V

    iput-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mTouchSizeRecoder:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;

    .line 57
    return-void
.end method

.method static synthetic access$1800(Lcom/smartisanos/smengine/TVelocityAndGestureTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMightSweep:Z

    return v0
.end method

.method private caculateVelocity(IZ)F
    .locals 20
    .param p1, "pointID"    # I
    .param p2, "isX"    # Z

    .prologue
    .line 429
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getUpTimeofPointID(I)J

    move-result-wide v6

    .line 430
    .local v6, "pointUpTime":J
    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-gez v14, :cond_0

    .line 431
    const/4 v14, 0x0

    .line 463
    :goto_0
    return v14

    .line 433
    :cond_0
    const/4 v2, 0x0

    .line 434
    .local v2, "accumV":F
    const/4 v3, 0x0

    .line 435
    .local v3, "accumweight":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    const/16 v14, 0x14

    if-ge v4, v14, :cond_5

    .line 437
    if-nez v4, :cond_2

    .line 438
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    const/16 v15, 0x13

    aget-object v8, v14, v15

    .line 442
    .local v8, "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    aget-object v5, v14, v4

    .line 443
    .local v5, "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    move/from16 v0, p1

    invoke-static {v8, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)Z

    move-result v14

    if-eqz v14, :cond_1

    move/from16 v0, p1

    invoke-static {v5, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 444
    invoke-static {v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v14

    sub-long v10, v6, v14

    .line 445
    .local v10, "timeSpan":J
    const-wide/16 v14, 0x320

    cmp-long v14, v10, v14

    if-lez v14, :cond_3

    .line 435
    .end local v10    # "timeSpan":J
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 440
    .end local v5    # "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .end local v8    # "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    add-int/lit8 v15, v4, -0x1

    aget-object v8, v14, v15

    .restart local v8    # "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    goto :goto_2

    .line 448
    .restart local v5    # "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .restart local v10    # "timeSpan":J
    :cond_3
    invoke-static {v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v14

    invoke-static {v8}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v16

    sub-long v12, v14, v16

    .line 449
    .local v12, "usingTime":J
    const-wide v14, 0x407f400000000000L    # 500.0

    long-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff4ccccc0000000L    # 1.2999999523162842

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v14, v14, v16

    double-to-float v9, v14

    .line 450
    .local v9, "weight":F
    const-wide/16 v14, 0x1

    cmp-long v14, v12, v14

    if-lez v14, :cond_1

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v9, v14

    if-lez v14, :cond_1

    .line 451
    add-float/2addr v3, v9

    .line 452
    if-eqz p2, :cond_4

    .line 453
    move/from16 v0, p1

    invoke-static {v5, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v14

    move/from16 v0, p1

    invoke-static {v8, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v15

    sub-float/2addr v14, v15

    mul-float/2addr v14, v9

    long-to-float v15, v12

    div-float/2addr v14, v15

    add-float/2addr v2, v14

    goto :goto_3

    .line 455
    :cond_4
    move/from16 v0, p1

    invoke-static {v5, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1500(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v14

    move/from16 v0, p1

    invoke-static {v8, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1500(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v15

    sub-float/2addr v14, v15

    mul-float/2addr v14, v9

    long-to-float v15, v12

    div-float/2addr v14, v15

    add-float/2addr v2, v14

    goto :goto_3

    .line 460
    .end local v5    # "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .end local v8    # "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .end local v9    # "weight":F
    .end local v10    # "timeSpan":J
    .end local v12    # "usingTime":J
    :cond_5
    const/4 v14, 0x0

    cmpl-float v14, v3, v14

    if-lez v14, :cond_6

    .line 461
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mUnits:I

    int-to-float v14, v14

    mul-float/2addr v14, v2

    div-float/2addr v14, v3

    goto/16 :goto_0

    .line 463
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private canSweepII(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 9
    .param p1, "event"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 210
    iget-boolean v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMightZoom:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mGestureListener:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;

    if-eqz v6, :cond_4

    .line 211
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getEventTime()J

    move-result-wide v4

    .line 212
    .local v4, "toTime":J
    const-wide/16 v6, 0x320

    sub-long v0, v4, v6

    .line 214
    .local v0, "fromTime":J
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mStartPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {p0, v6, v0, v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getPointPositionAtTime([Lcom/smartisanos/smengine/math/Vector2f;J)V

    .line 216
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEndPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {p0, v6, v4, v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getPointPositionAtTime([Lcom/smartisanos/smengine/math/Vector2f;J)V

    .line 217
    const/4 v3, 0x0

    .line 218
    .local v3, "upCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v2, v6, :cond_3

    .line 219
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mStartPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mStartPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_2

    .line 220
    :cond_0
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEndPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    cmpl-float v6, v6, v8

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEndPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_2

    .line 221
    :cond_1
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEndPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget-object v7, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mStartPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    sub-float/2addr v6, v7

    const/high16 v7, -0x3c860000    # -250.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 222
    add-int/lit8 v3, v3, 0x1

    .line 218
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_3
    const/4 v6, 0x2

    if-lt v3, v6, :cond_4

    .line 228
    const/4 v6, 0x1

    .line 231
    .end local v0    # "fromTime":J
    .end local v2    # "i":I
    .end local v3    # "upCount":I
    .end local v4    # "toTime":J
    :goto_1
    return v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private canSwithTheme(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 11
    .param p1, "event"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 132
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v8

    if-ne v8, v6, :cond_4

    iget-object v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mGestureListener:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMightSwithTheme:Z

    if-eqz v8, :cond_4

    .line 133
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getEventTime()J

    move-result-wide v4

    .line 134
    .local v4, "toTime":J
    const-wide/16 v8, 0x320

    sub-long v0, v4, v8

    .line 135
    .local v0, "fromTime":J
    const/4 v3, 0x0

    .line 136
    .local v3, "moveX":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v8, 0x4

    if-ge v2, v8, :cond_0

    .line 137
    invoke-direct {p0, v2, v0, v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getMoveDistanceXFromTimeToCurrent(IJ)F

    move-result v8

    add-float/2addr v3, v8

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_0
    const/high16 v8, 0x44c80000    # 1600.0f

    cmpl-float v8, v3, v8

    if-lez v8, :cond_2

    .line 140
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_1

    .line 141
    sget-object v8, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "############################ onChangeTheme moving right "

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_1
    iget-object v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mGestureListener:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;

    invoke-interface {v8, v6}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;->onFourFingerHorizontallySlide(Z)V

    .line 143
    iput-boolean v7, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEnableGesture:Z

    .line 153
    .end local v0    # "fromTime":J
    .end local v2    # "i":I
    .end local v3    # "moveX":F
    .end local v4    # "toTime":J
    :goto_1
    return v6

    .line 145
    .restart local v0    # "fromTime":J
    .restart local v2    # "i":I
    .restart local v3    # "moveX":F
    .restart local v4    # "toTime":J
    :cond_2
    const/high16 v8, -0x3b380000    # -1600.0f

    cmpg-float v8, v3, v8

    if-gez v8, :cond_4

    .line 146
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_3

    .line 147
    sget-object v8, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "############################ onChangeTheme moving left "

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_3
    iget-object v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mGestureListener:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;

    invoke-interface {v8, v7}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;->onFourFingerHorizontallySlide(Z)V

    .line 149
    iput-boolean v7, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEnableGesture:Z

    goto :goto_1

    .end local v0    # "fromTime":J
    .end local v2    # "i":I
    .end local v3    # "moveX":F
    .end local v4    # "toTime":J
    :cond_4
    move v6, v7

    .line 153
    goto :goto_1
.end method

.method private canZoom(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 11
    .param p1, "event"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 157
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v8

    if-eq v8, v6, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_4

    :cond_0
    iget-object v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mGestureListener:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMightZoom:Z

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mDisableZoom:Z

    if-nez v8, :cond_4

    .line 159
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getEventTime()J

    move-result-wide v4

    .line 160
    .local v4, "toTime":J
    const-wide/16 v8, 0x320

    sub-long v0, v4, v8

    .line 161
    .local v0, "fromTime":J
    invoke-direct {p0, v0, v1, v4, v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->moveInOneDirection(JJ)Z

    move-result v2

    .line 162
    .local v2, "moveInOneDirection":Z
    if-nez v2, :cond_4

    .line 163
    invoke-direct {p0, v0, v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getScaleFromTimeToCurrent(J)F

    move-result v3

    .line 164
    .local v3, "scale":F
    sget v8, Lcom/smartisanos/launcher/data/Constants;->pinch_scale_threshold:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-gez v8, :cond_2

    .line 165
    iget-object v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mGestureListener:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;

    invoke-interface {v8}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;->onZoomOut()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 166
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_1

    .line 167
    sget-object v8, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "############################ onZoomOut"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1
    iput-boolean v7, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEnableGesture:Z

    .line 182
    .end local v0    # "fromTime":J
    .end local v2    # "moveInOneDirection":Z
    .end local v3    # "scale":F
    .end local v4    # "toTime":J
    :goto_0
    return v6

    .line 171
    .restart local v0    # "fromTime":J
    .restart local v2    # "moveInOneDirection":Z
    .restart local v3    # "scale":F
    .restart local v4    # "toTime":J
    :cond_2
    sget v8, Lcom/smartisanos/launcher/data/Constants;->pinch_scale_threshold:I

    int-to-float v8, v8

    cmpl-float v8, v3, v8

    if-lez v8, :cond_4

    .line 172
    iget-object v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mGestureListener:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;

    invoke-interface {v8}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;->onZoomIn()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 173
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_3

    .line 174
    sget-object v8, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "############################ onZoomIn"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_3
    iput-boolean v7, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEnableGesture:Z

    goto :goto_0

    .end local v0    # "fromTime":J
    .end local v2    # "moveInOneDirection":Z
    .end local v3    # "scale":F
    .end local v4    # "toTime":J
    :cond_4
    move v6, v7

    .line 182
    goto :goto_0
.end method

.method private clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 558
    const/4 v1, -0x1

    iput v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mIndex:I

    .line 559
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    aget-object v1, v1, v0

    invoke-static {v1, v4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$302(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)I

    .line 561
    iget-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    aget-object v1, v1, v0

    invoke-static {v1, v4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$402(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)I

    .line 562
    iget-object v1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    aget-object v1, v1, v0

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$202(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;J)J

    .line 559
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    :cond_0
    return-void
.end method

.method private computeGesture(Lcom/smartisanos/smengine/TMotionEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mGestureListener:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEnableGesture:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->canSwithTheme(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->canZoom(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->canSweep(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_2

    .line 117
    sget-object v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "############################ onSweep III "

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->sweep()V

    goto :goto_0

    .line 121
    :cond_3
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->canSweepII(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_4

    .line 123
    sget-object v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "############################ onSweep IV "

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :cond_4
    invoke-virtual {p0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->sweep()V

    goto :goto_0
.end method

.method private getMoveDistanceXFromTimeToCurrent(IJ)F
    .locals 12
    .param p1, "pointID"    # I
    .param p2, "fromTime"    # J

    .prologue
    const-wide/16 v10, 0x0

    const/16 v8, 0x13

    .line 235
    const/4 v1, 0x0

    .line 236
    .local v1, "count":I
    const/4 v3, 0x0

    .line 238
    .local v3, "moveX":F
    :cond_0
    :goto_0
    if-ge v1, v8, :cond_2

    .line 239
    iget v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mIndex:I

    sub-int v2, v6, v1

    .line 240
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 241
    add-int/lit8 v2, v2, 0x14

    .line 244
    :cond_1
    if-nez v2, :cond_3

    .line 245
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    aget-object v5, v6, v8

    .line 249
    .local v5, "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :goto_1
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    aget-object v4, v6, v2

    .line 250
    .local v4, "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    add-int/lit8 v1, v1, 0x1

    .line 251
    invoke-static {v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    invoke-static {v4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    invoke-static {v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v6

    cmp-long v6, v6, p2

    if-gez v6, :cond_4

    .line 259
    .end local v2    # "index":I
    .end local v4    # "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .end local v5    # "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :cond_2
    return v3

    .line 247
    .restart local v2    # "index":I
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    add-int/lit8 v7, v2, -0x1

    aget-object v5, v6, v7

    .restart local v5    # "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    goto :goto_1

    .line 254
    .restart local v4    # "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :cond_4
    invoke-static {v5, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 255
    invoke-static {v4, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1300(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)I

    move-result v6

    invoke-static {v4, v6}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v6

    invoke-static {v5, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1300(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)I

    move-result v7

    invoke-static {v5, v7}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v7

    sub-float v0, v6, v7

    .line 256
    .local v0, "changeX":F
    add-float/2addr v3, v0

    goto :goto_0
.end method

.method private getMoveDistanceYFromTimeToCurrent(J)F
    .locals 13
    .param p1, "fromTime"    # J

    .prologue
    const-wide/16 v10, 0x0

    const/16 v9, 0x13

    const/4 v8, 0x0

    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, "count":I
    const/4 v3, 0x0

    .line 266
    .local v3, "moveY":F
    :cond_0
    :goto_0
    if-ge v1, v9, :cond_2

    .line 267
    iget v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mIndex:I

    sub-int v2, v6, v1

    .line 268
    .local v2, "index":I
    if-gez v2, :cond_1

    .line 269
    add-int/lit8 v2, v2, 0x14

    .line 272
    :cond_1
    if-nez v2, :cond_3

    .line 273
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    aget-object v5, v6, v9

    .line 277
    .local v5, "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :goto_1
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    aget-object v4, v6, v2

    .line 278
    .local v4, "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    add-int/lit8 v1, v1, 0x1

    .line 279
    invoke-static {v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    invoke-static {v4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v6

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    invoke-static {v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-gez v6, :cond_4

    .line 287
    .end local v2    # "index":I
    .end local v4    # "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .end local v5    # "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :cond_2
    return v3

    .line 275
    .restart local v2    # "index":I
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    add-int/lit8 v7, v2, -0x1

    aget-object v5, v6, v7

    .restart local v5    # "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    goto :goto_1

    .line 282
    .restart local v4    # "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :cond_4
    invoke-static {v4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)I

    move-result v6

    if-lez v6, :cond_0

    invoke-static {v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)I

    move-result v6

    if-lez v6, :cond_0

    .line 283
    invoke-static {v4, v8}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1300(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)I

    move-result v6

    invoke-static {v4, v6}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1500(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v6

    invoke-static {v5, v8}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1300(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)I

    move-result v7

    invoke-static {v5, v7}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1500(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v7

    sub-float v0, v6, v7

    .line 284
    .local v0, "changeY":F
    add-float/2addr v3, v0

    goto :goto_0
.end method

.method private getPointPositionAtTime(Lcom/smartisanos/smengine/math/Vector2f;IJ)V
    .locals 9
    .param p1, "res"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p2, "pointID"    # I
    .param p3, "time"    # J

    .prologue
    const/4 v6, 0x0

    .line 300
    invoke-virtual {p1, v6, v6}, Lcom/smartisanos/smengine/math/Vector2f;->set(FF)Lcom/smartisanos/smengine/math/Vector2f;

    .line 301
    const-wide v2, 0x7fffffffffffffffL

    .line 302
    .local v2, "minTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v6, 0x14

    if-ge v0, v6, :cond_1

    .line 303
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    aget-object v1, v6, v0

    .line 304
    .local v1, "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    invoke-static {v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v6

    sub-long v6, p3, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 305
    .local v4, "timeSpan":J
    cmp-long v6, v4, v2

    if-gez v6, :cond_0

    invoke-static {v1, p2}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 306
    move-wide v2, v4

    .line 307
    invoke-static {v1, p2}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v6

    iput v6, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 308
    invoke-static {v1, p2}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1500(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v6

    iput v6, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 302
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    .end local v1    # "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .end local v4    # "timeSpan":J
    :cond_1
    return-void
.end method

.method private getPointPositionAtTime([Lcom/smartisanos/smengine/math/Vector2f;J)V
    .locals 2
    .param p1, "positions"    # [Lcom/smartisanos/smengine/math/Vector2f;
    .param p2, "time"    # J

    .prologue
    .line 291
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 292
    aget-object v1, p1, v0

    invoke-direct {p0, v1, v0, p2, p3}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getPointPositionAtTime(Lcom/smartisanos/smengine/math/Vector2f;IJ)V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method

.method private getScaleFromTimeToCurrent(J)F
    .locals 29
    .param p1, "fromTime"    # J

    .prologue
    .line 341
    const/4 v5, 0x0

    .line 342
    .local v5, "count":I
    const/16 v20, 0x0

    .line 344
    .local v20, "scale":F
    :cond_0
    :goto_0
    const/16 v24, 0x13

    move/from16 v0, v24

    if-ge v5, v0, :cond_2

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mIndex:I

    move/from16 v24, v0

    sub-int v9, v24, v5

    .line 346
    .local v9, "index":I
    if-gez v9, :cond_1

    .line 347
    add-int/lit8 v9, v9, 0x14

    .line 350
    :cond_1
    if-nez v9, :cond_3

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    move-object/from16 v24, v0

    const/16 v25, 0x13

    aget-object v19, v24, v25

    .line 355
    .local v19, "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    move-object/from16 v24, v0

    aget-object v13, v24, v9

    .line 356
    .local v13, "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    add-int/lit8 v5, v5, 0x1

    .line 357
    invoke-static/range {v19 .. v19}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_2

    invoke-static {v13}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_2

    invoke-static/range {v19 .. v19}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v24

    cmp-long v24, v24, p1

    if-gez v24, :cond_4

    .line 421
    .end local v9    # "index":I
    .end local v13    # "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .end local v19    # "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :cond_2
    return v20

    .line 353
    .restart local v9    # "index":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    move-object/from16 v24, v0

    add-int/lit8 v25, v9, -0x1

    aget-object v19, v24, v25

    .restart local v19    # "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    goto :goto_1

    .line 361
    .restart local v13    # "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :cond_4
    invoke-static/range {v19 .. v19}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$300(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)I

    move-result v24

    invoke-static {v13}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$300(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)I

    move-result v25

    and-int v16, v24, v25

    .line 362
    .local v16, "pointerIdBits":I
    new-instance v17, Lcom/smartisanos/smengine/math/Vector2f;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 363
    .local v17, "preCenter":Lcom/smartisanos/smengine/math/Vector2f;
    new-instance v6, Lcom/smartisanos/smengine/math/Vector2f;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v6, v0, v1}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 364
    .local v6, "curCenter":Lcom/smartisanos/smengine/math/Vector2f;
    new-instance v4, Lcom/smartisanos/smengine/math/Vector2f;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v4, v0, v1}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 365
    .local v4, "centerMove":Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v14, 0x0

    .line 366
    .local v14, "pointCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ge v8, v0, :cond_6

    .line 367
    const/16 v24, 0x1

    shl-int v15, v24, v8

    .line 368
    .local v15, "pointerIdBit":I
    and-int v24, v16, v15

    if-eqz v24, :cond_5

    .line 369
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v23

    .line 370
    .local v23, "vars":Lcom/smartisanos/smengine/util/TempVars;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/smengine/util/TempVars;->vect2d:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v21, v0

    .line 371
    .local v21, "temp":Lcom/smartisanos/smengine/math/Vector2f;
    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v24

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1500(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector2f;->set(FF)Lcom/smartisanos/smengine/math/Vector2f;

    .line 372
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector2f;->addLocal(Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 373
    invoke-static {v13, v8}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v24

    invoke-static {v13, v8}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1500(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v25

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector2f;->set(FF)Lcom/smartisanos/smengine/math/Vector2f;

    .line 374
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/math/Vector2f;->addLocal(Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 375
    add-int/lit8 v14, v14, 0x1

    .line 376
    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 366
    .end local v21    # "temp":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v23    # "vars":Lcom/smartisanos/smengine/util/TempVars;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 379
    .end local v15    # "pointerIdBit":I
    :cond_6
    const/16 v24, 0x2

    move/from16 v0, v24

    if-lt v14, v0, :cond_0

    .line 382
    int-to-float v0, v14

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector2f;->divideLocal(F)Lcom/smartisanos/smengine/math/Vector2f;

    .line 383
    int-to-float v0, v14

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/math/Vector2f;->divideLocal(F)Lcom/smartisanos/smengine/math/Vector2f;

    .line 384
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/math/Vector2f;->subtract(Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v4

    .line 387
    const/high16 v10, 0x800000

    .line 388
    .local v10, "maxMove":F
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    .line 389
    .local v11, "minMove":F
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v22

    .line 390
    .local v22, "tempVars":Lcom/smartisanos/smengine/util/TempVars;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/smartisanos/smengine/util/TempVars;->vect2d:Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v18, v0

    .line 391
    .local v18, "preLocToCenter":Lcom/smartisanos/smengine/math/Vector2f;
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/smartisanos/smengine/util/TempVars;->vect2d2:Lcom/smartisanos/smengine/math/Vector2f;

    .line 392
    .local v7, "curLocToPreLoc":Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v8, 0x0

    :goto_3
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ge v8, v0, :cond_9

    .line 393
    const/16 v24, 0x1

    shl-int v15, v24, v8

    .line 394
    .restart local v15    # "pointerIdBit":I
    and-int v24, v16, v15

    if-eqz v24, :cond_8

    .line 395
    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v24

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1500(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Vector2f;->set(FF)Lcom/smartisanos/smengine/math/Vector2f;

    .line 397
    invoke-static {v13, v8}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v24

    invoke-virtual {v4}, Lcom/smartisanos/smengine/math/Vector2f;->getX()F

    move-result v25

    sub-float v24, v24, v25

    invoke-static {v13, v8}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1500(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v25

    invoke-virtual {v4}, Lcom/smartisanos/smengine/math/Vector2f;->getY()F

    move-result v26

    sub-float v25, v25, v26

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v0, v1}, Lcom/smartisanos/smengine/math/Vector2f;->set(FF)Lcom/smartisanos/smengine/math/Vector2f;

    .line 398
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/math/Vector2f;->subtractLocal(Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 400
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Vector2f;->subtractLocal(Lcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 401
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/math/Vector2f;->normalizeLocal()Lcom/smartisanos/smengine/math/Vector2f;

    .line 403
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/smartisanos/smengine/math/Vector2f;->dot(Lcom/smartisanos/smengine/math/Vector2f;)F

    move-result v12

    .line 404
    .local v12, "moveDistance":F
    cmpg-float v24, v10, v12

    if-gez v24, :cond_7

    .line 405
    move v10, v12

    .line 407
    :cond_7
    cmpl-float v24, v11, v12

    if-lez v24, :cond_8

    .line 408
    move v11, v12

    .line 392
    .end local v12    # "moveDistance":F
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 412
    .end local v15    # "pointerIdBit":I
    :cond_9
    const/16 v24, 0x0

    cmpl-float v24, v10, v24

    if-lez v24, :cond_a

    const/16 v24, 0x0

    cmpl-float v24, v11, v24

    if-lez v24, :cond_a

    .line 413
    add-float v20, v20, v10

    .line 419
    :goto_4
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    goto/16 :goto_0

    .line 414
    :cond_a
    const/16 v24, 0x0

    cmpg-float v24, v10, v24

    if-gez v24, :cond_b

    const/16 v24, 0x0

    cmpg-float v24, v11, v24

    if-gez v24, :cond_b

    .line 415
    add-float v20, v20, v11

    goto :goto_4

    .line 417
    :cond_b
    add-float v24, v10, v11

    add-float v20, v20, v24

    goto :goto_4
.end method

.method private getUpTimeofPointID(I)J
    .locals 6
    .param p1, "pointID"    # I

    .prologue
    .line 567
    const-wide/high16 v2, -0x8000000000000000L

    .line 568
    .local v2, "upTime":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v4, 0x14

    if-ge v0, v4, :cond_1

    .line 569
    iget-object v4, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    aget-object v1, v4, v0

    .line 570
    .local v1, "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    invoke-static {v1, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 571
    invoke-static {v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v2

    .line 568
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 574
    .end local v1    # "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :cond_1
    return-wide v2
.end method

.method private moveInOneDirection(JJ)Z
    .locals 9
    .param p1, "fromTime"    # J
    .param p3, "toTime"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "count":I
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mStartPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {p0, v6, p1, p2}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getPointPositionAtTime([Lcom/smartisanos/smengine/math/Vector2f;J)V

    .line 319
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEndPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {p0, v6, p3, p4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getPointPositionAtTime([Lcom/smartisanos/smengine/math/Vector2f;J)V

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v6, 0x4

    if-ge v1, v6, :cond_1

    .line 321
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMoveDirections:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEndPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget-object v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mStartPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 322
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMoveDirections:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEndPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v7, v7, v1

    iget v7, v7, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget-object v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mStartPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    sub-float/2addr v7, v8

    iput v7, v6, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 323
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMoveDirections:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/smartisanos/smengine/math/Vector2f;->lengthSquared()F

    move-result v6

    const/high16 v7, 0x41200000    # 10.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 324
    add-int/lit8 v0, v0, 0x1

    .line 320
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    :cond_1
    const/4 v6, 0x2

    if-ge v0, v6, :cond_3

    .line 337
    :cond_2
    :goto_1
    return v4

    .line 330
    :cond_3
    const/4 v1, 0x1

    :goto_2
    if-ge v1, v0, :cond_2

    .line 331
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMoveDirections:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v3, v6, v5

    .line 332
    .local v3, "moveDirection0":Lcom/smartisanos/smengine/math/Vector2f;
    iget-object v6, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMoveDirections:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v2, v6, v1

    .line 333
    .local v2, "moveDirection":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-virtual {v3, v2}, Lcom/smartisanos/smengine/math/Vector2f;->dot(Lcom/smartisanos/smengine/math/Vector2f;)F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    move v4, v5

    .line 334
    goto :goto_1

    .line 330
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


.method public addMovement(Lcom/smartisanos/smengine/TMotionEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 60
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->clear()V

    .line 63
    iput-boolean v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMightZoom:Z

    .line 64
    iput-boolean v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mDisableZoom:Z

    .line 65
    iput-boolean v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMightSwithTheme:Z

    .line 66
    iput-boolean v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEnableGesture:Z

    .line 68
    :cond_0
    iget v4, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mIndex:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_1

    .line 69
    iput v8, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mIndex:I

    .line 71
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    iget v5, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mIndex:I

    aget-object v1, v4, v5

    .line 72
    .local v1, "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$202(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;J)J

    .line 73
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerIdBits()I

    move-result v4

    invoke-static {v1, v4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$302(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)I

    .line 74
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerCount()I

    move-result v4

    invoke-static {v1, v4}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$402(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)I

    .line 75
    iget-boolean v4, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMightZoom:Z

    if-nez v4, :cond_3

    invoke-static {v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)I

    move-result v4

    if-le v4, v9, :cond_3

    .line 76
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_2

    .line 77
    sget-object v4, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "############################ might zoom"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_2
    iput-boolean v9, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMightZoom:Z

    .line 80
    :cond_3
    iget-boolean v4, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMightSwithTheme:Z

    if-nez v4, :cond_4

    invoke-static {v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_4

    .line 81
    iput-boolean v9, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMightSwithTheme:Z

    .line 84
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 85
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v2

    .line 86
    .local v2, "pointId":I
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/TMotionEvent;->getSize(I)F

    move-result v3

    .line 87
    .local v3, "size":F
    invoke-static {v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$500(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)[I

    move-result-object v4

    aput v2, v4, v0

    .line 88
    invoke-static {v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$600(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)[F

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/TMotionEvent;->getX(I)F

    move-result v5

    aput v5, v4, v2

    .line 89
    invoke-static {v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$700(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)[F

    move-result-object v4

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/TMotionEvent;->getY(I)F

    move-result v5

    aput v5, v4, v2

    .line 90
    invoke-static {v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$800(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)[F

    move-result-object v4

    aput v3, v4, v2

    .line 91
    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v5, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v4, v5, :cond_6

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v4

    if-ne v4, v9, :cond_6

    .line 95
    :cond_5
    iget-object v4, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mTouchSizeRecoder:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;

    invoke-static {v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v6

    invoke-static {v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$700(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)[F

    move-result-object v5

    aget v5, v5, v2

    invoke-static {v4, v6, v7, v5, v3}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->access$900(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;JFF)V

    .line 84
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "pointId":I
    .end local v3    # "size":F
    :cond_7
    invoke-virtual {p1, v8}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mCurPointId:I

    .line 99
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->computeGesture(Lcom/smartisanos/smengine/TMotionEvent;)V

    .line 100
    return-void
.end method

.method public canSweep(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 6
    .param p1, "event"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 186
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mightSweep(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mGestureListener:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;

    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mTouchSizeRecoder:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->access$1000(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;J)F

    move-result v3

    sub-float v0, v2, v3

    .line 189
    .local v0, "moveDistance":F
    const/high16 v2, -0x3e600000    # -20.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 191
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/home/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mScreenLocation:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 192
    iget-object v2, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mScreenLocation:[I

    aget v2, v2, v1

    if-nez v2, :cond_1

    .line 193
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    .line 194
    sget-object v2, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    const-string v4, "############################ can sweep"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v0    # "moveDistance":F
    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public computeCurrentVelocity(I)V
    .locals 0
    .param p1, "units"    # I

    .prologue
    .line 425
    iput p1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mUnits:I

    .line 426
    return-void
.end method

.method public disableGesture()V
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEnableGesture:Z

    .line 555
    return-void
.end method

.method public enableGesture()V
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEnableGesture:Z

    .line 551
    return-void
.end method

.method public getVelocity()Lcom/smartisanos/smengine/math/Vector2f;
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mCurPointId:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getVelocity(I)Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v0

    return-object v0
.end method

.method public getVelocity(I)Lcom/smartisanos/smengine/math/Vector2f;
    .locals 20
    .param p1, "id"    # I

    .prologue
    .line 509
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->getUpTimeofPointID(I)J

    move-result-wide v8

    .line 510
    .local v8, "pointUpTime":J
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-gez v13, :cond_0

    .line 511
    new-instance v13, Lcom/smartisanos/smengine/math/Vector2f;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    .line 538
    :goto_0
    return-object v13

    .line 513
    :cond_0
    const/4 v2, 0x0

    .line 514
    .local v2, "accumVX":F
    const/4 v3, 0x0

    .line 515
    .local v3, "accumVY":F
    const/4 v4, 0x0

    .line 516
    .local v4, "accumweight":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/16 v13, 0x14

    if-ge v5, v13, :cond_3

    .line 518
    if-nez v5, :cond_2

    .line 519
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    const/16 v14, 0x13

    aget-object v7, v13, v14

    .line 523
    .local v7, "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    aget-object v6, v13, v5

    .line 524
    .local v6, "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    move/from16 v0, p1

    invoke-static {v7, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)Z

    move-result v13

    if-eqz v13, :cond_1

    move/from16 v0, p1

    invoke-static {v6, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 525
    invoke-static {v6}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v14

    invoke-static {v7}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v16

    sub-long v10, v14, v16

    .line 526
    .local v10, "usingTime":J
    const-wide v14, 0x407f400000000000L    # 500.0

    invoke-static {v6}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$200(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;)J

    move-result-wide v16

    sub-long v16, v8, v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff4ccccc0000000L    # 1.2999999523162842

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    sub-double v14, v14, v16

    double-to-float v12, v14

    .line 527
    .local v12, "weight":F
    const-wide/16 v14, 0x1

    cmp-long v13, v10, v14

    if-lez v13, :cond_1

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v12, v13

    if-lez v13, :cond_1

    .line 528
    add-float/2addr v4, v12

    .line 529
    move/from16 v0, p1

    invoke-static {v6, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v13

    move/from16 v0, p1

    invoke-static {v7, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1400(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v14

    sub-float/2addr v13, v14

    mul-float/2addr v13, v12

    long-to-float v14, v10

    div-float/2addr v13, v14

    add-float/2addr v2, v13

    .line 530
    move/from16 v0, p1

    invoke-static {v6, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1500(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v13

    move/from16 v0, p1

    invoke-static {v7, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;->access$1500(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;I)F

    move-result v14

    sub-float/2addr v13, v14

    mul-float/2addr v13, v12

    long-to-float v14, v10

    div-float/2addr v13, v14

    add-float/2addr v3, v13

    .line 516
    .end local v10    # "usingTime":J
    .end local v12    # "weight":F
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 521
    .end local v6    # "movement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    .end local v7    # "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMovements:[Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;

    add-int/lit8 v14, v5, -0x1

    aget-object v7, v13, v14

    .restart local v7    # "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    goto :goto_2

    .line 535
    .end local v7    # "preMovement":Lcom/smartisanos/smengine/TVelocityAndGestureTracker$Movement;
    :cond_3
    const/4 v13, 0x0

    cmpl-float v13, v4, v13

    if-lez v13, :cond_4

    .line 536
    new-instance v13, Lcom/smartisanos/smengine/math/Vector2f;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mUnits:I

    int-to-float v14, v14

    mul-float/2addr v14, v2

    div-float/2addr v14, v4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mUnits:I

    int-to-float v15, v15

    mul-float/2addr v15, v3

    div-float/2addr v15, v4

    invoke-direct {v13, v14, v15}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    goto/16 :goto_0

    .line 538
    :cond_4
    new-instance v13, Lcom/smartisanos/smengine/math/Vector2f;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    goto/16 :goto_0
.end method

.method public getXVelocity()F
    .locals 2

    .prologue
    .line 467
    iget v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mCurPointId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->caculateVelocity(IZ)F

    move-result v0

    return v0
.end method

.method public getXVelocity(I)F
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 489
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->caculateVelocity(IZ)F

    move-result v0

    return v0
.end method

.method public getYVelocity()F
    .locals 2

    .prologue
    .line 477
    iget v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mCurPointId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->caculateVelocity(IZ)F

    move-result v0

    return v0
.end method

.method public getYVelocity(I)F
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 501
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->caculateVelocity(IZ)F

    move-result v0

    return v0
.end method

.method public mightSweep(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 4
    .param p1, "event"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    .line 546
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mTouchSizeRecoder:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->access$1600(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mightZoom()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mMightZoom:Z

    return v0
.end method

.method public setGestureListener(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;)V
    .locals 0
    .param p1, "l"    # Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mGestureListener:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;

    .line 104
    return-void
.end method

.method public sweep()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mTouchSizeRecoder:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;

    invoke-static {v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;->access$1100(Lcom/smartisanos/smengine/TVelocityAndGestureTracker$TouchSizeRecoder;)V

    .line 205
    iget-object v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mGestureListener:Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;

    invoke-interface {v0}, Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;->onSweep()V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/TVelocityAndGestureTracker;->mEnableGesture:Z

    .line 207
    return-void
.end method
