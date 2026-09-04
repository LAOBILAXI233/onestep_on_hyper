.class public Lcom/smartisanos/smengine/TouchEvent;
.super Ljava/lang/Object;
.source "TouchEvent.java"


.field public static final ACTION_CANCEL:I = 0x2

.field public static final ACTION_POINT_UP:I = 0x1

.field public static final ACTION_UP:I = 0x0

.field public static final GESTURE_DOUBLE_TAP:I = 0x5

.field public static final GESTURE_DOWN:I = 0x1

.field public static final GESTURE_FLING:I = 0x3

.field public static final GESTURE_IDLE:I = 0x0

.field public static final GESTURE_LONG_PRESSED:I = 0x4

.field public static final GESTURE_SCALE_BEGIN:I = 0x7

.field public static final GESTURE_SCALE_END:I = 0x9

.field public static final GESTURE_SCALE_MOVE:I = 0x8

.field public static final GESTURE_SCROLL:I = 0x2

.field public static final GESTURE_SWEEP:I = 0x10

.field public static final GESTURE_TAP:I = 0x6

.field public static final KEY_DOWN:I = 0xe

.field public static final KEY_UP:I = 0xf

.field public static final TOUCH_DOWN:I = 0xb

.field public static final TOUCH_FROM_IN_TO_OUT:I = 0x2

.field public static final TOUCH_FROM_OUT_TO_IN:I = 0x1

.field public static final TOUCH_MOVE:I = 0xd

.field public static final TOUCH_NO_INOUT:I = 0x0

.field public static final TOUCH_UP:I = 0xc


.field private mConsumed:Z

.field private mCurrentAllPointer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDeltaScaleSpan:F

.field private mDeltaX:F

.field private mDeltaX1:F

.field private mDeltaY:F

.field private mDeltaY1:F

.field private mIsInLongPress:Z

.field private mKeyCode:I

.field private mKeyRepeatCount:I

.field private mLongPressPointerId:I

.field private mPointerId:I

.field private mPointerId1:I

.field private mPointerNum:I

.field private mPosX:F

.field private mPosX1:F

.field private mPosY:F

.field private mPosY1:F

.field private mPressure:F

.field private mPressure1:F

.field private mScaleFactor:F

.field private mScaleSpan:F

.field private mScaleSpanInProgress:Z

.field private mSize:F

.field private mTime:J

.field private mTouchMoveInOutState:I

.field private mType:I

.field public mUpType:I

.field private mVelocityXInHoverMode:F

.field private mVelocityYInHoverMode:F

.field private mWorldCoordinateX:F

.field private mWorldCoordinateX1:F

.field private mWorldCoordinateY:F

.field private mWorldCoordinateY1:F


.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/smartisanos/smengine/TouchEvent;->mType:I

    .line 39
    iput v1, p0, Lcom/smartisanos/smengine/TouchEvent;->mUpType:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mConsumed:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mLongPressPointerId:I

    .line 66
    iput v1, p0, Lcom/smartisanos/smengine/TouchEvent;->mKeyRepeatCount:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mCurrentAllPointer:Ljava/util/ArrayList;

    .line 72
    iput v2, p0, Lcom/smartisanos/smengine/TouchEvent;->mVelocityXInHoverMode:F

    .line 73
    iput v2, p0, Lcom/smartisanos/smengine/TouchEvent;->mVelocityYInHoverMode:F

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    .line 77
    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;->set(IFFFF)V

    .line 78
    return-void
.end method

.method public constructor <init>(IFFFF)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "deltax"    # F
    .param p5, "deltay"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v1, p0, Lcom/smartisanos/smengine/TouchEvent;->mType:I

    .line 39
    iput v1, p0, Lcom/smartisanos/smengine/TouchEvent;->mUpType:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mConsumed:Z

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mLongPressPointerId:I

    .line 66
    iput v1, p0, Lcom/smartisanos/smengine/TouchEvent;->mKeyRepeatCount:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mCurrentAllPointer:Ljava/util/ArrayList;

    .line 72
    iput v2, p0, Lcom/smartisanos/smengine/TouchEvent;->mVelocityXInHoverMode:F

    .line 73
    iput v2, p0, Lcom/smartisanos/smengine/TouchEvent;->mVelocityYInHoverMode:F

    .line 142
    invoke-virtual/range {p0 .. p5}, Lcom/smartisanos/smengine/TouchEvent;->set(IFFFF)V

    .line 143
    return-void
.end method


