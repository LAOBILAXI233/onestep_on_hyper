.class public Lcom/smartisanos/smengine/SceneNode;
.super Ljava/lang/Object;
.source "SceneNode.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/smengine/SceneNode$OnTouchListener;,
        Lcom/smartisanos/smengine/SceneNode$OnLongClickListener;,
        Lcom/smartisanos/smengine/SceneNode$OnClickListener;,
        Lcom/smartisanos/smengine/SceneNode$TouchTarget;,
        Lcom/smartisanos/smengine/SceneNode$CheckForLongPress;,
        Lcom/smartisanos/smengine/SceneNode$PerformClick;,
        Lcom/smartisanos/smengine/SceneNode$UnsetPressedState;,
        Lcom/smartisanos/smengine/SceneNode$ListenerInfo;,
        Lcom/smartisanos/smengine/SceneNode$updateRTTrave;,
        Lcom/smartisanos/smengine/SceneNode$NodeTravel;,
        Lcom/smartisanos/smengine/SceneNode$CollideListener;,
        Lcom/smartisanos/smengine/SceneNode$ScaleListener;,
        Lcom/smartisanos/smengine/SceneNode$TouchListener;,
        Lcom/smartisanos/smengine/SceneNode$DoubleTapListener;,
        Lcom/smartisanos/smengine/SceneNode$LongPressListener;,
        Lcom/smartisanos/smengine/SceneNode$SingleTapListener;,
        Lcom/smartisanos/smengine/SceneNode$SkewData;
    }
.end annotation


.field public static final ANIMATION_END:I = 0x0

.field public static final ANIMATION_PAUSE:I = 0x2

.field public static final ANIMATION_STARTED:I = 0x1

.field static final CLICKABLE:I = 0x4000

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field public static final GONE:I = 0x8

.field public static final INVISIBLE:I = 0x4

.field static final LONG_CLICKABLE:I = 0x200000

.field static final PFLAG_CANCEL_NEXT_UP_EVENT:I = 0x4000000

.field private static final PFLAG_PREPRESSED:I = 0x2000000

.field private static final PFLAG_PRESSED:I = 0x4000

.field public static final SELECTED_STATE:I = 0x1

.field private static final TMP_DATA_LEN:I = 0x30

.field public static final UNSELECTED_STATE:I = 0x0

.field protected static final UPDATE_DISPLAY:I = 0x2

.field protected static final UPDATE_TRANSFORM:I = 0x1

.field static final VISIBILITY_MASK:I = 0xc

.field public static final VISIBLE:I

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static mTmpData:[F


.field isDraw:Z

.field private mCancelClickAndLongPress:Z

.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/SceneNode;",
            ">;"
        }
    .end annotation
.end field

.field private mCollideAlways:Z

.field protected mCollideListener:Lcom/smartisanos/smengine/SceneNode$CollideListener;

.field private mCurrentAnimationState:I

.field private mCurrentInteractionState:I

.field protected mDoubleTapListener:Lcom/smartisanos/smengine/SceneNode$DoubleTapListener;

.field public mDragPointX:F

.field public mDragPointY:F

.field private mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

.field private mFixedCenter:Lcom/smartisanos/smengine/math/Vector3f;

.field private mForceDispatchTouchToView:Z

.field private mForceRenderTag:Z

.field private mGroupFlags:I

.field private mHasPerformedLongPress:Z

.field private mIsUpdateBoundingVolume:Z

.field private volatile mIsVisible:Z

.field private mLayer:I

.field mListenerInfo:Lcom/smartisanos/smengine/SceneNode$ListenerInfo;

.field private mLocalBoundingVolume:Lcom/smartisanos/smengine/BoundingVolume;

.field private mLocalTransform:Lcom/smartisanos/smengine/math/Transform;

.field private mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

.field protected mLongPressListener:Lcom/smartisanos/smengine/SceneNode$LongPressListener;

.field private mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

.field public mMatrixArrayNum:I

.field private mMatrixForRender:Lcom/smartisanos/smengine/math/Matrix4f;

.field private mMeshData:Lcom/smartisanos/smengine/Mesh;

.field private mName:Ljava/lang/String;

.field private mParent:Lcom/smartisanos/smengine/SceneNode;

.field private mPendingCheckForLongPress:Lcom/smartisanos/smengine/SceneNode$CheckForLongPress;

.field private mPendingCheckForLongPressEvent:Lcom/smartisanos/smengine/Event;

.field private mPerformClick:Lcom/smartisanos/smengine/SceneNode$PerformClick;

.field private mPrivateFlags:I

.field private mRUParam:Lcom/smartisanos/smengine/RenderState$Param;

.field private mRenderQueue:I

.field private mRenderState:Lcom/smartisanos/smengine/RenderState;

.field private mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

.field protected mScaleListener:Lcom/smartisanos/smengine/SceneNode$ScaleListener;

.field private mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

.field protected mSceneNodeTransformNative:J

.field private mSelfCamera:Lcom/smartisanos/smengine/Camera;

.field protected mSingleTapListener:Lcom/smartisanos/smengine/SceneNode$SingleTapListener;

.field private mSkewDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/SceneNode$SkewData;",
            ">;"
        }
    .end annotation
.end field

.field private mSubLayer:I

