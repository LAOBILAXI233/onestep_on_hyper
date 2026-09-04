.class public Lcom/smartisanos/smengine/TMotionEvent;
.super Ljava/lang/Object;
.source "TMotionEvent.java"


.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_UP:I = 0x1

.field public static final MAX_POINT:I = 0x4

.field private static final MAX_RECYCLED:I = 0x20

.field public static mSMotionEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/TMotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecycleBin:Lcom/smartisanos/smengine/TMotionEvent;

.field private static final sRecycleLock:Ljava/lang/Object;

.field private static sRecycledCount:I


.field private mAction:I

.field private mActionIndex:I

.field private mEventTime:J

.field private mPointerCount:I

.field private mPointerIdBits:I

.field private mPonitIDs:[I

.field private mSize:[F

.field private mX:[F

.field private mY:[F

.field private next:Lcom/smartisanos/smengine/TMotionEvent;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/TMotionEvent;->mSMotionEvents:Ljava/util/ArrayList;

    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/smartisanos/smengine/TMotionEvent;->sRecycleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPonitIDs:[I

    .line 47
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mX:[F

    .line 48
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mY:[F

    .line 49
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mSize:[F

    .line 50
    invoke-virtual {p0}, Lcom/smartisanos/smengine/TMotionEvent;->reset()V

    .line 51
    return-void
.end method

.method public static obtain(IFF)Lcom/smartisanos/smengine/TMotionEvent;
    .locals 5
    .param p0, "action"    # I
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/smartisanos/smengine/TMotionEvent;->obtain(Lcom/smartisanos/smengine/TMotionEvent;)Lcom/smartisanos/smengine/TMotionEvent;

    move-result-object v0

    .line 67
    .local v0, "newSMotionEvent":Lcom/smartisanos/smengine/TMotionEvent;
    iput v3, v0, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    .line 68
    iput p0, v0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    .line 69
    iput v4, v0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    .line 70
    iget-object v1, v0, Lcom/smartisanos/smengine/TMotionEvent;->mPonitIDs:[I

    aput v3, v1, v3

    .line 71
    iget-object v1, v0, Lcom/smartisanos/smengine/TMotionEvent;->mX:[F

    aput p1, v1, v3

    .line 72
    iget-object v1, v0, Lcom/smartisanos/smengine/TMotionEvent;->mY:[F

    aput p2, v1, v3

    .line 73
    iget-object v1, v0, Lcom/smartisanos/smengine/TMotionEvent;->mSize:[F

    const/4 v2, 0x0

    aput v2, v1, v3

    .line 74
    iput v4, v0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerIdBits:I

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/smartisanos/smengine/TMotionEvent;->mEventTime:J

    .line 76
    return-object v0
.end method

.method public static obtain(Lcom/smartisanos/smengine/TMotionEvent;)Lcom/smartisanos/smengine/TMotionEvent;
    .locals 8
    .param p0, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    .line 81
    sget-object v7, Lcom/smartisanos/smengine/TMotionEvent;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v7

    .line 82
    :try_start_0
    sget-object v6, Lcom/smartisanos/smengine/TMotionEvent;->sRecycleBin:Lcom/smartisanos/smengine/TMotionEvent;

    if-nez v6, :cond_0

    .line 83
    new-instance v4, Lcom/smartisanos/smengine/TMotionEvent;

    invoke-direct {v4}, Lcom/smartisanos/smengine/TMotionEvent;-><init>()V

    .line 90
    .local v4, "newSMotionEvent":Lcom/smartisanos/smengine/TMotionEvent;
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    if-eqz p0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v0

    .line 94
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v1

    .line 95
    .local v1, "actionIndex":I
    invoke-virtual {p0}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerCount()I

    move-result v2

    .line 97
    .local v2, "count":I
    iput v0, v4, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    .line 98
    iput v1, v4, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    .line 99
    iput v2, v4, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    .line 100
    invoke-virtual {p0}, Lcom/smartisanos/smengine/TMotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/smartisanos/smengine/TMotionEvent;->mEventTime:J

    .line 101
    const/4 v5, 0x0

    .local v5, "p":I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 102
    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v3

    .line 103
    .local v3, "currentPointerId":I
    iget-object v6, v4, Lcom/smartisanos/smengine/TMotionEvent;->mPonitIDs:[I

    aput v3, v6, v5

    .line 104
    iget-object v6, v4, Lcom/smartisanos/smengine/TMotionEvent;->mX:[F

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getX(I)F

    move-result v7

    aput v7, v6, v5

    .line 105
    iget-object v6, v4, Lcom/smartisanos/smengine/TMotionEvent;->mY:[F

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getY(I)F

    move-result v7

    aput v7, v6, v5

    .line 106
    iget-object v6, v4, Lcom/smartisanos/smengine/TMotionEvent;->mSize:[F

    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getSize(I)F

    move-result v7

    aput v7, v6, v5

    .line 101
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 85
    .end local v0    # "action":I
    .end local v1    # "actionIndex":I
    .end local v2    # "count":I
    .end local v3    # "currentPointerId":I
    .end local v4    # "newSMotionEvent":Lcom/smartisanos/smengine/TMotionEvent;
    .end local v5    # "p":I
    :cond_0
    :try_start_1
    sget-object v4, Lcom/smartisanos/smengine/TMotionEvent;->sRecycleBin:Lcom/smartisanos/smengine/TMotionEvent;

    .line 86
    .restart local v4    # "newSMotionEvent":Lcom/smartisanos/smengine/TMotionEvent;
    iget-object v6, v4, Lcom/smartisanos/smengine/TMotionEvent;->next:Lcom/smartisanos/smengine/TMotionEvent;

    sput-object v6, Lcom/smartisanos/smengine/TMotionEvent;->sRecycleBin:Lcom/smartisanos/smengine/TMotionEvent;

    .line 87
    sget v6, Lcom/smartisanos/smengine/TMotionEvent;->sRecycledCount:I

    add-int/lit8 v6, v6, -0x1

    sput v6, Lcom/smartisanos/smengine/TMotionEvent;->sRecycledCount:I

    .line 88
    const/4 v6, 0x0

    iput-object v6, v4, Lcom/smartisanos/smengine/TMotionEvent;->next:Lcom/smartisanos/smengine/TMotionEvent;

    goto :goto_0

    .line 90
    .end local v4    # "newSMotionEvent":Lcom/smartisanos/smengine/TMotionEvent;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 109
    .restart local v4    # "newSMotionEvent":Lcom/smartisanos/smengine/TMotionEvent;
    :cond_1
    invoke-virtual {v4}, Lcom/smartisanos/smengine/TMotionEvent;->reset()V

    .line 111
    :cond_2
    return-object v4
.end method


.method public getAction()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    return v0
.end method

.method public getActionIndex()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mEventTime:J

    return-wide v0
.end method

.method public getPointerCount()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    return v0
.end method

.method public getPointerId(I)I
    .locals 1
    .param p1, "actionIndex"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPonitIDs:[I

    aget v0, v0, p1

    return v0
.end method

.method public getPointerIdBits()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerIdBits:I

    return v0
.end method

.method public getSize()F
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mSize:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getSize(I)F
    .locals 1
    .param p1, "actionIndex"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mSize:[F

    aget v0, v0, p1

    return v0
.end method

.method public getX()F
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mX:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getX(I)F
    .locals 1
    .param p1, "actionIndex"    # I

    .prologue
    .line 201
    iget-object v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mX:[F

    aget v0, v0, p1

    return v0
.end method

.method public getY()F
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mY:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getY(I)F
    .locals 1
    .param p1, "actionIndex"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->mY:[F

    aget v0, v0, p1

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 115
    sget-object v1, Lcom/smartisanos/smengine/TMotionEvent;->sRecycleLock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    sget v0, Lcom/smartisanos/smengine/TMotionEvent;->sRecycledCount:I

    const/16 v2, 0x20

    if-ge v0, v2, :cond_0

    .line 117
    sget-object v0, Lcom/smartisanos/smengine/TMotionEvent;->sRecycleBin:Lcom/smartisanos/smengine/TMotionEvent;

    iput-object v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->next:Lcom/smartisanos/smengine/TMotionEvent;

    .line 118
    sput-object p0, Lcom/smartisanos/smengine/TMotionEvent;->sRecycleBin:Lcom/smartisanos/smengine/TMotionEvent;

    .line 119
    sget v0, Lcom/smartisanos/smengine/TMotionEvent;->sRecycledCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/smartisanos/smengine/TMotionEvent;->sRecycledCount:I

    .line 123
    :goto_0
    monitor-exit v1

    .line 124
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/TMotionEvent;->next:Lcom/smartisanos/smengine/TMotionEvent;

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 54
    iput v1, p0, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    .line 55
    iput v1, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    .line 56
    iput v1, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerIdBits:I

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPonitIDs:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 59
    iget-object v1, p0, Lcom/smartisanos/smengine/TMotionEvent;->mX:[F

    aput v3, v1, v0

    .line 60
    iget-object v1, p0, Lcom/smartisanos/smengine/TMotionEvent;->mY:[F

    aput v3, v1, v0

    .line 61
    iget-object v1, p0, Lcom/smartisanos/smengine/TMotionEvent;->mSize:[F

    aput v3, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 189
    iput p1, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    .line 190
    return-void
.end method

.method public setMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 262
    .local v0, "action":I
    and-int/lit16 v2, v0, 0xff

    .line 263
    .local v2, "actionMasked":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 264
    .local v1, "actionIndex":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 266
    .local v3, "count":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/smartisanos/smengine/TMotionEvent;->mEventTime:J

    .line 267
    const/4 v9, 0x0

    iput v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    .line 268
    const/4 v9, 0x0

    iput v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerIdBits:I

    .line 269
    const/4 v9, 0x0

    iput v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    .line 270
    iput v2, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    .line 271
    const/4 v5, 0x0

    .line 272
    .local v5, "includingActionPoint":Z
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_0
    if-ge v7, v3, :cond_3

    .line 273
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 274
    .local v4, "currentPointerId":I
    const/4 v9, 0x4

    if-lt v4, v9, :cond_0

    .line 272
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 277
    :cond_0
    iget v6, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    .line 278
    .local v6, "newPointIndex":I
    iget-object v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPonitIDs:[I

    aput v4, v9, v6

    .line 279
    iget-object v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mX:[F

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    aput v10, v9, v6

    .line 280
    iget-object v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mY:[F

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    aput v10, v9, v6

    .line 281
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v8

    .line 283
    .local v8, "size":F
    iget-object v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mSize:[F

    const v10, 0x3f7fffef    # 0.999999f

    cmpl-float v10, v8, v10

    if-lez v10, :cond_1

    const/4 v8, 0x0

    .end local v8    # "size":F
    :cond_1
    aput v8, v9, v6

    .line 284
    if-ne v1, v7, :cond_2

    .line 285
    const/4 v5, 0x1

    .line 286
    iput v6, p0, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    .line 288
    :cond_2
    iget v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerIdBits:I

    const/4 v10, 0x1

    shl-int/2addr v10, v4

    or-int/2addr v9, v10

    iput v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerIdBits:I

    .line 289
    iget v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    goto :goto_1

    .line 291
    .end local v4    # "currentPointerId":I
    .end local v6    # "newPointIndex":I
    :cond_3
    iget v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    if-nez v9, :cond_4

    .line 292
    const/4 v9, 0x0

    .line 320
    :goto_2
    return v9

    .line 294
    :cond_4
    if-eqz v2, :cond_5

    const/4 v9, 0x5

    if-ne v2, v9, :cond_8

    .line 295
    :cond_5
    if-eqz v5, :cond_7

    .line 296
    iget v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 297
    const/4 v9, 0x0

    iput v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    .line 320
    :goto_3
    const/4 v9, 0x1

    goto :goto_2

    .line 299
    :cond_6
    const/4 v9, 0x5

    iput v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    goto :goto_3

    .line 302
    :cond_7
    const/4 v9, 0x2

    iput v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    .line 303
    const/4 v9, 0x0

    iput v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    goto :goto_3

    .line 305
    :cond_8
    const/4 v9, 0x1

    if-eq v2, v9, :cond_9

    const/4 v9, 0x6

    if-ne v2, v9, :cond_c

    .line 306
    :cond_9
    if-eqz v5, :cond_b

    .line 307
    iget v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 308
    const/4 v9, 0x1

    iput v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    goto :goto_3

    .line 310
    :cond_a
    const/4 v9, 0x6

    iput v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    goto :goto_3

    .line 313
    :cond_b
    const/4 v9, 0x2

    iput v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    .line 314
    const/4 v9, 0x0

    iput v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    goto :goto_3

    .line 317
    :cond_c
    iput v2, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    .line 318
    const/4 v9, 0x0

    iput v9, p0, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    goto :goto_3
.end method

.method public split(I)Lcom/smartisanos/smengine/TMotionEvent;
    .locals 12
    .param p1, "newPointerIdBits"    # I

    .prologue
    .line 127
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/smartisanos/smengine/TMotionEvent;->obtain(Lcom/smartisanos/smengine/TMotionEvent;)Lcom/smartisanos/smengine/TMotionEvent;

    move-result-object v7

    .line 129
    .local v7, "newSMotionEvent":Lcom/smartisanos/smengine/TMotionEvent;
    invoke-virtual {p0}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v0

    .line 130
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v1

    .line 131
    .local v1, "actionIndex":I
    invoke-virtual {p0}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerCount()I

    move-result v2

    .line 132
    .local v2, "count":I
    const/4 v5, 0x0

    .line 133
    .local v5, "includingActionPoint":Z
    const/4 v10, 0x0

    iput v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    .line 134
    const/4 v10, 0x0

    iput v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    .line 135
    iget-wide v10, p0, Lcom/smartisanos/smengine/TMotionEvent;->mEventTime:J

    iput-wide v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mEventTime:J

    .line 136
    const/4 v4, 0x0

    .line 137
    .local v4, "idBits":I
    const/4 v8, 0x0

    .local v8, "p":I
    :goto_0
    if-ge v8, v2, :cond_2

    .line 138
    iget-object v10, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPonitIDs:[I

    aget v9, v10, v8

    .line 139
    .local v9, "pointerId":I
    const/4 v10, 0x1

    shl-int v3, v10, v9

    .line 140
    .local v3, "flag":I
    and-int v10, v3, p1

    if-eqz v10, :cond_1

    .line 141
    iget v6, v7, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    .line 142
    .local v6, "newPointIndex":I
    iget-object v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mPonitIDs:[I

    aput v9, v10, v6

    .line 143
    iget-object v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mX:[F

    invoke-virtual {p0, v8}, Lcom/smartisanos/smengine/TMotionEvent;->getX(I)F

    move-result v11

    aput v11, v10, v6

    .line 144
    iget-object v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mY:[F

    invoke-virtual {p0, v8}, Lcom/smartisanos/smengine/TMotionEvent;->getY(I)F

    move-result v11

    aput v11, v10, v6

    .line 145
    iget-object v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mSize:[F

    invoke-virtual {p0, v8}, Lcom/smartisanos/smengine/TMotionEvent;->getSize(I)F

    move-result v11

    aput v11, v10, v6

    .line 146
    if-ne v1, v8, :cond_0

    .line 147
    const/4 v5, 0x1

    .line 148
    iput v6, v7, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    .line 150
    :cond_0
    const/4 v10, 0x1

    shl-int/2addr v10, v9

    or-int/2addr v4, v10

    .line 151
    iget v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    .line 137
    .end local v6    # "newPointIndex":I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 154
    .end local v3    # "flag":I
    .end local v9    # "pointerId":I
    :cond_2
    iput v4, v7, Lcom/smartisanos/smengine/TMotionEvent;->mPointerIdBits:I

    .line 155
    if-eqz v0, :cond_3

    const/4 v10, 0x5

    if-ne v0, v10, :cond_6

    .line 156
    :cond_3
    if-eqz v5, :cond_5

    .line 157
    iget v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 158
    const/4 v10, 0x0

    iput v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    .line 181
    :goto_1
    return-object v7

    .line 160
    :cond_4
    const/4 v10, 0x5

    iput v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    goto :goto_1

    .line 163
    :cond_5
    const/4 v10, 0x2

    iput v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    .line 164
    const/4 v10, 0x0

    iput v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    goto :goto_1

    .line 166
    :cond_6
    const/4 v10, 0x1

    if-eq v0, v10, :cond_7

    const/4 v10, 0x6

    if-ne v0, v10, :cond_a

    .line 167
    :cond_7
    if-eqz v5, :cond_9

    .line 168
    iget v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    .line 169
    const/4 v10, 0x1

    iput v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    goto :goto_1

    .line 171
    :cond_8
    const/4 v10, 0x6

    iput v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    goto :goto_1

    .line 174
    :cond_9
    const/4 v10, 0x2

    iput v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    .line 175
    const/4 v10, 0x0

    iput v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    goto :goto_1

    .line 178
    :cond_a
    iput v0, v7, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    .line 179
    const/4 v10, 0x0

    iput v10, v7, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPonitID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPonitIDs:[I

    iget v4, p0, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mActionIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/TMotionEvent;->mActionIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "res":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Action ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    iget v2, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    if-nez v2, :cond_1

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ACTION_DOWN,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , ids ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    if-ge v0, v2, :cond_6

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPonitIDs:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    .end local v0    # "i":I
    :cond_1
    iget v2, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ACTION_POINTER_DOWN,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 242
    :cond_2
    iget v2, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ACTION_POINTER_UP,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 244
    :cond_3
    iget v2, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ACTION_UP,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 246
    :cond_4
    iget v2, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ACTION_CANCEL,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 248
    :cond_5
    iget v2, p0, Lcom/smartisanos/smengine/TMotionEvent;->mAction:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ACTION_MOVE,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 255
    .restart local v0    # "i":I
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPointerCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/smengine/TMotionEvent;->mPointerCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    return-object v1
.end method