.method public clear()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 138
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;->set(IFFFF)V

    .line 139
    iget-object v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mCurrentAllPointer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    return-void
.end method

.method public getAllCurrentPointer()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mCurrentAllPointer:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrentPointerNum()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mCurrentAllPointer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDeltaScaleSpan()F
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaScaleSpan:F

    return v0
.end method

.method public getDeltaX()F
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaX:F

    return v0
.end method

.method public getDeltaX1()F
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaX1:F

    return v0
.end method

.method public getDeltaY()F
    .locals 1

    .prologue
    .line 223
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaY:F

    return v0
.end method

.method public getDeltaY1()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaY1:F

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mKeyCode:I

    return v0
.end method

.method public getKeyRepeatCount()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mKeyRepeatCount:I

    return v0
.end method

.method public getLongPressPointerId()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mLongPressPointerId:I

    return v0
.end method

.method public getPointerId()I
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mPointerId:I

    return v0
.end method

.method public getPointerId1()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mPointerId1:I

    return v0
.end method

.method public getPointerNum()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mPointerNum:I

    return v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mPressure:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mScaleFactor:F

    return v0
.end method

.method public getScaleSpan()F
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mScaleSpan:F

    return v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mSize:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 320
    iget-wide v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mTime:J

    return-wide v0
.end method

.method public getTouchMoveInOutState()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mTouchMoveInOutState:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mType:I

    return v0
.end method

.method public getWorldCoordinateX()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mWorldCoordinateX:F

    return v0
.end method

.method public getWorldCoordinateX1()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mWorldCoordinateX1:F

    return v0
.end method

.method public getWorldCoordinateY()F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mWorldCoordinateY:F

    return v0
.end method

.method public getWorldCoordinateY1()F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mWorldCoordinateY1:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mPosX:F

    return v0
.end method

.method public getX1()F
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mPosX1:F

    return v0
.end method

.method public getXVelocityInHoverMode()F
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mVelocityXInHoverMode:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mPosY:F

    return v0
.end method

.method public getY1()F
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mPosY1:F

    return v0
.end method

.method public getYVelocityInHoverMode()F
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mVelocityYInHoverMode:F

    return v0
.end method

.method public isConsumed()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mConsumed:Z

    return v0
.end method

.method public isInLongPress()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mIsInLongPress:Z

    return v0
.end method

.method public isScaleSpanInProgress()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mScaleSpanInProgress:Z

    return v0
.end method

