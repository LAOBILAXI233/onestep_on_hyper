.class public Lcom/smartisanos/launcher/view/MultiSelectNode;
.super Lcom/smartisanos/smengine/SceneNode;
.source "MultiSelectNode.java"

.implements Lcom/smartisanos/smengine/NotificationManager$Observer;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;,
        Lcom/smartisanos/launcher/view/MultiSelectNode$MySingleTapListener;,
        Lcom/smartisanos/launcher/view/MultiSelectNode$SortByPageIndex;
    }
.end annotation


.field private static final LONG_PRESSED_CELL_LAYER_DELTA:I = 0x4

.field private static final LONG_PRESS_APPNAME_HIDE_DISTANCE:F = 100.0f

.field private static final MULTI_UNINSTALL_FINISH_ANIMATION_TRANSLATE:F = 400.0f

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mAllInOne:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mCanDrop:Z

.field private mCollideWithDock:Z

.field private mCurrentPage:Lcom/smartisanos/launcher/view/Page;

.field private mDelta:I

.field private mHideLongPressTextRectAnim:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

.field private mIconBeginPosition:Lcom/smartisanos/smengine/math/Vector3f;

.field private mInitLocation:Lcom/smartisanos/smengine/math/Vector3f;

.field private mLongPressCell:Lcom/smartisanos/launcher/view/Cell;

.field private mLongPressName:Ljava/lang/String;

.field private mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

.field private mMultiSelectAllCellBackToPageAnimation:Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

.field private mMultiSelectConcentrateAnimation:Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

.field private mMultiSelectFadeinFadeoutAnimation:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

.field private mMultiSelectSpreadOutAnimation:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

.field private mNeedMoveX:F

.field private mNeedMoveY:F

.field private mNeedResetGaussianStatus:Z

.field private mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

.field private mOnDragIcon:Z

.field mPageView:Lcom/smartisanos/launcher/view/PageView;

.field private mPrePage:Lcom/smartisanos/launcher/view/Page;

.field mSelectedCellList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation
.end field

.field mSelectedCellPageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

.field private mTouchedWorldPos:Lcom/smartisanos/smengine/math/Vector3f;

.field private trashAreaVerifyLoc:Lcom/smartisanos/smengine/math/Vector3f;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellPageList:Ljava/util/ArrayList;

    .line 43
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCanDrop:Z

    .line 44
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCollideWithDock:Z

    .line 53
    const/16 v0, 0x8

    iput v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mDelta:I

    .line 61
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mNeedResetGaussianStatus:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mAllInOne:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 816
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mOnDragIcon:Z

    .line 817
    iput v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mNeedMoveX:F

    .line 818
    iput v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mNeedMoveY:F

    .line 68
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "settingButtonStatus"

    invoke-virtual {v0, v1, p0}, Lcom/smartisanos/smengine/NotificationManager;->addObserver(Ljava/lang/String;Lcom/smartisanos/smengine/NotificationManager$Observer;)V

    .line 69
    new-instance v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/MultiSelectNode$MyTouchListener;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->setTouchListener(Lcom/smartisanos/smengine/SceneNode$TouchListener;)V

    .line 70
    new-instance v0, Lcom/smartisanos/launcher/view/MultiSelectNode$MySingleTapListener;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/MultiSelectNode$MySingleTapListener;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->setSingleTapListener(Lcom/smartisanos/smengine/SceneNode$SingleTapListener;)V

    .line 72
    return-void
.end method

