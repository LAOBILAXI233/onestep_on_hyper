.class public Lcom/smartisanos/smengine/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"

.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;
.implements Lcom/smartisanos/smengine/GestureDetector$OnDoubleTapListener;
.implements Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;,
        Lcom/smartisanos/smengine/InputManager$TouchListener;,
        Lcom/smartisanos/smengine/InputManager$MyHandler;
    }
.end annotation


.field public static final ALL_UP:I = 0x0

.field private static final ENABLE_TIMEOUT:Z = true

.field public static final HAS_MOVE:I = 0x2

.field private static final MAX_POINTER:I = 0xa

.field private static final NEXT_RENDERER:I = 0x0

.field private static final TOUCH_DEBUG:Z = true

.field private static volatile enableHardKey:Z

.field private static volatile enableTouch:Z

.field private static lockTimeout:Ljava/lang/Runnable;

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private _backCount:I

.field private _lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private backTime:J

.field private mDetector:Lcom/smartisanos/smengine/GestureDetector;

.field private mEventPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mExeQuene:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/smartisanos/smengine/InputManager$MyHandler;

.field private mHasGotTouch:Z

.field private mHasMove:Z

.field private mHoverModeTouchPointsInX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mHoverModeTouchPointsInXTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHoverModeTouchPointsInY:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mInLongpress:Z