.method public set(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 146
    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;->set(IFFFF)V

    .line 147
    return-void
.end method

.method public set(IFFFF)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "deltax"    # F
    .param p5, "deltay"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 162
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mType:I

    .line 163
    iput p2, p0, Lcom/smartisanos/smengine/TouchEvent;->mPosX:F

    .line 164
    iput p3, p0, Lcom/smartisanos/smengine/TouchEvent;->mPosY:F

    .line 165
    iput p4, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaX:F

    .line 166
    iput p5, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaY:F

    .line 167
    iput v1, p0, Lcom/smartisanos/smengine/TouchEvent;->mPointerId:I

    .line 168
    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mPressure:F

    .line 169
    iput v1, p0, Lcom/smartisanos/smengine/TouchEvent;->mKeyCode:I

    .line 170
    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mScaleFactor:F

    .line 171
    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mScaleSpan:F

    .line 172
    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaScaleSpan:F

    .line 173
    iput-boolean v1, p0, Lcom/smartisanos/smengine/TouchEvent;->mScaleSpanInProgress:Z

    .line 174
    iput-boolean v3, p0, Lcom/smartisanos/smengine/TouchEvent;->mConsumed:Z

    .line 176
    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mWorldCoordinateY:F

    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mWorldCoordinateX:F

    .line 177
    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mSize:F

    .line 178
    iput-boolean v1, p0, Lcom/smartisanos/smengine/TouchEvent;->mIsInLongPress:Z

    .line 179
    iput v2, p0, Lcom/smartisanos/smengine/TouchEvent;->mLongPressPointerId:I

    .line 181
    iput v3, p0, Lcom/smartisanos/smengine/TouchEvent;->mPointerNum:I

    .line 182
    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mWorldCoordinateX1:F

    .line 183
    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mWorldCoordinateY1:F

    .line 184
    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mPosX1:F

    .line 185
    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mPosY1:F

    .line 186
    iput v2, p0, Lcom/smartisanos/smengine/TouchEvent;->mPointerId1:I

    .line 187
    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaX1:F

    .line 188
    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaY1:F

    .line 189
    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mVelocityXInHoverMode:F

    .line 190
    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mVelocityYInHoverMode:F

    .line 191
    iput v1, p0, Lcom/smartisanos/smengine/TouchEvent;->mTouchMoveInOutState:I

    .line 192
    iput v1, p0, Lcom/smartisanos/smengine/TouchEvent;->mUpType:I

    .line 194
    return-void
.end method

.method public setConsumed()V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mConsumed:Z

    .line 336
    return-void
.end method

.method public setCurrentAllPointer(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "points":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/smartisanos/smengine/TouchEvent;->mCurrentAllPointer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 151
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 152
    .local v0, "p":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/smartisanos/smengine/TouchEvent;->mCurrentAllPointer:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    .end local v0    # "p":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public setDeltaScaleSpan(F)V
    .locals 0
    .param p1, "deltaScaleSpan"    # F

    .prologue
    .line 309
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaScaleSpan:F

    .line 310
    return-void
.end method

.method public setDeltaX(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 257
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaX:F

    .line 258
    return-void
.end method

.method public setDeltaX1(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 233
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaX1:F

    .line 234
    return-void
.end method

.method public setDeltaY(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 260
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaY:F

    .line 261
    return-void
.end method

.method public setDeltaY1(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 236
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mDeltaY1:F

    .line 237
    return-void
.end method

.method public setIsInLongPress(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mIsInLongPress:Z

    .line 90
    return-void
.end method

.method public setKeyCode(I)V
    .locals 0
    .param p1, "keyCode"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mKeyCode:I

    .line 200
    return-void
.end method

.method public setKeyRepeatCount(I)V
    .locals 0
    .param p1, "n"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mKeyRepeatCount:I

    .line 84
    return-void
.end method

.method public setLongPressPointerId(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mLongPressPointerId:I

    .line 96
    return-void
.end method

.method public setPointerId(I)V
    .locals 0
    .param p1, "pointerId"    # I

    .prologue
    .line 279
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mPointerId:I

    .line 280
    return-void
.end method

.method public setPointerId1(I)V
    .locals 0
    .param p1, "pointerId"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mPointerId1:I

    .line 284
    return-void
.end method

.method public setPointerNum(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/smartisanos/smengine/TouchEvent;->mPointerNum:I

    .line 105
    return-void
.end method

.method public setPressure(F)V
    .locals 0
    .param p1, "pressure"    # F

    .prologue
    .line 268
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mPressure:F

    .line 269
    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    .prologue
    .line 293
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mScaleFactor:F

    .line 294
    return-void
.end method

.method public setScaleSpan(F)V
    .locals 0
    .param p1, "scaleSpan"    # F

    .prologue
    .line 301
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mScaleSpan:F

    .line 302
    return-void
.end method

.method public setScaleSpanInProgress(Z)V
    .locals 0
    .param p1, "scaleSpanInProgress"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mScaleSpanInProgress:Z

    .line 318
    return-void
.end method

.method public setSize(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 80
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mSize:F

    .line 81
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 325
    iput-wide p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mTime:J

    .line 326
    return-void
.end method

.method public setTouchMoveInOutState(I)V
    .locals 0
    .param p1, "s"    # I

    .prologue
    .line 132
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mTouchMoveInOutState:I

    .line 133
    return-void
.end method

.method public setVelocityXInHoverMode(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 339
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mVelocityXInHoverMode:F

    .line 340
    return-void
.end method

.method public setVelocityYInHoverMode(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 342
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mVelocityYInHoverMode:F

    .line 343
    return-void
.end method

.method public setWorldCoordinate(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 127
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mWorldCoordinateX:F

    .line 128
    iput p2, p0, Lcom/smartisanos/smengine/TouchEvent;->mWorldCoordinateY:F

    .line 129
    return-void
.end method

.method public setWorldCoordinate1(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 123
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mWorldCoordinateX1:F

    .line 124
    iput p2, p0, Lcom/smartisanos/smengine/TouchEvent;->mWorldCoordinateY1:F

    .line 125
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 251
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mPosX:F

    .line 252
    return-void
.end method

.method public setX1(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 245
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mPosX1:F

    .line 246
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 254
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mPosY:F

    .line 255
    return-void
.end method

.method public setY1(F)V
    .locals 0
    .param p1, "v"    # F

    .prologue
    .line 248
    iput p1, p0, Lcom/smartisanos/smengine/TouchEvent;->mPosY1:F

    .line 249
    return-void
.end method