.method private MultiSelectConcentrateAnimation(Lcom/smartisanos/smengine/AnimationTimeLine;)V
    .locals 6
    .param p1, "timeLine"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 632
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectConcentrateAnimation:Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectConcentrateAnimation:Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

    iget-boolean v2, v2, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mIsPlaying:Z

    if-nez v2, :cond_2

    .line 633
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 634
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 635
    .local v0, "c":Lcom/smartisanos/launcher/view/Cell;
    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3}, Lcom/smartisanos/launcher/view/Cell;->hideMultiSelectCoverRectAnimation(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    .end local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    new-instance v2, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    new-instance v5, Lcom/smartisanos/launcher/view/MultiSelectNode$2;

    invoke-direct {v5, p0}, Lcom/smartisanos/launcher/view/MultiSelectNode$2;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;-><init>(Lcom/smartisanos/launcher/view/PageView;Lcom/smartisanos/smengine/AnimationTimeLine;Ljava/util/ArrayList;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectConcentrateAnimation:Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

    .line 646
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private MultiSelectFadeinFadeoutAnimation(Ljava/util/ArrayList;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;)",
            "Lcom/smartisanos/smengine/AnimationTimeLine;"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectFadeinFadeoutAnimation:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    if-eqz v0, :cond_0

    .line 625
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellPageList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;-><init>(Lcom/smartisanos/launcher/view/PageView;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectFadeinFadeoutAnimation:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    .line 626
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectFadeinFadeoutAnimation:Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiSelectFadeinFadeoutAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectConcentrateAnimation:Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/launcher/view/MultiSelectNode;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->hideCover()V

    return-void
.end method

.method static synthetic access$1000(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/Cell;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressCell:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/smartisanos/launcher/view/MultiSelectNode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mNeedResetGaussianStatus:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/smartisanos/launcher/view/MultiSelectNode;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mNeedResetGaussianStatus:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/smartisanos/launcher/view/MultiSelectNode;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCanDrop:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/smengine/SceneNodeTweenAnimation;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;
    .param p1, "x1"    # Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mHideLongPressTextRectAnim:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/smengine/RectNode;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/smengine/RectNode;)Lcom/smartisanos/smengine/RectNode;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;
    .param p1, "x1"    # Lcom/smartisanos/smengine/RectNode;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/smartisanos/launcher/view/MultiSelectNode;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectAllCellBackToPageAnimation:Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mAllInOne:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v0
.end method

.method static synthetic access$202(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mAllInOne:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object p1
.end method

.method static synthetic access$300(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/smengine/AnimationTimeLine;F)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "x2"    # F

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->hideLongPressAppName(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/smengine/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/Page;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    return-object v0
.end method

.method static synthetic access$502(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    return-object p1
.end method

.method static synthetic access$600()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$700(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/smengine/AnimationTimeLine;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;
    .param p1, "x1"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->orig_multiSelectUp(Lcom/smartisanos/smengine/AnimationTimeLine;)V

    return-void
.end method

.method static synthetic access$800(Lcom/smartisanos/launcher/view/MultiSelectNode;Ljava/util/List;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->handleCollideWithTrash(Ljava/util/List;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectSpreadOutAnimation:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    return-object v0
.end method

.method static synthetic access$902(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;)Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;
    .param p1, "x1"    # Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectSpreadOutAnimation:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    return-object p1
.end method

.method private coverShow()V
    .locals 3

    .prologue
    .line 312
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v1, :cond_4

    .line 314
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    if-eq v1, v2, :cond_1

    .line 315
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v1, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->hideCover()V

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Page;->canDropAllCell(I)Z

    move-result v0

    .line 321
    .local v0, "result":Z
    if-eqz v0, :cond_3

    .line 322
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->showCanDropCover()V

    .line 332
    .end local v0    # "result":Z
    :goto_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/smartisanos/launcher/view/DockView;->isCollidedWith(Lcom/smartisanos/smengine/SceneNode;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCollideWithDock:Z

    .line 333
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCollideWithDock:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 334
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->hideCover()V

    .line 335
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    .line 338
    :cond_2
    return-void

    .line 324
    .restart local v0    # "result":Z
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->showPageNoSpaceText()V

    .line 325
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->showCanNotDropCover()V

    goto :goto_0

    .line 329
    .end local v0    # "result":Z
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    iput-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    goto :goto_0
.end method

.method private getAllSystemAppFromSelectedList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1336
    const/4 v2, 0x0

    .line 1337
    .local v2, "thereAreSystemApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1338
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 1339
    .local v0, "c":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v3

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Utils;->isRemovable(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1340
    if-nez v2, :cond_0

    .line 1341
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "thereAreSystemApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1343
    .restart local v2    # "thereAreSystemApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1347
    .end local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    return-object v2
.end method

.method private getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/smartisanos/smengine/NotificationManager;->getCurrentNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

    return-object v0
.end method

.method private handleCollideWithTrash(Ljava/util/List;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;)",
            "Lcom/smartisanos/smengine/AnimationTimeLine;"
        }
    .end annotation

    .prologue
    .line 1075
    .local p1, "allSystemApps":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    new-instance v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 1076
    .local v0, "myOwnTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->multiSelectedCellsBackToOriPage(Ljava/util/List;Lcom/smartisanos/smengine/AnimationTimeLine;Z)V

    .line 1077
    return-object v0
.end method

.method private handleLongPress()V
    .locals 22

    .prologue
    .line 343
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 344
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v18

    const/16 v19, 0x2

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 346
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/PageView;->doNotCreateEmptyPage()Z

    move-result v18

    if-nez v18, :cond_0

    .line 347
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/PageView;->createEmptyScreen()V

    .line 350
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/World;->getInputManager()Lcom/smartisanos/smengine/InputManager;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/smengine/InputManager;->setBatchMode(Z)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTouchedWorldPos:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v17, v0

    .line 353
    .local v17, "worldPos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/MainView;->updateStatusBarTextToLongPressText()V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellPageList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/PageView;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v13

    .line 361
    .local v13, "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual {v13}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v14

    .line 362
    .local v14, "tinv":Lcom/smartisanos/smengine/math/Transform;
    new-instance v12, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v12}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 363
    .local v12, "result":Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v12}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v12

    .line 364
    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v18, v0

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v19, v0

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/MultiSelectNode;->setTranslate(FFF)V

    .line 366
    invoke-virtual {v12}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->mInitLocation:Lcom/smartisanos/smengine/math/Vector3f;

    .line 368
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_1

    .line 369
    sget-object v18, Lcom/smartisanos/launcher/view/MultiSelectNode;->log:Lcom/smartisanos/launcher/LOG;

    const-string v19, "DEBUG"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "multiselectNode result .x = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "result.y ="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v12, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->updateGeometricState()V

    .line 372
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_2

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Cell;

    .line 374
    .local v10, "pc":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 372
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 377
    .end local v10    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Lcom/smartisanos/launcher/view/MultiSelectNode$SortByPageIndex;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/MultiSelectNode$SortByPageIndex;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    invoke-static/range {v18 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressCell:Lcom/smartisanos/launcher/view/Cell;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 384
    :cond_3
    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v6, v0, :cond_8

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Cell;

    .line 389
    .restart local v10    # "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 396
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/smartisanos/launcher/view/Cell;->setShowOuterShadow(Z)V

    .line 397
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->showOuterShadow()V

    .line 398
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 399
    if-nez v6, :cond_6

    const/4 v7, 0x0

    .line 400
    .local v7, "layerChange":I
    :goto_2
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v10, v0, v7}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(II)V

    .line 407
    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 408
    .local v11, "pg":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellPageList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellPageList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_4
    sget-boolean v18, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v18, :cond_5

    .line 414
    if-nez v6, :cond_7

    .line 415
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->generateGaussianIcon()V

    .line 417
    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1, v6}, Lcom/smartisanos/launcher/view/Cell;->setUseBackgroundUVGaussian(ZII)V

    .line 418
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/smartisanos/launcher/view/Cell;->showGaussianIconRect(Z)V

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v18, v0

    const v19, 0x3dcccccd    # 0.1f

    const v20, 0x3e4ccccd    # 0.2f

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/Cell;->getGaussianIconAnim(Lcom/smartisanos/smengine/AnimationTimeLine;FFZ)V

    .line 423
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->mNeedResetGaussianStatus:Z

    .line 384
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 399
    .end local v7    # "layerChange":I
    .end local v11    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_6
    add-int/lit8 v18, v6, 0x1

    mul-int/lit8 v7, v18, -0x8

    goto/16 :goto_2

    .line 429
    .restart local v7    # "layerChange":I
    .restart local v11    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_7
    const/16 v18, 0x1

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1, v6}, Lcom/smartisanos/launcher/view/Cell;->setUseBackgroundUVGaussian(ZII)V

    .line 430
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/smartisanos/launcher/view/Cell;->showGaussianIconRect(Z)V

    goto :goto_3

    .line 435
    .end local v7    # "layerChange":I
    .end local v10    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_8
    sget-boolean v18, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v18, :cond_9

    .line 436
    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/smartisanos/launcher/view/Cell;

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/view/Cell;->setDrawWithPostEffect(Z)V

    .line 439
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/view/MainView;->setUsePostEffect(Z)V

    .line 440
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->mNeedResetGaussianStatus:Z

    .line 445
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 448
    :cond_a
    new-instance v18, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct/range {v18 .. v18}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v18, v0

    const v19, 0x3e4ccccd    # 0.2f

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->showLongPressAppName(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->MultiSelectConcentrateAnimation(Lcom/smartisanos/smengine/AnimationTimeLine;)V

    .line 453
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v8

    .line 454
    .local v8, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    .line 457
    .local v5, "dockView":Lcom/smartisanos/launcher/view/DockView;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v9, "params":Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 463
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->coverShow()V

    .line 468
    new-instance v4, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 469
    .local v4, "dockLoc":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/DockView;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 470
    sget v18, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    int-to-float v15, v0

    .line 471
    .local v15, "trashAreaWidth":F
    sget v18, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v16, v0

    .line 472
    .local v16, "windowWidth":F
    new-instance v18, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v18 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->trashAreaVerifyLoc:Lcom/smartisanos/smengine/math/Vector3f;

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->trashAreaVerifyLoc:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v18, v0

    iget v0, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v19, v0

    sget v20, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    invoke-static/range {v20 .. v20}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 474
    sget-object v18, Lcom/smartisanos/launcher/data/Constants;->sHandHabit:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    sget-object v19, Lcom/smartisanos/launcher/data/Constants$HandHabit;->RIGHT:Lcom/smartisanos/launcher/data/Constants$HandHabit;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->trashAreaVerifyLoc:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v18, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v19, v19, v15

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 479
    :goto_4
    return-void

    .line 477
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->trashAreaVerifyLoc:Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v19, v16, v19

    sub-float v19, v19, v15

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    goto :goto_4
.end method

.method private hideCover()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPrePage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->hideAllCover()V

    .line 120
    :cond_0
    return-void
.end method

.method private hideLongPressAppName(Lcom/smartisanos/smengine/AnimationTimeLine;F)V
    .locals 12
    .param p1, "timeLine"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "duration"    # F

    .prologue
    const/4 v9, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 764
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    if-nez v0, :cond_0

    .line 797
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mHideLongPressTextRectAnim:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mHideLongPressTextRectAnim:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mHideLongPressTextRectAnim:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->kill()V

    .line 770
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mHideLongPressTextRectAnim:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .line 771
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mHideLongPressTextRectAnim:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 772
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mHideLongPressTextRectAnim:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 773
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v11

    .line 774
    .local v11, "tmpVars":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v10, v11, Lcom/smartisanos/smengine/util/TempVars;->vect41f:Lcom/smartisanos/smengine/math/Vector4f;

    .line 775
    .local v10, "color":Lcom/smartisanos/smengine/math/Vector4f;
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0, v10}, Lcom/smartisanos/smengine/RectNode;->getColor(Lcom/smartisanos/smengine/math/Vector4f;)V

    .line 776
    iget v5, v10, Lcom/smartisanos/smengine/math/Vector4f;->w:F

    .line 777
    .local v5, "currentAlpha":F
    invoke-virtual {v11}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 778
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mHideLongPressTextRectAnim:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const/4 v1, 0x3

    move v3, v2

    move v4, v2

    move v6, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 779
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mHideLongPressTextRectAnim:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    new-instance v1, Lcom/smartisanos/launcher/view/MultiSelectNode$3;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/MultiSelectNode$3;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 792
    if-nez p1, :cond_2

    .line 793
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mHideLongPressTextRectAnim:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->start()V

    goto :goto_0

    .line 795
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mHideLongPressTextRectAnim:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {p1, v9, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_0
.end method

.method private isAway()Z
    .locals 6

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 929
    .local v0, "currpos":Lcom/smartisanos/smengine/math/Vector3f;
    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mInitLocation:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float v1, v4, v5

    .line 930
    .local v1, "dx":F
    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget-object v5, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mInitLocation:Lcom/smartisanos/smengine/math/Vector3f;

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float v2, v4, v5

    .line 931
    .local v2, "dy":F
    mul-float v4, v1, v1

    mul-float v5, v2, v2

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/smartisanos/smengine/math/FastMath;->sqrt(F)F

    move-result v3

    .line 932
    .local v3, "result":F
    const/high16 v4, 0x42c80000    # 100.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isCollideWithTrash()Z
    .locals 1

    .prologue
    .line 1070
    const/4 v0, 0x0

    return v0
.end method

.method private multiSelectAllCellBackToPage(Ljava/util/List;Lcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 6
    .param p2, "listener"    # Lcom/smartisanos/smengine/Animation$AnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Lcom/smartisanos/smengine/Animation$AnimationListener;",
            ")",
            "Lcom/smartisanos/smengine/AnimationTimeLine;"
        }
    .end annotation

    .prologue
    .local p1, "allCellsNeedBackTo":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    const v5, 0x3e99999a    # 0.3f

    .line 495
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectAllCellBackToPageAnimation:Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectAllCellBackToPageAnimation:Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    iget-boolean v2, v2, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mIsPlaying:Z

    if-eqz v2, :cond_0

    .line 496
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectAllCellBackToPageAnimation:Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 499
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v2, :cond_1

    .line 500
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 503
    :cond_1
    new-instance v2, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 505
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 506
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 507
    .local v0, "c":Lcom/smartisanos/launcher/view/Cell;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2, v5, v3}, Lcom/smartisanos/launcher/view/Cell;->showMultiSelectCoverRectAnimation(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    .line 509
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setVisibilityForBatchDrawShadow(Z)V

    .line 510
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getGaussianIconRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 511
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Lcom/smartisanos/launcher/view/Cell;->getGaussianIconAnim(Lcom/smartisanos/smengine/AnimationTimeLine;FFZ)V

    .line 505
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    .end local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    new-instance v2, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v2, v3, v4, p1, p2}, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;-><init>(Lcom/smartisanos/launcher/view/PageView;Lcom/smartisanos/smengine/AnimationTimeLine;Ljava/util/List;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectAllCellBackToPageAnimation:Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    .line 516
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v2
.end method

.method private multiSelectSpreadOutAnimation()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 5

    .prologue
    .line 520
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectSpreadOutAnimation:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectSpreadOutAnimation:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    iget-boolean v0, v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->mIsPlaying:Z

    if-nez v0, :cond_1

    .line 521
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    new-instance v4, Lcom/smartisanos/launcher/view/MultiSelectNode$1;

    invoke-direct {v4, p0}, Lcom/smartisanos/launcher/view/MultiSelectNode$1;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;-><init>(Lcom/smartisanos/launcher/view/PageView;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectSpreadOutAnimation:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    .line 618
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectSpreadOutAnimation:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;->getTimeLine()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private multiSelectedCellsBackToOriPage(Ljava/util/List;Lcom/smartisanos/smengine/AnimationTimeLine;Z)V
    .locals 13
    .param p2, "allInOne"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p3, "needHandlePageMove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Lcom/smartisanos/smengine/AnimationTimeLine;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 1230
    .local p1, "needBackTo":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 1231
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 1235
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 1236
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->clearCellAnimationStatus()V

    .line 1237
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Page;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/view/Page;->setSceneNodeForceRender(Z)V

    .line 1239
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1240
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    invoke-virtual {v2, v9, v10, v11, v12}, Lcom/smartisanos/launcher/view/Cell;->showMultiSelectCoverForActiveIcon(FFFF)V

    .line 1241
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/smartisanos/launcher/view/Cell;->setShowMultiSelectCoverForActiveIcon(Z)V

    .line 1246
    :goto_1
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 1247
    sget v9, Lcom/smartisanos/launcher/view/Cell;->CELL_IN_MULTI_SELECT:I

    invoke-virtual {v2, v9}, Lcom/smartisanos/launcher/view/Cell;->setCellAnimationStatus(I)V

    .line 1249
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 1230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1243
    :cond_0
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/smartisanos/launcher/view/Cell;->setShowMultiSelectCover(Z)V

    goto :goto_1

    .line 1251
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    iget-object v10, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/view/MainView;->updateStatusBarText(I)V

    .line 1252
    new-instance v9, Lcom/smartisanos/launcher/view/MultiSelectNode$9;

    invoke-direct {v9, p0}, Lcom/smartisanos/launcher/view/MultiSelectNode$9;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    invoke-direct {p0, p1, v9}, Lcom/smartisanos/launcher/view/MultiSelectNode;->multiSelectAllCellBackToPage(Ljava/util/List;Lcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v3

    .line 1304
    .local v3, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v3, :cond_2

    .line 1305
    const/4 v9, 0x0

    invoke-virtual {p2, v9, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1309
    :cond_2
    if-eqz p3, :cond_4

    .line 1310
    const v6, 0x3e99999a    # 0.3f

    .line 1312
    .local v6, "screenScrollDuration":F
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressCell:Lcom/smartisanos/launcher/view/Cell;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1313
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/Page;

    .line 1317
    .local v7, "targetPage":Lcom/smartisanos/launcher/view/Page;
    :goto_2
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v9, v7}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v8

    .line 1318
    .local v8, "targetScreenIndex":I
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v0

    .line 1319
    .local v0, "currentScreenIndex":I
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v4

    .line 1320
    .local v4, "screenCount":I
    if-ne v0, v8, :cond_3

    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/PageView;->scrollAnimationIsRunning()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1321
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v9

    invoke-virtual {v9, v4, v0}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(II)V

    .line 1322
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v10, 0x0

    new-instance v11, Lcom/smartisanos/launcher/view/MultiSelectNode$10;

    invoke-direct {v11, p0}, Lcom/smartisanos/launcher/view/MultiSelectNode$10;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    invoke-virtual {v9, v8, v6, v10, v11}, Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v5

    .line 1328
    .local v5, "screenScroll":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v9, 0x0

    invoke-virtual {p2, v9, v5}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1333
    .end local v0    # "currentScreenIndex":I
    .end local v4    # "screenCount":I
    .end local v5    # "screenScroll":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v6    # "screenScrollDuration":F
    .end local v7    # "targetPage":Lcom/smartisanos/launcher/view/Page;
    .end local v8    # "targetScreenIndex":I
    :cond_4
    :goto_3
    return-void

    .line 1315
    .restart local v6    # "screenScrollDuration":F
    :cond_5
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/Page;

    .restart local v7    # "targetPage":Lcom/smartisanos/launcher/view/Page;
    goto :goto_2

    .line 1330
    .restart local v0    # "currentScreenIndex":I
    .restart local v4    # "screenCount":I
    .restart local v8    # "targetScreenIndex":I
    :cond_6
    iget-object v9, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyScreenNoAnimation()V

    goto :goto_3
.end method

.method private orig_multiSelectUp(Lcom/smartisanos/smengine/AnimationTimeLine;)V
    .locals 24
    .param p1, "allInOne"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 936
    const/4 v10, 0x0

    .line 937
    .local v10, "hasEmpty":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v12

    .line 938
    .local v12, "pageCellCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/smartisanos/launcher/view/WidgetPage;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 950
    :cond_0
    :goto_0
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCanDrop:Z

    .line 952
    if-eqz v10, :cond_a

    .line 954
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCanDrop:Z

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->removeAllEmptyCell()V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellPageList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 965
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_2

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/launcher/view/Cell;

    .line 969
    .local v13, "pc":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/smartisanos/launcher/view/Page;->computeInsertCellIndexUseFirstUnoccupied(Lcom/smartisanos/launcher/view/Cell;Z)Z

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 974
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Cell;->clearCellAnimationStatus()V

    .line 976
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Cell;->getPreParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v19

    check-cast v19, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 965
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 942
    .end local v11    # "i":I
    .end local v13    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellList()Ljava/util/ArrayList;

    move-result-object v7

    .line 943
    .local v7, "currentCellList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    sub-int v8, v12, v19

    .line 944
    .local v8, "currentFreeCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v8, v0, :cond_0

    .line 945
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 979
    .end local v7    # "currentCellList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v8    # "currentFreeCount":I
    .restart local v11    # "i":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/launcher/view/Page;->setCellItemInfoLockStatus(Z)V

    .line 981
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MainView;->isVerifyPassword()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 982
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/home/Launcher;->sessionUnlockAllPackage()V

    .line 987
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->autoGenerateAllEmpty()Z

    .line 989
    sget-boolean v19, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->getAllEmptyCell()Ljava/util/ArrayList;

    move-result-object v5

    .line 992
    .local v5, "allEmptyCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_4

    .line 993
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Cell;

    .line 994
    .local v6, "c":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v19

    const v20, 0x3dcccccd    # 0.1f

    const v21, 0x3dcccccd    # 0.1f

    const v22, 0x3dcccccd    # 0.1f

    const v23, 0x3dcccccd    # 0.1f

    invoke-virtual/range {v19 .. v23}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 992
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 999
    .end local v5    # "allEmptyCells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v6    # "c":Lcom/smartisanos/launcher/view/Cell;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/Page;->setShowCellIntoPageEditModeCover()V

    .line 1002
    invoke-direct/range {p0 .. p1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->selectedCellsParentPageDoFadeInFadeOut(Lcom/smartisanos/smengine/AnimationTimeLine;)V

    .line 1004
    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_6

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/launcher/view/Cell;

    .line 1006
    .restart local v13    # "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Cell;->getGaussianIconRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v19

    if-eqz v19, :cond_5

    .line 1007
    const v19, 0x3e99999a    # 0.3f

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v13, v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/Cell;->getGaussianIconAnim(Lcom/smartisanos/smengine/AnimationTimeLine;FFZ)V

    .line 1004
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1010
    .end local v13    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->multiSelectSpreadOutAnimation()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v14

    .line 1011
    .local v14, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v14, :cond_7

    .line 1012
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1016
    :cond_7
    const v17, 0x3e99999a    # 0.3f

    .line 1018
    .local v17, "screenScrollDuration":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v9

    .line 1019
    .local v9, "currentScreenIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v18

    .line 1020
    .local v18, "targetScreenIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v15

    .line 1021
    .local v15, "screenCount":I
    move/from16 v0, v18

    if-ne v9, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->scrollAnimationIsRunning()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1022
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v9}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(II)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    new-instance v21, Lcom/smartisanos/launcher/view/MultiSelectNode$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/MultiSelectNode$4;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v16

    .line 1029
    .local v16, "screenScroll":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1035
    .end local v16    # "screenScroll":Lcom/smartisanos/smengine/AnimationTimeLine;
    :goto_4
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/launcher/view/MainView;->updateStatusBarText(I)V

    .line 1042
    .end local v9    # "currentScreenIndex":I
    .end local v11    # "i":I
    .end local v14    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v15    # "screenCount":I
    .end local v17    # "screenScrollDuration":F
    .end local v18    # "targetScreenIndex":I
    :goto_5
    new-instance v19, Lcom/smartisanos/launcher/view/MultiSelectNode$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/MultiSelectNode$5;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1067
    return-void

    .line 1031
    .restart local v9    # "currentScreenIndex":I
    .restart local v11    # "i":I
    .restart local v14    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    .restart local v15    # "screenCount":I
    .restart local v17    # "screenScrollDuration":F
    .restart local v18    # "targetScreenIndex":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyScreenNoAnimation()V

    goto :goto_4

    .line 1039
    .end local v9    # "currentScreenIndex":I
    .end local v11    # "i":I
    .end local v14    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v15    # "screenCount":I
    .end local v17    # "screenScrollDuration":F
    .end local v18    # "targetScreenIndex":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/MultiSelectNode;->multiSelectedCellsBackToOriPage(Ljava/util/List;Lcom/smartisanos/smengine/AnimationTimeLine;Z)V

    goto :goto_5
.end method

.method private selectedCellsParentPageDoFadeInFadeOut(Lcom/smartisanos/smengine/AnimationTimeLine;)V
    .locals 9
    .param p1, "allInOne"    # Lcom/smartisanos/smengine/AnimationTimeLine;

    .prologue
    .line 1203
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellPageList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 1205
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellPageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    .line 1206
    .local v5, "pg":Lcom/smartisanos/launcher/view/Page;
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/smartisanos/launcher/view/Page;->createEmptyCellAtUnoccupied(Z)V

    .line 1208
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellList()Ljava/util/ArrayList;

    move-result-object v4

    .line 1209
    .local v4, "nonemptylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 1210
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 1211
    .local v0, "c":Lcom/smartisanos/launcher/view/Cell;
    sget v8, Lcom/smartisanos/launcher/view/Cell;->CELL_IN_MULTI_SELECT:I

    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/view/Cell;->getCellHasAnimationStatus(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1212
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->clearCellSelected()I

    .line 1209
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1215
    .end local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getAllEmptyCell()Ljava/util/ArrayList;

    move-result-object v1

    .line 1216
    .local v1, "emptylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1219
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1221
    invoke-direct {p0, v6}, Lcom/smartisanos/launcher/view/MultiSelectNode;->MultiSelectFadeinFadeoutAnimation(Ljava/util/ArrayList;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v7

    .line 1222
    .local v7, "resultTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v7, :cond_2

    .line 1223
    const/4 v8, 0x0

    invoke-virtual {p1, v8, v7}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1203
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1227
    .end local v1    # "emptylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v3    # "j":I
    .end local v4    # "nonemptylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v5    # "pg":Lcom/smartisanos/launcher/view/Page;
    .end local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v7    # "resultTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    :cond_3
    return-void
.end method

.method private showLongPressAppName(Lcom/smartisanos/smengine/AnimationTimeLine;F)V
    .locals 21
    .param p1, "timeLine"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "duration"    # F

    .prologue
    .line 694
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v3, :cond_0

    .line 759
    :goto_0
    return-void

    .line 697
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 698
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    sget v4, Lcom/smartisanos/launcher/ResIds$string;->has_selected_1_app_float:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/MainView;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressName:Ljava/lang/String;

    .line 702
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressName:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressName:Ljava/lang/String;

    .line 704
    const/16 v17, -0x1

    .line 705
    .local v17, "rectWidth":I
    const/16 v16, -0x1

    .line 707
    .local v16, "rectHeight":I
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressName:Ljava/lang/String;

    .line 708
    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v19

    .line 709
    .local v19, "texture":Lcom/smartisanos/smengine/Texture;
    const/4 v12, 0x0

    .line 710
    .local v12, "bt":Landroid/graphics/Bitmap;
    if-nez v19, :cond_1

    .line 711
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getContext()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/data/Utils;->getFloatTitleBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 712
    new-instance v19, Lcom/smartisanos/smengine/Texture;

    .end local v19    # "texture":Lcom/smartisanos/smengine/Texture;
    move-object/from16 v0, v19

    invoke-direct {v0, v12}, Lcom/smartisanos/smengine/Texture;-><init>(Landroid/graphics/Bitmap;)V

    .line 713
    .restart local v19    # "texture":Lcom/smartisanos/smengine/Texture;
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v20

    .line 714
    .local v20, "tm":Lcom/smartisanos/smengine/TextureManager;
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Texture;->setCanRecycle(Z)V

    .line 715
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressName:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    .line 719
    .end local v20    # "tm":Lcom/smartisanos/smengine/TextureManager;
    :cond_1
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/Texture;->getWidth()F

    move-result v3

    float-to-int v0, v3

    move/from16 v17, v0

    .line 720
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/Texture;->getHeight()F

    move-result v3

    float-to-int v0, v3

    move/from16 v16, v0

    .line 722
    const-string v3, "App_long_press_text_rect"

    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v16

    int-to-float v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRectWithoutMaterial(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    .line 723
    const-string v3, "TextureModularColorMaterial"

    invoke-static {v3}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v14

    .line 724
    .local v14, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v14}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v18

    .line 726
    .local v18, "rs":Lcom/smartisanos/smengine/RenderState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    const/16 v4, 0xfa

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 731
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 732
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 733
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 734
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 735
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 742
    :goto_2
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v13

    .line 743
    .local v13, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    const/high16 v15, 0x3f000000    # 0.5f

    .line 744
    .local v15, "para":F
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 745
    const/high16 v15, 0x3f400000    # 0.75f

    .line 749
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x0

    iget v5, v13, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float/2addr v5, v15

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/smengine/RectNode;->setTranslate(FFF)V

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/MultiSelectNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 752
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->updateGeometricState()V

    .line 754
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-direct {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 755
    .local v2, "showLongPressTextRectAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 756
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 757
    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFFFF)V

    .line 758
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto/16 :goto_0

    .line 700
    .end local v2    # "showLongPressTextRectAnim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v12    # "bt":Landroid/graphics/Bitmap;
    .end local v13    # "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v14    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .end local v15    # "para":F
    .end local v16    # "rectHeight":I
    .end local v17    # "rectWidth":I
    .end local v18    # "rs":Lcom/smartisanos/smengine/RenderState;
    .end local v19    # "texture":Lcom/smartisanos/smengine/Texture;
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    sget v4, Lcom/smartisanos/launcher/ResIds$string;->has_selected_app_float:I

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/MainView;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressName:Ljava/lang/String;

    goto/16 :goto_1

    .line 739
    .restart local v12    # "bt":Landroid/graphics/Bitmap;
    .restart local v14    # "m":Lcom/smartisanos/smengine/mymaterial/Material;
    .restart local v16    # "rectHeight":I
    .restart local v17    # "rectWidth":I
    .restart local v18    # "rs":Lcom/smartisanos/smengine/RenderState;
    .restart local v19    # "texture":Lcom/smartisanos/smengine/Texture;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    goto :goto_2

    .line 746
    .restart local v13    # "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    .restart local v15    # "para":F
    :cond_5
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 747
    :cond_6
    const v15, 0x3f266666    # 0.65f

    goto :goto_3
.end method

.method private whichSide(F)I
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 484
    const/high16 v0, 0x42480000    # 50.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 485
    const/4 v0, -0x1

    .line 491
    :goto_0
    return v0

    .line 488
    :cond_0
    sget v0, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    add-int/lit8 v0, v0, -0x32

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 489
    const/4 v0, 0x1

    goto :goto_0

    .line 491
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


.method public addCellToSelectedList(Lcom/smartisanos/launcher/view/Cell;)I
    .locals 1
    .param p1, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public endDragIcon()V
    .locals 2

    .prologue
    .line 918
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mOnDragIcon:Z

    if-nez v0, :cond_1

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mOnDragIcon:Z

    .line 922
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onUp(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0
.end method

.method public getAllSelectedCellList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurrentSelectedCellCount()I
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public handleNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V
    .locals 4
    .param p1, "notificationName"    # Ljava/lang/String;
    .param p2, "notification"    # Lcom/smartisanos/smengine/Notification;

    .prologue
    const/4 v3, 0x0

    .line 136
    const-string v1, "settingButtonStatus"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 140
    .local v0, "pc":Lcom/smartisanos/launcher/view/Cell;
    sget v2, Lcom/smartisanos/launcher/view/Cell;->CELL_IN_MULTI_SELECT:I

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->cleanCellAnimationStatus(I)V

    .line 141
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getActiveIconView()Lcom/smartisanos/launcher/view/ActiveIconView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->hideMultiSelectCoverForActiveIcon()V

    .line 143
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->hideMultiSelectCover()V

    .line 144
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setShowCellIntoPageEditModeAnimationCover(Z)V

    .line 151
    :goto_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->setDisplayUpdate()V

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Cell;->setShowCellIntoPageEditModeCover(Z)V

    .line 149
    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Cell;->setShowMultiSelectCover(Z)V

    goto :goto_1

    .line 153
    .end local v0    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 155
    :cond_2
    return-void
.end method

.method public initDragIcon()V
    .locals 1

    .prologue
    .line 837
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mOnDragIcon:Z

    if-nez v0, :cond_0

    .line 841
    :goto_0
    return-void

    .line 840
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mIconBeginPosition:Lcom/smartisanos/smengine/math/Vector3f;

    goto :goto_0
.end method

.method public multiSelectListFull()Z
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiSelectedCellListWillBeClear()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mMultiSelectSpreadOutAnimation:Lcom/smartisanos/launcher/view/MultiSelectSpreadOutAnimation;

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyScreenChange()V
    .locals 5

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->updateGeometricState()V

    .line 801
    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {p0, v3, v4}, Lcom/smartisanos/launcher/view/MultiSelectNode;->hideLongPressAppName(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 802
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 803
    .local v0, "nodeLoc":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 804
    iget v1, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 805
    .local v1, "worldX":F
    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 806
    .local v2, "worldY":F
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v2, v4}, Lcom/smartisanos/launcher/view/PageView;->getPageByTouchPointInWorldCoordinate(FFZ)Lcom/smartisanos/launcher/view/Page;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    .line 808
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v3, :cond_0

    .line 809
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->coverShow()V

    .line 813
    :goto_0
    return-void

    .line 811
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->hideCover()V

    goto :goto_0
.end method

.method public onRemove(Ljava/lang/String;)V
    .locals 0
    .param p1, "notificationName"    # Ljava/lang/String;

    .prologue
    .line 160
    return-void
.end method

.method public onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 3
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 650
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->isUserInteractionEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 689
    :cond_0
    :goto_0
    return v0

    .line 653
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getPointerId()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getPointerNum()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 654
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getType()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 656
    :sswitch_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v2, :cond_0

    .line 657
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    invoke-interface {v0, p1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onMove(Lcom/smartisanos/smengine/TouchEvent;)V

    move v0, v1

    .line 658
    goto :goto_0

    .line 663
    :sswitch_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v2, :cond_0

    .line 664
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    invoke-interface {v0, p1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onMove(Lcom/smartisanos/smengine/TouchEvent;)V

    move v0, v1

    .line 665
    goto :goto_0

    .line 670
    :sswitch_2
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->handleLongPress()V

    goto :goto_0

    .line 674
    :sswitch_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSingleTapListener:Lcom/smartisanos/smengine/SceneNode$SingleTapListener;

    if-eqz v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSingleTapListener:Lcom/smartisanos/smengine/SceneNode$SingleTapListener;

    invoke-interface {v1, p1}, Lcom/smartisanos/smengine/SceneNode$SingleTapListener;->onClick(Lcom/smartisanos/smengine/TouchEvent;)V

    goto :goto_0

    .line 681
    :sswitch_4
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    if-eqz v2, :cond_0

    .line 682
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTouchListener:Lcom/smartisanos/smengine/SceneNode$TouchListener;

    invoke-interface {v0, p1}, Lcom/smartisanos/smengine/SceneNode$TouchListener;->onUp(Lcom/smartisanos/smengine/TouchEvent;)V

    move v0, v1

    .line 683
    goto :goto_0

    .line 654
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0xc -> :sswitch_4
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public removeCellFromSelectedList(Lcom/smartisanos/launcher/view/Cell;)I
    .locals 1
    .param p1, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public setLongPressCell(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressCell:Lcom/smartisanos/launcher/view/Cell;

    .line 124
    return-void
.end method

.method public setPageView(Lcom/smartisanos/launcher/view/PageView;)V
    .locals 0
    .param p1, "pv"    # Lcom/smartisanos/launcher/view/PageView;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    .line 89
    return-void
.end method

.method public startDragIcon(Lcom/smartisanos/launcher/view/Cell;)Z
    .locals 2
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    const/4 v1, 0x1

    .line 822
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mOnDragIcon:Z

    .line 823
    new-instance v0, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v0}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTouchedWorldPos:Lcom/smartisanos/smengine/math/Vector3f;

    .line 824
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mTouchedWorldPos:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 825
    sget v0, Lcom/smartisanos/launcher/view/Cell;->CELL_IN_MULTI_SELECT:I

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/Cell;->getCellHasAnimationStatus(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressCell:Lcom/smartisanos/launcher/view/Cell;

    .line 830
    :goto_0
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->removeDownRect()V

    .line 831
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    .line 832
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->handleLongPress()V

    .line 833
    return v1

    .line 828
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mLongPressCell:Lcom/smartisanos/launcher/view/Cell;

    goto :goto_0
.end method

.method public uninstallCancelSendSomeCellsReturnToItOwnPage(Ljava/util/List;Lcom/smartisanos/smengine/AnimationTimeLine;)V
    .locals 3
    .param p2, "timeLine"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/view/Cell;",
            ">;",
            "Lcom/smartisanos/smengine/AnimationTimeLine;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1176
    .local p1, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1177
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "### multiSelectUninstall cancel, but para cells is null, or size = 0"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1179
    :cond_1
    new-instance v0, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 1180
    .local v0, "backAnim":Lcom/smartisanos/smengine/AnimationTimeLine;
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->multiSelectedCellsBackToOriPage(Ljava/util/List;Lcom/smartisanos/smengine/AnimationTimeLine;Z)V

    .line 1181
    new-instance v1, Lcom/smartisanos/launcher/view/MultiSelectNode$8;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/MultiSelectNode$8;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1199
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1200
    return-void
.end method

.method public uninstallOKAllPageDoFinish()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 17

    .prologue
    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mAllInOne:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v2, :cond_0

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mAllInOne:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 1084
    :cond_0
    new-instance v2, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mAllInOne:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mAllInOne:Lcom/smartisanos/smengine/AnimationTimeLine;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->selectedCellsParentPageDoFadeInFadeOut(Lcom/smartisanos/smengine/AnimationTimeLine;)V

    .line 1090
    new-instance v1, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1091
    .local v1, "nodeFallDown":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 1092
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    .line 1094
    .local v10, "from":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v16, Lcom/smartisanos/smengine/math/Vector3f;

    iget v2, v10, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v10, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/high16 v4, 0x43c80000    # 400.0f

    sub-float/2addr v3, v4

    iget v4, v10, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3, v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1095
    .local v16, "to":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v2, 0x0

    iget v3, v10, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v4, v10, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v5, v10, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move-object/from16 v0, v16

    iget v6, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move-object/from16 v0, v16

    iget v7, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move-object/from16 v0, v16

    iget v8, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual/range {v1 .. v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mAllInOne:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1100
    const v14, 0x3e99999a    # 0.3f

    .line 1102
    .local v14, "screenScrollDuration":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v9

    .line 1103
    .local v9, "currentScreenIndex":I
    move v15, v9

    .line 1104
    .local v15, "targetScreenIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v12

    .line 1105
    .local v12, "screenCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->scrollAnimationIsRunning()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2, v9}, Lcom/smartisanos/launcher/view/PageView;->isScreenEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1107
    :cond_1
    add-int/lit8 v15, v15, -0x1

    .line 1109
    add-int/lit8 v2, v12, -0x1

    if-ne v9, v2, :cond_2

    .line 1111
    add-int/lit8 v11, v12, -0x1

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_2

    .line 1112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2, v11}, Lcom/smartisanos/launcher/view/PageView;->isScreenEmpty(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1113
    move v15, v11

    .line 1119
    .end local v11    # "i":I
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    invoke-virtual {v2, v12, v9}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(II)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v3, 0x0

    new-instance v4, Lcom/smartisanos/launcher/view/MultiSelectNode$6;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/smartisanos/launcher/view/MultiSelectNode$6;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    invoke-virtual {v2, v15, v14, v3, v4}, Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v13

    .line 1126
    .local v13, "screenScroll":Lcom/smartisanos/smengine/AnimationTimeLine;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mAllInOne:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v13}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 1132
    .end local v13    # "screenScroll":Lcom/smartisanos/smengine/AnimationTimeLine;
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/MainView;->updateStatusBarText(I)V

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mAllInOne:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v3, Lcom/smartisanos/launcher/view/MultiSelectNode$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/smartisanos/launcher/view/MultiSelectNode$7;-><init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mAllInOne:Lcom/smartisanos/smengine/AnimationTimeLine;

    return-object v2

    .line 1111
    .restart local v11    # "i":I
    :cond_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 1128
    .end local v11    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyScreenNoAnimation()V

    goto :goto_1
.end method

.method public updateDragIcon(FFFF)V
    .locals 11
    .param p1, "changeX"    # F
    .param p2, "changeY"    # F
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 844
    iget-boolean v8, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mOnDragIcon:Z

    if-nez v8, :cond_0

    .line 915
    :goto_0
    return-void

    .line 847
    :cond_0
    iget v8, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mNeedMoveX:F

    add-float/2addr v8, p1

    iput v8, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mNeedMoveX:F

    .line 848
    iget v8, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mNeedMoveY:F

    sub-float/2addr v8, p2

    iput v8, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mNeedMoveY:F

    .line 849
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 850
    .local v2, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 851
    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v0

    .line 852
    .local v0, "curY":F
    sub-float v8, v0, p2

    sget v9, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 853
    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float p2, v0, v8

    .line 858
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/smengine/SceneNode;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v4

    .line 859
    .local v4, "scale":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v5

    .line 860
    .local v5, "v":Lcom/smartisanos/smengine/math/Vector3f;
    iget v8, v5, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v9, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float v9, p1, v9

    add-float/2addr v8, v9

    iget v9, v5, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v10, v4, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    div-float v10, p2, v10

    sub-float/2addr v9, v10

    iget v10, v5, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {p0, v8, v9, v10}, Lcom/smartisanos/launcher/view/MultiSelectNode;->setTranslate(FFF)V

    .line 861
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->updateGeometricState()V

    .line 863
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->isAway()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 864
    const/4 v8, 0x0

    const v9, 0x3dcccccd    # 0.1f

    invoke-direct {p0, v8, v9}, Lcom/smartisanos/launcher/view/MultiSelectNode;->hideLongPressAppName(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 867
    :cond_2
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 868
    .local v1, "nodeLoc":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 870
    iget v6, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 871
    .local v6, "worldX":F
    iget v7, v1, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 872
    .local v7, "worldY":F
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v7, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageByTouchPointInWorldCoordinate(FFZ)Lcom/smartisanos/launcher/view/Page;

    move-result-object v8

    iput-object v8, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    .line 873
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mCurrentPage:Lcom/smartisanos/launcher/view/Page;

    if-eqz v8, :cond_4

    .line 874
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->coverShow()V

    .line 879
    :goto_2
    invoke-direct {p0, p3}, Lcom/smartisanos/launcher/view/MultiSelectNode;->whichSide(F)I

    move-result v3

    .line 880
    .local v3, "result":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v8, v3}, Lcom/smartisanos/launcher/view/PageView;->changeScreen(I)V

    goto :goto_0

    .line 854
    .end local v1    # "nodeLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v3    # "result":I
    .end local v4    # "scale":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v5    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v6    # "worldX":F
    .end local v7    # "worldY":F
    :cond_3
    sub-float v8, v0, p2

    sget v9, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 855
    sget v8, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float p2, v0, v8

    goto :goto_1

    .line 876
    .restart local v1    # "nodeLoc":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v4    # "scale":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v5    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    .restart local v6    # "worldX":F
    .restart local v7    # "worldY":F
    :cond_4
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->hideCover()V

    goto :goto_2
.end method