.field private mTextureMapName:[Ljava/lang/String;

.field protected mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

.field protected mTouchSlop:I

.field public mTouchX:F

.field public mTouchY:F

.field private mTranslatePivot:Lcom/smartisanos/smengine/math/Vector3f;

.field private mUnsetPressedState:Lcom/smartisanos/smengine/SceneNode$UnsetPressedState;

.field protected mUpdateFlags:I

.field private mUserInteractionEnable:Z

.field private mViewFlags:I

.field private mViewPort:Lcom/smartisanos/smengine/ViewPort;

.field private mWorldBoundingVolume:Lcom/smartisanos/smengine/BoundingVolume;

.field protected mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

.field private mWorldTransform:Lcom/smartisanos/smengine/math/Transform;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/smartisanos/smengine/SceneNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    .line 89
    const/16 v0, 0x30

    new-array v0, v0, [F

    sput-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/smartisanos/smengine/math/Transform;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/math/Transform;

    .line 45
    new-instance v0, Lcom/smartisanos/smengine/math/Transform;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldTransform:Lcom/smartisanos/smengine/math/Transform;

    .line 46
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    .line 47
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    .line 48
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    .line 49
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 55
    new-instance v0, Lcom/smartisanos/smengine/RenderState;

    invoke-direct {v0}, Lcom/smartisanos/smengine/RenderState;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    .line 58
    iput v1, p0, Lcom/smartisanos/smengine/SceneNode;->mLayer:I

    .line 65
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    .line 67
    iput-boolean v2, p0, Lcom/smartisanos/smengine/SceneNode;->mUserInteractionEnable:Z

    .line 69
    iput v1, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    .line 72
    iput-boolean v2, p0, Lcom/smartisanos/smengine/SceneNode;->mIsVisible:Z

    .line 73
    iput v1, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentInteractionState:I

    .line 74
    iput v1, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentAnimationState:I

    .line 75
    iput-boolean v2, p0, Lcom/smartisanos/smengine/SceneNode;->mIsUpdateBoundingVolume:Z

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSkewDataList:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mFixedCenter:Lcom/smartisanos/smengine/math/Vector3f;

    .line 87
    iput-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->mForceRenderTag:Z

    .line 197
    iput v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMatrixArrayNum:I

    .line 734
    new-instance v0, Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMatrixForRender:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 1317
    new-instance v0, Lcom/smartisanos/smengine/RenderState$Param;

    invoke-direct {v0}, Lcom/smartisanos/smengine/RenderState$Param;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRUParam:Lcom/smartisanos/smengine/RenderState$Param;

    .line 1354
    iput-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->isDraw:Z

    .line 1791
    const/high16 v0, 0x200000

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    .line 1792
    iput v1, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    .line 1793
    iput v1, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    .line 1805
    iput v1, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchSlop:I

    .line 2142
    iput v3, p0, Lcom/smartisanos/smengine/SceneNode;->mDragPointX:F

    .line 2143
    iput v3, p0, Lcom/smartisanos/smengine/SceneNode;->mDragPointY:F

    .line 2552
    iput-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->mForceDispatchTouchToView:Z

    .line 390
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mName:Ljava/lang/String;

    .line 391
    const/16 v0, 0x18

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchSlop:I

    .line 392
    invoke-virtual {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setMotionEventSplittingEnabled(Z)V

    .line 393
    invoke-static {}, Lcom/smartisanos/smengine/SceneNode;->nCreateNative()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    .line 394
    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/SceneNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    return-object v0
.end method

.method static synthetic access$400()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$502(Lcom/smartisanos/smengine/SceneNode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/smengine/SceneNode;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mHasPerformedLongPress:Z

    return p1
.end method

.method private addTouchTarget(Lcom/smartisanos/smengine/SceneNode;I)Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    .locals 2
    .param p1, "child"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "pointerIdBits"    # I

    .prologue
    .line 2672
    invoke-static {p1, p2}, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->obtain(Lcom/smartisanos/smengine/SceneNode;I)Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    move-result-object v0

    .line 2673
    .local v0, "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    iput-object v1, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2674
    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2675
    return-object v0
.end method

.method private static canViewReceivePointerEvents(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 1
    .param p0, "child"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 2549
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v0

    return v0
.end method

.method private cancelAndClearTouchTargets(Lcom/smartisanos/smengine/TMotionEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 2634
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    if-eqz v2, :cond_2

    .line 2635
    const/4 v0, 0x0

    .line 2636
    .local v0, "syntheticEvent":Z
    if-nez p1, :cond_0

    .line 2637
    const/4 v2, 0x3

    invoke-static {v2, v3, v3}, Lcom/smartisanos/smengine/TMotionEvent;->obtain(IFF)Lcom/smartisanos/smengine/TMotionEvent;

    move-result-object p1

    .line 2638
    const/4 v0, 0x1

    .line 2641
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .local v1, "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :goto_0
    if-eqz v1, :cond_1

    .line 2642
    iget-object v2, v1, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->child:Lcom/smartisanos/smengine/SceneNode;

    invoke-static {v2}, Lcom/smartisanos/smengine/SceneNode;->resetCancelNextUpFlag(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 2641
    iget-object v1, v1, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    goto :goto_0

    .line 2646
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/smengine/SceneNode;->clearTouchTargets()V

    .line 2648
    if-eqz v0, :cond_2

    .line 2649
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->recycle()V

    .line 2652
    .end local v0    # "syntheticEvent":Z
    .end local v1    # "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :cond_2
    return-void
.end method

.method private cancelTouchTarget(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 6
    .param p1, "view"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/4 v5, 0x0

    .line 2708
    const/4 v2, 0x0

    .line 2709
    .local v2, "predecessor":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2710
    .local v3, "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :goto_0
    if-eqz v3, :cond_0

    .line 2711
    iget-object v1, v3, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2712
    .local v1, "next":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    iget-object v4, v3, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->child:Lcom/smartisanos/smengine/SceneNode;

    if-ne v4, p1, :cond_2

    .line 2713
    if-nez v2, :cond_1

    .line 2714
    iput-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2718
    :goto_1
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->recycle()V

    .line 2719
    const/4 v4, 0x3

    invoke-static {v4, v5, v5}, Lcom/smartisanos/smengine/TMotionEvent;->obtain(IFF)Lcom/smartisanos/smengine/TMotionEvent;

    move-result-object v0

    .line 2720
    .local v0, "event":Lcom/smartisanos/smengine/TMotionEvent;
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/SceneNode;->dispatchTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    .line 2721
    invoke-virtual {v0}, Lcom/smartisanos/smengine/TMotionEvent;->recycle()V

    .line 2727
    .end local v0    # "event":Lcom/smartisanos/smengine/TMotionEvent;
    .end local v1    # "next":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :cond_0
    return-void

    .line 2716
    .restart local v1    # "next":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :cond_1
    iput-object v1, v2, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    goto :goto_1

    .line 2724
    :cond_2
    move-object v2, v3

    .line 2725
    move-object v3, v1

    .line 2726
    goto :goto_0
.end method

.method private checkForLongClick(I)V
    .locals 4
    .param p1, "delayOffset"    # I

    .prologue
    const/high16 v1, 0x200000

    .line 2296
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mHasPerformedLongPress:Z

    .line 2299
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPendingCheckForLongPress:Lcom/smartisanos/smengine/SceneNode$CheckForLongPress;

    if-nez v0, :cond_0

    .line 2300
    new-instance v0, Lcom/smartisanos/smengine/SceneNode$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/smartisanos/smengine/SceneNode$CheckForLongPress;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPendingCheckForLongPress:Lcom/smartisanos/smengine/SceneNode$CheckForLongPress;

    .line 2302
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPendingCheckForLongPress:Lcom/smartisanos/smengine/SceneNode$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->postDelayed(Ljava/lang/Runnable;J)Lcom/smartisanos/smengine/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPendingCheckForLongPressEvent:Lcom/smartisanos/smengine/Event;

    .line 2304
    :cond_1
    return-void
.end method

.method private clearTouchTargets()V
    .locals 3

    .prologue
    .line 2619
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2620
    .local v1, "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    if-eqz v1, :cond_1

    .line 2622
    :cond_0
    iget-object v0, v1, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2623
    .local v0, "next":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->recycle()V

    .line 2624
    move-object v1, v0

    .line 2625
    if-nez v1, :cond_0

    .line 2626
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2628
    .end local v0    # "next":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :cond_1
    return-void
.end method

.method private collideExitAll(Lcom/smartisanos/smengine/CollisionData;Lcom/smartisanos/smengine/SceneNode;)I
    .locals 5
    .param p1, "cd"    # Lcom/smartisanos/smengine/CollisionData;
    .param p2, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/4 v4, 0x1

    .line 1007
    invoke-virtual {p1}, Lcom/smartisanos/smengine/CollisionData;->getCollidedNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-ne v3, p0, :cond_1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/CollisionData;->getColliderNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    if-ne v3, p2, :cond_1

    .line 1008
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->collideExit(Lcom/smartisanos/smengine/CollisionData;)I

    .line 1009
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getCollisionManager()Lcom/smartisanos/smengine/CollisionManager;

    move-result-object v1

    .line 1010
    .local v1, "cm":Lcom/smartisanos/smengine/CollisionManager;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/CollisionManager;->clean()V

    .line 1017
    .end local v1    # "cm":Lcom/smartisanos/smengine/CollisionManager;
    :cond_0
    return v4

    .line 1013
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1014
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/SceneNode;

    .line 1015
    .local v0, "child":Lcom/smartisanos/smengine/SceneNode;
    invoke-direct {v0, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->collideExitAll(Lcom/smartisanos/smengine/CollisionData;Lcom/smartisanos/smengine/SceneNode;)I

    .line 1013
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private dispatchTransformedTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;ZLcom/smartisanos/smengine/SceneNode;I)Z
    .locals 6
    .param p1, "event"    # Lcom/smartisanos/smengine/TMotionEvent;
    .param p2, "cancel"    # Z
    .param p3, "child"    # Lcom/smartisanos/smengine/SceneNode;
    .param p4, "desiredPointerIdBits"    # I

    .prologue
    const/4 v5, 0x3

    .line 2091
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v2

    .line 2092
    .local v2, "oldAction":I
    if-nez p2, :cond_0

    if-ne v2, v5, :cond_2

    .line 2093
    :cond_0
    invoke-virtual {p1, v5}, Lcom/smartisanos/smengine/TMotionEvent;->setAction(I)V

    .line 2094
    if-nez p3, :cond_1

    .line 2095
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->onTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v0

    .line 2099
    .local v0, "handled":Z
    :goto_0
    invoke-virtual {p1, v2}, Lcom/smartisanos/smengine/TMotionEvent;->setAction(I)V

    .line 2135
    .end local v0    # "handled":Z
    :goto_1
    return v0

    .line 2097
    :cond_1
    invoke-virtual {p3, p1}, Lcom/smartisanos/smengine/SceneNode;->dispatchTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v0

    .restart local v0    # "handled":Z
    goto :goto_0

    .line 2104
    .end local v0    # "handled":Z
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerIdBits()I

    move-result v3

    .line 2105
    .local v3, "oldPointerIdBits":I
    and-int v1, v3, p4

    .line 2111
    .local v1, "newPointerIdBits":I
    if-nez v1, :cond_3

    .line 2112
    const/4 v0, 0x0

    goto :goto_1

    .line 2115
    :cond_3
    if-ne v1, v3, :cond_5

    .line 2117
    if-nez p3, :cond_4

    .line 2118
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->onTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v0

    .restart local v0    # "handled":Z
    goto :goto_1

    .line 2120
    .end local v0    # "handled":Z
    :cond_4
    invoke-virtual {p3, p1}, Lcom/smartisanos/smengine/SceneNode;->dispatchTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v0

    .restart local v0    # "handled":Z
    goto :goto_1

    .line 2126
    .end local v0    # "handled":Z
    :cond_5
    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/TMotionEvent;->split(I)Lcom/smartisanos/smengine/TMotionEvent;

    move-result-object v4

    .line 2127
    .local v4, "transformedEvent":Lcom/smartisanos/smengine/TMotionEvent;
    if-nez p3, :cond_6

    .line 2128
    invoke-virtual {p0, v4}, Lcom/smartisanos/smengine/SceneNode;->onTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v0

    .line 2134
    .restart local v0    # "handled":Z
    :goto_2
    invoke-virtual {v4}, Lcom/smartisanos/smengine/TMotionEvent;->recycle()V

    goto :goto_1

    .line 2131
    .end local v0    # "handled":Z
    :cond_6
    invoke-virtual {p3, v4}, Lcom/smartisanos/smengine/SceneNode;->dispatchTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v0

    .restart local v0    # "handled":Z
    goto :goto_2
.end method

.method private getLocalTransformFromNative(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/math/Transform;
    .locals 6
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 894
    new-instance v0, Lcom/smartisanos/smengine/math/Transform;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Transform;-><init>()V

    .line 895
    .local v0, "newTransform":Lcom/smartisanos/smengine/math/Transform;
    iget-wide v2, p1, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object v1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v2, v3, v1}, Lcom/smartisanos/smengine/SceneNode;->nGetLocalTransform(J[F)V

    .line 896
    sget-object v1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Transform;->setTranslation(FFF)Lcom/smartisanos/smengine/math/Transform;

    .line 897
    sget-object v1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    sget-object v3, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Transform;->setScale(FFF)Lcom/smartisanos/smengine/math/Transform;

    .line 898
    sget-object v1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    sget-object v3, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    sget-object v4, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Transform;->setRotation(FFFF)Lcom/smartisanos/smengine/math/Transform;

    .line 899
    return-object v0
.end method

.method private getTouchTarget(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    .locals 2
    .param p1, "child"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 2659
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .local v0, "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :goto_0
    if-eqz v0, :cond_1

    .line 2660
    iget-object v1, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->child:Lcom/smartisanos/smengine/SceneNode;

    if-ne v1, p1, :cond_0

    .line 2664
    .end local v0    # "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :goto_1
    return-object v0

    .line 2659
    .restart local v0    # "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :cond_0
    iget-object v0, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    goto :goto_0

    .line 2664
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getWorldTransformFromNative(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/math/Transform;
    .locals 6
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 886
    new-instance v0, Lcom/smartisanos/smengine/math/Transform;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Transform;-><init>()V

    .line 887
    .local v0, "newTransform":Lcom/smartisanos/smengine/math/Transform;
    iget-wide v2, p1, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object v1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v2, v3, v1}, Lcom/smartisanos/smengine/SceneNode;->nGetWorldTransform(J[F)V

    .line 888
    sget-object v1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Transform;->setTranslation(FFF)Lcom/smartisanos/smengine/math/Transform;

    .line 889
    sget-object v1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    sget-object v3, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Transform;->setScale(FFF)Lcom/smartisanos/smengine/math/Transform;

    .line 890
    sget-object v1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v3, 0x7

    aget v2, v2, v3

    sget-object v3, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/16 v4, 0x8

    aget v3, v3, v4

    sget-object v4, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/math/Transform;->setRotation(FFFF)Lcom/smartisanos/smengine/math/Transform;

    .line 891
    return-object v0
.end method

.method private static native nCalculateCameraMatrixData(JJ)V
.end method

.method private static native nCalculateLocalTranslateData(J)V
.end method

.method private static native nCalculateMVPMatrixArrayData(JJJIFFZZI)V
.end method

.method private static native nCalculateMVPMatrixArrayDataWithChildZ(JJJIFI)V
.end method

.method private static native nCalculateMVPMatrixData(JJI)V
.end method

.method private static native nCalculateModelSpaceLightDirArrayData(JJIFFF)V
.end method

.method private static native nCalculateProjectionMatrixData(JJ)V
.end method

.method private static native nCalculateViewMatrixData(JJ)V
.end method

.method private static native nCalculateWorldMatrixData(J)V
.end method

.method private static native nChangeAncestor(JJ)Z
.end method

.method private static native nCreateNative()J
.end method

.method protected static native nCullWithCameraRect(JJ)Z
.end method

.method private static native nForceUpdateWorldBoundingVolume(JJ)V
.end method

.method private static native nForceUpdateWorldTransforms(JJ)V
.end method

.method protected static native nGetCornerPointScreenCoord(JJ[F)V
.end method

.method private static native nGetLocalBoundingRect(J[F)Z
.end method

.method private static native nGetLocalTransform(J[F)V
.end method

.method private static native nGetLocation(J[F)V
.end method

.method private static native nGetRotation(J[F)V
.end method

.method private static native nGetScale(J[F)V
.end method

.method protected static native nGetSize(J[F)V
.end method

.method protected static native nGetWorldBoundingRect(J[F)Z
.end method

.method private static native nGetWorldMatrix(J[F)V
.end method

.method protected static native nGetWorldScale(J[F)V
.end method

.method protected static native nGetWorldTransform(J[F)V
.end method

.method protected static native nGetWorldTranslate(J[F)V
.end method

.method private static native nIsCollidedWith(JJZ)Z
.end method

.method protected static native nIsInWindow(JFFF)Z
.end method

.method private static native nIsPointInBoundingVolume(JFFF)Z
.end method

.method private static native nReleaseNative(J)V
.end method

.method protected static native nSetCameraMatrixDataToShader(JI)V
.end method

.method private static native nSetLocalBoundingVolume(JFFFF)V
.end method

.method protected static native nSetLocalTransform(J[F)V
.end method

.method protected static native nSetLocalTranslate(JFFF)V
.end method

.method protected static native nSetLocalTranslateDataToShader(JI)V
.end method

.method protected static native nSetMVPMatrixArrayDataToShader(JI)V
.end method

.method private static native nSetMVPMatrixArrayNum(JI)V
.end method

.method protected static native nSetMVPMatrixDataToShader(JI)V
.end method

.method protected static native nSetModelSpaceLightDirDataToShader(JI)V
.end method

.method private static native nSetRotation(JFFFF)V
.end method

.method private static native nSetScale(JFFF)V
.end method

.method private static native nSetScaleRotatePivot(JFFF)V
.end method

.method private static native nSetTranslate(JFFF)V
.end method

.method private static native nSetTranslatePivot(JFFF)V
.end method

.method protected static native nSetWorldMatrixDataToShader(JI)V
.end method

.method private static native nUpdateWorldBoundingVolume(JJ)V
.end method

.method private static native nUpdateWorldTransforms(JJ)V
.end method

.method private removeLongPressCallback()V
    .locals 1

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPendingCheckForLongPressEvent:Lcom/smartisanos/smengine/Event;

    if-eqz v0, :cond_0

    .line 2311
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPendingCheckForLongPressEvent:Lcom/smartisanos/smengine/Event;

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->removeCallbacks(Lcom/smartisanos/smengine/Event;)V

    .line 2312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPendingCheckForLongPressEvent:Lcom/smartisanos/smengine/Event;

    .line 2314
    :cond_0
    return-void
.end method

.method private removePointersFromTouchTargets(I)V
    .locals 5
    .param p1, "pointerIdBits"    # I

    .prologue
    .line 2682
    const/4 v1, 0x0

    .line 2683
    .local v1, "predecessor":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2684
    .local v2, "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :goto_0
    if-eqz v2, :cond_2

    .line 2685
    iget-object v0, v2, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2686
    .local v0, "next":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    iget v3, v2, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_1

    .line 2687
    iget v3, v2, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->pointerIdBits:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->pointerIdBits:I

    .line 2688
    iget v3, v2, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_1

    .line 2689
    if-nez v1, :cond_0

    .line 2690
    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2694
    :goto_1
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->recycle()V

    .line 2695
    move-object v2, v0

    .line 2696
    goto :goto_0

    .line 2692
    :cond_0
    iput-object v0, v1, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    goto :goto_1

    .line 2699
    :cond_1
    move-object v1, v2

    .line 2700
    move-object v2, v0

    .line 2701
    goto :goto_0

    .line 2702
    .end local v0    # "next":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :cond_2
    return-void
.end method

.method private static resetCancelNextUpFlag(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 2
    .param p0, "view"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 2608
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2609
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    .line 2610
    const/4 v0, 0x1

    .line 2612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTouchState()V
    .locals 2

    .prologue
    .line 2598
    invoke-direct {p0}, Lcom/smartisanos/smengine/SceneNode;->clearTouchTargets()V

    .line 2599
    invoke-static {p0}, Lcom/smartisanos/smengine/SceneNode;->resetCancelNextUpFlag(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 2600
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    .line 2601
    return-void
.end method

.method private setLocalTransform(Lcom/smartisanos/smengine/math/Transform;)V
    .locals 3
    .param p1, "tran"    # Lcom/smartisanos/smengine/math/Transform;

    .prologue
    .line 854
    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/math/Transform;->getData([F)V

    .line 855
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->nSetLocalTransform(J[F)V

    .line 856
    return-void
.end method

.method private setLocalTranslate(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 848
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/math/Vector3f;->set(FFF)Lcom/smartisanos/smengine/math/Vector3f;

    .line 849
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->nSetLocalTranslate(JFFF)V

    .line 850
    return-void
.end method

.method private setLocalTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "translate"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 845
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    .line 846
    return-void
.end method


.method public addChild(Lcom/smartisanos/smengine/SceneNode;)I
    .locals 2
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 793
    if-nez p1, :cond_0

    .line 794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "child cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 796
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eq p1, p0, :cond_2

    .line 797
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 798
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 800
    :cond_1
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setParent(Lcom/smartisanos/smengine/SceneNode;)V

    .line 801
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    .line 805
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public addChildAt(Lcom/smartisanos/smengine/SceneNode;I)I
    .locals 1
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "index"    # I

    .prologue
    .line 808
    if-nez p1, :cond_0

    .line 809
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 811
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eq v0, p0, :cond_2

    if-eq p1, p0, :cond_2

    .line 812
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 813
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 815
    :cond_1
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setParent(Lcom/smartisanos/smengine/SceneNode;)V

    .line 816
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 817
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    .line 820
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected addMeshToRenderUnit(Lcom/smartisanos/smengine/RenderManager$RenderUnit;)V
    .locals 1
    .param p1, "ru"    # Lcom/smartisanos/smengine/RenderManager$RenderUnit;

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/Mesh;

    if-nez v0, :cond_0

    .line 1300
    :goto_0
    return-void

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/Mesh;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/RenderManager$RenderUnit;->addMesh(Lcom/smartisanos/smengine/Mesh;)V

    goto :goto_0
.end method

.method protected calculateCameraMatrixData(Lcom/smartisanos/smengine/Camera;)V
    .locals 4
    .param p1, "c"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v2, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nCalculateCameraMatrixData(JJ)V

    .line 164
    return-void
.end method

.method protected calculateLocalTranslateData()V
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->nCalculateLocalTranslateData(J)V

    .line 161
    return-void
.end method

.method protected calculateMVPMatrixArrayData(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IFFZZ)V
    .locals 12
    .param p1, "c"    # Lcom/smartisanos/smengine/Camera;
    .param p2, "child"    # Lcom/smartisanos/smengine/SceneNode;
    .param p3, "index"    # I
    .param p4, "fixScale"    # F
    .param p5, "fixZ"    # F
    .param p6, "useOutOfBoundaryMatrix"    # Z
    .param p7, "useFixScale"    # Z

    .prologue
    .line 169
    const/4 v11, -0x1

    .line 170
    .local v11, "layer":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/LayerManager;->openPolygonOffset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v11

    .line 173
    :cond_0
    if-nez p2, :cond_1

    .line 174
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v2, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    const-wide/16 v4, -0x1

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v11}, Lcom/smartisanos/smengine/SceneNode;->nCalculateMVPMatrixArrayData(JJJIFFZZI)V

    .line 181
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v2, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    iget-wide v4, p2, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v0 .. v11}, Lcom/smartisanos/smengine/SceneNode;->nCalculateMVPMatrixArrayData(JJJIFFZZI)V

    goto :goto_0
.end method

.method protected calculateMVPMatrixArrayDataWithChildZ(Lcom/smartisanos/smengine/Camera;Lcom/smartisanos/smengine/SceneNode;IF)V
    .locals 9
    .param p1, "c"    # Lcom/smartisanos/smengine/Camera;
    .param p2, "child"    # Lcom/smartisanos/smengine/SceneNode;
    .param p3, "index"    # I
    .param p4, "childZ"    # F

    .prologue
    .line 184
    const/4 v8, -0x1

    .line 185
    .local v8, "layer":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/LayerManager;->openPolygonOffset()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v8

    .line 188
    :cond_0
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v2, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    iget-wide v4, p2, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v8}, Lcom/smartisanos/smengine/SceneNode;->nCalculateMVPMatrixArrayDataWithChildZ(JJJIFI)V

    .line 189
    return-void
.end method

.method public calculateMVPMatrixData(Lcom/smartisanos/smengine/Camera;)V
    .locals 6
    .param p1, "c"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 147
    const/4 v0, -0x1

    .line 148
    .local v0, "layer":I
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/LayerManager;->openPolygonOffset()Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v0

    .line 151
    :cond_0
    iget-wide v2, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v4, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v2, v3, v4, v5, v0}, Lcom/smartisanos/smengine/SceneNode;->nCalculateMVPMatrixData(JJI)V

    .line 152
    return-void
.end method

.method public calculateModeSpaceLightDirArrayData(Lcom/smartisanos/smengine/SceneNode;I)V
    .locals 9
    .param p1, "child"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "index"    # I

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/TextureBatchWithDirLightMaterial;->getLightDirInWorldSpace()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    .line 194
    .local v8, "lightDirInSpace":Lcom/smartisanos/smengine/math/Vector3f;
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v2, p1, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget v4, v8, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    neg-float v5, v4

    iget v4, v8, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    neg-float v6, v4

    iget v4, v8, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    neg-float v7, v4

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNode;->nCalculateModelSpaceLightDirArrayData(JJIFFF)V

    .line 196
    .end local v8    # "lightDirInSpace":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    return-void
.end method

.method protected calculateProjectionMatrixData(Lcom/smartisanos/smengine/Camera;)V
    .locals 4
    .param p1, "c"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v2, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nCalculateProjectionMatrixData(JJ)V

    .line 167
    return-void
.end method

.method protected calculateViewMatrixData(Lcom/smartisanos/smengine/Camera;)V
    .locals 4
    .param p1, "c"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v2, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nCalculateViewMatrixData(JJ)V

    .line 155
    return-void
.end method

.method protected calculateWorldMatrixData()V
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->nCalculateWorldMatrixData(J)V

    .line 158
    return-void
.end method

.method public changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 11
    .param p1, "ancestor"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 859
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    if-ne p1, v8, :cond_1

    .line 860
    :cond_0
    const/4 v8, 0x0

    .line 883
    :goto_0
    return v8

    .line 865
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/World;->getSceneManager()Lcom/smartisanos/smengine/SceneManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneManager;->getRootNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    .line 868
    .local v3, "root":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->convertTransfromToAncestor(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/math/Transform;

    move-result-object v2

    .line 870
    .local v2, "meToWorld":Lcom/smartisanos/smengine/math/Transform;
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransformFromNative(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/math/Transform;

    move-result-object v5

    .line 871
    .local v5, "targetToWorld":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual {v5}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v7

    .line 873
    .local v7, "worldToTarget":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual {v2, v7}, Lcom/smartisanos/smengine/math/Transform;->combineWithParent(Lcom/smartisanos/smengine/math/Transform;)Lcom/smartisanos/smengine/math/Transform;

    move-result-object v1

    .line 874
    .local v1, "meToTarget":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 875
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v6

    .line 876
    .local v6, "tmpVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v0, v6, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 877
    .local v0, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Transform;->getTranslation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 878
    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Transform;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    .line 879
    .local v4, "scale":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-direct {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->setLocalTransform(Lcom/smartisanos/smengine/math/Transform;)V

    .line 880
    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v9, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v10, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-direct {p0, v8, v9, v10}, Lcom/smartisanos/smengine/SceneNode;->setLocalTranslate(FFF)V

    .line 881
    invoke-virtual {v6}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 882
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 883
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public clear(Z)V
    .locals 3
    .param p1, "cleanHardwareResource"    # Z

    .prologue
    .line 1433
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    if-eqz v2, :cond_0

    .line 1434
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/mymaterial/Material;->clearResource()V

    .line 1435
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/mymaterial/Material;->clear()V

    .line 1437
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/Mesh;

    if-eqz v2, :cond_1

    .line 1438
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/Mesh;

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/Mesh;->clear(Z)V

    .line 1440
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1441
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 1442
    .local v1, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    .line 1440
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1444
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_2
    return-void
.end method

.method public clearSkewData()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSkewDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 358
    return-void
.end method

.method public collideEnter(Lcom/smartisanos/smengine/CollisionData;)I
    .locals 5
    .param p1, "cd"    # Lcom/smartisanos/smengine/CollisionData;

    .prologue
    const/4 v3, 0x1

    .line 984
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideListener:Lcom/smartisanos/smengine/SceneNode$CollideListener;

    if-eqz v4, :cond_3

    .line 985
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getCollisionManager()Lcom/smartisanos/smengine/CollisionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/CollisionManager;->getCurrentCollisionData()Lcom/smartisanos/smengine/CollisionData;

    move-result-object v0

    .line 986
    .local v0, "oldCD":Lcom/smartisanos/smengine/CollisionData;
    const/4 v1, 0x1

    .line 987
    .local v1, "ret":I
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/CollisionData;->equals(Lcom/smartisanos/smengine/CollisionData;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 988
    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/CollisionData;->setIsFirstEnter(Z)V

    .line 989
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideListener:Lcom/smartisanos/smengine/SceneNode$CollideListener;

    invoke-interface {v3, p1}, Lcom/smartisanos/smengine/SceneNode$CollideListener;->onCollideEnter(Lcom/smartisanos/smengine/CollisionData;)I

    move-result v1

    .line 990
    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {v0}, Lcom/smartisanos/smengine/CollisionData;->getCollidedNode()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 992
    .local v2, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNode;->collideExit(Lcom/smartisanos/smengine/CollisionData;)I

    .line 998
    .end local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 999
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getCollisionManager()Lcom/smartisanos/smengine/CollisionManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/smartisanos/smengine/CollisionManager;->setCurrentCollisionData(Lcom/smartisanos/smengine/CollisionData;)V

    .line 1003
    .end local v0    # "oldCD":Lcom/smartisanos/smengine/CollisionData;
    .end local v1    # "ret":I
    :cond_1
    :goto_1
    return v1

    .line 995
    .restart local v0    # "oldCD":Lcom/smartisanos/smengine/CollisionData;
    .restart local v1    # "ret":I
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/smartisanos/smengine/CollisionData;->setIsFirstEnter(Z)V

    .line 996
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideListener:Lcom/smartisanos/smengine/SceneNode$CollideListener;

    invoke-interface {v3, p1}, Lcom/smartisanos/smengine/SceneNode$CollideListener;->onCollideEnter(Lcom/smartisanos/smengine/CollisionData;)I

    move-result v1

    goto :goto_0

    .end local v0    # "oldCD":Lcom/smartisanos/smengine/CollisionData;
    .end local v1    # "ret":I
    :cond_3
    move v1, v3

    .line 1003
    goto :goto_1
.end method

.method public collideExit(Lcom/smartisanos/smengine/CollisionData;)I
    .locals 2
    .param p1, "cd"    # Lcom/smartisanos/smengine/CollisionData;

    .prologue
    const/4 v1, 0x1

    .line 976
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideListener:Lcom/smartisanos/smengine/SceneNode$CollideListener;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideListener:Lcom/smartisanos/smengine/SceneNode$CollideListener;

    invoke-interface {v0, p1}, Lcom/smartisanos/smengine/SceneNode$CollideListener;->onCollideExit(Lcom/smartisanos/smengine/CollisionData;)I

    .line 980
    :cond_0
    return v1
.end method

.method public collideWith(Lcom/smartisanos/smengine/SceneNode;)I
    .locals 6
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/4 v4, 0x1

    .line 1020
    if-ne p0, p1, :cond_1

    move v2, v4

    .line 1043
    :cond_0
    :goto_0
    return v2

    .line 1023
    :cond_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1024
    const/4 v2, 0x1

    .line 1025
    .local v2, "handled":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 1026
    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 1027
    .local v1, "child":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->collideWith(Lcom/smartisanos/smengine/SceneNode;)I

    move-result v2

    .line 1028
    if-nez v2, :cond_3

    .line 1032
    .end local v1    # "child":Lcom/smartisanos/smengine/SceneNode;
    :cond_2
    if-ne v2, v4, :cond_0

    .line 1033
    new-instance v0, Lcom/smartisanos/smengine/CollisionData;

    invoke-direct {v0, p1, p0}, Lcom/smartisanos/smengine/CollisionData;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode;)V

    .line 1034
    .local v0, "cd":Lcom/smartisanos/smengine/CollisionData;
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->collideEnter(Lcom/smartisanos/smengine/CollisionData;)I

    move-result v2

    goto :goto_0

    .line 1025
    .end local v0    # "cd":Lcom/smartisanos/smengine/CollisionData;
    .restart local v1    # "child":Lcom/smartisanos/smengine/SceneNode;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1039
    .end local v1    # "child":Lcom/smartisanos/smengine/SceneNode;
    .end local v2    # "handled":I
    .end local v3    # "i":I
    :cond_4
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/World;->getCollisionManager()Lcom/smartisanos/smengine/CollisionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smartisanos/smengine/CollisionManager;->getCurrentCollisionData()Lcom/smartisanos/smengine/CollisionData;

    move-result-object v0

    .line 1040
    .restart local v0    # "cd":Lcom/smartisanos/smengine/CollisionData;
    if-eqz v0, :cond_5

    .line 1041
    invoke-direct {p0, v0, p1}, Lcom/smartisanos/smengine/SceneNode;->collideExitAll(Lcom/smartisanos/smengine/CollisionData;Lcom/smartisanos/smengine/SceneNode;)I

    :cond_5
    move v2, v4

    .line 1043
    goto :goto_0
.end method

.method public convertTransfromToAncestor(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/math/Transform;
    .locals 3
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 902
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 903
    .local v1, "parent":Lcom/smartisanos/smengine/SceneNode;
    invoke-direct {p0, p0}, Lcom/smartisanos/smengine/SceneNode;->getLocalTransformFromNative(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/math/Transform;

    move-result-object v0

    .line 905
    .local v0, "newTransform":Lcom/smartisanos/smengine/math/Transform;
    :goto_0
    if-eqz v1, :cond_0

    if-eq v1, p1, :cond_0

    .line 906
    invoke-direct {p0, v1}, Lcom/smartisanos/smengine/SceneNode;->getLocalTransformFromNative(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/math/Transform;

    move-result-object v2

    .line 907
    .local v2, "parentTransform":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/math/Transform;->combineWithParent(Lcom/smartisanos/smengine/math/Transform;)Lcom/smartisanos/smengine/math/Transform;

    .line 908
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 909
    goto :goto_0

    .line 910
    .end local v2    # "parentTransform":Lcom/smartisanos/smengine/math/Transform;
    :cond_0
    return-object v0
.end method

.method public cull(Lcom/smartisanos/smengine/Camera;)Z
    .locals 1
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 1270
    const/4 v0, 0x0

    return v0
.end method

.method protected cullWithCameraRect(Lcom/smartisanos/smengine/Camera;)Z
    .locals 4
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 1289
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mForceRenderTag:Z

    if-eqz v0, :cond_0

    .line 1290
    const/4 v0, 0x0

    .line 1292
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v2, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nCullWithCameraRect(JJ)Z

    move-result v0

    goto :goto_0
.end method

.method public disableDisplayUpdate()V
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    .line 332
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 2479
    return-void
.end method

.method public dispatchTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 27
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    .line 1930
    const/4 v14, 0x0

    .line 1931
    .local v14, "handled":Z
    invoke-virtual/range {p0 .. p1}, Lcom/smartisanos/smengine/SceneNode;->onFilterTouchEventForSecurity(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 1932
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v4

    .line 1933
    .local v4, "action":I
    and-int/lit16 v6, v4, 0xff

    .line 1935
    .local v6, "actionMasked":I
    if-nez v6, :cond_0

    .line 1937
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/smengine/SceneNode;->cancelAndClearTouchTargets(Lcom/smartisanos/smengine/TMotionEvent;)V

    .line 1939
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->resetTouchState()V

    .line 1943
    :cond_0
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 1944
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    move/from16 v25, v0

    const/high16 v26, 0x80000

    and-int v25, v25, v26

    if-eqz v25, :cond_7

    const/4 v13, 0x1

    .line 1945
    .local v13, "disallowIntercept":Z
    :goto_0
    if-nez v13, :cond_8

    .line 1946
    invoke-virtual/range {p0 .. p1}, Lcom/smartisanos/smengine/SceneNode;->onInterceptTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v17

    .line 1947
    .local v17, "intercepted":Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/TMotionEvent;->setAction(I)V

    .line 1958
    .end local v13    # "disallowIntercept":Z
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->resetCancelNextUpFlag(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v25

    if-nez v25, :cond_2

    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v6, v0, :cond_a

    :cond_2
    const/4 v10, 0x1

    .line 1960
    .local v10, "canceled":Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    move/from16 v25, v0

    const/high16 v26, 0x200000

    and-int v25, v25, v26

    if-eqz v25, :cond_b

    const/16 v21, 0x1

    .line 1961
    .local v21, "split":Z
    :goto_3
    const/16 v18, 0x0

    .line 1963
    .local v18, "newTouchTarget":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    const/4 v8, 0x0

    .line 1964
    .local v8, "alreadyDispatchedToNewTouchTarget":Z
    if-nez v10, :cond_10

    if-nez v17, :cond_10

    .line 1965
    if-eqz v6, :cond_4

    if-eqz v21, :cond_3

    const/16 v25, 0x5

    move/from16 v0, v25

    if-eq v6, v0, :cond_4

    :cond_3
    const/16 v25, 0x7

    move/from16 v0, v25

    if-ne v6, v0, :cond_10

    .line 1966
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v5

    .line 1969
    .local v5, "actionIndex":I
    if-eqz v21, :cond_c

    const/16 v25, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v26

    shl-int v15, v25, v26

    .line 1972
    .local v15, "idBitsToAssign":I
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/smartisanos/smengine/SceneNode;->removePointersFromTouchTargets(I)V

    .line 1973
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->getAllViewCanBeTouched()Ljava/util/ArrayList;

    move-result-object v7

    .line 1974
    .local v7, "allChild":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/SceneNode;>;"
    if-nez v7, :cond_d

    const/4 v12, 0x0

    .line 1975
    .local v12, "childrenCount":I
    :goto_5
    if-nez v18, :cond_6

    if-eqz v12, :cond_6

    .line 1977
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getX(I)F

    move-result v23

    .line 1978
    .local v23, "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getY(I)F

    move-result v24

    .line 1979
    .local v24, "y":F
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/smengine/SceneNode;

    .line 1980
    .local v11, "child":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v11}, Lcom/smartisanos/smengine/SceneNode;->canViewReceivePointerEvents(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v26

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2, v11}, Lcom/smartisanos/smengine/SceneNode;->isTransformedTouchPointInView(FFLcom/smartisanos/smengine/SceneNode;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 1983
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/smartisanos/smengine/SceneNode;->getTouchTarget(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    move-result-object v18

    .line 1984
    if-eqz v18, :cond_e

    .line 1985
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->pointerIdBits:I

    move/from16 v25, v0

    or-int v25, v25, v15

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->pointerIdBits:I

    .line 2003
    .end local v11    # "child":Lcom/smartisanos/smengine/SceneNode;
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_6
    :goto_6
    if-nez v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    move-object/from16 v18, v0

    .line 2008
    :goto_7
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    .line 2009
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    move-object/from16 v18, v0

    goto :goto_7

    .line 1944
    .end local v5    # "actionIndex":I
    .end local v7    # "allChild":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/SceneNode;>;"
    .end local v8    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v10    # "canceled":Z
    .end local v12    # "childrenCount":I
    .end local v15    # "idBitsToAssign":I
    .end local v17    # "intercepted":Z
    .end local v18    # "newTouchTarget":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    .end local v21    # "split":Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1950
    .restart local v13    # "disallowIntercept":Z
    :cond_8
    const/16 v17, 0x0

    .restart local v17    # "intercepted":Z
    goto/16 :goto_1

    .line 1955
    .end local v13    # "disallowIntercept":Z
    .end local v17    # "intercepted":Z
    :cond_9
    const/16 v17, 0x1

    .restart local v17    # "intercepted":Z
    goto/16 :goto_1

    .line 1958
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1960
    .restart local v10    # "canceled":Z
    :cond_b
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1969
    .restart local v5    # "actionIndex":I
    .restart local v8    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v18    # "newTouchTarget":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    .restart local v21    # "split":Z
    :cond_c
    const/4 v15, -0x1

    goto/16 :goto_4

    .line 1974
    .restart local v7    # "allChild":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/SceneNode;>;"
    .restart local v15    # "idBitsToAssign":I
    :cond_d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v12

    goto :goto_5

    .line 1991
    .restart local v11    # "child":Lcom/smartisanos/smengine/SceneNode;
    .restart local v12    # "childrenCount":I
    .restart local v23    # "x":F
    .restart local v24    # "y":F
    :cond_e
    invoke-static {v11}, Lcom/smartisanos/smengine/SceneNode;->resetCancelNextUpFlag(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 1992
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-direct {v0, v1, v2, v11, v15}, Lcom/smartisanos/smengine/SceneNode;->dispatchTransformedTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;ZLcom/smartisanos/smengine/SceneNode;I)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 1994
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lcom/smartisanos/smengine/SceneNode;->addTouchTarget(Lcom/smartisanos/smengine/SceneNode;I)Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    move-result-object v18

    .line 1995
    const/4 v8, 0x1

    .line 1996
    goto :goto_6

    .line 2011
    .end local v11    # "child":Lcom/smartisanos/smengine/SceneNode;
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_f
    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->pointerIdBits:I

    move/from16 v25, v0

    or-int v25, v25, v15

    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->pointerIdBits:I

    .line 2016
    .end local v5    # "actionIndex":I
    .end local v7    # "allChild":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/SceneNode;>;"
    .end local v12    # "childrenCount":I
    .end local v15    # "idBitsToAssign":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    move-object/from16 v25, v0

    if-nez v25, :cond_14

    .line 2018
    const/16 v25, 0x0

    const/16 v26, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->dispatchTransformedTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;ZLcom/smartisanos/smengine/SceneNode;I)Z

    move-result v14

    .line 2051
    :cond_11
    if-nez v10, :cond_12

    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v6, v0, :cond_12

    const/16 v25, 0x7

    move/from16 v0, v25

    if-ne v6, v0, :cond_1b

    .line 2053
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/smengine/SceneNode;->resetTouchState()V

    .line 2061
    .end local v4    # "action":I
    .end local v6    # "actionMasked":I
    .end local v8    # "alreadyDispatchedToNewTouchTarget":Z
    .end local v10    # "canceled":Z
    .end local v17    # "intercepted":Z
    .end local v18    # "newTouchTarget":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    .end local v21    # "split":Z
    :cond_13
    :goto_8
    return v14

    .line 2021
    .restart local v4    # "action":I
    .restart local v6    # "actionMasked":I
    .restart local v8    # "alreadyDispatchedToNewTouchTarget":Z
    .restart local v10    # "canceled":Z
    .restart local v17    # "intercepted":Z
    .restart local v18    # "newTouchTarget":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    .restart local v21    # "split":Z
    :cond_14
    const/16 v20, 0x0

    .line 2022
    .local v20, "predecessor":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    move-object/from16 v22, v0

    .line 2023
    .local v22, "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :goto_9
    if-eqz v22, :cond_11

    .line 2024
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    move-object/from16 v19, v0

    .line 2026
    .local v19, "next":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    if-eqz v8, :cond_16

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 2027
    const/4 v14, 0x1

    .line 2046
    :cond_15
    move-object/from16 v20, v22

    .line 2047
    move-object/from16 v22, v19

    .line 2048
    goto :goto_9

    .line 2030
    :cond_16
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->child:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/smartisanos/smengine/SceneNode;->resetCancelNextUpFlag(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v25

    if-nez v25, :cond_17

    if-eqz v17, :cond_19

    :cond_17
    const/4 v9, 0x1

    .line 2031
    .local v9, "cancelChild":Z
    :goto_a
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->child:Lcom/smartisanos/smengine/SceneNode;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->pointerIdBits:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->dispatchTransformedTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;ZLcom/smartisanos/smengine/SceneNode;I)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 2032
    const/4 v14, 0x1

    .line 2035
    :cond_18
    if-eqz v9, :cond_15

    .line 2036
    if-nez v20, :cond_1a

    .line 2037
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/smengine/SceneNode;->mFirstTouchTarget:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    .line 2041
    :goto_b
    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->recycle()V

    .line 2042
    move-object/from16 v22, v19

    .line 2043
    goto :goto_9

    .line 2030
    .end local v9    # "cancelChild":Z
    :cond_19
    const/4 v9, 0x0

    goto :goto_a

    .line 2039
    .restart local v9    # "cancelChild":Z
    :cond_1a
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/smartisanos/smengine/SceneNode$TouchTarget;->next:Lcom/smartisanos/smengine/SceneNode$TouchTarget;

    goto :goto_b

    .line 2054
    .end local v9    # "cancelChild":Z
    .end local v19    # "next":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    .end local v20    # "predecessor":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    .end local v22    # "target":Lcom/smartisanos/smengine/SceneNode$TouchTarget;
    :cond_1b
    if-eqz v21, :cond_13

    const/16 v25, 0x6

    move/from16 v0, v25

    if-ne v6, v0, :cond_13

    .line 2055
    invoke-virtual/range {p1 .. p1}, Lcom/smartisanos/smengine/TMotionEvent;->getActionIndex()I

    move-result v5

    .line 2056
    .restart local v5    # "actionIndex":I
    const/16 v25, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/TMotionEvent;->getPointerId(I)I

    move-result v26

    shl-int v16, v25, v26

    .line 2058
    .local v16, "idBitsToRemove":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->removePointersFromTouchTargets(I)V

    goto :goto_8
.end method

.method public dispatchTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 4
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 935
    const/4 v0, 0x0

    .line 936
    .local v0, "handled":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 937
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 938
    .local v2, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->dispatchTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    move-result v0

    .line 939
    if-eqz v0, :cond_1

    .line 943
    .end local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    if-nez v0, :cond_2

    .line 944
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    move-result v3

    .line 946
    :goto_1
    return v3

    .line 936
    .restart local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 946
    .end local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 1455
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1456
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getCamera()Lcom/smartisanos/smengine/Camera;

    move-result-object p1

    .line 1458
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1470
    :cond_1
    return-void

    .line 1461
    :cond_2
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->cull(Lcom/smartisanos/smengine/Camera;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1465
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->drawMesh(Lcom/smartisanos/smengine/Camera;)V

    .line 1466
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1467
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 1468
    .local v1, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 1466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected drawMesh(Lcom/smartisanos/smengine/Camera;)V
    .locals 3
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 1367
    iget-boolean v1, p0, Lcom/smartisanos/smengine/SceneNode;->mIsVisible:Z

    if-nez v1, :cond_1

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1370
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    if-eqz v1, :cond_0

    .line 1373
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/Mesh;

    if-eqz v1, :cond_0

    .line 1376
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-boolean v1, v1, Lcom/smartisanos/smengine/mymaterial/Material;->mUseMVPMatrix:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-boolean v1, v1, Lcom/smartisanos/smengine/mymaterial/Material;->mUseMVPMatrixArray:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-boolean v1, v1, Lcom/smartisanos/smengine/mymaterial/Material;->mUseCameraMatrix:Z

    if-nez v1, :cond_2

    .line 1377
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "no mvp matrix use"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1379
    :cond_2
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setNativeData(Lcom/smartisanos/smengine/Camera;)V

    .line 1380
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-boolean v1, v1, Lcom/smartisanos/smengine/mymaterial/Material;->mUseMVPMatrix:Z

    if-eqz v1, :cond_3

    .line 1381
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->calculateMVPMatrixData(Lcom/smartisanos/smengine/Camera;)V

    .line 1383
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-boolean v1, v1, Lcom/smartisanos/smengine/mymaterial/Material;->mUseLocalTranslate:Z

    if-eqz v1, :cond_4

    .line 1384
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->calculateLocalTranslateData()V

    .line 1386
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-boolean v1, v1, Lcom/smartisanos/smengine/mymaterial/Material;->mUseWorldMatrix:Z

    if-eqz v1, :cond_5

    .line 1387
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->calculateWorldMatrixData()V

    .line 1389
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-boolean v1, v1, Lcom/smartisanos/smengine/mymaterial/Material;->mUseProjectionMatrix:Z

    if-eqz v1, :cond_6

    .line 1390
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->calculateProjectionMatrixData(Lcom/smartisanos/smengine/Camera;)V

    .line 1392
    :cond_6
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-boolean v1, v1, Lcom/smartisanos/smengine/mymaterial/Material;->mUseCameraMatrix:Z

    if-eqz v1, :cond_7

    .line 1393
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->calculateCameraMatrixData(Lcom/smartisanos/smengine/Camera;)V

    .line 1395
    :cond_7
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-boolean v1, v1, Lcom/smartisanos/smengine/mymaterial/Material;->mUseViewMatrix:Z

    if-eqz v1, :cond_8

    .line 1396
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->calculateViewMatrixData(Lcom/smartisanos/smengine/Camera;)V

    .line 1398
    :cond_8
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->getRenderManager()Lcom/smartisanos/smengine/RenderManager;

    move-result-object v0

    .line 1399
    .local v0, "rm":Lcom/smartisanos/smengine/RenderManager;
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getRenderQueue()I

    move-result v1

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/smartisanos/smengine/RenderManager;->addRenderUnit(IILcom/smartisanos/smengine/SceneNode;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 398
    :try_start_0
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->nReleaseNative(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 402
    return-void

    .line 400
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findNode(Ljava/lang/String;)Lcom/smartisanos/smengine/SceneNode;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1081
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1091
    .end local p0    # "this":Lcom/smartisanos/smengine/SceneNode;
    :goto_0
    return-object p0

    .line 1084
    .restart local p0    # "this":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1085
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 1086
    .local v2, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->findNode(Ljava/lang/String;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 1087
    .local v0, "fn":Lcom/smartisanos/smengine/SceneNode;
    if-eqz v0, :cond_1

    move-object p0, v0

    .line 1088
    goto :goto_0

    .line 1084
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1091
    .end local v0    # "fn":Lcom/smartisanos/smengine/SceneNode;
    .end local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final forceUpdateGeometricState()V
    .locals 0

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateWorldTransforms()V

    .line 1103
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateWorldBoundingVolume()V

    .line 1104
    return-void
.end method

.method public final forceUpdateWorldBoundingVolume()V
    .locals 6

    .prologue
    .line 1116
    iget-wide v4, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v4, v5, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nUpdateWorldBoundingVolume(JJ)V

    .line 1117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1118
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 1119
    .local v1, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateWorldBoundingVolume()V

    .line 1117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1116
    .end local v0    # "i":I
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    iget-wide v2, v2, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    goto :goto_0

    .line 1121
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final forceUpdateWorldTransforms()V
    .locals 6

    .prologue
    .line 1221
    iget-wide v4, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v4, v5, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nUpdateWorldTransforms(JJ)V

    .line 1222
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1223
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 1224
    .local v1, "node":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->forceUpdateWorldTransforms()V

    .line 1222
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1221
    .end local v0    # "i":I
    .end local v1    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    iget-wide v2, v2, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    goto :goto_0

    .line 1226
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public genMipmap()V
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RenderTarget;->genMipmap()V

    .line 1475
    :cond_0
    return-void
.end method

.method public getAllViewCanBeTouched()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/SceneNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2065
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getFolderPageView()Lcom/smartisanos/launcher/view/FolderPageView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2066
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getFolderPageView()Lcom/smartisanos/launcher/view/FolderPageView;

    move-result-object v0

    .line 2067
    .local v0, "folder":Lcom/smartisanos/smengine/SceneNode;
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2068
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2069
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/SceneNode;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2075
    .end local v0    # "folder":Lcom/smartisanos/smengine/SceneNode;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/SceneNode;>;"
    :goto_0
    return-object v1

    .line 2072
    .restart local v0    # "folder":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    goto :goto_0

    .line 2075
    .end local v0    # "folder":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getAnimationState()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentAnimationState:I

    return v0
.end method

.method public getCamera()Lcom/smartisanos/smengine/Camera;
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSelfCamera:Lcom/smartisanos/smengine/Camera;

    return-object v0
.end method

.method public getChildAt(I)Lcom/smartisanos/smengine/SceneNode;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1069
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 1070
    :cond_0
    const/4 v0, 0x0

    .line 1072
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/SceneNode;

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getColor(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 4
    .param p1, "dstColor"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    const/4 v3, 0x0

    .line 1522
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 1523
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v1, :cond_2

    .line 1524
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/math/Vector4f;

    .line 1525
    .local v0, "color":Lcom/smartisanos/smengine/math/Vector4f;
    if-eqz v0, :cond_1

    .line 1526
    iget v2, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1527
    iget v2, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1528
    iget v2, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1529
    iget v2, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 1539
    .end local v0    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_0
    :goto_0
    return-void

    .line 1531
    .restart local v0    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1532
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1533
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1534
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0

    .line 1537
    .end local v0    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "Material is null !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCornerPointScreenCoord(Lcom/smartisanos/smengine/Camera;[F)V
    .locals 4
    .param p1, "c"    # Lcom/smartisanos/smengine/Camera;
    .param p2, "data"    # [F

    .prologue
    .line 913
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v2, p1, Lcom/smartisanos/smengine/Camera;->nativeInt:J

    invoke-static {v0, v1, v2, v3, p2}, Lcom/smartisanos/smengine/SceneNode;->nGetCornerPointScreenCoord(JJ[F)V

    .line 914
    return-void
.end method

.method public getInnerShadowAlphaRange_H(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 4
    .param p1, "dstSize"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    const/4 v3, 0x0

    .line 1647
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 1648
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v0, :cond_2

    .line 1649
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Vector4f;

    .line 1650
    .local v1, "range_h":Lcom/smartisanos/smengine/math/Vector4f;
    if-eqz v1, :cond_1

    .line 1651
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1652
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1653
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1654
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 1664
    .end local v1    # "range_h":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_0
    :goto_0
    return-void

    .line 1656
    .restart local v1    # "range_h":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1657
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1658
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1659
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0

    .line 1662
    .end local v1    # "range_h":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "Material is null !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInnerShadowAlphaRange_V(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 4
    .param p1, "dstSize"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    const/4 v3, 0x0

    .line 1688
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 1689
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v0, :cond_2

    .line 1690
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Vector4f;

    .line 1691
    .local v1, "range_v":Lcom/smartisanos/smengine/math/Vector4f;
    if-eqz v1, :cond_1

    .line 1692
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1693
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1694
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1695
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 1705
    .end local v1    # "range_v":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_0
    :goto_0
    return-void

    .line 1697
    .restart local v1    # "range_v":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1698
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1699
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1700
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0

    .line 1703
    .end local v1    # "range_v":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "Material is null !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInnerShadowSize_H(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 4
    .param p1, "dstSize"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    const/4 v3, 0x0

    .line 1565
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 1566
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v0, :cond_2

    .line 1567
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Vector4f;

    .line 1568
    .local v1, "size_h":Lcom/smartisanos/smengine/math/Vector4f;
    if-eqz v1, :cond_1

    .line 1569
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1570
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1571
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1572
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 1582
    .end local v1    # "size_h":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_0
    :goto_0
    return-void

    .line 1574
    .restart local v1    # "size_h":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1575
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1576
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1577
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0

    .line 1580
    .end local v1    # "size_h":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "Material is null !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInnerShadowSize_V(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 4
    .param p1, "dstSize"    # Lcom/smartisanos/smengine/math/Vector4f;

    .prologue
    const/4 v3, 0x0

    .line 1606
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 1607
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v0, :cond_2

    .line 1608
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Vector4f;

    .line 1609
    .local v1, "size_v":Lcom/smartisanos/smengine/math/Vector4f;
    if-eqz v1, :cond_1

    .line 1610
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1611
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1612
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1613
    iget v2, v1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    iput v2, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 1623
    .end local v1    # "size_v":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_0
    :goto_0
    return-void

    .line 1615
    .restart local v1    # "size_v":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1616
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1617
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1618
    iput v3, p1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0

    .line 1621
    .end local v1    # "size_v":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "Material is null !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getInteractionState()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentInteractionState:I

    return v0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLayer:I

    return v0
.end method

.method getListenerInfo()Lcom/smartisanos/smengine/SceneNode$ListenerInfo;
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/SceneNode$ListenerInfo;

    if-eqz v0, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/SceneNode$ListenerInfo;

    .line 1832
    :goto_0
    return-object v0

    .line 1831
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/SceneNode$ListenerInfo;

    invoke-direct {v0}, Lcom/smartisanos/smengine/SceneNode$ListenerInfo;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/SceneNode$ListenerInfo;

    .line 1832
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/SceneNode$ListenerInfo;

    goto :goto_0
.end method

.method public getLocalBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;
    .locals 7

    .prologue
    .line 299
    iget-wide v2, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object v4, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->nGetLocalBoundingRect(J[F)Z

    move-result v1

    .line 300
    .local v1, "ret":Z
    if-eqz v1, :cond_0

    .line 302
    new-instance v0, Lcom/smartisanos/smengine/BoundingRect;

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    sget-object v5, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/smartisanos/smengine/BoundingRect;-><init>(FFFF)V

    .line 305
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLocalTransform()Lcom/smartisanos/smengine/math/Transform;
    .locals 1

    .prologue
    .line 928
    invoke-direct {p0, p0}, Lcom/smartisanos/smengine/SceneNode;->getLocalTransformFromNative(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/math/Transform;

    move-result-object v0

    .line 929
    .local v0, "newT":Lcom/smartisanos/smengine/math/Transform;
    return-object v0
.end method

.method public getLocation()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5

    .prologue
    .line 725
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->nGetLocation(J[F)V

    .line 726
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    return-object v0
.end method

.method public getMesh()Lcom/smartisanos/smengine/Mesh;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/Mesh;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    return-object v0
.end method

.method public getRUParam()Lcom/smartisanos/smengine/RenderState$Param;
    .locals 1

    .prologue
    .line 2966
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRUParam:Lcom/smartisanos/smengine/RenderState$Param;

    return-object v0
.end method

.method public getRenderQueue()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderQueue:I

    return v0
.end method

.method public getRenderState()Lcom/smartisanos/smengine/RenderState;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    return-object v0
.end method

.method public getRenderTarget()Lcom/smartisanos/smengine/RenderTarget;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    return-object v0
.end method

.method public getScale()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 5

    .prologue
    .line 730
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->nGetScale(J[F)V

    .line 731
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    sget-object v1, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    sget-object v3, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public getScaleRotatePivot()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getSize(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 3
    .param p1, "v"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 1273
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->nGetSize(J[F)V

    .line 1274
    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1275
    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1276
    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1286
    return-void
.end method

.method public getSubLayer()I
    .locals 1

    .prologue
    .line 561
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSubLayer:I

    return v0
.end method

.method public getTextureName(I)Ljava/lang/String;
    .locals 1
    .param p1, "texID"    # I

    .prologue
    .line 602
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTranslatePivot()Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 674
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getViewPort()Lcom/smartisanos/smengine/ViewPort;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    return-object v0
.end method

.method public getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;
    .locals 7

    .prologue
    .line 310
    iget-wide v2, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object v4, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->nGetWorldBoundingRect(J[F)Z

    move-result v1

    .line 311
    .local v1, "ret":Z
    if-eqz v1, :cond_0

    .line 313
    new-instance v0, Lcom/smartisanos/smengine/BoundingRect;

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-object v3, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sget-object v4, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    sget-object v5, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/smartisanos/smengine/BoundingRect;-><init>(FFFF)V

    .line 316
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWorldMatrix()Lcom/smartisanos/smengine/math/Matrix4f;
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMatrixForRender:Lcom/smartisanos/smengine/math/Matrix4f;

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/math/Matrix4f;->copy(Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 739
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMatrixForRender:Lcom/smartisanos/smengine/math/Matrix4f;

    return-object v0
.end method

.method public getWorldMatrix(Lcom/smartisanos/smengine/math/Matrix4f;)V
    .locals 1
    .param p1, "wm"    # Lcom/smartisanos/smengine/math/Matrix4f;

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/math/Matrix4f;->copy(Lcom/smartisanos/smengine/math/Matrix4f;)V

    .line 1303
    return-void
.end method

.method public getWorldTransform()Lcom/smartisanos/smengine/math/Transform;
    .locals 1

    .prologue
    .line 768
    invoke-direct {p0, p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransformFromNative(Lcom/smartisanos/smengine/SceneNode;)Lcom/smartisanos/smengine/math/Transform;

    move-result-object v0

    .line 769
    .local v0, "result":Lcom/smartisanos/smengine/math/Transform;
    return-object v0
.end method

.method public getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 3
    .param p1, "translate"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 743
    if-eqz p1, :cond_0

    .line 744
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    invoke-static {v0, v1, v2}, Lcom/smartisanos/smengine/SceneNode;->nGetWorldTranslate(J[F)V

    .line 745
    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 746
    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 747
    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->mTmpData:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 749
    :cond_0
    return-void
.end method

.method public hasOnClickListeners()Z
    .locals 2

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/SceneNode$ListenerInfo;

    .line 1857
    .local v0, "li":Lcom/smartisanos/smengine/SceneNode$ListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/smartisanos/smengine/SceneNode$ListenerInfo;->mOnClickListener:Lcom/smartisanos/smengine/SceneNode$OnClickListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isClickable()Z
    .locals 2

    .prologue
    .line 2325
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z
    .locals 5
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 972
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-wide v2, p1, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-boolean v4, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideAlways:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->nIsCollidedWith(JJZ)Z

    move-result v0

    return v0
.end method

.method public isInWindow(FFF)Z
    .locals 2
    .param p1, "pageWidth"    # F
    .param p2, "screenWidth"    # F
    .param p3, "factor"    # F

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->nIsInWindow(JFFF)Z

    move-result v0

    return v0
.end method

.method public isLongClickable()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 2356
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMotionEventSplittingEnabled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x200000

    .line 2445
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedDisplay()Z
    .locals 1

    .prologue
    .line 621
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPointInBoundingVolume(FFF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 624
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldBoundingVolume:Lcom/smartisanos/smengine/BoundingVolume;

    if-nez v0, :cond_1

    .line 625
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "has no bounding volume"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 626
    :cond_0
    const/4 v0, 0x0

    .line 628
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldBoundingVolume:Lcom/smartisanos/smengine/BoundingVolume;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(FFF)Z

    move-result v0

    goto :goto_0
.end method

.method public isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z
    .locals 5
    .param p1, "point"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 633
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->nIsPointInBoundingVolume(JFFF)Z

    move-result v0

    return v0
.end method

.method public isPressed()Z
    .locals 2

    .prologue
    .line 2493
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransformedTouchPointInView(FF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2568
    iget-boolean v4, p0, Lcom/smartisanos/smengine/SceneNode;->mForceDispatchTouchToView:Z

    if-eqz v4, :cond_0

    .line 2591
    :goto_0
    return v3

    .line 2572
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v2

    .line 2573
    .local v2, "tmpVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v1, v2, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 2574
    .local v1, "newP":Lcom/smartisanos/smengine/math/Vector3f;
    cmpg-float v4, p1, v5

    if-gez v4, :cond_3

    .line 2575
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2579
    :cond_1
    :goto_1
    cmpg-float v4, p2, v5

    if-gez v4, :cond_4

    .line 2580
    const/high16 p2, 0x3f800000    # 1.0f

    .line 2584
    :cond_2
    :goto_2
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v4, v4

    sget v5, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v5, v5

    invoke-static {p1, p2, v4, v5, v1}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 2585
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 2586
    .local v0, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2587
    invoke-virtual {v2}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    goto :goto_0

    .line 2576
    .end local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    :cond_3
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    .line 2577
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    add-int/lit8 v4, v4, -0x1

    int-to-float p1, v4

    goto :goto_1

    .line 2581
    :cond_4
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_2

    .line 2582
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    add-int/lit8 v4, v4, -0x1

    int-to-float p2, v4

    goto :goto_2

    .line 2590
    .restart local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    :cond_5
    invoke-virtual {v2}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 2591
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected isTransformedTouchPointInView(FFLcom/smartisanos/smengine/SceneNode;)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "child"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 2564
    invoke-virtual {p3, p1, p2}, Lcom/smartisanos/smengine/SceneNode;->isTransformedTouchPointInView(FF)Z

    move-result v0

    return v0
.end method

.method public isUpdateBoundingVolume()Z
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mIsUpdateBoundingVolume:Z

    return v0
.end method

.method public isUserInteractionEnable()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUserInteractionEnable:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mIsVisible:Z

    return v0
.end method

.method public onFilterTouchEventForSecurity(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 1
    .param p1, "event"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    .line 2740
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    .line 1925
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/TMotionEvent;)Z
    .locals 11
    .param p1, "event"    # Lcom/smartisanos/smengine/TMotionEvent;

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 2178
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/SceneNode$ListenerInfo;

    .line 2179
    .local v2, "li":Lcom/smartisanos/smengine/SceneNode$ListenerInfo;
    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/smartisanos/smengine/SceneNode$ListenerInfo;->access$000(Lcom/smartisanos/smengine/SceneNode$ListenerInfo;)Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v2}, Lcom/smartisanos/smengine/SceneNode$ListenerInfo;->access$000(Lcom/smartisanos/smengine/SceneNode$ListenerInfo;)Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

    move-result-object v6

    invoke-interface {v6, p0, p1}, Lcom/smartisanos/smengine/SceneNode$OnTouchListener;->onTouch(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/TMotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2268
    :cond_0
    :goto_0
    return v5

    .line 2182
    :cond_1
    iget v4, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    .line 2185
    .local v4, "viewFlags":I
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 2232
    :pswitch_0
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "############Touch Down at = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    .line 2234
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    .line 2235
    iput-boolean v3, p0, Lcom/smartisanos/smengine/SceneNode;->mHasPerformedLongPress:Z

    .line 2236
    iput-boolean v3, p0, Lcom/smartisanos/smengine/SceneNode;->mCancelClickAndLongPress:Z

    .line 2237
    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    .line 2238
    invoke-direct {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->checkForLongClick(I)V

    goto :goto_0

    .line 2187
    :pswitch_1
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "############Touch up from = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    :cond_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    .line 2189
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    .line 2190
    iget v6, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    const/high16 v7, 0x2000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    move v3, v5

    .line 2191
    .local v3, "prepressed":Z
    :cond_4
    iget v6, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-nez v6, :cond_5

    if-eqz v3, :cond_0

    .line 2192
    :cond_5
    if-eqz v3, :cond_6

    .line 2197
    invoke-virtual {p0, v5}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    .line 2200
    :cond_6
    iget-boolean v6, p0, Lcom/smartisanos/smengine/SceneNode;->mHasPerformedLongPress:Z

    if-nez v6, :cond_8

    .line 2202
    invoke-direct {p0}, Lcom/smartisanos/smengine/SceneNode;->removeLongPressCallback()V

    .line 2208
    iget-boolean v6, p0, Lcom/smartisanos/smengine/SceneNode;->mCancelClickAndLongPress:Z

    if-nez v6, :cond_8

    .line 2209
    iget-object v6, p0, Lcom/smartisanos/smengine/SceneNode;->mPerformClick:Lcom/smartisanos/smengine/SceneNode$PerformClick;

    if-nez v6, :cond_7

    .line 2210
    new-instance v6, Lcom/smartisanos/smengine/SceneNode$PerformClick;

    invoke-direct {v6, p0, v10}, Lcom/smartisanos/smengine/SceneNode$PerformClick;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode$1;)V

    iput-object v6, p0, Lcom/smartisanos/smengine/SceneNode;->mPerformClick:Lcom/smartisanos/smengine/SceneNode$PerformClick;

    .line 2213
    :cond_7
    iget-object v6, p0, Lcom/smartisanos/smengine/SceneNode;->mPerformClick:Lcom/smartisanos/smengine/SceneNode$PerformClick;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode$PerformClick;->run()V

    .line 2218
    :cond_8
    iget-object v6, p0, Lcom/smartisanos/smengine/SceneNode;->mUnsetPressedState:Lcom/smartisanos/smengine/SceneNode$UnsetPressedState;

    if-nez v6, :cond_9

    .line 2219
    new-instance v6, Lcom/smartisanos/smengine/SceneNode$UnsetPressedState;

    invoke-direct {v6, p0, v10}, Lcom/smartisanos/smengine/SceneNode$UnsetPressedState;-><init>(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/SceneNode$1;)V

    iput-object v6, p0, Lcom/smartisanos/smengine/SceneNode;->mUnsetPressedState:Lcom/smartisanos/smengine/SceneNode$UnsetPressedState;

    .line 2222
    :cond_9
    if-eqz v3, :cond_a

    .line 2223
    iget-object v6, p0, Lcom/smartisanos/smengine/SceneNode;->mUnsetPressedState:Lcom/smartisanos/smengine/SceneNode$UnsetPressedState;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {p0, v6, v8, v9}, Lcom/smartisanos/smengine/SceneNode;->postDelayed(Ljava/lang/Runnable;J)Lcom/smartisanos/smengine/Event;

    goto/16 :goto_0

    .line 2226
    :cond_a
    iget-object v6, p0, Lcom/smartisanos/smengine/SceneNode;->mUnsetPressedState:Lcom/smartisanos/smengine/SceneNode$UnsetPressedState;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/SceneNode$UnsetPressedState;->run()V

    goto/16 :goto_0

    .line 2243
    .end local v3    # "prepressed":Z
    :pswitch_2
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_b

    sget-object v6, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "############Touch Cancel at = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    :cond_b
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    .line 2245
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    .line 2246
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    .line 2247
    invoke-direct {p0}, Lcom/smartisanos/smengine/SceneNode;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 2251
    :pswitch_3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getX()F

    move-result v0

    .line 2252
    .local v0, "curX":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TMotionEvent;->getY()F

    move-result v1

    .line 2253
    .local v1, "curY":F
    iget v6, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    sub-float/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-gez v6, :cond_c

    iget v6, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    sub-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 2254
    :cond_c
    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    .line 2255
    iput v1, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    .line 2257
    iget v6, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchX:F

    iget v7, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchY:F

    iget v8, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchSlop:I

    int-to-float v8, v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/smartisanos/smengine/SceneNode;->pointInView(FFF)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2259
    iput-boolean v5, p0, Lcom/smartisanos/smengine/SceneNode;->mCancelClickAndLongPress:Z

    .line 2260
    invoke-direct {p0}, Lcom/smartisanos/smengine/SceneNode;->removeLongPressCallback()V

    .line 2261
    iget v6, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_0

    .line 2262
    invoke-virtual {p0, v3}, Lcom/smartisanos/smengine/SceneNode;->setPressed(Z)V

    goto/16 :goto_0

    .line 2185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 1
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 932
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdateInnerShadowAlphaRangeH(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 0
    .param p1, "range"    # Lcom/smartisanos/smengine/math/Vector4f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 535
    return-void
.end method

.method public onUpdateInnerShadowAlphaRangeV(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 0
    .param p1, "range"    # Lcom/smartisanos/smengine/math/Vector4f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 541
    return-void
.end method

.method public onUpdateInnerShadowSizeH(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 0
    .param p1, "size"    # Lcom/smartisanos/smengine/math/Vector4f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 523
    return-void
.end method

.method public onUpdateInnerShadowSizeV(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 0
    .param p1, "size"    # Lcom/smartisanos/smengine/math/Vector4f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 529
    return-void
.end method

.method public onUpdateModulateColor(Lcom/smartisanos/smengine/math/Vector4f;)V
    .locals 0
    .param p1, "color"    # Lcom/smartisanos/smengine/math/Vector4f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 499
    return-void
.end method

.method public onUpdateRotate(FLcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "angle"    # F
    .param p2, "axis"    # Lcom/smartisanos/smengine/math/Vector3f;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 493
    return-void
.end method

.method public onUpdateScale(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 487
    return-void
.end method

.method public onUpdateSkewX(F)V
    .locals 0
    .param p1, "x"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 511
    return-void
.end method

.method public onUpdateSkewY(F)V
    .locals 0
    .param p1, "y"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 517
    return-void
.end method

.method public onUpdateTexCoordXY(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 505
    return-void
.end method

.method public onUpdateTranslate(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 481
    return-void
.end method

.method public performClick()Z
    .locals 5

    .prologue
    .line 2752
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/SceneNode$ListenerInfo;

    .line 2753
    .local v0, "li":Lcom/smartisanos/smengine/SceneNode$ListenerInfo;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/smartisanos/smengine/SceneNode$ListenerInfo;->mOnClickListener:Lcom/smartisanos/smengine/SceneNode$OnClickListener;

    if-eqz v1, :cond_1

    .line 2754
    iget-object v1, v0, Lcom/smartisanos/smengine/SceneNode$ListenerInfo;->mOnClickListener:Lcom/smartisanos/smengine/SceneNode$OnClickListener;

    invoke-interface {v1, p0}, Lcom/smartisanos/smengine/SceneNode$OnClickListener;->onClick(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2755
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "DEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "############performClick at = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    :cond_0
    const/4 v1, 0x1

    .line 2759
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    .line 2770
    const/4 v0, 0x0

    .line 2771
    .local v0, "handled":Z
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mListenerInfo:Lcom/smartisanos/smengine/SceneNode$ListenerInfo;

    .line 2772
    .local v1, "li":Lcom/smartisanos/smengine/SceneNode$ListenerInfo;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/smartisanos/smengine/SceneNode$ListenerInfo;->mOnLongClickListener:Lcom/smartisanos/smengine/SceneNode$OnLongClickListener;

    if-eqz v2, :cond_0

    .line 2773
    iget-object v2, v1, Lcom/smartisanos/smengine/SceneNode$ListenerInfo;->mOnLongClickListener:Lcom/smartisanos/smengine/SceneNode$OnLongClickListener;

    invoke-interface {v2, p0}, Lcom/smartisanos/smengine/SceneNode$OnLongClickListener;->onLongClick(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v0

    .line 2775
    :cond_0
    return v0
.end method

.method public pointInView(FFF)Z
    .locals 5
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    .line 2283
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v2

    .line 2284
    .local v2, "tmpVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v1, v2, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    .line 2285
    .local v1, "newP":Lcom/smartisanos/smengine/math/Vector3f;
    sget v3, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v3, v3

    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v4, v4

    invoke-static {p1, p2, v3, v4, v1}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 2286
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 2287
    .local v0, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2288
    invoke-virtual {v2}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 2289
    const/4 v3, 0x1

    .line 2292
    :goto_0
    return v3

    .line 2291
    :cond_0
    invoke-virtual {v2}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 2292
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public post(Ljava/lang/Runnable;)Lcom/smartisanos/smengine/Event;
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 2513
    new-instance v0, Lcom/smartisanos/smengine/SceneNode$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/smengine/SceneNode$1;-><init>(Lcom/smartisanos/smengine/SceneNode;ILjava/lang/Runnable;)V

    .line 2521
    .local v0, "event":Lcom/smartisanos/smengine/Event;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 2522
    return-object v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Lcom/smartisanos/smengine/Event;
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 2526
    new-instance v0, Lcom/smartisanos/smengine/SceneNode$2;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/smengine/SceneNode$2;-><init>(Lcom/smartisanos/smengine/SceneNode;ILjava/lang/Runnable;)V

    .line 2534
    .local v0, "event":Lcom/smartisanos/smengine/Event;
    long-to-float v1, p2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 2535
    return-object v0
.end method

.method public reSortChildren(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lcom/smartisanos/smengine/SceneNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/smartisanos/smengine/SceneNode;>;"
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 345
    return-void
.end method

.method protected refreshDrawableState()V
    .locals 0

    .prologue
    .line 2468
    return-void
.end method

.method public refreshRenderTarget()V
    .locals 1

    .prologue
    .line 1496
    new-instance v0, Lcom/smartisanos/smengine/SceneNode$updateRTTrave;

    invoke-direct {v0}, Lcom/smartisanos/smengine/SceneNode$updateRTTrave;-><init>()V

    .line 1497
    .local v0, "rt":Lcom/smartisanos/smengine/SceneNode$updateRTTrave;
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->travel(Lcom/smartisanos/smengine/SceneNode$NodeTravel;)V

    .line 1498
    return-void
.end method

.method public removeAllChildren()V
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1079
    return-void
.end method

.method public removeCallbacks(Lcom/smartisanos/smengine/Event;)V
    .locals 1
    .param p1, "action"    # Lcom/smartisanos/smengine/Event;

    .prologue
    .line 2539
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getEventManager()Lcom/smartisanos/smengine/EventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/EventManager;->removeEvent(Lcom/smartisanos/smengine/Event;)V

    .line 2540
    return-void
.end method

.method public removeChild(Lcom/smartisanos/smengine/SceneNode;)I
    .locals 3
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/4 v1, -0x1

    .line 1047
    if-nez p1, :cond_0

    .line 1048
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1050
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-ne v2, p0, :cond_2

    .line 1051
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1052
    .local v0, "index":I
    if-eq v0, v1, :cond_1

    .line 1053
    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->removeChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    .line 1058
    .end local v0    # "index":I
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public removeChildAt(I)Lcom/smartisanos/smengine/SceneNode;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/SceneNode;

    .line 1062
    .local v0, "child":Lcom/smartisanos/smengine/SceneNode;
    if-eqz v0, :cond_0

    .line 1063
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setParent(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1064
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    .line 1066
    :cond_0
    return-object v0
.end method

.method public removeFromParent()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    if-nez v0, :cond_0

    .line 824
    const/4 p0, 0x0

    .line 827
    :goto_0
    return-object p0

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/SceneNode;->removeChild(Lcom/smartisanos/smengine/SceneNode;)I

    goto :goto_0
.end method

.method public render(Lcom/smartisanos/smengine/ViewPort;Z)V
    .locals 11
    .param p1, "mainViewport"    # Lcom/smartisanos/smengine/ViewPort;
    .param p2, "usePostEffect"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1319
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/Mesh;

    if-nez v4, :cond_1

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1322
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v4, :cond_4

    .line 1324
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RenderTarget;->create()V

    .line 1325
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RenderTarget;->bind()V

    .line 1331
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    if-eqz v4, :cond_5

    .line 1332
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v2

    .line 1333
    .local v2, "x":I
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v3

    .line 1334
    .local v3, "y":I
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v1

    .line 1335
    .local v1, "width":I
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v0

    .line 1336
    .local v0, "height":I
    invoke-static {v2, v3, v1, v0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 1343
    .end local v0    # "height":I
    .end local v1    # "width":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mRUParam:Lcom/smartisanos/smengine/RenderState$Param;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v5

    iput v5, v4, Lcom/smartisanos/smengine/RenderState$Param;->layer:I

    .line 1344
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mRUParam:Lcom/smartisanos/smengine/RenderState$Param;

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RenderState;->apply(Lcom/smartisanos/smengine/RenderState$Param;)V

    .line 1345
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/mymaterial/Material;->create()V

    .line 1346
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v4, v8, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    .line 1347
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-virtual {v4, v9, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    .line 1348
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-virtual {v4, v10, v5}, Lcom/smartisanos/smengine/mymaterial/Material;->addTexture(ILjava/lang/String;)V

    .line 1350
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    invoke-virtual {v6}, Lcom/smartisanos/smengine/RenderState;->isUseVBO()Z

    move-result v6

    invoke-virtual {v4, p0, v5, v6}, Lcom/smartisanos/smengine/mymaterial/Material;->draw(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Mesh;Z)V

    .line 1351
    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/RenderState;->restore()V

    goto :goto_0

    .line 1327
    :cond_4
    if-nez p2, :cond_2

    .line 1328
    const v4, 0x8d40

    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    goto :goto_1

    .line 1339
    :cond_5
    if-nez p2, :cond_3

    .line 1340
    invoke-virtual {p1}, Lcom/smartisanos/smengine/ViewPort;->x()I

    move-result v4

    invoke-virtual {p1}, Lcom/smartisanos/smengine/ViewPort;->y()I

    move-result v5

    invoke-virtual {p1}, Lcom/smartisanos/smengine/ViewPort;->w()I

    move-result v6

    invoke-virtual {p1}, Lcom/smartisanos/smengine/ViewPort;->h()I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/opengl/GLES20;->glViewport(IIII)V

    goto :goto_2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    const/high16 v1, 0x80000

    .line 2450
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-ne p1, v0, :cond_2

    .line 2465
    :cond_0
    :goto_1
    return-void

    .line 2450
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2455
    :cond_2
    if-eqz p1, :cond_3

    .line 2456
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    .line 2462
    :goto_2
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    .line 2463
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 2458
    :cond_3
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    goto :goto_2
.end method

.method public setAnimationState(I)V
    .locals 3
    .param p1, "s"    # I

    .prologue
    .line 350
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentAnimationState:I

    .line 351
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/SceneNode;

    .line 353
    .local v0, "c":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setAnimationState(I)V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "c":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    return-void
.end method

.method public setCamera(Lcom/smartisanos/smengine/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 1451
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mSelfCamera:Lcom/smartisanos/smengine/Camera;

    .line 1452
    return-void
.end method

.method public setCameraMatrixToShader(I)V
    .locals 2
    .param p1, "loc"    # I

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetCameraMatrixDataToShader(JI)V

    .line 204
    return-void
.end method

.method public setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 2340
    if-eqz p1, :cond_0

    .line 2341
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    .line 2345
    :goto_0
    return-void

    .line 2343
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    goto :goto_0
.end method

.method public setCollideAlways(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideAlways:Z

    .line 280
    return-void
.end method

.method public setCollideListener(Lcom/smartisanos/smengine/SceneNode$CollideListener;)V
    .locals 0
    .param p1, "cl"    # Lcom/smartisanos/smengine/SceneNode$CollideListener;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideListener:Lcom/smartisanos/smengine/SceneNode$CollideListener;

    .line 269
    return-void
.end method

.method public setColor(FFFF)V
    .locals 3
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/4 v2, 0x1

    .line 1501
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    .line 1502
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v1, :cond_0

    .line 1503
    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/math/Vector4f;

    .line 1504
    .local v0, "color":Lcom/smartisanos/smengine/math/Vector4f;
    if-nez v0, :cond_1

    .line 1505
    new-instance v0, Lcom/smartisanos/smengine/math/Vector4f;

    .end local v0    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 1506
    .restart local v0    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 1516
    .end local v0    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_0
    :goto_0
    return-void

    .line 1508
    .restart local v0    # "color":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iput p1, v0, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1509
    iput p2, v0, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1510
    iput p3, v0, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1511
    iput p4, v0, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0
.end method

.method public setDepthTestFunc(I)V
    .locals 1
    .param p1, "f"    # I

    .prologue
    .line 760
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RenderState;->setDepthTestFunc(I)V

    .line 762
    return-void
.end method

.method public setDisplayUpdate()V
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    .line 329
    return-void
.end method

.method public setDoubleTapListener(Lcom/smartisanos/smengine/SceneNode$DoubleTapListener;)V
    .locals 0
    .param p1, "l"    # Lcom/smartisanos/smengine/SceneNode$DoubleTapListener;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mDoubleTapListener:Lcom/smartisanos/smengine/SceneNode$DoubleTapListener;

    .line 260
    return-void
.end method

.method public setDragPoint(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2155
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mDragPointX:F

    .line 2156
    iput p2, p0, Lcom/smartisanos/smengine/SceneNode;->mDragPointY:F

    .line 2157
    return-void
.end method

.method public setFixedCenter(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 0
    .param p1, "fixedCenter"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 949
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mFixedCenter:Lcom/smartisanos/smengine/math/Vector3f;

    .line 950
    return-void
.end method

.method public setForceDispatchTouchToView(Z)V
    .locals 0
    .param p1, "forceDispatchTouchToView"    # Z

    .prologue
    .line 2555
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mForceDispatchTouchToView:Z

    .line 2556
    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setTextureName(ILjava/lang/String;)V

    .line 607
    return-void
.end method

.method public setInnerShadowAlphaRange_H(FFFF)V
    .locals 4
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/16 v2, 0xc

    .line 1626
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 1627
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v0, :cond_2

    .line 1628
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Vector4f;

    .line 1629
    .local v1, "range_h":Lcom/smartisanos/smengine/math/Vector4f;
    if-nez v1, :cond_1

    .line 1630
    new-instance v1, Lcom/smartisanos/smengine/math/Vector4f;

    .end local v1    # "range_h":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 1631
    .restart local v1    # "range_h":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 1641
    .end local v1    # "range_h":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_0
    :goto_0
    return-void

    .line 1633
    .restart local v1    # "range_h":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iput p1, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1634
    iput p2, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1635
    iput p3, v1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1636
    iput p4, v1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0

    .line 1639
    .end local v1    # "range_h":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "Material is null !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInnerShadowAlphaRange_V(FFFF)V
    .locals 4
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/16 v2, 0xe

    .line 1667
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 1668
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v0, :cond_2

    .line 1669
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Vector4f;

    .line 1670
    .local v1, "range_v":Lcom/smartisanos/smengine/math/Vector4f;
    if-nez v1, :cond_1

    .line 1671
    new-instance v1, Lcom/smartisanos/smengine/math/Vector4f;

    .end local v1    # "range_v":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 1672
    .restart local v1    # "range_v":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 1682
    .end local v1    # "range_v":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_0
    :goto_0
    return-void

    .line 1674
    .restart local v1    # "range_v":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iput p1, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1675
    iput p2, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1676
    iput p3, v1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1677
    iput p4, v1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0

    .line 1680
    .end local v1    # "range_v":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "Material is null !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInnerShadowSize_H(FFFF)V
    .locals 4
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/16 v2, 0xb

    .line 1542
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 1543
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v0, :cond_2

    .line 1544
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Vector4f;

    .line 1545
    .local v1, "size_h":Lcom/smartisanos/smengine/math/Vector4f;
    if-nez v1, :cond_1

    .line 1547
    new-instance v1, Lcom/smartisanos/smengine/math/Vector4f;

    .end local v1    # "size_h":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 1548
    .restart local v1    # "size_h":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 1559
    .end local v1    # "size_h":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_0
    :goto_0
    return-void

    .line 1551
    .restart local v1    # "size_h":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iput p1, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1552
    iput p2, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1553
    iput p3, v1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1554
    iput p4, v1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0

    .line 1557
    .end local v1    # "size_h":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "Material is null !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInnerShadowSize_V(FFFF)V
    .locals 4
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/16 v2, 0xd

    .line 1585
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getMaterial()Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 1586
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    if-eqz v0, :cond_2

    .line 1587
    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/mymaterial/Material;->getParam(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/math/Vector4f;

    .line 1588
    .local v1, "size_v":Lcom/smartisanos/smengine/math/Vector4f;
    if-nez v1, :cond_1

    .line 1589
    new-instance v1, Lcom/smartisanos/smengine/math/Vector4f;

    .end local v1    # "size_v":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/smartisanos/smengine/math/Vector4f;-><init>(FFFF)V

    .line 1590
    .restart local v1    # "size_v":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-virtual {v0, v2, v1}, Lcom/smartisanos/smengine/mymaterial/Material;->setParam(ILjava/lang/Object;)V

    .line 1600
    .end local v1    # "size_v":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_0
    :goto_0
    return-void

    .line 1592
    .restart local v1    # "size_v":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iput p1, v1, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1593
    iput p2, v1, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1594
    iput p3, v1, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1595
    iput p4, v1, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    goto :goto_0

    .line 1598
    .end local v1    # "size_v":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/smengine/SceneNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "Material is null !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInteractionState(I)V
    .locals 3
    .param p1, "s"    # I

    .prologue
    .line 337
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentInteractionState:I

    .line 338
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/SceneNode;

    .line 340
    .local v0, "c":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setInteractionState(I)V

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    .end local v0    # "c":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    return-void
.end method

.method public setIsEnableBlend(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 764
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 766
    return-void
.end method

.method public setIsEnableDepthTest(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 756
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 758
    return-void
.end method

.method public setIsUpdateBoundingVolume(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mIsUpdateBoundingVolume:Z

    .line 273
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .param p1, "l"    # I

    .prologue
    .line 428
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mLayer:I

    .line 433
    return-void
.end method

.method public setLocalBoundingVolume(FFFF)V
    .locals 6
    .param p1, "minX"    # F
    .param p2, "minY"    # F
    .param p3, "maxX"    # F
    .param p4, "maxY"    # F

    .prologue
    .line 289
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/SceneNode;->nSetLocalBoundingVolume(JFFFF)V

    .line 290
    return-void
.end method

.method public setLocalTranslateDataToShader(I)V
    .locals 2
    .param p1, "loc"    # I

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetLocalTranslateDataToShader(JI)V

    .line 216
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 2
    .param p1, "longClickable"    # Z

    .prologue
    .line 2371
    if-eqz p1, :cond_0

    .line 2372
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    .line 2376
    :goto_0
    return-void

    .line 2374
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewFlags:I

    goto :goto_0
.end method

.method public setLongPressListener(Lcom/smartisanos/smengine/SceneNode$LongPressListener;)V
    .locals 0
    .param p1, "l"    # Lcom/smartisanos/smengine/SceneNode$LongPressListener;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mLongPressListener:Lcom/smartisanos/smengine/SceneNode$LongPressListener;

    .line 257
    return-void
.end method

.method protected setMVPMatrixArrayNum(I)V
    .locals 2
    .param p1, "num"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMatrixArrayNum:I

    .line 200
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetMVPMatrixArrayNum(JI)V

    .line 201
    return-void
.end method

.method public setMVPMatrixArrayToShader(I)V
    .locals 2
    .param p1, "loc"    # I

    .prologue
    .line 212
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetMVPMatrixArrayDataToShader(JI)V

    .line 213
    return-void
.end method

.method public setMVPMatrixToShader(I)V
    .locals 2
    .param p1, "loc"    # I

    .prologue
    .line 209
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetMVPMatrixDataToShader(JI)V

    .line 210
    return-void
.end method

.method public setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V
    .locals 0
    .param p1, "m"    # Lcom/smartisanos/smengine/mymaterial/Material;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    .line 578
    return-void
.end method

.method public setMesh(Lcom/smartisanos/smengine/Mesh;)V
    .locals 2
    .param p1, "m"    # Lcom/smartisanos/smengine/Mesh;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/Mesh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/Mesh;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Mesh;->isInMeshManager()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/Mesh;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Mesh;->clear(Z)V

    .line 589
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/Mesh;

    .line 590
    return-void
.end method

.method public setModelSpaceLightDirArrayDataToShader(I)V
    .locals 2
    .param p1, "loc"    # I

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetModelSpaceLightDirDataToShader(JI)V

    .line 219
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .locals 2
    .param p1, "split"    # Z

    .prologue
    .line 2430
    if-eqz p1, :cond_0

    .line 2431
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    .line 2435
    :goto_0
    return-void

    .line 2433
    :cond_0
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mGroupFlags:I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mName:Ljava/lang/String;

    .line 437
    return-void
.end method

.method public setNativeData(Lcom/smartisanos/smengine/Camera;)V
    .locals 0
    .param p1, "c"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 1365
    return-void
.end method

.method public setNeedDisplay()V
    .locals 0

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setDisplayUpdate()V

    .line 619
    return-void
.end method

.method public setOnClickListener(Lcom/smartisanos/smengine/SceneNode$OnClickListener;)V
    .locals 1
    .param p1, "l"    # Lcom/smartisanos/smengine/SceneNode$OnClickListener;

    .prologue
    .line 1845
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1846
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setClickable(Z)V

    .line 1848
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getListenerInfo()Lcom/smartisanos/smengine/SceneNode$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/smartisanos/smengine/SceneNode$ListenerInfo;->mOnClickListener:Lcom/smartisanos/smengine/SceneNode$OnClickListener;

    .line 1849
    return-void
.end method

.method public setOnLongClickListener(Lcom/smartisanos/smengine/SceneNode$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Lcom/smartisanos/smengine/SceneNode$OnLongClickListener;

    .prologue
    .line 1870
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1871
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/smengine/SceneNode;->setLongClickable(Z)V

    .line 1873
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getListenerInfo()Lcom/smartisanos/smengine/SceneNode$ListenerInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/smartisanos/smengine/SceneNode$ListenerInfo;->mOnLongClickListener:Lcom/smartisanos/smengine/SceneNode$OnLongClickListener;

    .line 1874
    return-void
.end method

.method public setOnTouchListener(Lcom/smartisanos/smengine/SceneNode$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

    .prologue
    .line 1884
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getListenerInfo()Lcom/smartisanos/smengine/SceneNode$ListenerInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/smartisanos/smengine/SceneNode$ListenerInfo;->access$002(Lcom/smartisanos/smengine/SceneNode$ListenerInfo;Lcom/smartisanos/smengine/SceneNode$OnTouchListener;)Lcom/smartisanos/smengine/SceneNode$OnTouchListener;

    .line 1885
    return-void
.end method

.method public setParent(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0
    .param p1, "parent"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 790
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    .line 791
    return-void
.end method

.method public setPressed(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2390
    iget v2, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    and-int/lit16 v2, v2, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_1

    move v2, v0

    :goto_0
    if-eq p1, v2, :cond_2

    .line 2392
    .local v0, "needsRefresh":Z
    :goto_1
    if-eqz p1, :cond_3

    .line 2393
    iget v1, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    .line 2398
    :goto_2
    if-eqz v0, :cond_0

    .line 2399
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->refreshDrawableState()V

    .line 2401
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->dispatchSetPressed(Z)V

    .line 2402
    return-void

    .end local v0    # "needsRefresh":Z
    :cond_1
    move v2, v1

    .line 2390
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 2395
    .restart local v0    # "needsRefresh":Z
    :cond_3
    iget v1, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Lcom/smartisanos/smengine/SceneNode;->mPrivateFlags:I

    goto :goto_2
.end method

.method public setRenderQueue(I)V
    .locals 0
    .param p1, "rq"    # I

    .prologue
    .line 367
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderQueue:I

    .line 368
    return-void
.end method

.method public setRenderQueue(IZ)V
    .locals 3
    .param p1, "rq"    # I
    .param p2, "setChild"    # Z

    .prologue
    .line 370
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderQueue:I

    .line 371
    if-eqz p2, :cond_0

    .line 372
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/SceneNode;

    .line 374
    .local v0, "c":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "c":Lcom/smartisanos/smengine/SceneNode;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V
    .locals 0
    .param p1, "rt"    # Lcom/smartisanos/smengine/RenderTarget;

    .prologue
    .line 612
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 613
    return-void
.end method

.method public setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V
    .locals 6
    .param p1, "angle"    # F
    .param p2, "axis"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/math/Transform;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Transform;->getRotation()Lcom/smartisanos/smengine/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/smengine/math/Quaternion;->fromAngleAxis(FLcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Quaternion;

    .line 716
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget v3, p2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v4, p2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v5, p2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/smengine/SceneNode;->nSetRotation(JFFFF)V

    .line 717
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    .line 718
    return-void
.end method

.method public setScale(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 720
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/math/Transform;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/smengine/math/Transform;->setScale(FFF)Lcom/smartisanos/smengine/math/Transform;

    .line 721
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->nSetScale(JFFF)V

    .line 722
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    .line 723
    return-void
.end method

.method public setScaleListener(Lcom/smartisanos/smengine/SceneNode$ScaleListener;)V
    .locals 0
    .param p1, "l"    # Lcom/smartisanos/smengine/SceneNode$ScaleListener;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleListener:Lcom/smartisanos/smengine/SceneNode$ScaleListener;

    .line 266
    return-void
.end method

.method public setScaleRotatePivot(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 662
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iput p1, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 663
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iput p2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 664
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iput p3, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 665
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->nSetScaleRotatePivot(JFFF)V

    .line 666
    return-void
.end method

.method public setScaleRotatePivot(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 5
    .param p1, "p"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 668
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 669
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 670
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 671
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->nSetScaleRotatePivot(JFFF)V

    .line 672
    return-void
.end method

.method public setSceneNodeForceRender(Z)V
    .locals 0
    .param p1, "render"    # Z

    .prologue
    .line 1708
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mForceRenderTag:Z

    .line 1709
    return-void
.end method

.method public setSingleTapListener(Lcom/smartisanos/smengine/SceneNode$SingleTapListener;)V
    .locals 0
    .param p1, "l"    # Lcom/smartisanos/smengine/SceneNode$SingleTapListener;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mSingleTapListener:Lcom/smartisanos/smengine/SceneNode$SingleTapListener;

    .line 254
    return-void
.end method

.method public setSkewX(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 360
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/math/Transform;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Transform;->setSkewX(F)V

    .line 361
    return-void
.end method

.method public setSkewY(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 363
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/math/Transform;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/math/Transform;->setSkewY(F)V

    .line 364
    return-void
.end method

.method public setSubLayer(I)V
    .locals 0
    .param p1, "l"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/smartisanos/smengine/SceneNode;->mSubLayer:I

    .line 408
    return-void
.end method

.method public setTextureName(ILjava/lang/String;)V
    .locals 1
    .param p1, "texID"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 595
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    .line 599
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aput-object p2, v0, p1

    goto :goto_0
.end method

.method public setTouchListener(Lcom/smartisanos/smengine/SceneNode$TouchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/smartisanos/smengine/SceneNode$TouchListener;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    .line 263
    return-void
.end method

.method public setTransformUpdate()V
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/smengine/SceneNode;->mUpdateFlags:I

    .line 326
    return-void
.end method

.method public setTranslate(FFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 681
    move v0, p1

    .line 682
    .local v0, "newx":F
    move v1, p2

    .line 683
    .local v1, "newy":F
    move v2, p3

    .line 684
    .local v2, "newz":F
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/math/Transform;

    invoke-virtual {v3, v0, v1, v2}, Lcom/smartisanos/smengine/math/Transform;->setTranslation(FFF)Lcom/smartisanos/smengine/math/Transform;

    .line 685
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iput p1, v3, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 686
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iput p2, v3, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 687
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iput p3, v3, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 688
    iget-wide v4, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v4, v5, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->nSetTranslate(JFFF)V

    .line 689
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    .line 690
    return-void
.end method

.method public setTranslatePivot(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 656
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iput p1, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 657
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iput p2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 658
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iput p3, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 659
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->nSetTranslatePivot(JFFF)V

    .line 660
    return-void
.end method

.method public setTranslatePivot(Lcom/smartisanos/smengine/math/Vector3f;)V
    .locals 5
    .param p1, "p"    # Lcom/smartisanos/smengine/math/Vector3f;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 651
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 652
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 653
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget v2, p1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, p1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, p1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/smartisanos/smengine/SceneNode;->nSetTranslatePivot(JFFF)V

    .line 654
    return-void
.end method

.method public setTranslateX(F)V
    .locals 5
    .param p1, "x"    # F

    .prologue
    .line 692
    move v0, p1

    .line 693
    .local v0, "newx":F
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/math/Transform;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/math/Transform;->setTranslationX(F)Lcom/smartisanos/smengine/math/Transform;

    .line 694
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iput p1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 695
    iget-wide v2, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {v2, v3, p1, v1, v4}, Lcom/smartisanos/smengine/SceneNode;->nSetTranslate(JFFF)V

    .line 696
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    .line 697
    return-void
.end method

.method public setTranslateY(F)V
    .locals 5
    .param p1, "y"    # F

    .prologue
    .line 699
    move v0, p1

    .line 700
    .local v0, "newy":F
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/math/Transform;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/math/Transform;->setTranslationY(F)Lcom/smartisanos/smengine/math/Transform;

    .line 701
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iput p1, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 702
    iget-wide v2, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-static {v2, v3, v1, p1, v4}, Lcom/smartisanos/smengine/SceneNode;->nSetTranslate(JFFF)V

    .line 703
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    .line 704
    return-void
.end method

.method public setTranslateZ(F)V
    .locals 5
    .param p1, "z"    # F

    .prologue
    .line 706
    move v0, p1

    .line 707
    .local v0, "newz":F
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/math/Transform;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/math/Transform;->setTranslationZ(F)Lcom/smartisanos/smengine/math/Transform;

    .line 708
    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iput p1, v1, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 709
    iget-wide v2, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-object v1, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v1, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v4, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    invoke-static {v2, v3, v1, v4, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetTranslate(JFFF)V

    .line 710
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->setTransformUpdate()V

    .line 711
    return-void
.end method

.method public setUserInteractionEnable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mUserInteractionEnable:Z

    .line 283
    return-void
.end method

.method public setViewPort(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 564
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Lcom/smartisanos/smengine/ViewPort;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/ViewPort;-><init>(IIII)V

    iput-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/smartisanos/smengine/ViewPort;->setViewPort(IIII)V

    goto :goto_0
.end method

.method public setViewPort(Lcom/smartisanos/smengine/ViewPort;)V
    .locals 0
    .param p1, "vp"    # Lcom/smartisanos/smengine/ViewPort;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    .line 572
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/smartisanos/smengine/SceneNode;->mIsVisible:Z

    .line 383
    return-void
.end method

.method public setWorldMatrixToShader(I)V
    .locals 2
    .param p1, "loc"    # I

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-static {v0, v1, p1}, Lcom/smartisanos/smengine/SceneNode;->nSetWorldMatrixDataToShader(JI)V

    .line 207
    return-void
.end method

.method public travel(Lcom/smartisanos/smengine/SceneNode$NodeTravel;)V
    .locals 3
    .param p1, "tra"    # Lcom/smartisanos/smengine/SceneNode$NodeTravel;

    .prologue
    .line 1488
    invoke-interface {p1, p0}, Lcom/smartisanos/smengine/SceneNode$NodeTravel;->visit(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1489
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1490
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 1491
    .local v1, "node":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1, p1}, Lcom/smartisanos/smengine/SceneNode;->travel(Lcom/smartisanos/smengine/SceneNode$NodeTravel;)V

    .line 1489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1493
    .end local v1    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 0
    .param p1, "deltaT"    # F

    .prologue
    .line 405
    return-void
.end method

.method public updateGeometricState()V
    .locals 1

    .prologue
    .line 1095
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateWorldTransforms()V

    .line 1096
    iget-boolean v0, p0, Lcom/smartisanos/smengine/SceneNode;->mIsUpdateBoundingVolume:Z

    if-eqz v0, :cond_0

    .line 1097
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->updateWorldBoundingVolume()V

    .line 1100
    :cond_0
    return-void
.end method

.method public updateLayer()V
    .locals 4

    .prologue
    .line 412
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 413
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 414
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 415
    .local v2, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->updateLayer()V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 417
    .end local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    return-void
.end method

.method public updateLayer(I)V
    .locals 4
    .param p1, "change"    # I

    .prologue
    .line 420
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 421
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 422
    iget-object v3, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 423
    .local v2, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->updateLayer(I)V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 425
    .end local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    return-void
.end method

.method protected updateLocalTransform()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1176
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v4

    .line 1177
    .local v4, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v2, v4, Lcom/smartisanos/smengine/util/TempVars;->vect41f:Lcom/smartisanos/smengine/math/Vector4f;

    .line 1178
    .local v2, "t":Lcom/smartisanos/smengine/math/Vector4f;
    invoke-virtual {v2, v6, v6, v6, v6}, Lcom/smartisanos/smengine/math/Vector4f;->set(FFFF)Lcom/smartisanos/smengine/math/Vector4f;

    .line 1179
    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 1180
    :cond_0
    iget-object v1, v4, Lcom/smartisanos/smengine/util/TempVars;->tempMat4:Lcom/smartisanos/smengine/math/Matrix4f;

    .line 1181
    .local v1, "scaleRotateM":Lcom/smartisanos/smengine/math/Matrix4f;
    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/math/Transform;

    invoke-virtual {v5, v1}, Lcom/smartisanos/smengine/math/Transform;->scaleRotateMatrix(Lcom/smartisanos/smengine/math/Matrix4f;)Lcom/smartisanos/smengine/math/Matrix4f;

    .line 1182
    iget-object v3, v4, Lcom/smartisanos/smengine/util/TempVars;->vect42f:Lcom/smartisanos/smengine/math/Vector4f;

    .line 1183
    .local v3, "t1":Lcom/smartisanos/smengine/math/Vector4f;
    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    neg-float v5, v5

    iput v5, v3, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1184
    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    neg-float v5, v5

    iput v5, v3, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1185
    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    neg-float v5, v5

    iput v5, v3, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1186
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 1188
    invoke-virtual {v1, v3, v2}, Lcom/smartisanos/smengine/math/Matrix4f;->mult(Lcom/smartisanos/smengine/math/Vector4f;Lcom/smartisanos/smengine/math/Vector4f;)Lcom/smartisanos/smengine/math/Vector4f;

    .line 1189
    iget v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v6, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float/2addr v5, v6

    iput v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1190
    iget v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v6, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v5, v6

    iput v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1191
    iget v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v6, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    add-float/2addr v5, v6

    iput v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1193
    .end local v1    # "scaleRotateM":Lcom/smartisanos/smengine/math/Matrix4f;
    .end local v3    # "t1":Lcom/smartisanos/smengine/math/Vector4f;
    :cond_1
    iget v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget-object v6, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    neg-float v6, v6

    add-float/2addr v5, v6

    iput v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1194
    iget v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget-object v6, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    neg-float v6, v6

    add-float/2addr v5, v6

    iput v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1195
    iget v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget-object v6, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    neg-float v6, v6

    add-float/2addr v5, v6

    iput v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1196
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    .line 1197
    .local v0, "localT":Lcom/smartisanos/smengine/math/Vector3f;
    iget v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    add-float/2addr v5, v6

    iput v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    .line 1198
    iget v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    add-float/2addr v5, v6

    iput v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    .line 1199
    iget v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    add-float/2addr v5, v6

    iput v5, v2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    .line 1200
    iget-object v5, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/math/Transform;

    iget v6, v2, Lcom/smartisanos/smengine/math/Vector4f;->x:F

    iget v7, v2, Lcom/smartisanos/smengine/math/Vector4f;->y:F

    iget v8, v2, Lcom/smartisanos/smengine/math/Vector4f;->z:F

    invoke-virtual {v5, v6, v7, v8}, Lcom/smartisanos/smengine/math/Transform;->setTranslation(FFF)Lcom/smartisanos/smengine/math/Transform;

    .line 1201
    invoke-virtual {v4}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 1202
    return-void
.end method

.method public updateMesh(Lcom/smartisanos/smengine/Mesh;)V
    .locals 0
    .param p1, "m"    # Lcom/smartisanos/smengine/Mesh;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/Mesh;

    .line 593
    return-void
.end method

.method public updateSelfWorldBoundingVolume()V
    .locals 4

    .prologue
    .line 1123
    iget-wide v2, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->nUpdateWorldBoundingVolume(JJ)V

    .line 1124
    return-void

    .line 1123
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    iget-wide v0, v0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    goto :goto_0
.end method

.method public updateSelfWorldTranform()V
    .locals 4

    .prologue
    .line 1228
    iget-wide v2, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/smartisanos/smengine/SceneNode;->nUpdateWorldTransforms(JJ)V

    .line 1229
    return-void

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    iget-wide v0, v0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    goto :goto_0
.end method

.method public updateWorldBoundingVolume()V
    .locals 6

    .prologue
    .line 1139
    iget-wide v4, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v4, v5, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nUpdateWorldBoundingVolume(JJ)V

    .line 1140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1141
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 1142
    .local v1, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateWorldBoundingVolume()V

    .line 1140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1139
    .end local v0    # "i":I
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/smengine/SceneNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    iget-wide v2, v2, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    goto :goto_0

    .line 1144
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public updateWorldTransforms()V
    .locals 6

    .prologue
    .line 1249
    iget-wide v4, p0, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v4, v5, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->nUpdateWorldTransforms(JJ)V

    .line 1250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1251
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/SceneNode;

    .line 1252
    .local v1, "node":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/SceneNode;->updateWorldTransforms()V

    .line 1250
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1249
    .end local v0    # "i":I
    .end local v1    # "node":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    iget-wide v2, v2, Lcom/smartisanos/smengine/SceneNode;->mSceneNodeTransformNative:J

    goto :goto_0

    .line 1255
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 11
    .param p1, "parent"    # Lorg/w3c/dom/Element;
    .param p2, "document"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v10, 0x0

    .line 2914
    const-string v7, "SceneNode"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 2915
    .local v3, "element":Lorg/w3c/dom/Element;
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2916
    const-string v7, "mName"

    iget-object v8, p0, Lcom/smartisanos/smengine/SceneNode;->mName:Ljava/lang/String;

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    const-string v7, "mLocalTransform"

    iget-object v8, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTransform:Lcom/smartisanos/smengine/math/Transform;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Transform;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    const-string v7, "mWorldTransform"

    iget-object v8, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldTransform:Lcom/smartisanos/smengine/math/Transform;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Transform;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    const-string v8, "mParent"

    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    if-nez v7, :cond_0

    const-string v7, "null"

    :goto_0
    invoke-interface {v3, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    const-string v7, "mTranslatePivot"

    iget-object v8, p0, Lcom/smartisanos/smengine/SceneNode;->mTranslatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Vector3f;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2921
    const-string v7, "mScaleRotatePivot"

    iget-object v8, p0, Lcom/smartisanos/smengine/SceneNode;->mScaleRotatePivot:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Vector3f;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2922
    const-string v7, "mLocalTranslate"

    iget-object v8, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalTranslate:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Vector3f;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2923
    const-string v7, "mLayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/smartisanos/smengine/SceneNode;->mLayer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2924
    const-string v7, "mLocalLayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/smartisanos/smengine/SceneNode;->mSubLayer:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    const-string v8, "mRenderTarget"

    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-nez v7, :cond_1

    const-string v7, "null"

    :goto_1
    invoke-interface {v3, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2926
    const-string v8, "mViewPort"

    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    if-nez v7, :cond_2

    const-string v7, "null"

    :goto_2
    invoke-interface {v3, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2927
    const-string v7, "mRenderQueue"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderQueue:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2928
    const-string v8, "mMaterial"

    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    if-nez v7, :cond_3

    const-string v7, "null"

    :goto_3
    invoke-interface {v3, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2929
    const-string v8, "mMeshData"

    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/Mesh;

    if-nez v7, :cond_4

    const-string v7, "null"

    :goto_4
    invoke-interface {v3, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2931
    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object v7, v7, v10

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-static {v7}, Lcom/smartisanos/smengine/Texture;->isTextTextureName(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2932
    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-static {v7}, Lcom/smartisanos/smengine/Texture;->extractTextFromTextureName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2933
    .local v6, "str1":Ljava/lang/String;
    const-string v7, "mTextureMapName_DIFFUSE"

    invoke-interface {v3, v7, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    .end local v6    # "str1":Ljava/lang/String;
    :goto_5
    const-string v7, "mUserInteractionEnable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/smartisanos/smengine/SceneNode;->mUserInteractionEnable:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    const-string v7, "mCollideAlways"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/smartisanos/smengine/SceneNode;->mCollideAlways:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    const-string v8, "mLocalBoundingVolume"

    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalBoundingVolume:Lcom/smartisanos/smengine/BoundingVolume;

    if-nez v7, :cond_7

    const-string v7, "null"

    :goto_6
    invoke-interface {v3, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2940
    const-string v8, "mWorldBoundingVolume"

    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldBoundingVolume:Lcom/smartisanos/smengine/BoundingVolume;

    if-nez v7, :cond_8

    const-string v7, "null"

    :goto_7
    invoke-interface {v3, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    const-string v7, "mWorldMatrix"

    iget-object v8, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldMatrix:Lcom/smartisanos/smengine/math/Matrix4f;

    invoke-virtual {v8}, Lcom/smartisanos/smengine/math/Matrix4f;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2942
    const-string v7, "mForceRenderTag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/smartisanos/smengine/SceneNode;->mForceRenderTag:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2943
    const-string v7, "mIsVisible"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/smartisanos/smengine/SceneNode;->mIsVisible:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    const-string v7, "mCurrentInteractionState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentInteractionState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    const-string v7, "mCurrentAnimationState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/smartisanos/smengine/SceneNode;->mCurrentAnimationState:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    const-string v7, "mIsUpdateBoundingVolume"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/smartisanos/smengine/SceneNode;->mIsUpdateBoundingVolume:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2948
    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderState:Lcom/smartisanos/smengine/RenderState;

    invoke-virtual {v7, v3, p2}, Lcom/smartisanos/smengine/RenderState;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 2949
    const-string v7, "Children-Index"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 2950
    .local v2, "childrenIndex":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_9

    .line 2951
    const-string v7, "child"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 2952
    .local v0, "child":Lorg/w3c/dom/Element;
    const-string v7, "index"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    const-string v8, "name"

    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2954
    invoke-interface {v2, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2950
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 2919
    .end local v0    # "child":Lorg/w3c/dom/Element;
    .end local v2    # "childrenIndex":Lorg/w3c/dom/Element;
    .end local v4    # "i":I
    :cond_0
    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mParent:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getName()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 2925
    :cond_1
    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/RenderTarget;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 2926
    :cond_2
    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mViewPort:Lcom/smartisanos/smengine/ViewPort;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/ViewPort;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 2928
    :cond_3
    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mMaterial:Lcom/smartisanos/smengine/mymaterial/Material;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/mymaterial/Material;->getName()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 2929
    :cond_4
    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mMeshData:Lcom/smartisanos/smengine/Mesh;

    invoke-virtual {v7}, Lcom/smartisanos/smengine/Mesh;->getName()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 2935
    :cond_5
    const-string v8, "mTextureMapName_DIFFUSE"

    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object v7, v7, v10

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mTextureMapName:[Ljava/lang/String;

    aget-object v7, v7, v10

    :goto_9
    invoke-interface {v3, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    const-string v7, "null"

    goto :goto_9

    .line 2939
    :cond_7
    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mLocalBoundingVolume:Lcom/smartisanos/smengine/BoundingVolume;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    .line 2940
    :cond_8
    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mWorldBoundingVolume:Lcom/smartisanos/smengine/BoundingVolume;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_7

    .line 2956
    .restart local v2    # "childrenIndex":Lorg/w3c/dom/Element;
    .restart local v4    # "i":I
    :cond_9
    invoke-interface {v3, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2957
    const-string v7, "Children"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 2958
    .local v1, "children":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    :goto_a
    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_a

    .line 2959
    iget-object v7, p0, Lcom/smartisanos/smengine/SceneNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/smengine/SceneNode;

    .line 2960
    .local v5, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v5, v1, p2}, Lcom/smartisanos/smengine/SceneNode;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 2958
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 2962
    .end local v5    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_a
    invoke-interface {v3, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 2963
    return-void
.end method