.field private final mLastPositions:[Lcom/smartisanos/smengine/math/Vector2f;

.field private mLongPressPointerId:I

.field private mPreX:[F

.field private mPreY:[F

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRecycleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleInProgress:Z

.field private mScaledetector:Lcom/smartisanos/smengine/ScaleGestureDetector;

.field private mTouchListener:Lcom/smartisanos/smengine/InputManager$TouchListener;

.field private mUseBatchMode:Z

.field private mView:Landroid/opengl/GLSurfaceView;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 36
    sput-boolean v0, Lcom/smartisanos/smengine/InputManager;->enableTouch:Z

    .line 37
    sput-boolean v0, Lcom/smartisanos/smengine/InputManager;->enableHardKey:Z

    .line 58
    new-instance v0, Lcom/smartisanos/smengine/InputManager$1;

    invoke-direct {v0}, Lcom/smartisanos/smengine/InputManager$1;-><init>()V

    sput-object v0, Lcom/smartisanos/smengine/InputManager;->lockTimeout:Ljava/lang/Runnable;

    .line 65
    const-class v0, Lcom/smartisanos/smengine/InputManager;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mEventQueue:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mEventPool:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mHoverModeTouchPointsInX:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mHoverModeTouchPointsInY:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mHoverModeTouchPointsInXTime:Ljava/util/ArrayList;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/smartisanos/smengine/InputManager;->mLongPressPointerId:I

    .line 85
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/smartisanos/smengine/math/Vector2f;

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mLastPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mRecycleList:Ljava/util/ArrayList;

    .line 201
    iput v2, p0, Lcom/smartisanos/smengine/InputManager;->_backCount:I

    .line 202
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/smartisanos/smengine/InputManager;->backTime:J

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mHandleEventList:Ljava/util/ArrayList;

    .line 887
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->_lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 888
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mQueue:Ljava/util/ArrayList;

    .line 889
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mExeQuene:Ljava/util/ArrayList;

    .line 890
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mRemoveQueue:Ljava/util/ArrayList;

    .line 1005
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mPreX:[F

    .line 1006
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mPreY:[F

    .line 1034
    iput-boolean v2, p0, Lcom/smartisanos/smengine/InputManager;->mHasGotTouch:Z

    .line 109
    new-instance v0, Lcom/smartisanos/smengine/InputManager$MyHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/smartisanos/smengine/InputManager$MyHandler;-><init>(Lcom/smartisanos/smengine/InputManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mHandler:Lcom/smartisanos/smengine/InputManager$MyHandler;

    .line 110
    return-void
.end method

.method private addTouchEventToPool(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 155
    iget-object v1, p0, Lcom/smartisanos/smengine/InputManager;->mRecycleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x28

    if-le v1, v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/smartisanos/smengine/InputManager;->mEventPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 157
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/smengine/InputManager;->mRecycleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/smartisanos/smengine/InputManager;->mEventPool:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mRecycleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    iget-object v1, p0, Lcom/smartisanos/smengine/InputManager;->mRecycleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 167
    .end local v0    # "i":I
    :goto_1
    return-void

    .line 161
    .restart local v0    # "i":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 164
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/InputManager;->mRecycleList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private addTouchEventToPool(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/TouchEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "eventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/TouchEvent;>;"
    iget-object v2, p0, Lcom/smartisanos/smengine/InputManager;->mEventPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/smartisanos/smengine/InputManager;->mEventPool:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    monitor-exit v2

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private copePreXY(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1012
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 1013
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "p":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1014
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1015
    .local v2, "pointId":I
    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 1013
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1018
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mPreX:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v3, v2

    .line 1019
    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mPreY:[F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v3, v2

    goto :goto_1

    .line 1021
    .end local v2    # "pointId":I
    :cond_1
    return-void
.end method

.method private gestureDetectorHandle(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/smartisanos/smengine/InputManager;->mDetector:Lcom/smartisanos/smengine/GestureDetector;

    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 198
    .local v0, "detectorHandled":Z
    return v0
.end method

.method private getCurrentPointerNum()I
    .locals 3

    .prologue
    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/smartisanos/smengine/InputManager;->mLastPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 307
    add-int/lit8 v0, v0, 0x1

    .line 305
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    :cond_1
    return v0
.end method

.method private getPointerId(Landroid/view/MotionEvent;)I
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v0, v3, 0xff

    .line 280
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 282
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 283
    .local v1, "pointerId":I
    return v1
.end method

.method private getTouchEventFromPool()Lcom/smartisanos/smengine/TouchEvent;
    .locals 6

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "event":Lcom/smartisanos/smengine/TouchEvent;
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mEventPool:Ljava/util/ArrayList;

    monitor-enter v4

    .line 134
    :try_start_0
    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mEventPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mEventPool:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/smartisanos/smengine/TouchEvent;

    move-object v1, v0

    .line 136
    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mEventPool:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 140
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v1}, Lcom/smartisanos/smengine/TouchEvent;->clear()V

    .line 144
    :cond_0
    return-object v1

    .line 138
    :cond_1
    :try_start_1
    new-instance v2, Lcom/smartisanos/smengine/TouchEvent;

    invoke-direct {v2}, Lcom/smartisanos/smengine/TouchEvent;-><init>()V

    .end local v1    # "event":Lcom/smartisanos/smengine/TouchEvent;
    .local v2, "event":Lcom/smartisanos/smengine/TouchEvent;
    move-object v1, v2

    .end local v2    # "event":Lcom/smartisanos/smengine/TouchEvent;
    .restart local v1    # "event":Lcom/smartisanos/smengine/TouchEvent;
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getXByPointerId(Landroid/view/MotionEvent;I)F
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerId"    # I

    .prologue
    .line 286
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 288
    .local v1, "pid":I
    if-ne v1, p2, :cond_0

    .line 289
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 292
    .end local v1    # "pid":I
    :goto_1
    return v2

    .line 286
    .restart local v1    # "pid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .end local v1    # "pid":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getYByPointerId(Landroid/view/MotionEvent;I)F
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerId"    # I

    .prologue
    .line 295
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 296
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 297
    .local v1, "pid":I
    if-ne v1, p2, :cond_0

    .line 298
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 301
    .end local v1    # "pid":I
    :goto_1
    return v2

    .line 295
    .restart local v1    # "pid":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v1    # "pid":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static lockTouchAndHardKey()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/smartisanos/smengine/InputManager;->enableHardKey:Z

    .line 44
    sput-boolean v0, Lcom/smartisanos/smengine/InputManager;->enableTouch:Z

    .line 45
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/smengine/InputManager;->lockTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 48
    :cond_0
    return-void
.end method

.method private printPoolSize()V
    .locals 4

    .prologue
    .line 660
    const/4 v0, 0x0

    .line 661
    .local v0, "size":I
    iget-object v2, p0, Lcom/smartisanos/smengine/InputManager;->mEventPool:Ljava/util/ArrayList;

    monitor-enter v2

    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/smengine/InputManager;->mEventPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 664
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pool size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 666
    :cond_0
    return-void

    .line 664
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private printPosition()V
    .locals 5

    .prologue
    .line 649
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "#######@@@########"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 651
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    .line 652
    iget-object v2, p0, Lcom/smartisanos/smengine/InputManager;->mLastPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v1, v2, v0

    .line 653
    .local v1, "v":Lcom/smartisanos/smengine/math/Vector2f;
    if-eqz v1, :cond_1

    .line 654
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 651
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 657
    .end local v1    # "v":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "#####$$$$######"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 658
    :cond_3
    return-void
.end method

.method private printTouchID()V
    .locals 4

    .prologue
    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/smartisanos/smengine/InputManager;->mLastPositions:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 274
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "touch ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 272
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_1
    return-void
.end method

.method private processEvent(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 180
    iget-object v2, p0, Lcom/smartisanos/smengine/InputManager;->mEventQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/smartisanos/smengine/InputManager;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 186
    iget-object v1, p0, Lcom/smartisanos/smengine/InputManager;->mHandler:Lcom/smartisanos/smengine/InputManager$MyHandler;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/InputManager$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    return-void

    .line 182
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private processEvent([Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 4
    .param p1, "eventList"    # [Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 169
    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mEventQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 171
    aget-object v0, p1, v1

    .line 172
    .local v0, "event":Lcom/smartisanos/smengine/TouchEvent;
    if-eqz v0, :cond_0

    .line 173
    iget-object v2, p0, Lcom/smartisanos/smengine/InputManager;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "event":Lcom/smartisanos/smengine/TouchEvent;
    :cond_1
    monitor-exit v3

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static unlockTouchAndHardKey()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 51
    sput-boolean v0, Lcom/smartisanos/smengine/InputManager;->enableHardKey:Z

    .line 52
    sput-boolean v0, Lcom/smartisanos/smengine/InputManager;->enableTouch:Z

    .line 53
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMyHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/smengine/InputManager;->lockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    return-void
.end method

.method private updateOneEvent(FZ)V
    .locals 7
    .param p1, "deltaT"    # F
    .param p2, "bBatch"    # Z

    .prologue
    const/4 v6, 0x0

    .line 589
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mTouchListener:Lcom/smartisanos/smengine/InputManager$TouchListener;

    if-nez v4, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    const/4 v2, 0x0

    .line 593
    .local v2, "event":Lcom/smartisanos/smengine/TouchEvent;
    const/4 v0, 0x0

    .line 594
    .local v0, "count":I
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mHandleEventList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 595
    iget-object v5, p0, Lcom/smartisanos/smengine/InputManager;->mEventQueue:Ljava/util/ArrayList;

    monitor-enter v5

    .line 596
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 597
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/TouchEvent;

    .line 598
    .local v1, "e":Lcom/smartisanos/smengine/TouchEvent;
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mHandleEventList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 600
    .end local v1    # "e":Lcom/smartisanos/smengine/TouchEvent;
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 601
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    .end local v3    # "i":I
    :cond_3
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mHandleEventList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 604
    if-lez v0, :cond_0

    .line 607
    if-eqz p2, :cond_5

    .line 608
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mHandleEventList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 609
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mHandleEventList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "event":Lcom/smartisanos/smengine/TouchEvent;
    check-cast v2, Lcom/smartisanos/smengine/TouchEvent;

    .line 610
    .restart local v2    # "event":Lcom/smartisanos/smengine/TouchEvent;
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mTouchListener:Lcom/smartisanos/smengine/InputManager$TouchListener;

    invoke-interface {v4, v2, p1}, Lcom/smartisanos/smengine/InputManager$TouchListener;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;F)V

    .line 611
    invoke-direct {p0, v2}, Lcom/smartisanos/smengine/InputManager;->addTouchEventToPool(Lcom/smartisanos/smengine/TouchEvent;)V

    .line 608
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 601
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 613
    :cond_4
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mHandleEventList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 621
    .end local v3    # "i":I
    :goto_3
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v4}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0

    .line 615
    :cond_5
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mHandleEventList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "event":Lcom/smartisanos/smengine/TouchEvent;
    check-cast v2, Lcom/smartisanos/smengine/TouchEvent;

    .line 616
    .restart local v2    # "event":Lcom/smartisanos/smengine/TouchEvent;
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mHandleEventList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 618
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mTouchListener:Lcom/smartisanos/smengine/InputManager$TouchListener;

    invoke-interface {v4, v2, p1}, Lcom/smartisanos/smengine/InputManager$TouchListener;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;F)V

    .line 619
    invoke-direct {p0, v2}, Lcom/smartisanos/smengine/InputManager;->addTouchEventToPool(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_3
.end method


.method public addAndroidTouchEvent(Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;)V
    .locals 1
    .param p1, "item"    # Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    .prologue
    .line 977
    iget-object v0, p0, Lcom/smartisanos/smengine/InputManager;->_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 978
    iget-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    iget-object v0, p0, Lcom/smartisanos/smengine/InputManager;->_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 985
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 986
    return-void
.end method

.method public forceCancelMotionEvent()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1024
    iget-boolean v3, p0, Lcom/smartisanos/smengine/InputManager;->mHasGotTouch:Z

    if-eqz v3, :cond_1

    .line 1025
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "### received up or cancel failed at previous touch cycle, so force send an cancel"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1026
    :cond_0
    const/4 v3, 0x3

    invoke-static {v3, v5, v5}, Lcom/smartisanos/smengine/TMotionEvent;->obtain(IFF)Lcom/smartisanos/smengine/TMotionEvent;

    move-result-object v1

    .line 1027
    .local v1, "tMotionEvent":Lcom/smartisanos/smengine/TMotionEvent;
    invoke-static {v1}, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->obtain(Lcom/smartisanos/smengine/TMotionEvent;)Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    move-result-object v0

    .line 1028
    .local v0, "androidEV":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/InputManager;->addAndroidTouchEvent(Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;)V

    .line 1029
    iput-boolean v2, p0, Lcom/smartisanos/smengine/InputManager;->mHasGotTouch:Z

    .line 1030
    const/4 v2, 0x1

    .line 1032
    .end local v0    # "androidEV":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    .end local v1    # "tMotionEvent":Lcom/smartisanos/smengine/TMotionEvent;
    :cond_1
    return v2
.end method

.method public hasDownEvent()Z
    .locals 5

    .prologue
    .line 989
    const/4 v1, 0x0

    .line 990
    .local v1, "hasDownEvent":Z
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 991
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 992
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 993
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    .line 994
    .local v0, "androidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->isDownEvent()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 995
    const/4 v1, 0x1

    .line 999
    .end local v0    # "androidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1000
    return v1

    .line 992
    .restart local v0    # "androidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 728
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "onDoubleTap"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 729
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/smengine/InputManager;->getTouchEventFromPool()Lcom/smartisanos/smengine/TouchEvent;

    move-result-object v0

    .line 730
    .local v0, "touch":Lcom/smartisanos/smengine/TouchEvent;
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;->set(IFFFF)V

    .line 731
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/InputManager;->getPointerId(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId(I)V

    .line 732
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/TouchEvent;->setTime(J)V

    .line 733
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setSize(F)V

    .line 734
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mInLongpress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setIsInLongPress(Z)V

    .line 735
    iget v1, p0, Lcom/smartisanos/smengine/InputManager;->mLongPressPointerId:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setLongPressPointerId(I)V

    .line 737
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/InputManager;->processEvent(Lcom/smartisanos/smengine/TouchEvent;)V

    .line 738
    const/4 v1, 0x1

    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 742
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "onDoubleTapEvent"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 743
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 677
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "onDown"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 678
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/smengine/InputManager;->getTouchEventFromPool()Lcom/smartisanos/smengine/TouchEvent;

    move-result-object v0

    .line 679
    .local v0, "touch":Lcom/smartisanos/smengine/TouchEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;->set(IFFFF)V

    .line 680
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/InputManager;->getPointerId(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId(I)V

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/TouchEvent;->setTime(J)V

    .line 682
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/TouchEvent;->setSize(F)V

    .line 683
    iget-boolean v2, p0, Lcom/smartisanos/smengine/InputManager;->mInLongpress:Z

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/TouchEvent;->setIsInLongPress(Z)V

    .line 684
    iget v2, p0, Lcom/smartisanos/smengine/InputManager;->mLongPressPointerId:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/TouchEvent;->setLongPressPointerId(I)V

    .line 686
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/InputManager;->processEvent(Lcom/smartisanos/smengine/TouchEvent;)V

    .line 687
    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "vx"    # F
    .param p4, "vy"    # F

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/smartisanos/smengine/InputManager;->getTouchEventFromPool()Lcom/smartisanos/smengine/TouchEvent;

    move-result-object v0

    .line 709
    .local v0, "touch":Lcom/smartisanos/smengine/TouchEvent;
    const/4 v1, 0x3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;->set(IFFFF)V

    .line 710
    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/InputManager;->getPointerId(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId(I)V

    .line 711
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId1(I)V

    .line 712
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/TouchEvent;->setTime(J)V

    .line 713
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setSize(F)V

    .line 714
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mInLongpress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setIsInLongPress(Z)V

    .line 715
    iget v1, p0, Lcom/smartisanos/smengine/InputManager;->mLongPressPointerId:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setLongPressPointerId(I)V

    .line 717
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/InputManager;->processEvent(Lcom/smartisanos/smengine/TouchEvent;)V

    .line 718
    const/4 v1, 0x1

    return v1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    if-eq p1, v0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/smartisanos/smengine/InputManager;->onKey2(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKey2(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1104
    iget-object v4, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    if-eq p1, v4, :cond_1

    .line 1129
    :cond_0
    :goto_0
    return v2

    .line 1107
    :cond_1
    sget-boolean v4, Lcom/smartisanos/smengine/InputManager;->enableHardKey:Z

    if-nez v4, :cond_2

    .line 1108
    sget-object v2, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    const-string v5, "onKey2 enableHardKey false"

    invoke-virtual {v2, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1109
    goto :goto_0

    .line 1111
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1113
    :cond_3
    const/16 v4, 0x52

    if-eq p2, v4, :cond_4

    const/4 v4, 0x4

    if-ne p2, v4, :cond_0

    .line 1114
    :cond_4
    new-instance v1, Lcom/smartisanos/smengine/TKeyEvent;

    invoke-direct {v1}, Lcom/smartisanos/smengine/TKeyEvent;-><init>()V

    .line 1115
    .local v1, "tKeyEvent":Lcom/smartisanos/smengine/TKeyEvent;
    invoke-virtual {v1, p3}, Lcom/smartisanos/smengine/TKeyEvent;->setKeyEvent(Landroid/view/KeyEvent;)V

    .line 1116
    invoke-static {v1}, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->obtain(Lcom/smartisanos/smengine/TKeyEvent;)Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    move-result-object v0

    .line 1117
    .local v0, "androidEV":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/InputManager;->addAndroidTouchEvent(Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;)V

    move v2, v3

    .line 1118
    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 691
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "onLongPress"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 692
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mInLongpress:Z

    .line 693
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/InputManager;->getPointerId(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/smartisanos/smengine/InputManager;->mLongPressPointerId:I

    .line 694
    invoke-direct {p0}, Lcom/smartisanos/smengine/InputManager;->getTouchEventFromPool()Lcom/smartisanos/smengine/TouchEvent;

    move-result-object v0

    .line 695
    .local v0, "touch":Lcom/smartisanos/smengine/TouchEvent;
    const/4 v1, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;->set(IFFFF)V

    .line 696
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/InputManager;->getPointerId(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId(I)V

    .line 697
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/TouchEvent;->setTime(J)V

    .line 698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setSize(F)V

    .line 699
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mInLongpress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setIsInLongPress(Z)V

    .line 700
    iget v1, p0, Lcom/smartisanos/smengine/InputManager;->mLongPressPointerId:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setLongPressPointerId(I)V

    .line 702
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/InputManager;->processEvent(Lcom/smartisanos/smengine/TouchEvent;)V

    .line 704
    return-void
.end method

.method public onScale(Lcom/smartisanos/smengine/ScaleGestureDetector;)Z
    .locals 7
    .param p1, "scaleGestureDetector"    # Lcom/smartisanos/smengine/ScaleGestureDetector;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 770
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mHasMove:Z

    if-eqz v1, :cond_0

    .line 771
    const/4 v1, 0x1

    .line 788
    :goto_0
    return v1

    .line 773
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "onScale"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 775
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/smengine/InputManager;->getTouchEventFromPool()Lcom/smartisanos/smengine/TouchEvent;

    move-result-object v0

    .line 776
    .local v0, "touch":Lcom/smartisanos/smengine/TouchEvent;
    const/16 v1, 0x8

    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getFocusX()F

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getFocusY()F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;->set(IFFFF)V

    .line 777
    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId(I)V

    .line 778
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId1(I)V

    .line 779
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/TouchEvent;->setTime(J)V

    .line 780
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setScaleSpan(F)V

    .line 781
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getPreviousSpan()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setDeltaScaleSpan(F)V

    .line 782
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setScaleFactor(F)V

    .line 783
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mScaleInProgress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setScaleSpanInProgress(Z)V

    .line 784
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mInLongpress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setIsInLongPress(Z)V

    .line 785
    iget v1, p0, Lcom/smartisanos/smengine/InputManager;->mLongPressPointerId:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setLongPressPointerId(I)V

    .line 787
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/InputManager;->processEvent(Lcom/smartisanos/smengine/TouchEvent;)V

    move v1, v6

    .line 788
    goto :goto_0
.end method

.method public onScaleBegin(Lcom/smartisanos/smengine/ScaleGestureDetector;)Z
    .locals 7
    .param p1, "scaleGestureDetector"    # Lcom/smartisanos/smengine/ScaleGestureDetector;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 747
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mHasMove:Z

    if-eqz v1, :cond_0

    .line 766
    :goto_0
    return v6

    .line 750
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "onScaleBegin"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 752
    :cond_1
    iput-boolean v6, p0, Lcom/smartisanos/smengine/InputManager;->mScaleInProgress:Z

    .line 753
    invoke-direct {p0}, Lcom/smartisanos/smengine/InputManager;->getTouchEventFromPool()Lcom/smartisanos/smengine/TouchEvent;

    move-result-object v0

    .line 754
    .local v0, "touch":Lcom/smartisanos/smengine/TouchEvent;
    const/4 v1, 0x7

    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getFocusX()F

    move-result v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getFocusY()F

    move-result v3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;->set(IFFFF)V

    .line 755
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId(I)V

    .line 756
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId1(I)V

    .line 757
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/TouchEvent;->setTime(J)V

    .line 758
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setScaleSpan(F)V

    .line 759
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getPreviousSpan()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setDeltaScaleSpan(F)V

    .line 760
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setScaleFactor(F)V

    .line 761
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mScaleInProgress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setScaleSpanInProgress(Z)V

    .line 762
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mInLongpress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setIsInLongPress(Z)V

    .line 763
    iget v1, p0, Lcom/smartisanos/smengine/InputManager;->mLongPressPointerId:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setLongPressPointerId(I)V

    .line 765
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/InputManager;->processEvent(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0
.end method

.method public onScaleEnd(Lcom/smartisanos/smengine/ScaleGestureDetector;)V
    .locals 7
    .param p1, "scaleGestureDetector"    # Lcom/smartisanos/smengine/ScaleGestureDetector;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 792
    iput-boolean v6, p0, Lcom/smartisanos/smengine/InputManager;->mScaleInProgress:Z

    .line 793
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mHasMove:Z

    if-eqz v1, :cond_0

    .line 811
    :goto_0
    return-void

    .line 796
    :cond_0
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "onScaleEnd"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 798
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/smengine/InputManager;->getTouchEventFromPool()Lcom/smartisanos/smengine/TouchEvent;

    move-result-object v0

    .line 799
    .local v0, "touch":Lcom/smartisanos/smengine/TouchEvent;
    const/16 v1, 0x9

    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getFocusX()F

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getFocusY()F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;->set(IFFFF)V

    .line 800
    invoke-virtual {v0, v6}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId(I)V

    .line 801
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId1(I)V

    .line 802
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/TouchEvent;->setTime(J)V

    .line 803
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setScaleSpan(F)V

    .line 804
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getCurrentSpan()F

    move-result v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getPreviousSpan()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setDeltaScaleSpan(F)V

    .line 805
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setScaleFactor(F)V

    .line 806
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mScaleInProgress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setScaleSpanInProgress(Z)V

    .line 807
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mInLongpress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setIsInLongPress(Z)V

    .line 808
    iget v1, p0, Lcom/smartisanos/smengine/InputManager;->mLongPressPointerId:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setLongPressPointerId(I)V

    .line 810
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/InputManager;->processEvent(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    const/4 v6, 0x1

    .line 816
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v6, :cond_1

    .line 817
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "onScroll count > 1 "

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 818
    :cond_0
    const/4 v1, 0x0

    .line 832
    :goto_0
    return v1

    .line 820
    :cond_1
    iput-boolean v6, p0, Lcom/smartisanos/smengine/InputManager;->mHasMove:Z

    .line 821
    invoke-direct {p0}, Lcom/smartisanos/smengine/InputManager;->getTouchEventFromPool()Lcom/smartisanos/smengine/TouchEvent;

    move-result-object v0

    .line 822
    .local v0, "touch":Lcom/smartisanos/smengine/TouchEvent;
    const/4 v1, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    neg-float v4, p3

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;->set(IFFFF)V

    .line 823
    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/InputManager;->getPointerId(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId(I)V

    .line 824
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId1(I)V

    .line 825
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/TouchEvent;->setTime(J)V

    .line 826
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mScaleInProgress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setScaleSpanInProgress(Z)V

    .line 827
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setSize(F)V

    .line 828
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mInLongpress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setIsInLongPress(Z)V

    .line 829
    iget v1, p0, Lcom/smartisanos/smengine/InputManager;->mLongPressPointerId:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setLongPressPointerId(I)V

    .line 831
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/InputManager;->processEvent(Lcom/smartisanos/smengine/TouchEvent;)V

    move v1, v6

    .line 832
    goto :goto_0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 836
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "onShowPress"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 849
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 722
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "onSingleTapConfirmed"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 724
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 852
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v6, :cond_1

    .line 853
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "onSingleTapUp but event pointer count > 1 : do nothing"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 867
    :cond_0
    :goto_0
    return v6

    .line 855
    :cond_1
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "onSinglTapUp"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 856
    :cond_2
    invoke-direct {p0}, Lcom/smartisanos/smengine/InputManager;->getTouchEventFromPool()Lcom/smartisanos/smengine/TouchEvent;

    move-result-object v0

    .line 857
    .local v0, "touch":Lcom/smartisanos/smengine/TouchEvent;
    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;->set(IFFFF)V

    .line 858
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/InputManager;->getPointerId(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId(I)V

    .line 859
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/TouchEvent;->setTime(J)V

    .line 860
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mScaleInProgress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setScaleSpanInProgress(Z)V

    .line 861
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setSize(F)V

    .line 862
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mInLongpress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setIsInLongPress(Z)V

    .line 863
    iget v1, p0, Lcom/smartisanos/smengine/InputManager;->mLongPressPointerId:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setLongPressPointerId(I)V

    .line 865
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/InputManager;->processEvent(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0
.end method

.method public onSweep(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 872
    invoke-direct {p0}, Lcom/smartisanos/smengine/InputManager;->getTouchEventFromPool()Lcom/smartisanos/smengine/TouchEvent;

    move-result-object v0

    .line 873
    .local v0, "touch":Lcom/smartisanos/smengine/TouchEvent;
    const/16 v1, 0x10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;->set(IFFFF)V

    .line 874
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/InputManager;->getPointerId(Landroid/view/MotionEvent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setPointerId(I)V

    .line 875
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/smartisanos/smengine/TouchEvent;->setTime(J)V

    .line 876
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mScaleInProgress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setScaleSpanInProgress(Z)V

    .line 877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setSize(F)V

    .line 878
    iget-boolean v1, p0, Lcom/smartisanos/smengine/InputManager;->mInLongpress:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setIsInLongPress(Z)V

    .line 879
    iget v1, p0, Lcom/smartisanos/smengine/InputManager;->mLongPressPointerId:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TouchEvent;->setLongPressPointerId(I)V

    .line 881
    invoke-direct {p0, v0}, Lcom/smartisanos/smengine/InputManager;->processEvent(Lcom/smartisanos/smengine/TouchEvent;)V

    .line 882
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    if-eq p1, v0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/smengine/InputManager;->onTouch2(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1039
    sget-boolean v10, Lcom/smartisanos/smengine/InputManager;->enableTouch:Z

    if-nez v10, :cond_0

    .line 1040
    sget-object v10, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    const-string v12, "onTouch2 enableTouch false"

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const/4 v10, 0x1

    .line 1100
    :goto_0
    return v10

    .line 1043
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1044
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    .line 1045
    .local v1, "actionMasked":I
    if-eqz v1, :cond_1

    iget-boolean v10, p0, Lcom/smartisanos/smengine/InputManager;->mHasGotTouch:Z

    if-nez v10, :cond_1

    .line 1046
    const/4 v10, 0x0

    goto :goto_0

    .line 1049
    :cond_1
    const/4 v6, 0x0

    .line 1050
    .local v6, "locationHasChanged":Z
    if-eqz v1, :cond_2

    const/4 v10, 0x5

    if-ne v1, v10, :cond_9

    .line 1051
    :cond_2
    if-nez v1, :cond_6

    .line 1052
    sget-boolean v10, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "### MotionEvent.ACTION_DOWN,current statusManager status = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1053
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/smengine/InputManager;->forceCancelMotionEvent()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {p0}, Lcom/smartisanos/smengine/InputManager;->hasDownEvent()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1054
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 1056
    :cond_5
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/smartisanos/smengine/InputManager;->mHasGotTouch:Z

    .line 1059
    :cond_6
    invoke-static {p2}, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->pointDown(Landroid/view/MotionEvent;)V

    .line 1060
    const/4 v6, 0x1

    .line 1061
    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/InputManager;->copePreXY(Landroid/view/MotionEvent;)V

    .line 1091
    :cond_7
    :goto_1
    if-eqz v6, :cond_8

    .line 1092
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/smartisanos/smengine/TMotionEvent;->obtain(Lcom/smartisanos/smengine/TMotionEvent;)Lcom/smartisanos/smengine/TMotionEvent;

    move-result-object v9

    .line 1093
    .local v9, "tMotionEvent":Lcom/smartisanos/smengine/TMotionEvent;
    invoke-virtual {v9, p2}, Lcom/smartisanos/smengine/TMotionEvent;->setMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1094
    invoke-static {v9}, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->obtain(Lcom/smartisanos/smengine/TMotionEvent;)Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    move-result-object v2

    .line 1095
    .local v2, "androidEV":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    invoke-virtual {p0, v2}, Lcom/smartisanos/smengine/InputManager;->addAndroidTouchEvent(Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;)V

    .line 1100
    .end local v2    # "androidEV":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    .end local v9    # "tMotionEvent":Lcom/smartisanos/smengine/TMotionEvent;
    :cond_8
    :goto_2
    const/4 v10, 0x1

    goto :goto_0

    .line 1062
    :cond_9
    const/4 v10, 0x2

    if-ne v1, v10, :cond_d

    .line 1065
    invoke-static {p2}, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->pointMove(Landroid/view/MotionEvent;)V

    .line 1068
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 1069
    .local v3, "count":I
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_3
    if-ge v7, v3, :cond_7

    .line 1070
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 1071
    .local v8, "ppId":I
    const/4 v10, 0x4

    if-lt v8, v10, :cond_b

    .line 1069
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1074
    :cond_b
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iget-object v11, p0, Lcom/smartisanos/smengine/InputManager;->mPreX:[F

    aget v11, v11, v8

    sub-float v4, v10, v11

    .line 1075
    .local v4, "detalX":F
    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    iget-object v11, p0, Lcom/smartisanos/smengine/InputManager;->mPreY:[F

    aget v11, v11, v8

    sub-float v5, v10, v11

    .line 1076
    .local v5, "detalY":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-gez v10, :cond_c

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_a

    .line 1077
    :cond_c
    const/4 v6, 0x1

    .line 1078
    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/InputManager;->copePreXY(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1082
    .end local v3    # "count":I
    .end local v4    # "detalX":F
    .end local v5    # "detalY":F
    .end local v7    # "p":I
    .end local v8    # "ppId":I
    :cond_d
    const/4 v10, 0x1

    if-eq v1, v10, :cond_e

    const/4 v10, 0x6

    if-eq v1, v10, :cond_e

    const/4 v10, 0x3

    if-ne v1, v10, :cond_7

    .line 1083
    :cond_e
    const/4 v10, 0x1

    if-eq v1, v10, :cond_f

    const/4 v10, 0x3

    if-ne v1, v10, :cond_10

    .line 1084
    :cond_f
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/smartisanos/smengine/InputManager;->mHasGotTouch:Z

    .line 1086
    :cond_10
    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/InputManager;->copePreXY(Landroid/view/MotionEvent;)V

    .line 1087
    const/4 v6, 0x1

    .line 1088
    invoke-static {p2}, Lcom/smartisanos/launcher/actions/gesture/FlingUpGesture;->pointUp(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1097
    .restart local v9    # "tMotionEvent":Lcom/smartisanos/smengine/TMotionEvent;
    :cond_11
    invoke-virtual {v9}, Lcom/smartisanos/smengine/TMotionEvent;->recycle()V

    goto :goto_2
.end method

.method public removeTouchEventQueue()V
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/smartisanos/smengine/InputManager;->_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 894
    iget-object v0, p0, Lcom/smartisanos/smengine/InputManager;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 895
    iget-object v0, p0, Lcom/smartisanos/smengine/InputManager;->_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 896
    return-void
.end method

.method public renderAndroidTouchEvent()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 899
    iget-boolean v7, p0, Lcom/smartisanos/smengine/InputManager;->mUseBatchMode:Z

    if-eqz v7, :cond_3

    .line 900
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 901
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 902
    .local v6, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 903
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    .line 904
    .local v0, "androidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mExeQuene:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 902
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 906
    .end local v0    # "androidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    :cond_0
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 907
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 909
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mExeQuene:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 922
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_1

    .line 923
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mExeQuene:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    .line 926
    .local v1, "c":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->run()V

    .line 928
    invoke-virtual {v1}, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->recycle()V

    .line 922
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 930
    .end local v1    # "c":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    :cond_1
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mExeQuene:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 974
    .end local v4    # "i":I
    .end local v6    # "size":I
    :cond_2
    :goto_2
    return-void

    .line 933
    :cond_3
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mExeQuene:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 934
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 935
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 936
    .restart local v6    # "size":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v6, :cond_4

    .line 937
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    .line 938
    .restart local v0    # "androidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mExeQuene:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 940
    .end local v0    # "androidTouchEvent":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    :cond_4
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 941
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->_lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 943
    .end local v4    # "i":I
    .end local v6    # "size":I
    :cond_5
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mExeQuene:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 946
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "## touch event queue size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/smartisanos/smengine/InputManager;->mExeQuene:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ###"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    :cond_6
    const/4 v3, 0x6

    .line 948
    .local v3, "firstSize":I
    const/4 v5, 0x2

    .line 949
    .local v5, "secondSize":I
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mExeQuene:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v3, :cond_7

    .line 951
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-lez v5, :cond_8

    .line 952
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mExeQuene:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    .line 953
    .local v2, "e":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    invoke-virtual {v2}, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->run()V

    .line 954
    invoke-virtual {v2}, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->recycle()V

    .line 956
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mExeQuene:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 957
    add-int/lit8 v4, v4, -0x1

    .line 958
    add-int/lit8 v5, v5, -0x1

    .line 951
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 968
    .end local v2    # "e":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    .end local v4    # "i":I
    :cond_7
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mExeQuene:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;

    .line 969
    .restart local v2    # "e":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mExeQuene:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 970
    invoke-virtual {v2}, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->run()V

    .line 971
    invoke-virtual {v2}, Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;->recycle()V

    .line 973
    .end local v2    # "e":Lcom/smartisanos/smengine/InputManager$AndroidTouchEvent;
    :cond_8
    iget-object v7, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v7}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto/16 :goto_2
.end method

.method public setBatchMode(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/smartisanos/smengine/InputManager;->mUseBatchMode:Z

    .line 113
    return-void
.end method

.method public setTouchListener(Lcom/smartisanos/smengine/InputManager$TouchListener;)V
    .locals 0
    .param p1, "tl"    # Lcom/smartisanos/smengine/InputManager$TouchListener;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/smartisanos/smengine/InputManager;->mTouchListener:Lcom/smartisanos/smengine/InputManager$TouchListener;

    .line 130
    return-void
.end method

.method public setView(Landroid/opengl/GLSurfaceView;)V
    .locals 5
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/smartisanos/smengine/InputManager;->mView:Landroid/opengl/GLSurfaceView;

    .line 116
    if-eqz p1, :cond_0

    .line 118
    new-instance v2, Lcom/smartisanos/smengine/GestureDetector;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/smartisanos/smengine/GestureDetector;-><init>(Landroid/content/Context;Lcom/smartisanos/smengine/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/smartisanos/smengine/InputManager;->mDetector:Lcom/smartisanos/smengine/GestureDetector;

    .line 119
    new-instance v2, Lcom/smartisanos/smengine/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/smartisanos/smengine/ScaleGestureDetector;-><init>(Landroid/content/Context;Lcom/smartisanos/smengine/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Lcom/smartisanos/smengine/InputManager;->mScaledetector:Lcom/smartisanos/smengine/ScaleGestureDetector;

    .line 120
    invoke-virtual {p1, p0}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    invoke-virtual {p1, p0}, Landroid/opengl/GLSurfaceView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 123
    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 124
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    int-to-float v0, v2

    .line 125
    .local v0, "slop":F
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/smengine/InputManager;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## slop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ##"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 127
    .end local v0    # "slop":F
    .end local v1    # "vc":Landroid/view/ViewConfiguration;
    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 0
    .param p1, "deltaT"    # F

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/smartisanos/smengine/InputManager;->renderAndroidTouchEvent()V

    .line 675
    return-void
.end method
