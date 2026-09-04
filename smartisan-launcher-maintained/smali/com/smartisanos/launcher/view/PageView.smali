.class public Lcom/smartisanos/launcher/view/PageView;
.super Lcom/smartisanos/smengine/SceneNode;
.source "PageView.java"

.implements Lcom/smartisanos/smengine/NotificationManager$Observer;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;
    }
.end annotation


.field public static final PAGE_SLIDE_DURATION:F = 0.5f

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field public static final mPageScale:F = 0.99f

.field protected static overPageLimitToast:Landroid/widget/Toast;


.field protected SCROLL_PARA_TABLE:[F

.field protected displayPageInSingleMode:Lcom/smartisanos/launcher/view/Page;

.field protected mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

.field protected mConfirmPasswordPage:Lcom/smartisanos/launcher/view/Page;

.field protected mCurTranX:F

.field protected mCurrentPageCell:Lcom/smartisanos/launcher/view/Cell;

.field public mFirstPageAllCellWorldPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field protected mInvisiblePageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation
.end field

.field public mIsInFloatPageMode:Z

.field public mIsInMultiSelectMode:Z

.field public mIsInPageSwitchMode:Z

.field protected mIsPageSinked:Z

.field protected mMaxTranX:F

.field protected mMinTranX:F

.field public mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

.field protected mMySlideAnimationLisenter:Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;

.field protected mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

.field protected mPageGroupNum:I

.field protected mPageGroupSpanX:F

.field protected mPageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation
.end field

.field protected mPageParentForScale:Lcom/smartisanos/smengine/SceneNode;

.field protected mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

.field protected mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

.field protected mPageViewAnimation:Lcom/smartisanos/launcher/animations/PageViewAnimation;

.field public mPageWorldLocation:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/smengine/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field protected mScrollAnimationProgressForGetScreenIndex:F

.field protected mScrollX:F

.field protected mSettingEnableShowAppName:Z

.field protected mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

.field protected mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

.field public mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

.field protected mWaitingToLockPage:Lcom/smartisanos/launcher/view/Page;

.field protected pageObjectNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/smartisanos/launcher/view/PageView;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    .line 513
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/view/PageView;->overPageLimitToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1450
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->pageObjectNameList:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageWorldLocation:Ljava/util/ArrayList;

    .line 60
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/PageView;->mIsPageSinked:Z

    .line 62
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/PageView;->mIsInMultiSelectMode:Z

    .line 63
    new-instance v0, Lcom/smartisanos/launcher/view/MultiSelectNode;

    const-string v1, "multi_select_node"

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/MultiSelectNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    .line 64
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/PageView;->mIsInPageSwitchMode:Z

    .line 65
    new-instance v0, Lcom/smartisanos/launcher/view/SwitchPageNode;

    const-string v1, "switch_page_node"

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/SwitchPageNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    .line 66
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/PageView;->mIsInFloatPageMode:Z

    .line 70
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/smartisanos/launcher/view/PageView;->mScrollAnimationProgressForGetScreenIndex:F

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mFirstPageAllCellWorldPos:Ljava/util/ArrayList;

    .line 151
    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/PageView;->mSettingEnableShowAppName:Z

    .line 1338
    new-instance v0, Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;-><init>(Lcom/smartisanos/launcher/view/PageView;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mMySlideAnimationLisenter:Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;

    .line 1451
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "PageView create !!!"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/view/AnimationController;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/view/AnimationController;-><init>(Lcom/smartisanos/launcher/view/PageView;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    .line 1455
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-virtual {p0, p0, v0}, Lcom/smartisanos/launcher/view/PageView;->setObserver(Lcom/smartisanos/launcher/view/PageView;Lcom/smartisanos/launcher/view/AnimationController;)V

    .line 1457
    invoke-static {}, Lcom/smartisanos/smengine/NotificationManager;->getCurrentNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "CoverPageClicked"

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/NotificationManager;->addObserver(Ljava/lang/String;Lcom/smartisanos/smengine/NotificationManager$Observer;)V

    .line 1460
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1461
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->updateGeometricState()V

    .line 1462
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->setPageView(Lcom/smartisanos/launcher/view/PageView;)V

    .line 1465
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1466
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->updateGeometricState()V

    .line 1467
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->setPageView(Lcom/smartisanos/launcher/view/PageView;)V

    .line 1469
    new-instance v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/animations/PageViewAnimation;-><init>(Lcom/smartisanos/launcher/view/PageView;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageViewAnimation:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    .line 1470
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageViewAnimation:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->initPageLocation()V

    .line 1473
    new-instance v0, Lcom/smartisanos/smengine/SceneNode;

    const-string v1, "pageParentForScale"

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForScale:Lcom/smartisanos/smengine/SceneNode;

    .line 1474
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForScale:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1475
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->updateGeometricState()V

    .line 1478
    new-instance v0, Lcom/smartisanos/launcher/view/PageParentForTranslate;

    const-string v1, "pageParentForTranslate"

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/view/PageParentForTranslate;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    .line 1479
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForScale:Lcom/smartisanos/smengine/SceneNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1480
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForScale:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->updateGeometricState()V

    .line 1481
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForScale:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setCollideAlways(Z)V

    .line 1482
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->updateGeometricState()V

    .line 1483
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->setCollideAlways(Z)V

    .line 1486
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSettingEnableShowAppName:Z

    .line 1487
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "INIT STATUS FOR PAGEVIEW ================"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constants.SHOW_APP_NAME = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "STATUS INIT DONE ========================"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :cond_3
    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method public static sIsInstanceFromPageView(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "sn"    # Ljava/lang/Object;

    .prologue
    .line 3277
    instance-of v0, p0, Lcom/smartisanos/launcher/view/PageView;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/smartisanos/launcher/view/FolderPageView;

    if-eqz v0, :cond_1

    .line 3278
    :cond_0
    const/4 v0, 0x1

    .line 3280
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


.method public _re_post_changeScreen(IF)V
    .locals 1
    .param p1, "result"    # I
    .param p2, "delayDuration"    # F

    .prologue
    .line 2959
    if-nez p1, :cond_1

    .line 2961
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/AnimationController;->cancelChangeScreen()V

    .line 2971
    :cond_0
    :goto_0
    return-void

    .line 2962
    :cond_1
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/PageView;->canChangeScreen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    .line 2963
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/AnimationController;->isReceivedChangeScreenNotify()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2966
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/view/AnimationController;->prepareToChangeScreen(IF)V

    goto :goto_0
.end method

.method public addCellToPage(Lcom/smartisanos/launcher/data/ItemInfo;)Z
    .locals 18
    .param p1, "info"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 418
    if-nez p1, :cond_0

    .line 419
    sget-object v13, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "calculate cell index error return by item info is null"

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 420
    const/4 v13, 0x0

    .line 510
    :goto_0
    return v13

    .line 422
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getPageCount()I

    move-result v4

    .line 423
    .local v4, "count":I
    if-nez v4, :cond_1

    .line 424
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "empty page list !"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 426
    :cond_1
    const/4 v7, 0x0

    .line 427
    .local v7, "isMaxPageCount":Z
    sget v13, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v13}, Lcom/smartisanos/launcher/view/MainView;->getMaxPageCount(I)I

    move-result v13

    if-lt v4, v13, :cond_2

    .line 428
    const/4 v7, 0x1

    .line 431
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/smartisanos/launcher/view/PageView;->searchAvailablePageForInstall(Z)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    .line 432
    .local v2, "availablePage":Lcom/smartisanos/launcher/view/Page;
    if-nez v2, :cond_3

    .line 433
    if-nez v7, :cond_3

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->createEmptyScreen()V

    .line 436
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/smartisanos/launcher/view/PageView;->searchAvailablePageForInstall(Z)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    .line 439
    :cond_3
    if-nez v2, :cond_4

    .line 441
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/smartisanos/launcher/view/PageView;->searchAvailablePageForInstall(Z)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    .line 443
    :cond_4
    if-nez v2, :cond_5

    .line 444
    sget-object v13, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "there is no space for install new cell !"

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->showToastNoSpaceForInstall()V

    .line 446
    const/4 v13, 0x0

    goto :goto_0

    .line 448
    :cond_5
    iget-boolean v13, v2, Lcom/smartisanos/launcher/view/Page;->readOnlyPage:Z

    if-eqz v13, :cond_6

    .line 449
    sget-object v13, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "the page is read only, nothing to do !"

    invoke-virtual {v13, v14}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->showToastNoSpaceForInstall()V

    .line 451
    const/4 v13, 0x0

    goto :goto_0

    .line 453
    :cond_6
    sget v13, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v14, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v13, v14, :cond_7

    .line 454
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 455
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->isPageContentInited()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 456
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v11

    .line 457
    .local v11, "title":Lcom/smartisanos/launcher/view/TitleView;
    if-eqz v11, :cond_a

    .line 458
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/smartisanos/launcher/view/TitleView;->setDisplayIconAndText(Z)V

    .line 459
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 460
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Lcom/smartisanos/launcher/view/TitleView;->setMode(I)V

    .line 464
    :goto_1
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->updateGeometricState()V

    .line 471
    .end local v11    # "title":Lcom/smartisanos/launcher/view/TitleView;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v13

    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/AnimationController;->allAnimationForceFinish()V

    .line 474
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getFirstEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 475
    .local v6, "emptyCell":Lcom/smartisanos/launcher/view/Cell;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/view/Cell;->setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 477
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Lcom/smartisanos/launcher/view/Cell;->updateForegroundRect(Z)V

    .line 478
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->createAppNameRect()V

    .line 479
    move-object/from16 v0, p1

    iget v8, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 480
    .local v8, "number":I
    if-lez v8, :cond_8

    .line 481
    invoke-virtual {v6, v8}, Lcom/smartisanos/launcher/view/Cell;->updateFlagMessageNumber(I)V

    .line 483
    :cond_8
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 484
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v10

    .line 485
    .local v10, "row":I
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v3

    .line 486
    .local v3, "col":I
    iget v9, v2, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    .line 488
    .local v9, "pageIndex":I
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v13

    iput v9, v13, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 489
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v13

    invoke-static {v10, v3}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v14

    iput v14, v13, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 491
    if-gez v9, :cond_b

    .line 492
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "addCellToPage illegal page index !"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 462
    .end local v3    # "col":I
    .end local v6    # "emptyCell":Lcom/smartisanos/launcher/view/Cell;
    .end local v8    # "number":I
    .end local v9    # "pageIndex":I
    .end local v10    # "row":I
    .restart local v11    # "title":Lcom/smartisanos/launcher/view/TitleView;
    :cond_9
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/smartisanos/launcher/view/TitleView;->setMode(I)V

    goto :goto_1

    .line 466
    :cond_a
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "can\'t find page title !"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 495
    .end local v11    # "title":Lcom/smartisanos/launcher/view/TitleView;
    .restart local v3    # "col":I
    .restart local v6    # "emptyCell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v8    # "number":I
    .restart local v9    # "pageIndex":I
    .restart local v10    # "row":I
    :cond_b
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v13

    iget v13, v13, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    if-gez v13, :cond_c

    .line 496
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string v14, "addCellToPage illegal cell index !"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 499
    :cond_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v5, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 501
    .local v12, "value":Landroid/content/ContentValues;
    const-string v13, "_id"

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 502
    const-string v13, "pageIndex"

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v14

    iget v14, v14, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 503
    const-string v13, "cellIndex"

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v14

    iget v14, v14, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    sget-object v13, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ITEM:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v13, v5}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V

    .line 506
    sget v13, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v14, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v13, v14, :cond_d

    .line 507
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->updateTitle()V

    .line 509
    :cond_d
    sget-boolean v13, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v13, :cond_e

    sget-object v13, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "info.id   ==> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", pageIndex ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], cellIndex ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v10, v3}, Lcom/smartisanos/launcher/view/Page;->getCellIndex(II)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_e
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method public addPage(Lcom/smartisanos/launcher/view/Page;)V
    .locals 1
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 1500
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->updateGeometricState()V

    .line 1501
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1502
    return-void
.end method

.method public addToInvisiblePageList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "plist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    if-nez p1, :cond_1

    .line 275
    :cond_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 268
    .local v0, "page":Lcom/smartisanos/launcher/view/Page;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 269
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public adjustPageCellPositionAndScale(Lcom/smartisanos/launcher/view/Page;II)V
    .locals 11
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;
    .param p2, "sourceMode"    # I
    .param p3, "targetMode"    # I

    .prologue
    .line 610
    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->pageCellSizeScale:[Lcom/smartisanos/smengine/math/Vector2f;

    aget-object v4, v8, p3

    .line 611
    .local v4, "pageCellScaleSize":Lcom/smartisanos/smengine/math/Vector2f;
    sget-object v8, Lcom/smartisanos/launcher/data/Constants;->pageCellAllCenterPoints:[[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v3, v8, p3

    .line 612
    .local v3, "pageCellPos":[Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {p3}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v2

    .line 613
    .local v2, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v6

    .line 614
    .local v6, "pcArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 615
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Cell;

    .line 616
    .local v5, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v8

    iget v9, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    mul-int/2addr v8, v9

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v9

    add-int v1, v8, v9

    .line 617
    .local v1, "index":I
    array-length v8, v3

    if-lt v1, v8, :cond_0

    .line 618
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "??? rowIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " colIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " lp.page_cell_col_num = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " currentsPageMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " targetMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " pcArray size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 619
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 621
    :cond_0
    aget-object v7, v3, v1

    .line 622
    .local v7, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget v8, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v9, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v10, v7, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 623
    iget v8, v4, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v9, v4, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8, v9, v10}, Lcom/smartisanos/launcher/view/Cell;->setScale(FFF)V

    .line 624
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 626
    .end local v1    # "index":I
    .end local v5    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v7    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    return-void
.end method

.method protected caculateScrollParameters()V
    .locals 11

    .prologue
    const/16 v10, 0x3e8

    .line 2806
    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageView;->SCROLL_PARA_TABLE:[F

    if-nez v5, :cond_0

    .line 2807
    new-array v5, v10, [F

    iput-object v5, p0, Lcom/smartisanos/launcher/view/PageView;->SCROLL_PARA_TABLE:[F

    .line 2808
    iget v5, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupSpanX:F

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v5, v6

    float-to-int v1, v5

    .line 2809
    .local v1, "deltaX":I
    const/4 v4, 0x0

    .line 2810
    .local v4, "y":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v10, :cond_0

    .line 2811
    const-wide/high16 v6, 0x4079000000000000L    # 400.0

    iget v5, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupSpanX:F

    div-float v5, v4, v5

    float-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 2812
    .local v0, "damp":F
    int-to-float v5, v1

    div-float v3, v5, v0

    .line 2813
    .local v3, "newDeltaX":F
    add-float/2addr v4, v3

    .line 2814
    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageView;->SCROLL_PARA_TABLE:[F

    aput v4, v5, v2

    .line 2810
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2817
    .end local v0    # "damp":F
    .end local v1    # "deltaX":I
    .end local v2    # "i":I
    .end local v3    # "newDeltaX":F
    .end local v4    # "y":F
    :cond_0
    return-void
.end method

.method public caculateScrollStatus()V
    .locals 4

    .prologue
    .line 2887
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getGroupNum()I

    move-result v0

    .line 2888
    .local v0, "pageNumInOnePageGroup":I
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupNum:I

    .line 2889
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getSpan()F

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupSpanX:F

    .line 2890
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v1

    iput v1, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    iput v1, p0, Lcom/smartisanos/launcher/view/PageView;->mScrollX:F

    .line 2891
    const/4 v1, 0x0

    iput v1, p0, Lcom/smartisanos/launcher/view/PageView;->mMaxTranX:F

    .line 2892
    iget v1, p0, Lcom/smartisanos/launcher/view/PageView;->mMaxTranX:F

    iget v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupSpanX:F

    iget v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupNum:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/smartisanos/launcher/view/PageView;->mMinTranX:F

    .line 2893
    return-void
.end method

.method public canChangeScreen(I)Z
    .locals 4
    .param p1, "toward"    # I

    .prologue
    const/4 v2, 0x0

    .line 1026
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v0

    .line 1027
    .local v0, "currentScreenIndex":I
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v1

    .line 1029
    .local v1, "screenCount":I
    if-nez v0, :cond_1

    if-gez p1, :cond_1

    .line 1036
    :cond_0
    :goto_0
    return v2

    .line 1033
    :cond_1
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_2

    if-gtz p1, :cond_0

    .line 1036
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public canGoNext(F)Z
    .locals 7
    .param p1, "deltax"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1341
    const/4 v1, 0x0

    .line 1342
    .local v1, "minX":F
    sget v4, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    int-to-float v0, v4

    .line 1343
    .local v0, "maxX":F
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1344
    .local v2, "translateParentPos":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1346
    iget v4, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    cmpl-float v4, p1, v6

    if-lez v4, :cond_1

    .line 1351
    :cond_0
    :goto_0
    return v3

    .line 1348
    :cond_1
    iget v4, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    neg-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    cmpg-float v4, p1, v6

    if-ltz v4, :cond_0

    .line 1351
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public changeScreen(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 2992
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/PageView;->changeScreen(IF)V

    .line 2993
    return-void
.end method

.method public changeScreen(IF)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "delayDuration"    # F

    .prologue
    .line 2975
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/AnimationController;->isReceivedChangeScreenNotify()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2977
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/AnimationController;->cancelChangeScreen()V

    .line 2989
    :cond_0
    :goto_0
    return-void

    .line 2978
    :cond_1
    if-eqz p1, :cond_0

    .line 2979
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2980
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/PageView;->canChangeScreen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    .line 2981
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/AnimationController;->isReceivedChangeScreenNotify()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2984
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/view/AnimationController;->prepareToChangeScreen(IF)V

    goto :goto_0
.end method

.method protected cleanEmptyPageForMultiPageMode(F)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 21
    .param p1, "time"    # F

    .prologue
    .line 2184
    sget v18, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v19, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 2185
    const/4 v14, 0x0

    .line 2275
    :goto_0
    return-object v14

    .line 2188
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v7

    .line 2189
    .local v7, "currentScreenIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v15

    .line 2191
    .local v15, "screenCount":I
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_1

    sget-object v18, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### screen count = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2193
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/SwitchPageNode;->isPageBackToCenterAnimationFinish()Z

    move-result v18

    if-nez v18, :cond_2

    .line 2194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/SwitchPageNode;->forceFinishBackToCenterAnimation()V

    .line 2197
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v18

    const/16 v19, 0x10

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 2198
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/FloatPageNode;->forceFinishFloatPageAnimation()V

    .line 2201
    :cond_3
    const/4 v14, 0x0

    .line 2203
    .local v14, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2205
    .local v8, "emptyScreenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    add-int/lit8 v16, v15, -0x1

    .local v16, "screenIndex":I
    :goto_1
    if-ltz v16, :cond_c

    .line 2207
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInScreen(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 2209
    .local v5, "allpagesInLastScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/16 v17, 0x1

    .line 2210
    .local v17, "screenIsEmpty":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_7

    .line 2211
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/smartisanos/launcher/view/Page;

    .line 2212
    .local v13, "p":Lcom/smartisanos/launcher/view/Page;
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_4

    sget-object v18, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "##### p index = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2213
    :cond_4
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v6

    .line 2214
    .local v6, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_5

    sget-object v18, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### cells .size = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2215
    :cond_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 2216
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_6

    sget-object v18, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v19, "#########cells.size() != getCurrentPageCellCount()"

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2217
    :cond_6
    const/16 v17, 0x0

    .line 2226
    .end local v6    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v13    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_7
    :goto_3
    if-eqz v17, :cond_c

    .line 2227
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_8

    sget-object v18, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "### empty screen index = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2228
    :cond_8
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2205
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_1

    .line 2220
    .restart local v6    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .restart local v13    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_9
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/Page;->pageCellCount()I

    move-result v18

    if-eqz v18, :cond_b

    .line 2221
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_a

    sget-object v18, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v19, "#########p.pageCellCount() != 0"

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2222
    :cond_a
    const/16 v17, 0x0

    .line 2223
    goto :goto_3

    .line 2210
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 2235
    .end local v5    # "allpagesInLastScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v6    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v12    # "i":I
    .end local v13    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v17    # "screenIsEmpty":Z
    :cond_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-nez v18, :cond_e

    .line 2236
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_d

    sget-object v18, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v19, "### all screen is not empty."

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2237
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2240
    :cond_e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2241
    .local v9, "firstEmptyScreenIndex":I
    if-ge v7, v9, :cond_10

    .line 2243
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_f

    .line 2244
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->removeScreen(I)V

    .line 2243
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 2247
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v16

    .line 2248
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v18

    mul-int v11, v16, v18

    .line 2249
    .local v11, "firstPageIndexInGroup":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v10

    .line 2250
    .local v10, "firstPageInGroup":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/smartisanos/launcher/view/PageView;->resetPagesTranslate(Lcom/smartisanos/launcher/view/Page;)V

    goto/16 :goto_0

    .line 2253
    .end local v10    # "firstPageInGroup":Lcom/smartisanos/launcher/view/Page;
    .end local v11    # "firstPageIndexInGroup":I
    .end local v12    # "i":I
    :cond_10
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v18

    const/16 v19, 0x20

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 2254
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/FloatPageNode;->resetPageNoAnimation()V

    .line 2256
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v18

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v19

    sub-int v18, v18, v19

    add-int/lit8 v19, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(II)V

    .line 2257
    add-int/lit8 v18, v9, -0x1

    const/16 v19, 0x0

    new-instance v20, Lcom/smartisanos/launcher/view/PageView$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/smartisanos/launcher/view/PageView$4;-><init>(Lcom/smartisanos/launcher/view/PageView;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, p1

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v14

    goto/16 :goto_0
.end method

.method protected cleanEmptyPageForMultiPageModeNoAnimation()V
    .locals 14

    .prologue
    .line 2120
    sget v11, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v12, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-eq v11, v12, :cond_1

    .line 2181
    :cond_0
    :goto_0
    return-void

    .line 2124
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v2

    .line 2125
    .local v2, "currentScreenIndex":I
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v8

    .line 2128
    .local v8, "screenCount":I
    iget-object v11, p0, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/SwitchPageNode;->isPageBackToCenterAnimationFinish()Z

    move-result v11

    if-nez v11, :cond_2

    .line 2129
    iget-object v11, p0, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/SwitchPageNode;->forceFinishBackToCenterAnimation()V

    .line 2132
    :cond_2
    const/4 v7, 0x0

    .line 2133
    .local v7, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2135
    .local v3, "emptyScreenList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    add-int/lit8 v9, v8, -0x1

    .local v9, "screenIndex":I
    :goto_1
    if-ltz v9, :cond_7

    .line 2137
    invoke-virtual {p0, v9}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInScreen(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 2139
    .local v0, "allpagesInLastScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v10, 0x1

    .line 2140
    .local v10, "screenIsEmpty":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_3

    .line 2141
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Page;

    .line 2142
    .local v6, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v1

    .line 2143
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v12

    if-eq v11, v12, :cond_5

    .line 2144
    const/4 v10, 0x0

    .line 2152
    .end local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v6    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    :goto_3
    if-eqz v10, :cond_7

    .line 2153
    sget-boolean v11, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v11, :cond_4

    sget-object v11, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "### empty screen index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2154
    :cond_4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2135
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 2147
    .restart local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .restart local v6    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->pageCellCount()I

    move-result v11

    if-eqz v11, :cond_6

    .line 2148
    const/4 v10, 0x0

    .line 2149
    goto :goto_3

    .line 2140
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2161
    .end local v0    # "allpagesInLastScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v5    # "i":I
    .end local v6    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v10    # "screenIsEmpty":Z
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_8

    .line 2162
    sget-boolean v11, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v11, :cond_0

    sget-object v11, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v12, "### all screen is not empty."

    invoke-virtual {v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2166
    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2167
    .local v4, "firstEmptyScreenIndex":I
    if-ge v2, v4, :cond_0

    .line 2170
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_0

    .line 2171
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/smartisanos/launcher/view/PageView;->removeScreen(I)V

    .line 2170
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method protected cleanEmptyPageForSinglePageMode(F)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 10
    .param p1, "time"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    .line 2330
    sget v7, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v8, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-eq v7, v8, :cond_0

    move-object v3, v6

    .line 2455
    :goto_0
    return-object v3

    .line 2333
    :cond_0
    const/4 v3, 0x0

    .line 2335
    .local v3, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    .line 2336
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 2337
    .local v2, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->pageCellCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 2338
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    const-string v9, "all pages are invisible, cleanEmptyPageForSingleMode do not remove this spacial page ,return"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v3, v6

    .line 2339
    goto :goto_0

    .line 2342
    .end local v2    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllEmptyScreensForRemove()Ljava/util/ArrayList;

    move-result-object v1

    .line 2343
    .local v1, "emptyScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v3, v6

    .line 2344
    goto :goto_0

    .line 2349
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v0

    .line 2351
    .local v0, "currentScreenIndex":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 2353
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyPageForSinglePageModeNoAnimation()V

    goto :goto_0

    .line 2357
    :cond_4
    if-nez v0, :cond_5

    .line 2359
    const/4 v5, 0x1

    .line 2360
    .local v5, "toPageIndex":I
    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v4

    .line 2361
    .local v4, "toPage":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6, v9}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(II)V

    .line 2362
    new-instance v6, Lcom/smartisanos/launcher/view/PageView$5;

    invoke-direct {v6, p0}, Lcom/smartisanos/launcher/view/PageView$5;-><init>(Lcom/smartisanos/launcher/view/PageView;)V

    invoke-virtual {p0, v5, p1, v9, v6}, Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v3

    .line 2377
    goto :goto_0

    .end local v4    # "toPage":Lcom/smartisanos/launcher/view/Page;
    .end local v5    # "toPageIndex":I
    :cond_5
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v0, v6, :cond_7

    .line 2379
    add-int/lit8 v5, v0, -0x1

    .line 2380
    .restart local v5    # "toPageIndex":I
    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v4

    .line 2381
    .restart local v4    # "toPage":Lcom/smartisanos/launcher/view/Page;
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_6

    sget-object v6, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#### topageindex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2383
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6, v5}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(II)V

    .line 2384
    new-instance v6, Lcom/smartisanos/launcher/view/PageView$6;

    invoke-direct {v6, p0}, Lcom/smartisanos/launcher/view/PageView$6;-><init>(Lcom/smartisanos/launcher/view/PageView;)V

    invoke-virtual {p0, v5, p1, v9, v6}, Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v3

    .line 2402
    goto/16 :goto_0

    .line 2406
    .end local v4    # "toPage":Lcom/smartisanos/launcher/view/Page;
    .end local v5    # "toPageIndex":I
    :cond_7
    add-int/lit8 v5, v0, -0x1

    .line 2407
    .restart local v5    # "toPageIndex":I
    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v4

    .line 2409
    .restart local v4    # "toPage":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6, v5}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(II)V

    .line 2410
    new-instance v6, Lcom/smartisanos/launcher/view/PageView$7;

    invoke-direct {v6, p0}, Lcom/smartisanos/launcher/view/PageView$7;-><init>(Lcom/smartisanos/launcher/view/PageView;)V

    invoke-virtual {p0, v5, p1, v9, v6}, Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v3

    goto/16 :goto_0
.end method

.method protected cleanEmptyPageForSinglePageModeNoAnimation()V
    .locals 9

    .prologue
    .line 2303
    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v7, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-eq v6, v7, :cond_1

    .line 2327
    :cond_0
    :goto_0
    return-void

    .line 2307
    :cond_1
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 2308
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 2309
    .local v3, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->pageCellCount()I

    move-result v6

    if-nez v6, :cond_2

    .line 2310
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "all pages are invisible, cleanEmptyPageForSingleMode do not remove this spacial page ,return"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2314
    .end local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllEmptyScreensForRemove()Ljava/util/ArrayList;

    move-result-object v4

    .line 2315
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2318
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->forceFinishSlideAndSinkAnimation()V

    .line 2320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 2321
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v0

    .line 2322
    .local v0, "currentScreenIndex":I
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v5

    .line 2323
    .local v5, "toPage":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v2, v6, v1

    .line 2324
    .local v2, "needRemoveScreenIndex":I
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/PageView;->removeScreen(I)V

    .line 2325
    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/PageView;->resetPagesTranslate(Lcom/smartisanos/launcher/view/Page;)V

    .line 2320
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public cleanEmptyPages(Lcom/smartisanos/launcher/view/Page;)I
    .locals 4
    .param p1, "specialPage"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 1914
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1915
    .local v2, "page_count":I
    const/4 v0, 0x0

    .line 1916
    .local v0, "list_index":I
    :cond_0
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1917
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v0, :cond_2

    .line 1934
    :cond_1
    return v0

    .line 1920
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 1921
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    if-eqz v1, :cond_0

    .line 1922
    if-eqz p1, :cond_3

    if-ne v1, p1, :cond_3

    .line 1923
    add-int/lit8 v0, v0, 0x1

    .line 1924
    goto :goto_0

    .line 1926
    :cond_3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1927
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/PageView;->removePage(Lcom/smartisanos/launcher/view/Page;)V

    .line 1928
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Page;->clear(Z)V

    goto :goto_0

    .line 1930
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public cleanEmptyScreen(F)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 3
    .param p1, "time"    # F

    .prologue
    .line 2290
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/AnimationController;->forceFinishScrollTo()V

    .line 2291
    const/4 v0, 0x0

    .line 2293
    .local v0, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v1, v2, :cond_0

    .line 2294
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyPageForSinglePageMode(F)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    .line 2299
    :goto_0
    return-object v0

    .line 2296
    :cond_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyPageForMultiPageMode(F)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    goto :goto_0
.end method

.method public cleanEmptyScreenNoAnimation()V
    .locals 2

    .prologue
    .line 2279
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v0, v1, :cond_0

    .line 2280
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyPageForSinglePageModeNoAnimation()V

    .line 2284
    :goto_0
    return-void

    .line 2282
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyPageForMultiPageModeNoAnimation()V

    goto :goto_0
.end method

.method public cleanInvisiblePageList()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 248
    return-void
.end method

.method public cleanPageViewWhenCellOnUpNoDelay()V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->resetPageFreeTextureIndexList()V

    .line 78
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/AnimationController;->resetPageViewAnimationInfo()V

    .line 80
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->updatePageTitleAndCover()V

    .line 85
    :cond_0
    return-void
.end method

.method public clonePageViewData()Lcom/smartisanos/launcher/actions/sort/SortResult;
    .locals 14

    .prologue
    .line 3251
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3252
    .local v10, "pageOrder":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3253
    .local v6, "itemDataMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v11

    .line 3254
    .local v11, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 3255
    .local v12, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v12, :cond_2

    .line 3256
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    .line 3257
    .local v8, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Page;->toPageInfo()Lcom/smartisanos/launcher/data/PageInfo;

    move-result-object v9

    .line 3258
    .local v9, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3259
    invoke-virtual {v8}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v1

    .line 3260
    .local v1, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3261
    .local v7, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 3263
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 3264
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 3265
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v5

    .line 3266
    .local v5, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v5, :cond_0

    .line 3267
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3263
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3271
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v5    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_1
    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3255
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3273
    .end local v1    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v2    # "count":I
    .end local v4    # "index":I
    .end local v7    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v8    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v9    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_2
    new-instance v13, Lcom/smartisanos/launcher/actions/sort/SortResult;

    invoke-direct {v13, v10, v6}, Lcom/smartisanos/launcher/actions/sort/SortResult;-><init>(Ljava/util/List;Ljava/util/Map;)V

    return-object v13
.end method

.method public createEmptyPage(Z)Lcom/smartisanos/launcher/view/Page;
    .locals 8
    .param p1, "isReadOnly"    # Z

    .prologue
    .line 195
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "all page is invisible, create a empty page, isReadOnly status ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageCount()I

    move-result v1

    .line 198
    .local v1, "index":I
    new-instance v3, Lcom/smartisanos/launcher/data/PageInfo;

    invoke-direct {v3}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 199
    .local v3, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    const-string v4, ""

    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/smartisanos/launcher/view/PageView;->createPage(Ljava/util/ArrayList;ILjava/lang/String;Lcom/smartisanos/launcher/data/PageInfo;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    .line 201
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    iput-boolean p1, v2, Lcom/smartisanos/launcher/view/Page;->readOnlyPage:Z

    .line 202
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "A140"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createEmptyPage set readOnlyPage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_1
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/PageView;->addPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 204
    return-object v2
.end method

.method public createEmptyPages(I)Ljava/util/List;
    .locals 13
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation

    .prologue
    const v12, 0x3f7d70a4    # 0.99f

    .line 832
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v6, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    sget v9, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v9}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v8

    .line 835
    .local v8, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getVisiblePageCount()I

    move-result v1

    .line 836
    .local v1, "currentPageCount":I
    add-int/lit8 v9, v1, -0x1

    invoke-virtual {p0, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->clone()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v7

    .line 837
    .local v7, "prePagePos":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {}, Lcom/smartisanos/launcher/view/Page;->getDefaultPageName()Ljava/lang/String;

    move-result-object v2

    .line 838
    .local v2, "defaultTitleName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageCount()I

    move-result v5

    .line 839
    .local v5, "pageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_3

    .line 840
    iget v9, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v10, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    add-float/2addr v9, v10

    iput v9, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 841
    iget v9, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v10, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    add-float/2addr v9, v10

    iput v9, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 842
    iget v9, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v10, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    add-float/2addr v9, v10

    iput v9, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 844
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 845
    .local v0, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v4, 0x0

    .line 846
    .local v4, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    iget-boolean v9, v9, Lcom/smartisanos/launcher/view/MainView;->mIsBatchMode:Z

    if-eqz v9, :cond_2

    .line 847
    new-instance v4, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "batch_page"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9, v0, v2}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 853
    .restart local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    :goto_1
    iget v9, v7, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v10, v7, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    const/4 v11, 0x0

    invoke-virtual {v4, v9, v10, v11}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 854
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v10, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v9, v10, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 855
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v4, v12, v12, v9}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 857
    :cond_0
    add-int v9, v5, v3

    iput v9, v4, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    .line 858
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/PageView;->addPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 859
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->forceUpdateGeometricState()V

    .line 860
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 861
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->setShowCellIntoPageEditModeCover()V

    .line 863
    :cond_1
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 849
    :cond_2
    new-instance v4, Lcom/smartisanos/launcher/view/PageNoRenderTarget;

    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    const-string v9, "page"

    invoke-direct {v4, v9, v0, v2}, Lcom/smartisanos/launcher/view/PageNoRenderTarget;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .restart local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    goto :goto_1

    .line 865
    .end local v0    # "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    return-object v6
.end method

.method public createEmptyScreen()V
    .locals 1

    .prologue
    .line 723
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageView;->createEmptyScreenByMode(I)Ljava/util/List;

    .line 724
    return-void
.end method

.method public createEmptyScreenByMode(I)Ljava/util/List;
    .locals 31
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    sget-boolean v27, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v27, :cond_0

    sget-object v27, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "A140"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "createEmptyScreenByMode "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {p1 .. p1}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :cond_0
    const/16 v18, 0x0

    .line 729
    .local v18, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    sget v27, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 730
    const/16 v27, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->createEmptyPages(I)Ljava/util/List;

    move-result-object v18

    .line 823
    :cond_1
    :goto_0
    return-object v18

    .line 731
    :cond_2
    sget v27, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 732
    const/16 v27, 0x2

    move/from16 v0, p1

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    const/16 v27, 0x5

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 733
    :cond_3
    const/4 v5, 0x4

    .line 735
    .local v5, "group_size":I
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getLastGroupPageInWindow()Lcom/smartisanos/launcher/view/Page;

    move-result-object v11

    .line 736
    .local v11, "lastPageInWindow":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 737
    .local v10, "lastInWindowPageIndex":I
    div-int v9, v10, v5

    .line 739
    .local v9, "lastInWindowGroupIndex":I
    const/16 v27, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->createEmptyPages(I)Ljava/util/List;

    move-result-object v18

    .line 740
    move-object/from16 v7, v18

    .line 741
    .local v7, "last4":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getPageCenterList4()[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v21

    .line 742
    .local v21, "posList":[Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v27

    div-int/lit8 v4, v27, 0x4

    .line 743
    .local v4, "current_group_index":I
    sget v27, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    move/from16 v0, v27

    int-to-float v15, v0

    .line 745
    .local v15, "pageSpanWidth":F
    sget v27, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v27

    move-object/from16 v0, v27

    iget v13, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 746
    .local v13, "ori_page_width":F
    sget v27, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v27

    move-object/from16 v0, v27

    iget v12, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 748
    .local v12, "ori_page_height":F
    sget v27, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v17, v0

    .line 749
    .local v17, "page_width":F
    sget v27, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move/from16 v16, v0

    .line 751
    .local v16, "page_height":F
    div-float v23, v17, v13

    .line 752
    .local v23, "scalex":F
    div-float v24, v16, v12

    .line 754
    .local v24, "scaley":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ge v6, v0, :cond_5

    .line 755
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/view/Page;

    .line 756
    .local v14, "page":Lcom/smartisanos/launcher/view/Page;
    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v20 .. v20}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 757
    .local v20, "posInParent":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v25

    .line 758
    .local v25, "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v26

    .line 759
    .local v26, "tinv":Lcom/smartisanos/smengine/math/Transform;
    aget-object v27, v21, v6

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 762
    new-instance v19, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v27, v0

    sub-int v28, v4, v9

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v15

    add-float v27, v27, v28

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v28, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v29, v0

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 765
    .local v19, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    sub-int v22, v4, v9

    .line 766
    .local v22, "result":I
    sget-boolean v27, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v27, :cond_4

    sget-object v27, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "DEBUG"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[4]current_group_index - lastInWindowGroupIndex = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    :cond_4
    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v27, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v14, v0, v1, v2}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 771
    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v27

    invoke-virtual {v14, v0, v1, v2}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 772
    const/16 v27, 0x0

    sget v28, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v14, v1, v2}, Lcom/smartisanos/launcher/view/PageView;->adjustPageCellPositionAndScale(Lcom/smartisanos/launcher/view/Page;II)V

    .line 754
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 775
    .end local v14    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v19    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v20    # "posInParent":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v22    # "result":I
    .end local v25    # "t":Lcom/smartisanos/smengine/math/Transform;
    .end local v26    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->updateGeometricState()V

    goto/16 :goto_0

    .line 778
    .end local v4    # "current_group_index":I
    .end local v5    # "group_size":I
    .end local v6    # "i":I
    .end local v7    # "last4":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v9    # "lastInWindowGroupIndex":I
    .end local v10    # "lastInWindowPageIndex":I
    .end local v11    # "lastPageInWindow":Lcom/smartisanos/launcher/view/Page;
    .end local v12    # "ori_page_height":F
    .end local v13    # "ori_page_width":F
    .end local v15    # "pageSpanWidth":F
    .end local v16    # "page_height":F
    .end local v17    # "page_width":F
    .end local v21    # "posList":[Lcom/smartisanos/smengine/math/Vector3f;
    .end local v23    # "scalex":F
    .end local v24    # "scaley":F
    :cond_6
    const/16 v27, 0x3

    move/from16 v0, p1

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 779
    const/16 v5, 0x9

    .line 781
    .restart local v5    # "group_size":I
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getLastGroupPageInWindow()Lcom/smartisanos/launcher/view/Page;

    move-result-object v11

    .line 782
    .restart local v11    # "lastPageInWindow":Lcom/smartisanos/launcher/view/Page;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 783
    .restart local v10    # "lastInWindowPageIndex":I
    div-int v9, v10, v5

    .line 785
    .restart local v9    # "lastInWindowGroupIndex":I
    const/16 v27, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->createEmptyPages(I)Ljava/util/List;

    move-result-object v18

    .line 786
    move-object/from16 v8, v18

    .line 787
    .local v8, "last9":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getPageCenterList9()[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v21

    .line 788
    .restart local v21    # "posList":[Lcom/smartisanos/smengine/math/Vector3f;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v27

    div-int/lit8 v4, v27, 0x9

    .line 789
    .restart local v4    # "current_group_index":I
    sget v27, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    move/from16 v0, v27

    int-to-float v15, v0

    .line 791
    .restart local v15    # "pageSpanWidth":F
    sget v27, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v27

    move-object/from16 v0, v27

    iget v13, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 792
    .restart local v13    # "ori_page_width":F
    sget v27, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v27

    move-object/from16 v0, v27

    iget v12, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 794
    .restart local v12    # "ori_page_height":F
    sget v27, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    move/from16 v17, v0

    .line 795
    .restart local v17    # "page_width":F
    sget v27, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static/range {v27 .. v27}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    move/from16 v16, v0

    .line 797
    .restart local v16    # "page_height":F
    div-float v23, v17, v13

    .line 798
    .restart local v23    # "scalex":F
    div-float v24, v16, v12

    .line 800
    .restart local v24    # "scaley":F
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    const/16 v27, 0x9

    move/from16 v0, v27

    if-ge v6, v0, :cond_8

    .line 801
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/view/Page;

    .line 802
    .restart local v14    # "page":Lcom/smartisanos/launcher/view/Page;
    new-instance v20, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v20 .. v20}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 803
    .restart local v20    # "posInParent":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/smartisanos/smengine/SceneNode;->getWorldTransform()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v25

    .line 804
    .restart local v25    # "t":Lcom/smartisanos/smengine/math/Transform;
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/smengine/math/Transform;->inverse()Lcom/smartisanos/smengine/math/Transform;

    move-result-object v26

    .line 805
    .restart local v26    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    aget-object v27, v21, v6

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/smengine/math/Transform;->transformVector(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 808
    new-instance v19, Lcom/smartisanos/smengine/math/Vector3f;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v27, v0

    sub-int v28, v4, v9

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v15

    add-float v27, v27, v28

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v28, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move/from16 v29, v0

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 811
    .restart local v19    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    sub-int v22, v4, v9

    .line 812
    .restart local v22    # "result":I
    sget-boolean v27, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v27, :cond_7

    sget-object v27, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v28, "DEBUG"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "[9]current_group_index - lastInWindowGroupIndex = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_7
    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v27, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    move/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v14, v0, v1, v2}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 817
    const/high16 v27, 0x3f800000    # 1.0f

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v27

    invoke-virtual {v14, v0, v1, v2}, Lcom/smartisanos/launcher/view/Page;->setScale(FFF)V

    .line 818
    const/16 v27, 0x0

    sget v28, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v14, v1, v2}, Lcom/smartisanos/launcher/view/PageView;->adjustPageCellPositionAndScale(Lcom/smartisanos/launcher/view/Page;II)V

    .line 800
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 820
    .end local v14    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v19    # "pos":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v20    # "posInParent":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v22    # "result":I
    .end local v25    # "t":Lcom/smartisanos/smengine/math/Transform;
    .end local v26    # "tinv":Lcom/smartisanos/smengine/math/Transform;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->updateGeometricState()V

    goto/16 :goto_0
.end method

.method public createPage(ILjava/lang/String;Lcom/smartisanos/launcher/data/PageInfo;)Lcom/smartisanos/launcher/view/Page;
    .locals 8
    .param p1, "pageIndex"    # I
    .param p2, "titleName"    # Ljava/lang/String;
    .param p3, "pageInfo"    # Lcom/smartisanos/launcher/data/PageInfo;

    .prologue
    .line 229
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPage by page index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 230
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/LauncherModel;->getAppInfos(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 231
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v4, 0x1

    .line 232
    .local v4, "verify":Z
    if-eqz v4, :cond_1

    .line 233
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 234
    sget v5, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v2

    .line 235
    .local v2, "max":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v2, :cond_1

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createPage error, page index ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], max cell count ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], cell list size ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "error":Ljava/lang/String;
    sget-object v5, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    invoke-virtual {v5, v6, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "max":I
    :cond_1
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/smartisanos/launcher/view/PageView;->createPage(Ljava/util/ArrayList;ILjava/lang/String;Lcom/smartisanos/launcher/data/PageInfo;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v3

    .line 243
    .local v3, "page":Lcom/smartisanos/launcher/view/Page;
    return-object v3
.end method

.method public createPage(Ljava/util/ArrayList;ILjava/lang/String;Lcom/smartisanos/launcher/data/PageInfo;)Lcom/smartisanos/launcher/view/Page;
    .locals 4
    .param p2, "pageIndex"    # I
    .param p3, "titleName"    # Ljava/lang/String;
    .param p4, "pageInfo"    # Lcom/smartisanos/launcher/data/PageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ")",
            "Lcom/smartisanos/launcher/view/Page;"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-nez p1, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 225
    :goto_0
    return-object v1

    .line 213
    :cond_0
    const/4 v1, 0x0

    .line 214
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    iget-boolean v0, v2, Lcom/smartisanos/launcher/view/MainView;->mIsBatchMode:Z

    .line 215
    .local v0, "mIsBatchMode":Z
    iget v2, p4, Lcom/smartisanos/launcher/data/PageInfo;->pageType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 216
    new-instance v1, Lcom/smartisanos/launcher/view/WidgetPage;

    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p3}, Lcom/smartisanos/launcher/view/WidgetPage;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 223
    .restart local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    :goto_1
    iput p2, v1, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    goto :goto_0

    .line 217
    :cond_1
    if-eqz v0, :cond_2

    .line 218
    new-instance v1, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1, p3}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .restart local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    goto :goto_1

    .line 220
    :cond_2
    new-instance v1, Lcom/smartisanos/launcher/view/PageNoRenderTarget;

    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    const-string v2, "page"

    invoke-direct {v1, v2, p1, p3}, Lcom/smartisanos/launcher/view/PageNoRenderTarget;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .restart local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    goto :goto_1
.end method

.method public createPageNameMap(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "pageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->pageObjectNameList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 257
    if-nez p1, :cond_0

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->pageObjectNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public createPageObjectNameList()V
    .locals 7

    .prologue
    .line 155
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 165
    :cond_0
    return-void

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->pageObjectNameList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 159
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 160
    .local v2, "pageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 161
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 162
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->pageObjectNameList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createPageObjectNameList index ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], pageName ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleForDB()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], name ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public createZFromScale(FFFF)F
    .locals 5
    .param p1, "src"    # F
    .param p2, "srcZ"    # F
    .param p3, "cameraZ"    # F
    .param p4, "scale"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1436
    mul-float v0, p1, p4

    .line 1437
    .local v0, "dst":F
    cmpl-float v3, p4, v4

    if-nez v3, :cond_0

    .line 1445
    .end local p2    # "srcZ":F
    :goto_0
    return p2

    .line 1440
    .restart local p2    # "srcZ":F
    :cond_0
    sub-float v2, p3, p2

    .line 1441
    .local v2, "z":F
    cmpg-float v3, p4, v4

    if-gez v3, :cond_1

    .line 1442
    mul-float v3, v2, p1

    div-float/2addr v3, v0

    sub-float p2, p3, v3

    goto :goto_0

    .line 1444
    :cond_1
    mul-float v3, v2, p1

    div-float v1, v3, v0

    .line 1445
    .local v1, "k":F
    add-float v3, p2, p3

    sub-float p2, v3, v1

    goto :goto_0
.end method

.method public disableAllPageForceRender()V
    .locals 3

    .prologue
    .line 885
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 886
    .local v0, "pg":Lcom/smartisanos/launcher/view/Page;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Page;->setSceneNodeForceRender(Z)V

    goto :goto_0

    .line 888
    .end local v0    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z
    .locals 1
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 1868
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->isUserInteractionEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1869
    const/4 v0, 0x0

    .line 1879
    :goto_0
    return v0

    .line 1872
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/PageView;->mIsInMultiSelectMode:Z

    if-eqz v0, :cond_1

    .line 1874
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    move-result v0

    goto :goto_0

    .line 1875
    :cond_1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/PageView;->mIsInPageSwitchMode:Z

    if-eqz v0, :cond_2

    .line 1877
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/SwitchPageNode;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    move-result v0

    goto :goto_0

    .line 1879
    :cond_2
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/PageView;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public doNotCreateEmptyPage()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2023
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageCount()I

    move-result v9

    sget v10, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v10}, Lcom/smartisanos/launcher/view/MainView;->getMaxPageCount(I)I

    move-result v10

    if-lt v9, v10, :cond_1

    .line 2024
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "max page count reached, long press do not create a new page ,return"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    :cond_0
    :goto_0
    return v7

    .line 2028
    :cond_1
    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v7, :cond_2

    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v10, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v9, v10, :cond_2

    .line 2029
    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 2030
    .local v3, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->pageCellCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 2031
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "DEBUG"

    const-string v10, "all pages are invisible, long press do not create a new page ,return"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2036
    .end local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v10, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v9, v10, :cond_4

    .line 2038
    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 2039
    .local v2, "lastPage":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2040
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v7, :cond_3

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v9

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_0

    .line 2043
    :cond_3
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2050
    .end local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v2    # "lastPage":Lcom/smartisanos/launcher/view/Page;
    :cond_4
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v10, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v9, v10, :cond_6

    .line 2052
    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 2053
    .restart local v2    # "lastPage":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .end local v2    # "lastPage":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    move v7, v8

    .line 2072
    goto :goto_0

    .line 2058
    :cond_6
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v0

    .line 2059
    .local v0, "allPageInWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 2060
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    .line 2062
    .local v5, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {p0, v5}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v6

    .line 2064
    .local v6, "pgIndex":I
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getAllNonEmptyCellList()Ljava/util/ArrayList;

    move-result-object v4

    .line 2066
    .local v4, "pcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v7, :cond_5

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ne v6, v9, :cond_5

    goto/16 :goto_0
.end method

.method public endScroll(ZFFLcom/smartisanos/smengine/Animation$AnimationListener;)F
    .locals 7
    .param p1, "actionCancel"    # Z
    .param p2, "vx"    # F
    .param p3, "scrollTime"    # F
    .param p4, "al"    # Lcom/smartisanos/smengine/Animation$AnimationListener;

    .prologue
    .line 2826
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->caculateScrollStatus()V

    .line 2828
    const/4 v1, 0x0

    .line 2829
    .local v1, "left":Z
    const/4 v4, 0x0

    .line 2830
    .local v4, "right":Z
    if-nez p1, :cond_0

    .line 2831
    const/high16 v5, 0x44960000    # 1200.0f

    cmpl-float v5, p2, v5

    if-lez v5, :cond_2

    .line 2832
    const/4 v4, 0x1

    .line 2838
    :cond_0
    :goto_0
    iget v5, p0, Lcom/smartisanos/launcher/view/PageView;->mMaxTranX:F

    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupSpanX:F

    div-float v2, v5, v6

    .line 2844
    .local v2, "moveProcess":F
    if-eqz v1, :cond_3

    .line 2845
    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v5, v2

    float-to-int v3, v5

    .line 2851
    .local v3, "needMoveToPage":I
    :goto_1
    if-gez v3, :cond_5

    .line 2852
    const/4 v3, 0x0

    .line 2856
    :cond_1
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {p0, v3, p3, v5, p4}, Lcom/smartisanos/launcher/view/PageView;->scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    .line 2857
    .local v0, "atl":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 2858
    int-to-float v5, v3

    return v5

    .line 2833
    .end local v0    # "atl":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v2    # "moveProcess":F
    .end local v3    # "needMoveToPage":I
    :cond_2
    const/high16 v5, -0x3b6a0000    # -1200.0f

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    .line 2834
    const/4 v1, 0x1

    goto :goto_0

    .line 2846
    .restart local v2    # "moveProcess":F
    :cond_3
    if-eqz v4, :cond_4

    .line 2847
    float-to-int v3, v2

    .restart local v3    # "needMoveToPage":I
    goto :goto_1

    .line 2849
    .end local v3    # "needMoveToPage":I
    :cond_4
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    .restart local v3    # "needMoveToPage":I
    goto :goto_1

    .line 2853
    :cond_5
    iget v5, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupNum:I

    add-int/lit8 v5, v5, -0x1

    if-le v3, v5, :cond_1

    .line 2854
    iget v5, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupNum:I

    add-int/lit8 v3, v5, -0x1

    goto :goto_2
.end method

.method public findNextVisiblePage(I)Lcom/smartisanos/launcher/view/Page;
    .locals 3
    .param p1, "currentIndex"    # I

    .prologue
    .line 3237
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3238
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    .line 3239
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v2

    if-nez v2, :cond_0

    .line 3243
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :goto_1
    return-object v1

    .line 3237
    .restart local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3243
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findPreviousVisiblePage(I)Lcom/smartisanos/launcher/view/Page;
    .locals 3
    .param p1, "currentIndex"    # I

    .prologue
    .line 3227
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3228
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    .line 3229
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v2

    if-nez v2, :cond_0

    .line 3233
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :goto_1
    return-object v1

    .line 3227
    .restart local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3233
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public forceFinishAllPageResetBackgroundAnimation()V
    .locals 3

    .prologue
    .line 630
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 631
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 632
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->forceFinishAllPageResetBackgroundAnimation()V

    .line 630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    return-void
.end method

.method public forceFinishSlideAndSinkAnimation()V
    .locals 1

    .prologue
    .line 2493
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->scrollAnimationIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2494
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->forceFinish()V

    .line 2497
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2498
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 2500
    :cond_1
    return-void
.end method

.method public getAllEmptyScreensForRemove()Ljava/util/ArrayList;
    .locals 6
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
    .line 2105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2107
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenCount()I

    move-result v0

    .line 2109
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2110
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/PageView;->isScreenEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2111
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### screen index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is empty screen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2112
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2109
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2116
    :cond_2
    return-object v2
.end method

.method public getAllInvisiblePageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAllPages()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    .local v0, "allPages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 1128
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1161
    :cond_0
    return-object v0

    .line 1131
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1132
    .local v5, "pageListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/smartisanos/launcher/view/Page;>;"
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1133
    .local v4, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1135
    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1136
    .local v1, "invisiblePageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/smartisanos/launcher/view/Page;>;"
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1137
    .restart local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1139
    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->pageObjectNameList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1140
    .local v3, "objName":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 1141
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1142
    .restart local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    if-nez v4, :cond_5

    .line 1143
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1145
    .restart local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    if-eqz v4, :cond_6

    .line 1146
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    :cond_6
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1152
    .end local v3    # "objName":Ljava/lang/String;
    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_7
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1153
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1154
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1155
    .restart local v3    # "objName":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1156
    .restart local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz v4, :cond_8

    .line 1157
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public getAllPagesInScreen()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3035
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3037
    .local v8, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v10, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v9, v10, :cond_1

    .line 3039
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndexLeft()I

    move-result v2

    .line 3040
    .local v2, "currentScreenIndex":I
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v7

    .line 3041
    .local v7, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3083
    .end local v2    # "currentScreenIndex":I
    .end local v7    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    :goto_0
    return-object v8

    .line 3045
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndexLeft()I

    move-result v3

    .line 3046
    .local v3, "currentScreenIndex_left":I
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndexRight()I

    move-result v4

    .line 3047
    .local v4, "currentScreenIndex_right":I
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v5

    .line 3050
    .local v5, "currentScreenIndex_round":I
    if-ne v3, v4, :cond_2

    .line 3052
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInScreen(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3054
    :cond_2
    if-ne v3, v5, :cond_3

    .line 3058
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInScreen(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3061
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInScreen(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 3063
    .local v1, "allPagesInRight":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getRowCountInMultiPageMode()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 3064
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getColCountInMultiPageMode()I

    move-result v9

    mul-int/2addr v9, v6

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/Page;

    .line 3065
    .restart local v7    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3063
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3068
    .end local v1    # "allPagesInRight":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v6    # "i":I
    .end local v7    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    if-ne v4, v5, :cond_0

    .line 3072
    invoke-virtual {p0, v3}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInScreen(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 3074
    .local v0, "allPagesInLeft":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getRowCountInMultiPageMode()I

    move-result v9

    if-ge v6, v9, :cond_4

    .line 3075
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getRowCountInMultiPageMode()I

    move-result v9

    mul-int/2addr v9, v6

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getColCountInMultiPageMode()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/Page;

    .line 3076
    .restart local v7    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3074
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3080
    .end local v7    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_4
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInScreen(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected getAllPagesInScreen(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "screenIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2485
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v2

    mul-int v1, p1, v2

    .line 2486
    .local v1, "start":I
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v0, v2, -0x1

    .line 2488
    .local v0, "end":I
    invoke-virtual {p0, v1, v0}, Lcom/smartisanos/launcher/view/PageView;->getPagesFromTo(II)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public getAllPagesInWindow()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x0

    .line 1816
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1817
    .local v6, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v9

    .line 1818
    .local v9, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v8, v9, Lcom/smartisanos/smengine/util/TempVars;->vect2d:Lcom/smartisanos/smengine/math/Vector2f;

    .line 1819
    .local v8, "tmpV":Lcom/smartisanos/smengine/math/Vector2f;
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1820
    .local v2, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v10, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_3

    .line 1821
    invoke-virtual {v8, v12, v12}, Lcom/smartisanos/smengine/math/Vector2f;->set(FF)Lcom/smartisanos/smengine/math/Vector2f;

    .line 1822
    iget-object v10, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 1823
    .local v3, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1824
    move-object v4, v8

    .line 1825
    .local v4, "pageSize":Lcom/smartisanos/smengine/math/Vector2f;
    sget v10, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {p0, v10, v4}, Lcom/smartisanos/launcher/view/PageView;->getCurrentSinglePageSize(ILcom/smartisanos/smengine/math/Vector2f;)V

    .line 1826
    iget v5, v4, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 1827
    .local v5, "pageWidth":F
    iget v10, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float v11, v5, v13

    sub-float v1, v10, v11

    .line 1828
    .local v1, "left":F
    iget v10, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float v11, v5, v13

    add-float v7, v10, v11

    .line 1829
    .local v7, "right":F
    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v10, v1, v10

    if-ltz v10, :cond_0

    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpg-float v10, v1, v10

    if-lez v10, :cond_1

    :cond_0
    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-ltz v10, :cond_2

    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpg-float v10, v7, v10

    if-gtz v10, :cond_2

    .line 1830
    :cond_1
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1820
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1833
    .end local v1    # "left":F
    .end local v3    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v4    # "pageSize":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v5    # "pageWidth":F
    .end local v7    # "right":F
    :cond_3
    invoke-virtual {v9}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 1834
    return-object v6
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
    .line 2516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2517
    .local v0, "allViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/smengine/SceneNode;>;"
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->setForceDispatchTouchToView(Z)V

    .line 2518
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2519
    return-object v0
.end method

.method public getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    return-object v0
.end method

.method public getCellByTouchPoint(FFZ)Lcom/smartisanos/launcher/view/Cell;
    .locals 12
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "isHandleHideOrLockPage"    # Z

    .prologue
    .line 1585
    const/4 v1, 0x0

    .line 1586
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    const/4 v6, 0x0

    .line 1587
    .local v6, "pageIndex":I
    new-instance v8, Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v9, 0x0

    invoke-direct {v8, p1, p2, v9}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1589
    .local v8, "worldP":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 1590
    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1591
    .local v4, "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz p3, :cond_1

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1589
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1594
    :cond_1
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 1595
    .local v0, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1596
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 1597
    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v7

    .line 1598
    .local v7, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v7}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1599
    invoke-virtual {v7}, Lcom/smartisanos/smengine/SceneNode;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v5

    .line 1600
    .local v5, "pageCellBv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v5, v8}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v1, v7

    .line 1601
    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 1602
    goto :goto_1

    .line 1596
    .end local v5    # "pageCellBv":Lcom/smartisanos/smengine/BoundingVolume;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1608
    .end local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    .end local v3    # "j":I
    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v7    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_3
    if-eqz v1, :cond_4

    .line 1609
    sget-boolean v9, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v9, :cond_4

    sget-object v9, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pageIndex = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", cell = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getRowIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getColIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 1611
    :cond_4
    return-object v1
.end method

.method public getColCountInMultiPageMode()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 1725
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    packed-switch v1, :pswitch_data_0

    .line 1733
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    :pswitch_1
    return v0

    .line 1727
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1725
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getConfirmPasswordPage()Lcom/smartisanos/launcher/view/Page;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mConfirmPasswordPage:Lcom/smartisanos/launcher/view/Page;

    return-object v0
.end method

.method public getCurrentPageCellCount()I
    .locals 2

    .prologue
    .line 1244
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1245
    const/16 v0, 0x9

    .line 1247
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x10

    goto :goto_0
.end method

.method public getCurrentPageInWindowForSinglePageMode()Lcom/smartisanos/launcher/view/Page;
    .locals 5

    .prologue
    .line 1847
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1848
    .local v1, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1849
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 1850
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1851
    iget v3, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sget v4, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    iget v3, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sget v4, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    .line 1855
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :goto_1
    return-object v2

    .line 1848
    .restart local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1855
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getCurrentSinglePageSize(ILcom/smartisanos/smengine/math/Vector2f;)V
    .locals 3
    .param p1, "pageMode"    # I
    .param p2, "outV"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 1276
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 1277
    .local v0, "lp":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v1, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    invoke-virtual {p2, v1, v2}, Lcom/smartisanos/smengine/math/Vector2f;->set(FF)Lcom/smartisanos/smengine/math/Vector2f;

    .line 1279
    return-void
.end method

.method public getDisplayPageInSingleMode()Lcom/smartisanos/launcher/view/Page;
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->displayPageInSingleMode:Lcom/smartisanos/launcher/view/Page;

    return-object v0
.end method

.method public getDisplayScreenIndex()I
    .locals 8

    .prologue
    .line 1520
    const/4 v0, 0x0

    .line 1521
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v4

    .line 1522
    .local v4, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 1523
    :cond_0
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_1

    sget-object v5, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "DEBUG"

    const-string v7, "no page in window !!!"

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v1, v0

    .line 1538
    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    return v1

    .line 1526
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_2
    const/4 v3, 0x0

    .line 1527
    .local v3, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 1528
    .local v2, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sget v7, Lcom/smartisanos/launcher/animations/PageViewAnimation;->SCREEN_MIN_POS_X:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    .line 1529
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v6

    iget v6, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sget v7, Lcom/smartisanos/launcher/animations/PageViewAnimation;->SCREEN_MAX_POS_X:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 1530
    move-object v3, v2

    .line 1534
    .end local v2    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_4
    if-nez v3, :cond_5

    move v1, v0

    .line 1535
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 1537
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_5
    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v6

    div-int v0, v5, v6

    move v1, v0

    .line 1538
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0
.end method

.method protected getFirstEmptyPage()Lcom/smartisanos/launcher/view/Page;
    .locals 5

    .prologue
    .line 2076
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2077
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 2078
    .local v2, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 2079
    .local v0, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 2076
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2082
    :cond_1
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->pageCellCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 2086
    .end local v0    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v2    # "pg":Lcom/smartisanos/launcher/view/Page;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getFirstPageNotFullAfterCollidedPage(Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;
    .locals 7
    .param p1, "collidedPage"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 1252
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v0

    .line 1253
    .local v0, "currentIndex":I
    move v1, v0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getVisiblePageCount()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 1255
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v4

    .line 1256
    .local v4, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1253
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1259
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 1260
    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    .line 1261
    .local v5, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v5}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v3, v5

    .line 1262
    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 1263
    .local v3, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->isEmptyCell()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1272
    .end local v2    # "j":I
    .end local v3    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v4    # "pg":Lcom/smartisanos/launcher/view/Page;
    .end local v5    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :goto_2
    return-object v4

    .line 1259
    .restart local v2    # "j":I
    .restart local v4    # "pg":Lcom/smartisanos/launcher/view/Page;
    .restart local v5    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1272
    .end local v2    # "j":I
    .end local v4    # "pg":Lcom/smartisanos/launcher/view/Page;
    .end local v5    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getGroupIndex(Lcom/smartisanos/launcher/view/Page;)I
    .locals 5
    .param p1, "lastPageInGroup"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 1737
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getGroupNum()I

    move-result v0

    .line 1738
    .local v0, "groupNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1739
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    add-int v4, v1, v0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 1740
    .local v2, "lastPage":Lcom/smartisanos/launcher/view/Page;
    if-ne v2, p1, :cond_0

    .line 1741
    div-int v3, v1, v0

    return v3

    .line 1738
    :cond_0
    add-int/2addr v1, v0

    goto :goto_0

    .line 1744
    .end local v2    # "lastPage":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "last page has not group index"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getGroupNum()I
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    .line 1697
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    packed-switch v2, :pswitch_data_0

    .line 1709
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unknown page mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    .line 1707
    :goto_0
    :pswitch_1
    return v0

    .line 1705
    :pswitch_2
    const/16 v0, 0x9

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 1707
    goto :goto_0

    .line 1697
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getInvisiblePageCellById(J)Lcom/smartisanos/launcher/view/Cell;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 1968
    const/4 v0, 0x0

    .line 1969
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    move-object v1, v0

    .line 1982
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .local v1, "cell":Lcom/smartisanos/launcher/view/Cell;
    :goto_0
    return-object v1

    .line 1972
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move-object v1, v0

    .line 1973
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    goto :goto_0

    .line 1975
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1976
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 1977
    .local v3, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v3, p1, p2}, Lcom/smartisanos/launcher/view/Page;->getPageCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 1978
    if-eqz v0, :cond_4

    .end local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    move-object v1, v0

    .line 1982
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    goto :goto_0

    .line 1975
    .end local v1    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .restart local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getInvisiblePageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastGroupPageInWindow()Lcom/smartisanos/launcher/view/Page;
    .locals 12

    .prologue
    .line 1787
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v8

    .line 1788
    .local v8, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v9, v8, Lcom/smartisanos/smengine/util/TempVars;->vect2d:Lcom/smartisanos/smengine/math/Vector2f;

    .line 1789
    .local v9, "v":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getGroupNum()I

    move-result v0

    .line 1790
    .local v0, "groupNum":I
    const/4 v6, 0x0

    .line 1791
    .local v6, "retPage":Lcom/smartisanos/launcher/view/Page;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v10, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_5

    .line 1792
    iget-object v10, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    add-int v11, v1, v0

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 1793
    .local v3, "lastPage":Lcom/smartisanos/launcher/view/Page;
    move v2, v1

    .local v2, "j":I
    :goto_1
    add-int v10, v1, v0

    if-ge v2, v10, :cond_4

    .line 1794
    iget-object v10, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    .line 1796
    .local v5, "page":Lcom/smartisanos/launcher/view/Page;
    iget-object v10, p0, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/SwitchPageNode;->getCurrentLongPressedPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v10

    if-ne v5, v10, :cond_1

    .line 1793
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1799
    :cond_1
    invoke-virtual {p0, v5, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageWorldLeftRight(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/smengine/math/Vector2f;)V

    .line 1800
    iget v7, v9, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 1801
    .local v7, "right":F
    iget v4, v9, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 1802
    .local v4, "left":F
    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-ltz v10, :cond_2

    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpg-float v10, v7, v10

    if-lez v10, :cond_3

    :cond_2
    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v10, v4, v10

    if-ltz v10, :cond_0

    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_0

    .line 1803
    :cond_3
    move-object v6, v3

    .line 1807
    .end local v4    # "left":F
    .end local v5    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v7    # "right":F
    :cond_4
    if-eqz v6, :cond_6

    .line 1811
    .end local v2    # "j":I
    .end local v3    # "lastPage":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    invoke-virtual {v8}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 1812
    return-object v6

    .line 1791
    .restart local v2    # "j":I
    .restart local v3    # "lastPage":Lcom/smartisanos/launcher/view/Page;
    :cond_6
    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getLastGroupPageInWindow(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/smengine/math/Vector3f;Z)Lcom/smartisanos/launcher/view/Page;
    .locals 12
    .param p1, "currentSelected"    # Lcom/smartisanos/launcher/view/Page;
    .param p2, "currentSelectedPageWorldPos"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p3, "forceIgnore"    # Z

    .prologue
    .line 1749
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v8

    .line 1750
    .local v8, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v9, v8, Lcom/smartisanos/smengine/util/TempVars;->vect2d:Lcom/smartisanos/smengine/math/Vector2f;

    .line 1751
    .local v9, "v":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getGroupNum()I

    move-result v0

    .line 1752
    .local v0, "groupNum":I
    const/4 v6, 0x0

    .line 1753
    .local v6, "retPage":Lcom/smartisanos/launcher/view/Page;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v10, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_5

    .line 1754
    iget-object v10, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    add-int v11, v1, v0

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 1755
    .local v3, "lastPage":Lcom/smartisanos/launcher/view/Page;
    move v2, v1

    .local v2, "j":I
    :goto_1
    add-int v10, v1, v0

    if-ge v2, v10, :cond_4

    .line 1756
    iget-object v10, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    .line 1758
    .local v5, "page":Lcom/smartisanos/launcher/view/Page;
    if-ne v5, p1, :cond_6

    .line 1760
    if-eqz p3, :cond_1

    .line 1755
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1763
    :cond_1
    invoke-virtual {p0, p2, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageWorldLeftRight(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector2f;)V

    .line 1767
    :goto_2
    iget v7, v9, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 1768
    .local v7, "right":F
    iget v4, v9, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 1769
    .local v4, "left":F
    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-ltz v10, :cond_2

    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpg-float v10, v7, v10

    if-lez v10, :cond_3

    :cond_2
    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpl-float v10, v4, v10

    if-ltz v10, :cond_0

    sget v10, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    cmpg-float v10, v4, v10

    if-gtz v10, :cond_0

    .line 1770
    :cond_3
    move-object v6, v3

    .line 1774
    .end local v4    # "left":F
    .end local v5    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v7    # "right":F
    :cond_4
    if-eqz v6, :cond_7

    .line 1778
    .end local v2    # "j":I
    .end local v3    # "lastPage":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    invoke-virtual {v8}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 1779
    return-object v6

    .line 1765
    .restart local v2    # "j":I
    .restart local v3    # "lastPage":Lcom/smartisanos/launcher/view/Page;
    .restart local v5    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_6
    invoke-virtual {p0, v5, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageWorldLeftRight(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/smengine/math/Vector2f;)V

    goto :goto_2

    .line 1753
    .end local v5    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_7
    add-int/2addr v1, v0

    goto :goto_0
.end method

.method public getLastPageWorldLocationInGroup()F
    .locals 2

    .prologue
    .line 1325
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    packed-switch v0, :pswitch_data_0

    .line 1335
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unknow page mode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1328
    :pswitch_0
    const/4 v0, 0x0

    .line 1333
    :goto_0
    return v0

    .line 1331
    :pswitch_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageWorldLocation:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    goto :goto_0

    .line 1333
    :pswitch_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageWorldLocation:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    goto :goto_0

    .line 1325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getNearestPageFromPointInWorldCoordinate(FF)Lcom/smartisanos/launcher/view/Page;
    .locals 8
    .param p1, "worldX"    # F
    .param p2, "worldY"    # F

    .prologue
    .line 1637
    new-instance v6, Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v7, 0x0

    invoke-direct {v6, p1, p2, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1638
    .local v6, "worldP":Lcom/smartisanos/smengine/math/Vector3f;
    const v2, 0x461c3c00    # 9999.0f

    .line 1639
    .local v2, "minDistance":F
    const/4 v3, 0x0

    .line 1640
    .local v3, "nearest":Lcom/smartisanos/launcher/view/Page;
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v5}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1641
    .local v5, "pageCenter":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 1642
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1643
    .local v4, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1644
    invoke-virtual {v6, v5}, Lcom/smartisanos/smengine/math/Vector3f;->distance(Lcom/smartisanos/smengine/math/Vector3f;)F

    move-result v0

    .line 1645
    .local v0, "currentDistance":F
    cmpg-float v7, v0, v2

    if-gez v7, :cond_0

    .line 1646
    move v2, v0

    .line 1647
    move-object v3, v4

    .line 1641
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1650
    .end local v0    # "currentDistance":F
    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    return-object v3
.end method

.method public getNeedMoveXForParent(F)F
    .locals 4
    .param p1, "curIndexProcess"    # F

    .prologue
    .line 2820
    iget v2, p0, Lcom/smartisanos/launcher/view/PageView;->mMaxTranX:F

    iget v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupSpanX:F

    mul-float/2addr v3, p1

    sub-float v1, v2, v3

    .line 2821
    .local v1, "desParentLocationX":F
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v0

    .line 2822
    .local v0, "curParentLocationX":F
    sub-float v2, v1, v0

    return v2
.end method

.method public getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

    if-nez v0, :cond_0

    .line 1049
    invoke-static {}, Lcom/smartisanos/smengine/NotificationManager;->getCurrentNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mNotificationManager:Lcom/smartisanos/smengine/NotificationManager;

    return-object v0
.end method

.method public getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1187
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1188
    :cond_0
    const/4 v0, 0x0

    .line 1190
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    goto :goto_0
.end method

.method public getPageByTouchPointInWorldCoordinate(FFZ)Lcom/smartisanos/launcher/view/Page;
    .locals 8
    .param p1, "xInWorld"    # F
    .param p2, "yInworld"    # F
    .param p3, "includeTitle"    # Z

    .prologue
    .line 1615
    new-instance v5, Lcom/smartisanos/smengine/math/Vector3f;

    const/4 v6, 0x0

    invoke-direct {v5, p1, p2, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    .line 1616
    .local v5, "worldP":Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 1617
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 1618
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v0

    .line 1619
    .local v0, "bv":Lcom/smartisanos/smengine/BoundingVolume;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1633
    .end local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    :goto_1
    return-object v2

    .line 1621
    .restart local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    .restart local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    if-eqz p3, :cond_2

    .line 1622
    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v7, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v6, v7, :cond_2

    .line 1623
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v3

    .line 1624
    .local v3, "tv":Lcom/smartisanos/launcher/view/TitleView;
    if-eqz v3, :cond_2

    .line 1625
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/TitleView;->getWorldBoundingVolume()Lcom/smartisanos/smengine/BoundingVolume;

    move-result-object v4

    .line 1626
    .local v4, "tvbv":Lcom/smartisanos/smengine/BoundingVolume;
    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/BoundingVolume;->isPointInBoundingVolume(Lcom/smartisanos/smengine/math/Vector3f;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1616
    .end local v3    # "tv":Lcom/smartisanos/launcher/view/TitleView;
    .end local v4    # "tvbv":Lcom/smartisanos/smengine/BoundingVolume;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1633
    .end local v0    # "bv":Lcom/smartisanos/smengine/BoundingVolume;
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPageCellById(J)Lcom/smartisanos/launcher/view/Cell;
    .locals 11
    .param p1, "id"    # J

    .prologue
    .line 1938
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-gez v6, :cond_1

    .line 1939
    const/4 v0, 0x0

    .line 1964
    :cond_0
    :goto_0
    return-object v0

    .line 1941
    :cond_1
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mCurrentPageCell:Lcom/smartisanos/launcher/view/Cell;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mCurrentPageCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mCurrentPageCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v6

    iget-wide v6, v6, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_2

    .line 1942
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mCurrentPageCell:Lcom/smartisanos/launcher/view/Cell;

    goto :goto_0

    .line 1944
    :cond_2
    const/4 v0, 0x0

    .line 1945
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v5

    .line 1946
    .local v5, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1949
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 1950
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Page;

    .line 1951
    .local v4, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v4, p1, p2}, Lcom/smartisanos/launcher/view/Page;->getPageCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 1952
    if-eqz v0, :cond_5

    .line 1956
    .end local v4    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    if-eqz v6, :cond_0

    .line 1957
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v1, v6, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    .line 1958
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 1959
    .local v3, "item":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    iget-wide v8, v7, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v7, v8, p1

    if-nez v7, :cond_4

    move-object v0, v3

    .line 1960
    goto :goto_0

    .line 1949
    .end local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v3    # "item":Lcom/smartisanos/launcher/view/Cell;
    .restart local v4    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getPageCenterList4()[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageViewAnimation:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPagePosition4:[Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getPageCenterList9()[Lcom/smartisanos/smengine/math/Vector3f;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageViewAnimation:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/PageViewAnimation;->mPagePosition9:[Lcom/smartisanos/smengine/math/Vector3f;

    return-object v0
.end method

.method public getPageConnectedNodeByIndex(I)Lcom/smartisanos/launcher/view/Page;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    return-object v0
.end method

.method public getPageCount()I
    .locals 2

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getPageCountConnectedNode()I
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageFactor()I
    .locals 2

    .prologue
    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, "factor":I
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    packed-switch v1, :pswitch_data_0

    .line 351
    const/4 v0, 0x1

    .line 354
    :goto_0
    return v0

    .line 341
    :pswitch_0
    const/4 v0, 0x1

    .line 342
    goto :goto_0

    .line 345
    :pswitch_1
    const/4 v0, 0x4

    .line 346
    goto :goto_0

    .line 348
    :pswitch_2
    const/16 v0, 0x9

    .line 349
    goto :goto_0

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPageGroupHSpacing()F
    .locals 2

    .prologue
    .line 1207
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iget v1, v1, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getPageHSpacing()F
    .locals 1

    .prologue
    .line 1203
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->page_spacing_h:F

    return v0
.end method

.method public getPageIndex(Lcom/smartisanos/launcher/view/Page;)I
    .locals 4
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 1178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1179
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 1180
    return v0

    .line 1178
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1183
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page can not found in page list : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPageParentForTranslate()Lcom/smartisanos/smengine/SceneNode;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    return-object v0
.end method

.method public getPageViewAnimation()Lcom/smartisanos/launcher/animations/PageViewAnimation;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageViewAnimation:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    return-object v0
.end method

.method public getPageWorldLeftRight(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/smengine/math/Vector2f;)V
    .locals 12
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;
    .param p2, "out"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 1669
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v8

    .line 1670
    .local v8, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 1671
    .local v2, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v9}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v6

    .line 1672
    .local v6, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget-boolean v9, p0, Lcom/smartisanos/launcher/view/PageView;->mIsInPageSwitchMode:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/SwitchPageNode;->getCurrentLongPressedPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v9

    if-ne p1, v9, :cond_0

    .line 1673
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v0

    .line 1674
    .local v0, "index":I
    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0, v9}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v5

    .line 1675
    .local v5, "prePage":Lcom/smartisanos/launcher/view/Page;
    iget-object v9, v8, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/math/Vector3f;->zero()Lcom/smartisanos/smengine/math/Vector3f;

    .line 1676
    invoke-virtual {v5, v2}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 1677
    iget-object v9, v8, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v9, v2}, Lcom/smartisanos/smengine/math/Vector3f;->set(Lcom/smartisanos/smengine/math/Vector3f;)Lcom/smartisanos/smengine/math/Vector3f;

    .line 1678
    iget-object v9, v8, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget-object v10, v8, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v10, v10, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v11, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    add-float/2addr v10, v11

    iget v11, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->page_spacing_h:F

    add-float/2addr v10, v11

    iput v10, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1679
    iget-object v9, v8, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iput v9, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 1680
    iget-object v9, v8, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iput v9, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 1681
    iget-object v9, v8, Lcom/smartisanos/smengine/util/TempVars;->vect1:Lcom/smartisanos/smengine/math/Vector3f;

    iget v9, v9, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    iput v9, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    .line 1685
    .end local v0    # "index":I
    .end local v5    # "prePage":Lcom/smartisanos/launcher/view/Page;
    :goto_0
    iget-object v3, v8, Lcom/smartisanos/smengine/util/TempVars;->vect2d:Lcom/smartisanos/smengine/math/Vector2f;

    .line 1686
    .local v3, "pageSize":Lcom/smartisanos/smengine/math/Vector2f;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Lcom/smartisanos/smengine/math/Vector2f;->set(FF)Lcom/smartisanos/smengine/math/Vector2f;

    .line 1687
    sget v9, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {p0, v9, v3}, Lcom/smartisanos/launcher/view/PageView;->getCurrentSinglePageSize(ILcom/smartisanos/smengine/math/Vector2f;)V

    .line 1688
    iget v4, v3, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 1689
    .local v4, "pageWidth":F
    iget v9, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v4, v10

    sub-float v1, v9, v10

    .line 1690
    .local v1, "left":F
    iget v9, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v4, v10

    add-float v7, v9, v10

    .line 1691
    .local v7, "right":F
    iput v1, p2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 1692
    iput v7, p2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 1693
    invoke-virtual {v8}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 1694
    return-void

    .line 1683
    .end local v1    # "left":F
    .end local v3    # "pageSize":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v4    # "pageWidth":F
    .end local v7    # "right":F
    :cond_0
    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    goto :goto_0
.end method

.method public getPageWorldLeftRight(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector2f;)V
    .locals 9
    .param p1, "worldPos"    # Lcom/smartisanos/smengine/math/Vector3f;
    .param p2, "out"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 1654
    move-object v1, p1

    .line 1655
    .local v1, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v5

    .line 1656
    .local v5, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v2, v5, Lcom/smartisanos/smengine/util/TempVars;->vect2d:Lcom/smartisanos/smengine/math/Vector2f;

    .line 1657
    .local v2, "pageSize":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-virtual {v2, v6, v6}, Lcom/smartisanos/smengine/math/Vector2f;->set(FF)Lcom/smartisanos/smengine/math/Vector2f;

    .line 1658
    sget v6, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {p0, v6, v2}, Lcom/smartisanos/launcher/view/PageView;->getCurrentSinglePageSize(ILcom/smartisanos/smengine/math/Vector2f;)V

    .line 1659
    iget v3, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 1660
    .local v3, "pageWidth":F
    iget v6, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float v7, v3, v8

    sub-float v0, v6, v7

    .line 1661
    .local v0, "left":F
    iget v6, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    div-float v7, v3, v8

    add-float v4, v6, v7

    .line 1662
    .local v4, "right":F
    iput v0, p2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 1663
    iput v4, p2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 1664
    invoke-virtual {v5}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 1665
    return-void
.end method

.method protected getPagesFromTo(II)Ljava/util/ArrayList;
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2091
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt p1, v3, :cond_0

    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt p2, v3, :cond_0

    if-gez p2, :cond_2

    .line 2092
    :cond_0
    const/4 v1, 0x0

    .line 2100
    :cond_1
    return-object v1

    .line 2095
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2096
    .local v1, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 2097
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 2098
    .local v2, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2096
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRowCountInMultiPageMode()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 1713
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    packed-switch v1, :pswitch_data_0

    .line 1721
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    :pswitch_1
    return v0

    .line 1715
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1713
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getScreenCount()I
    .locals 3

    .prologue
    .line 1512
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v2

    div-int v0, v1, v2

    .line 1513
    .local v0, "count":I
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1514
    add-int/lit8 v0, v0, 0x1

    .line 1516
    :cond_0
    return v0
.end method

.method public getScreenIndex()I
    .locals 1

    .prologue
    .line 891
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex(Z)I

    move-result v0

    return v0
.end method

.method public getScreenIndex(I)I
    .locals 1
    .param p1, "targetPageIndex"    # I

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v0

    div-int v0, p1, v0

    return v0
.end method

.method public getScreenIndex(Lcom/smartisanos/launcher/view/Page;)I
    .locals 2
    .param p1, "targetPage"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 997
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v0

    .line 998
    .local v0, "pageIndex":I
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v1

    div-int v1, v0, v1

    return v1
.end method

.method public getScreenIndex(Z)I
    .locals 10
    .param p1, "useTmpVar"    # Z

    .prologue
    .line 895
    new-instance v4, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 896
    .local v4, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v7, v4}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 897
    iget v3, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 898
    .local v3, "parentTranslateX":F
    neg-float v7, v3

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/PageView;->getSpan(Z)F

    move-result v8

    div-float v5, v7, v8

    .line 899
    .local v5, "progress":F
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#### getscreenIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 901
    :cond_0
    const/4 v0, -0x1

    .line 903
    .local v0, "index":I
    const/4 v2, 0x0

    .line 904
    .local v2, "minIndex":I
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v8

    div-int v1, v7, v8

    .line 906
    .local v1, "maxIndex":I
    const/4 v7, 0x0

    cmpg-float v7, v5, v7

    if-gez v7, :cond_2

    .line 907
    const/4 v0, 0x0

    .line 916
    :goto_0
    if-nez v0, :cond_5

    sget v7, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v8, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v7, v8, :cond_5

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v7

    if-nez v7, :cond_5

    iget v7, p0, Lcom/smartisanos/launcher/view/PageView;->mScrollAnimationProgressForGetScreenIndex:F

    const/high16 v8, -0x40800000    # -1.0f

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_5

    .line 918
    iget v7, p0, Lcom/smartisanos/launcher/view/PageView;->mScrollAnimationProgressForGetScreenIndex:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 919
    .local v6, "result":I
    if-gez v6, :cond_1

    .line 920
    const/4 v6, 0x0

    .line 922
    :cond_1
    if-le v6, v1, :cond_4

    .line 925
    .end local v1    # "maxIndex":I
    .end local v6    # "result":I
    :goto_1
    return v1

    .line 908
    .restart local v1    # "maxIndex":I
    :cond_2
    int-to-float v7, v1

    cmpl-float v7, v5, v7

    if-lez v7, :cond_3

    .line 909
    move v0, v1

    goto :goto_0

    .line 913
    :cond_3
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .restart local v6    # "result":I
    :cond_4
    move v1, v6

    .line 922
    goto :goto_1

    .end local v6    # "result":I
    :cond_5
    move v1, v0

    .line 925
    goto :goto_1
.end method

.method public getScreenIndexLeft()I
    .locals 9

    .prologue
    .line 950
    new-instance v4, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 951
    .local v4, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v6, v4}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 952
    iget v3, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 953
    .local v3, "parentTranslateX":F
    neg-float v6, v3

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getSpan()F

    move-result v7

    div-float v5, v6, v7

    .line 954
    .local v5, "progress":F
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#### getscreenIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 956
    :cond_0
    const/4 v0, -0x1

    .line 958
    .local v0, "index":I
    const/4 v2, 0x0

    .line 959
    .local v2, "minIndex":I
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v7

    div-int v1, v6, v7

    .line 961
    .local v1, "maxIndex":I
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    .line 962
    const/4 v0, 0x0

    .line 968
    :goto_0
    return v0

    .line 963
    :cond_1
    int-to-float v6, v1

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    .line 964
    move v0, v1

    goto :goto_0

    .line 966
    :cond_2
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_0
.end method

.method public getScreenIndexRight()I
    .locals 9

    .prologue
    .line 973
    new-instance v4, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 974
    .local v4, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v6, v4}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 975
    iget v3, v4, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 976
    .local v3, "parentTranslateX":F
    neg-float v6, v3

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getSpan()F

    move-result v7

    div-float v5, v6, v7

    .line 977
    .local v5, "progress":F
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#### getscreenIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 979
    :cond_0
    const/4 v0, -0x1

    .line 981
    .local v0, "index":I
    const/4 v2, 0x0

    .line 982
    .local v2, "minIndex":I
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v7

    div-int v1, v6, v7

    .line 984
    .local v1, "maxIndex":I
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_1

    .line 985
    const/4 v0, 0x0

    .line 991
    :goto_0
    return v0

    .line 986
    :cond_1
    int-to-float v6, v1

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    .line 987
    move v0, v1

    goto :goto_0

    .line 989
    :cond_2
    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    goto :goto_0
.end method

.method public getScrollIndex()F
    .locals 2

    .prologue
    .line 2896
    iget v0, p0, Lcom/smartisanos/launcher/view/PageView;->mMaxTranX:F

    iget v1, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupSpanX:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getSelectedCell()Lcom/smartisanos/launcher/view/Cell;
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mCurrentPageCell:Lcom/smartisanos/launcher/view/Cell;

    return-object v0
.end method

.method public getSpan()F
    .locals 1

    .prologue
    .line 1282
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageView;->getSpan(Z)F

    move-result v0

    return v0
.end method

.method public getSpan(Z)F
    .locals 7
    .param p1, "useTmpVar"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1289
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageGroupHSpacing()F

    move-result v0

    .line 1290
    .local v0, "pageGroupHSpacing":F
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageHSpacing()F

    move-result v1

    .line 1291
    .local v1, "pageHSpacing":F
    const/4 v3, 0x0

    .line 1292
    .local v3, "pageWidth":F
    const/4 v2, 0x0

    .line 1293
    .local v2, "pageSize":Lcom/smartisanos/smengine/math/Vector2f;
    if-eqz p1, :cond_0

    .line 1294
    invoke-static {}, Lcom/smartisanos/smengine/util/TempVars;->get()Lcom/smartisanos/smengine/util/TempVars;

    move-result-object v4

    .line 1295
    .local v4, "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    iget-object v2, v4, Lcom/smartisanos/smengine/util/TempVars;->vect2d:Lcom/smartisanos/smengine/math/Vector2f;

    .line 1296
    invoke-virtual {v2, v5, v5}, Lcom/smartisanos/smengine/math/Vector2f;->set(FF)Lcom/smartisanos/smengine/math/Vector2f;

    .line 1297
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {p0, v5, v2}, Lcom/smartisanos/launcher/view/PageView;->getCurrentSinglePageSize(ILcom/smartisanos/smengine/math/Vector2f;)V

    .line 1298
    iget v3, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 1299
    invoke-virtual {v4}, Lcom/smartisanos/smengine/util/TempVars;->release()V

    .line 1306
    .end local v4    # "tmpVar":Lcom/smartisanos/smengine/util/TempVars;
    :goto_0
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1307
    add-float v5, v3, v0

    .line 1315
    :goto_1
    return v5

    .line 1301
    :cond_0
    new-instance v2, Lcom/smartisanos/smengine/math/Vector2f;

    .end local v2    # "pageSize":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 1302
    .restart local v2    # "pageSize":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-virtual {v2, v5, v5}, Lcom/smartisanos/smengine/math/Vector2f;->set(FF)Lcom/smartisanos/smengine/math/Vector2f;

    .line 1303
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {p0, v5, v2}, Lcom/smartisanos/launcher/view/PageView;->getCurrentSinglePageSize(ILcom/smartisanos/smengine/math/Vector2f;)V

    .line 1304
    iget v3, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    goto :goto_0

    .line 1308
    :cond_1
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 1309
    add-float v5, v3, v1

    add-float/2addr v5, v0

    add-float/2addr v5, v3

    goto :goto_1

    .line 1310
    :cond_2
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 1311
    const/high16 v5, 0x40000000    # 2.0f

    add-float v6, v3, v1

    mul-float/2addr v5, v6

    add-float/2addr v5, v0

    add-float/2addr v5, v3

    goto :goto_1

    .line 1312
    :cond_3
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 1313
    add-float v5, v3, v0

    goto :goto_1

    .line 1314
    :cond_4
    sget v5, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    .line 1315
    add-float v5, v3, v1

    add-float/2addr v5, v0

    add-float/2addr v5, v3

    goto :goto_1

    .line 1317
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "unknown mode in getSpan"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getVisiblePageCount()I
    .locals 1

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getWaitingToLockPage()Lcom/smartisanos/launcher/view/Page;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mWaitingToLockPage:Lcom/smartisanos/launcher/view/Page;

    return-object v0
.end method

.method public handleNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V
    .locals 9
    .param p1, "notificationName"    # Ljava/lang/String;
    .param p2, "notification"    # Lcom/smartisanos/smengine/Notification;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1065
    const-string v0, "multiSelectCellUp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1066
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/PageView;->mIsInMultiSelectMode:Z

    .line 1081
    :cond_0
    :goto_0
    return-void

    .line 1067
    :cond_1
    const-string v0, "titleViewLongPress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1068
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/PageView;->mIsInPageSwitchMode:Z

    .line 1070
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Notification;->getData()Ljava/util/ArrayList;

    move-result-object v6

    .line 1071
    .local v6, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1074
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/view/Page;

    .line 1076
    .local v7, "longPressPage":Lcom/smartisanos/launcher/view/Page;
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v0, v7}, Lcom/smartisanos/launcher/view/SwitchPageNode;->setCurrentLongPressedPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 1077
    iget-object v8, p0, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    new-instance v0, Lcom/smartisanos/smengine/TouchEvent;

    const/4 v1, 0x4

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;-><init>(IFFFF)V

    invoke-virtual {v8, v0}, Lcom/smartisanos/launcher/view/SwitchPageNode;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto :goto_0

    .line 1078
    .end local v6    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v7    # "longPressPage":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    const-string v0, "titleViewUp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/PageView;->mIsInPageSwitchMode:Z

    goto :goto_0
.end method

.method public hideAppTextAndFlag(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V
    .locals 6
    .param p1, "al"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "appNametime"    # F
    .param p3, "flagTime"    # F

    .prologue
    .line 1382
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 1383
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 1384
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v1, p1, p2, p3}, Lcom/smartisanos/launcher/view/Page;->hideAppTextAndFlag(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    .line 1382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1386
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v3

    .line 1387
    .local v3, "pcOnDock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    .line 1388
    .local v2, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v2, p1, p2, p3}, Lcom/smartisanos/launcher/view/Cell;->hideAppNameAndFlagAnimation(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    goto :goto_1

    .line 1390
    .end local v2    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    return-void
.end method

.method public initOrReleaseScreen(IZ)V
    .locals 11
    .param p1, "screenIndex"    # I
    .param p2, "init"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 3166
    const/4 v4, 0x1

    .line 3167
    .local v4, "pageInScreen":I
    const/4 v7, 0x3

    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v7, v8, :cond_0

    .line 3168
    const/16 v4, 0x9

    .line 3170
    :cond_0
    const/4 v7, 0x2

    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-eq v7, v8, :cond_1

    const/4 v7, 0x5

    sget v8, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v7, v8, :cond_2

    .line 3172
    :cond_1
    const/4 v4, 0x4

    .line 3174
    :cond_2
    if-ne v9, v4, :cond_7

    .line 3175
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/PageView;->findPreviousVisiblePage(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v6

    .line 3176
    .local v6, "pre":Lcom/smartisanos/launcher/view/Page;
    if-eqz v6, :cond_3

    .line 3177
    if-eqz p2, :cond_5

    .line 3178
    invoke-virtual {v6, v9}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 3179
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 3185
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/PageView;->findNextVisiblePage(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v2

    .line 3186
    .local v2, "next":Lcom/smartisanos/launcher/view/Page;
    if-eqz v2, :cond_4

    .line 3187
    if-eqz p2, :cond_6

    .line 3188
    invoke-virtual {v2, v9}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 3189
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 3224
    .end local v2    # "next":Lcom/smartisanos/launcher/view/Page;
    .end local v6    # "pre":Lcom/smartisanos/launcher/view/Page;
    :cond_4
    :goto_1
    return-void

    .line 3181
    .restart local v6    # "pre":Lcom/smartisanos/launcher/view/Page;
    :cond_5
    invoke-virtual {v6, v10}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 3182
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->releasePageContent()V

    goto :goto_0

    .line 3191
    .restart local v2    # "next":Lcom/smartisanos/launcher/view/Page;
    :cond_6
    invoke-virtual {v2, v10}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 3192
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->releasePageContent()V

    goto :goto_1

    .line 3197
    .end local v2    # "next":Lcom/smartisanos/launcher/view/Page;
    .end local v6    # "pre":Lcom/smartisanos/launcher/view/Page;
    :cond_7
    mul-int v5, p1, v4

    .line 3198
    .local v5, "pageIndex":I
    if-gt v4, v5, :cond_9

    .line 3199
    sub-int v1, v5, v4

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_9

    .line 3200
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v3

    .line 3201
    .local v3, "p":Lcom/smartisanos/launcher/view/Page;
    if-eqz p2, :cond_8

    .line 3202
    invoke-virtual {v3, v9}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 3203
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 3199
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3205
    :cond_8
    invoke-virtual {v3, v10}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 3206
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->releasePageContent()V

    goto :goto_3

    .line 3210
    .end local v1    # "i":I
    .end local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_9
    mul-int/lit8 v7, v4, 0x2

    add-int v0, v5, v7

    .line 3211
    .local v0, "end":I
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v0, v7, :cond_a

    .line 3212
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3214
    :cond_a
    add-int v1, v5, v4

    .restart local v1    # "i":I
    :goto_4
    if-ge v1, v0, :cond_4

    .line 3215
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v3

    .line 3216
    .restart local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    if-eqz p2, :cond_b

    .line 3217
    invoke-virtual {v3, v9}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 3218
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 3214
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3220
    :cond_b
    invoke-virtual {v3, v10}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 3221
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->releasePageContent()V

    goto :goto_5
.end method

.method public initUnlockScreenAnimation()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/AnimationController;->initUnlockAnimation(Z)V

    .line 878
    return-void
.end method

.method public initUnlockScreenAnimation(Z)V
    .locals 1
    .param p1, "needDelayForWizard"    # Z

    .prologue
    .line 873
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/AnimationController;->initUnlockAnimation(Z)V

    .line 874
    return-void
.end method

.method public isAllPageIsInvisible()Z
    .locals 4

    .prologue
    .line 178
    const/4 v0, 0x1

    .line 179
    .local v0, "isAll":Z
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 180
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    iget-boolean v3, v1, Lcom/smartisanos/launcher/view/Page;->readOnlyPage:Z

    if-nez v3, :cond_0

    .line 183
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->isVisiblePage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 188
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    return v0
.end method

.method public isFirstGroupLastPage(Lcom/smartisanos/launcher/view/Page;)Z
    .locals 6
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1227
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v0

    .line 1228
    .local v0, "pageIndex":I
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v3, v1, :cond_2

    .line 1229
    if-nez v0, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1229
    goto :goto_0

    .line 1230
    :cond_2
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1231
    if-eq v0, v5, :cond_0

    move v1, v2

    goto :goto_0

    .line 1232
    :cond_3
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v3, v5, :cond_4

    .line 1233
    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 1234
    :cond_4
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 1235
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 1236
    :cond_5
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 1237
    if-eq v0, v5, :cond_0

    move v1, v2

    goto :goto_0

    .line 1239
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unknown page mode error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isInLastScreen()Z
    .locals 12

    .prologue
    const/4 v9, 0x1

    .line 2459
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v1

    .line 2460
    .local v1, "factor":I
    iget-object v10, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2461
    .local v6, "pageCount":I
    div-int v2, v6, v1

    .line 2463
    .local v2, "groupCount":I
    if-le v2, v9, :cond_1

    .line 2464
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2465
    .local v7, "pagelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 2466
    add-int/lit8 v10, v2, -0x1

    mul-int/2addr v10, v1

    add-int v4, v10, v3

    .line 2467
    .local v4, "index":I
    iget-object v10, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    .line 2468
    .local v5, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2465
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2471
    .end local v4    # "index":I
    .end local v5    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v0

    .line 2473
    .local v0, "allpageInWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_1

    .line 2474
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    .line 2475
    .local v8, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 2476
    const/4 v9, 0x0

    .line 2480
    .end local v0    # "allpageInWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v3    # "i":I
    .end local v7    # "pagelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v8    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    return v9

    .line 2473
    .restart local v0    # "allpageInWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .restart local v3    # "i":I
    .restart local v7    # "pagelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .restart local v8    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public isLastPage(Lcom/smartisanos/launcher/view/Page;)Z
    .locals 2
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 1211
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/PageView;->getPageIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v0

    .line 1212
    .local v0, "pageIndex":I
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOverPageCountLimited()Z
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageCount()I

    move-result v0

    .line 169
    .local v0, "pageCount":I
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MainView;->getMaxPageCount(I)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPageInWindow(Lcom/smartisanos/launcher/view/Page;)Z
    .locals 3
    .param p1, "p"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 1838
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v0

    .line 1839
    .local v0, "allPagesInWindow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1840
    const/4 v1, 0x0

    .line 1842
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPageSinked()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/PageView;->mIsPageSinked:Z

    return v0
.end method

.method public isScreenEmpty(I)Z
    .locals 7
    .param p1, "screenIndex"    # I

    .prologue
    const/4 v4, 0x0

    .line 929
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInScreen(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 930
    .local v0, "allpages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 931
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 933
    .local v3, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v1

    .line 935
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getCurrentPageCellCount()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 944
    .end local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    :goto_1
    return v4

    .line 939
    .restart local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .restart local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 930
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 944
    .end local v1    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public loadContentForPages(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3089
    .local p1, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3090
    .local v3, "releaseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3091
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 3092
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 3093
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 3094
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3097
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v4

    iget-object v4, v4, Lcom/smartisanos/launcher/view/PageView;->mSwitchPageNode:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/SwitchPageNode;->getCurrentLongPressedPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    .line 3098
    .local v0, "longPressPage":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 3099
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    if-eq v0, v1, :cond_1

    .line 3102
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 3103
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->releasePageContent()V

    goto :goto_1

    .line 3105
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    return-void
.end method

.method public mergeInvisiblePageToPageList()V
    .locals 9

    .prologue
    .line 282
    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mergeInvisiblePageToPageList total page count ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 286
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 287
    .local v3, "pageListMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/smartisanos/launcher/view/Page;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v4, "visiblePageNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 289
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz v2, :cond_3

    .line 290
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 294
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_4
    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 295
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 296
    .local v0, "invisiblePageMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/smartisanos/launcher/view/Page;>;"
    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 297
    .restart local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz v2, :cond_5

    .line 298
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 301
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_6
    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageView;->pageObjectNameList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    .local v1, "objName":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 303
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 304
    .restart local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    if-nez v2, :cond_8

    .line 305
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 306
    .restart local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz v2, :cond_8

    .line 307
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v6, v2}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 310
    :cond_8
    if-eqz v2, :cond_a

    .line 311
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_9

    sget-object v6, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "merge page index ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], title ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getTitleForDB()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 312
    :cond_9
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_a
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 319
    .end local v1    # "objName":Ljava/lang/String;
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 320
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_c

    sget-object v5, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v6, "pageListMap size still larger than 0 !"

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 321
    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 322
    .restart local v1    # "objName":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 323
    .restart local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz v2, :cond_d

    .line 324
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_e

    sget-object v6, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "merge page index ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], title ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getTitleForDB()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 325
    :cond_e
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 329
    .end local v1    # "objName":Ljava/lang/String;
    .end local v2    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_f
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 330
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 331
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 332
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->cleanInvisiblePageList()V

    .line 333
    sget-boolean v5, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mergeInvisiblePageToPageList after merge, page list size ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onRemove(Ljava/lang/String;)V
    .locals 0
    .param p1, "notificationName"    # Ljava/lang/String;

    .prologue
    .line 1086
    return-void
.end method

.method public pageCenterIsScreenCenter()Z
    .locals 5

    .prologue
    .line 2530
    new-instance v1, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 2531
    .local v1, "pos":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v3, v1}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 2532
    iget v0, v1, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    .line 2533
    .local v0, "parentTranslateX":F
    neg-float v3, v0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getSpan()F

    move-result v4

    div-float v2, v3, v4

    .line 2534
    .local v2, "progress":F
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3c23d70a    # 0.01f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 2535
    const/4 v3, 0x1

    .line 2537
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public printPageCellInfo()V
    .locals 10

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v4

    .line 672
    .local v4, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 673
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 674
    .local v3, "page":Lcom/smartisanos/launcher/view/Page;
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "## page: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ##"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_0
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 676
    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/Page;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v5

    .line 677
    .local v5, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-static {v5}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v5

    .line 678
    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 679
    .local v0, "currentCell":Lcom/smartisanos/launcher/view/Cell;
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "## cell : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->isNeedDisplay()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    .end local v0    # "currentCell":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 672
    .end local v5    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 683
    .end local v2    # "j":I
    .end local v3    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    return-void
.end method

.method protected removeEmptyPageGroup()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 686
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v2

    .line 687
    .local v2, "factor":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 688
    .local v7, "pageCount":I
    div-int v3, v7, v2

    .line 689
    .local v3, "groupCount":I
    if-le v3, v10, :cond_4

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 691
    .local v0, "destroyPageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v1, 0x1

    .line 692
    .local v1, "emptyScreen":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 693
    add-int/lit8 v8, v3, -0x1

    mul-int/2addr v8, v2

    add-int v5, v8, v4

    .line 694
    .local v5, "index":I
    iget-object v8, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Page;

    .line 695
    .local v6, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 696
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 698
    :cond_0
    const/4 v1, 0x0

    .line 702
    .end local v5    # "index":I
    .end local v6    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    if-nez v1, :cond_2

    .line 703
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v8, v9

    .line 712
    .end local v0    # "destroyPageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v1    # "emptyScreen":Z
    .end local v4    # "i":I
    :goto_1
    return v8

    .line 706
    .restart local v0    # "destroyPageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .restart local v1    # "emptyScreen":Z
    .restart local v4    # "i":I
    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 707
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {p0, v8}, Lcom/smartisanos/launcher/view/PageView;->removePage(Lcom/smartisanos/launcher/view/Page;)V

    goto :goto_2

    :cond_3
    move v8, v10

    .line 709
    goto :goto_1

    .end local v0    # "destroyPageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .end local v1    # "emptyScreen":Z
    .end local v4    # "i":I
    :cond_4
    move v8, v9

    .line 712
    goto :goto_1
.end method

.method public removeEmptyScreen()V
    .locals 1

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->removeEmptyPageGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->removeEmptyPageGroup()Z

    .line 720
    :cond_0
    return-void
.end method

.method public removePage(Lcom/smartisanos/launcher/view/Page;)V
    .locals 2
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1543
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Page;->removePageTitle()V

    .line 1544
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Page;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1546
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Page;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/MeshManager;->removeMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 1548
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/Page;->clear(Z)V

    .line 1549
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->updateGeometricState()V

    .line 1551
    return-void
.end method

.method public removeScreen(I)V
    .locals 1
    .param p1, "screenIndex"    # I

    .prologue
    .line 1009
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/PageView;->removeScreen(IZ)V

    .line 1010
    return-void
.end method

.method public removeScreen(IZ)V
    .locals 6
    .param p1, "screenIndex"    # I
    .param p2, "clearTexture"    # Z

    .prologue
    .line 1013
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### removeScreen index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 1014
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v0

    .line 1015
    .local v0, "factor":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1016
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "### removePage index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 1017
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    mul-int v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 1018
    .local v2, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1019
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getMeshManager()Lcom/smartisanos/smengine/MeshManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/Page;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/MeshManager;->removeMesh(Lcom/smartisanos/smengine/Mesh;)V

    .line 1020
    invoke-virtual {v2, p2}, Lcom/smartisanos/launcher/view/Page;->clear(Z)V

    .line 1021
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    mul-int v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1015
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1023
    .end local v2    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    return-void
.end method

.method public resetAllPageBackground()Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 6

    .prologue
    const/16 v5, 0x200

    .line 639
    new-instance v2, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 641
    .local v2, "restPageBackgroundTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 643
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 644
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 645
    .local v1, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->reSetBackgroundImage()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    .line 646
    .local v0, "pageResetBgTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v0, :cond_0

    .line 647
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    goto :goto_0

    .line 652
    .end local v0    # "pageResetBgTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v1    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    new-instance v3, Lcom/smartisanos/launcher/view/PageView$3;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/PageView$3;-><init>(Lcom/smartisanos/launcher/view/PageView;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 661
    :cond_2
    return-object v2
.end method

.method public resetAllPageBackgroundNoAnimation()V
    .locals 3

    .prologue
    .line 665
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 666
    .local v0, "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->reSetBackgroundImageNoAnimation()V

    goto :goto_0

    .line 668
    .end local v0    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    return-void
.end method

.method public resetCollisionListenerForPageCell()V
    .locals 3

    .prologue
    .line 2503
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2504
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 2505
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->resetCollisionListenerForPageCell()V

    .line 2503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2507
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    return-void
.end method

.method public resetEnableShowAppName(Z)V
    .locals 3
    .param p1, "en"    # Z

    .prologue
    .line 1357
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/PageView;->mSettingEnableShowAppName:Z

    .line 1358
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1359
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 1360
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/PageView;->mSettingEnableShowAppName:Z

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Page;->enableShowAppName(Z)V

    .line 1358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1362
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1363
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1364
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 1365
    .restart local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/PageView;->mSettingEnableShowAppName:Z

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Page;->enableShowAppName(Z)V

    .line 1363
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1368
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    return-void
.end method

.method public resetPageFreeTextureIndexList()V
    .locals 3

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 1056
    .local v0, "pg":Lcom/smartisanos/launcher/view/Page;
    instance-of v2, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    if-eqz v2, :cond_0

    .line 1057
    check-cast v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    .end local v0    # "pg":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->cleanAllFreeIndexWhenUP()V

    goto :goto_0

    .line 1060
    :cond_1
    return-void
.end method

.method public refreshAllRenderTargetContent()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    instance-of v2, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->updateCellContent()V

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->updateGeometricState()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->updateGeometricState()V

    return-void
.end method

.method public refreshPageRenderTargetContent(Lcom/smartisanos/launcher/view/Page;)V
    .locals 1
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->updateCellContent()V

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->updateGeometricState()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->updateGeometricState()V

    :cond_0
    return-void
.end method

.method public resetPagesTranslate(Lcom/smartisanos/launcher/view/Page;)V
    .locals 20
    .param p1, "targetPage"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 2996
    invoke-virtual/range {p0 .. p1}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex(Lcom/smartisanos/launcher/view/Page;)I

    move-result v12

    .line 2997
    .local v12, "screenIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2998
    .local v1, "allpageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getPageFactor()I

    move-result v3

    .line 2999
    .local v3, "group_size":I
    const/4 v10, 0x0

    .line 3000
    .local v10, "posList":[Lcom/smartisanos/smengine/math/Vector3f;
    const/4 v15, 0x1

    if-ne v3, v15, :cond_1

    .line 3001
    sget v15, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v15}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v11

    .line 3002
    .local v11, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v9, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 3003
    .local v9, "pageViewWidth":F
    iget v8, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 3004
    .local v8, "pageViewHeight":F
    iget v15, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v16, v16, v9

    add-float v13, v15, v16

    .line 3005
    .local v13, "x":F
    iget v15, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    sget v16, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-float v15, v15, v16

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v16, v16, v8

    add-float v14, v15, v16

    .line 3006
    .local v14, "y":F
    new-instance v6, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 3007
    .local v6, "p":Lcom/smartisanos/smengine/math/Vector2f;
    sget v15, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v15, v15

    sget v16, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v14, v15, v0, v6}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 3008
    const/4 v15, 0x1

    new-array v10, v15, [Lcom/smartisanos/smengine/math/Vector3f;

    .line 3009
    const/4 v15, 0x0

    new-instance v16, Lcom/smartisanos/smengine/math/Vector3f;

    iget v0, v6, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    move/from16 v17, v0

    iget v0, v6, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    move/from16 v18, v0

    const/16 v19, 0x0

    invoke-direct/range {v16 .. v19}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    aput-object v16, v10, v15

    .line 3015
    .end local v6    # "p":Lcom/smartisanos/smengine/math/Vector2f;
    .end local v8    # "pageViewHeight":F
    .end local v9    # "pageViewWidth":F
    .end local v11    # "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    .end local v13    # "x":F
    .end local v14    # "y":F
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getSpan()F

    move-result v7

    .line 3016
    .local v7, "pageGroupSpan":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v4, v15, :cond_3

    .line 3017
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Page;

    .line 3018
    .local v6, "p":Lcom/smartisanos/launcher/view/Page;
    div-int v2, v4, v3

    .line 3019
    .local v2, "groupIndex":I
    rem-int v5, v4, v3

    .line 3020
    .local v5, "ingroupIndex":I
    int-to-float v15, v2

    mul-float/2addr v15, v7

    aget-object v16, v10, v5

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    move/from16 v16, v0

    add-float v13, v15, v16

    .line 3021
    .restart local v13    # "x":F
    aget-object v15, v10, v5

    iget v14, v15, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    .line 3022
    .restart local v14    # "y":F
    const/4 v15, 0x0

    invoke-virtual {v6, v13, v14, v15}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 3016
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3010
    .end local v2    # "groupIndex":I
    .end local v4    # "i":I
    .end local v5    # "ingroupIndex":I
    .end local v6    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v7    # "pageGroupSpan":F
    .end local v13    # "x":F
    .end local v14    # "y":F
    :cond_1
    const/4 v15, 0x4

    if-ne v3, v15, :cond_2

    .line 3011
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getPageCenterList4()[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    goto :goto_0

    .line 3012
    :cond_2
    const/16 v15, 0x9

    if-ne v3, v15, :cond_0

    .line 3013
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getPageCenterList9()[Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    goto :goto_0

    .line 3025
    .restart local v4    # "i":I
    .restart local v7    # "pageGroupSpan":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    neg-int v0, v12

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v7

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->setTranslate(FFF)V

    .line 3026
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v15}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->forceUpdateGeometricState()V

    .line 3028
    sget-boolean v15, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v15, :cond_4

    sget-object v15, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "#### after reset current screenIndex = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 3029
    :cond_4
    return-void
.end method

.method public scrollAnimationIsRunning()Z
    .locals 1

    .prologue
    .line 2523
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2524
    const/4 v0, 0x1

    .line 2526
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollTo(IFZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;
    .locals 11
    .param p1, "targetIndex"    # I
    .param p2, "duration"    # F
    .param p3, "needForceFinishTimeLineNOTKill"    # Z
    .param p4, "al"    # Lcom/smartisanos/smengine/Animation$AnimationListener;

    .prologue
    .line 2902
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->scrollAnimationIsRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2903
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "#### scrollto slideanimation != null mSlideAnimation KILL"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2904
    :cond_0
    if-eqz p3, :cond_3

    .line 2905
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->forceFinish()V

    .line 2911
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->caculateScrollStatus()V

    .line 2913
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageView;->getNeedMoveXForParent(F)F

    move-result v8

    .line 2914
    .local v8, "needMoveX":F
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### scrollto, needmovex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "targetIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 2916
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    if-nez v0, :cond_4

    .line 2917
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-direct {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .line 2922
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    .line 2923
    .local v10, "v":Lcom/smartisanos/smengine/math/Vector3f;
    new-instance v9, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v9}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    .line 2924
    .local v9, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0, p2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 2925
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 2926
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    const/4 v1, 0x0

    invoke-virtual {v10}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v2

    invoke-virtual {v10}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v3

    invoke-virtual {v10}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v4

    invoke-virtual {v10}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v5

    add-float/2addr v5, v8

    invoke-virtual {v10}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v6

    invoke-virtual {v10}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v7

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 2927
    if-eqz p4, :cond_5

    .line 2928
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    new-instance v1, Lcom/smartisanos/launcher/view/PageView$12;

    invoke-direct {v1, p0, p4}, Lcom/smartisanos/launcher/view/PageView$12;-><init>(Lcom/smartisanos/launcher/view/PageView;Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 2949
    :goto_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v9, v0, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 2952
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SLIDE:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 2954
    return-object v9

    .line 2907
    .end local v8    # "needMoveX":F
    .end local v9    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    .end local v10    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->kill()V

    goto/16 :goto_0

    .line 2919
    .restart local v8    # "needMoveX":F
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->reset()V

    .line 2920
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setSceneNode(Lcom/smartisanos/smengine/SceneNode;)V

    goto :goto_1

    .line 2947
    .restart local v9    # "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    .restart local v10    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mMySlideAnimationLisenter:Lcom/smartisanos/launcher/view/PageView$MySlideAnimationListener;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    goto :goto_2
.end method

.method protected searchAvailablePageForInstall(Z)Lcom/smartisanos/launcher/view/Page;
    .locals 8
    .param p1, "direction"    # Z

    .prologue
    .line 377
    const/4 v2, 0x0

    .line 378
    .local v2, "page":Lcom/smartisanos/launcher/view/Page;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v5, "visiblePageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 380
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v7

    if-nez v7, :cond_0

    .line 381
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 385
    .local v4, "visiblePageCount":I
    if-eqz p1, :cond_5

    .line 386
    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 387
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 388
    .restart local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleForDB()Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "titleName":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 386
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 392
    :cond_2
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 393
    move-object v2, v1

    goto :goto_2

    .line 395
    :cond_3
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getFirstEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 396
    move-object v2, v1

    .line 412
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v3    # "titleName":Ljava/lang/String;
    :cond_4
    :goto_3
    return-object v2

    .line 404
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    if-ge v0, v4, :cond_4

    .line 405
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 406
    .restart local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getFirstEmptyCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 407
    move-object v2, v1

    .line 408
    goto :goto_3

    .line 404
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public setBoundingRect(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)V
    .locals 4
    .param p1, "minPoint"    # Lcom/smartisanos/smengine/math/Vector2f;
    .param p2, "maxPoint"    # Lcom/smartisanos/smengine/math/Vector2f;

    .prologue
    .line 1495
    iget v0, p1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v1, p1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    iget v2, p2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v3, p2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/PageView;->setLocalBoundingVolume(FFFF)V

    .line 1496
    return-void
.end method

.method public setConfirmPasswordPage(Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/smartisanos/launcher/view/PageView;->mConfirmPasswordPage:Lcom/smartisanos/launcher/view/Page;

    .line 111
    return-void
.end method

.method public setDisplayPageInSingleMode(Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "p"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/smartisanos/launcher/view/PageView;->displayPageInSingleMode:Lcom/smartisanos/launcher/view/Page;

    .line 1559
    return-void
.end method

.method public setObserver(Lcom/smartisanos/launcher/view/PageView;Lcom/smartisanos/launcher/view/AnimationController;)V
    .locals 2
    .param p1, "view"    # Lcom/smartisanos/launcher/view/PageView;
    .param p2, "controller"    # Lcom/smartisanos/launcher/view/AnimationController;

    .prologue
    .line 3284
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "multiSelectCellUp"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/NotificationManager;->removeObserver(Ljava/lang/String;)V

    .line 3285
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "titleViewLongPress"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/NotificationManager;->removeObserver(Ljava/lang/String;)V

    .line 3286
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "titleViewUp"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/NotificationManager;->removeObserver(Ljava/lang/String;)V

    .line 3287
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "multiSelectCellUp"

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/NotificationManager;->addObserver(Ljava/lang/String;Lcom/smartisanos/smengine/NotificationManager$Observer;)V

    .line 3288
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "titleViewLongPress"

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/NotificationManager;->addObserver(Ljava/lang/String;Lcom/smartisanos/smengine/NotificationManager$Observer;)V

    .line 3289
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "titleViewUp"

    invoke-virtual {v0, v1, p1}, Lcom/smartisanos/smengine/NotificationManager;->addObserver(Ljava/lang/String;Lcom/smartisanos/smengine/NotificationManager$Observer;)V

    .line 3291
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "cellExitPage"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/NotificationManager;->removeObserver(Ljava/lang/String;)V

    .line 3292
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "relayoutByUninstall"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/NotificationManager;->removeObserver(Ljava/lang/String;)V

    .line 3293
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "cellCollideEnter"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/NotificationManager;->removeObserver(Ljava/lang/String;)V

    .line 3294
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "cellCollideExit"

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/NotificationManager;->removeObserver(Ljava/lang/String;)V

    .line 3295
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "cellExitPage"

    invoke-virtual {v0, v1, p2}, Lcom/smartisanos/smengine/NotificationManager;->addObserver(Ljava/lang/String;Lcom/smartisanos/smengine/NotificationManager$Observer;)V

    .line 3296
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "relayoutByUninstall"

    invoke-virtual {v0, v1, p2}, Lcom/smartisanos/smengine/NotificationManager;->addObserver(Ljava/lang/String;Lcom/smartisanos/smengine/NotificationManager$Observer;)V

    .line 3297
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "cellCollideEnter"

    invoke-virtual {v0, v1, p2}, Lcom/smartisanos/smengine/NotificationManager;->addObserver(Ljava/lang/String;Lcom/smartisanos/smengine/NotificationManager$Observer;)V

    .line 3298
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v0

    const-string v1, "cellCollideExit"

    invoke-virtual {v0, v1, p2}, Lcom/smartisanos/smengine/NotificationManager;->addObserver(Ljava/lang/String;Lcom/smartisanos/smengine/NotificationManager$Observer;)V

    .line 3299
    return-void
.end method

.method public setPageTo(I)V
    .locals 6
    .param p1, "screenIndex"    # I

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->caculateScrollStatus()V

    .line 124
    int-to-float v2, p1

    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/PageView;->getNeedMoveXForParent(F)F

    move-result v0

    .line 125
    .local v0, "needMoveX":F
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v1

    .line 126
    .local v1, "v":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v4

    invoke-virtual {v1}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->setTranslate(FFF)V

    .line 127
    return-void
.end method

.method public setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "pc"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 1863
    iput-object p1, p0, Lcom/smartisanos/launcher/view/PageView;->mCurrentPageCell:Lcom/smartisanos/launcher/view/Cell;

    .line 1864
    return-void
.end method

.method public setWaitingToLockPage(Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/smartisanos/launcher/view/PageView;->mWaitingToLockPage:Lcom/smartisanos/launcher/view/Page;

    .line 97
    return-void
.end method

.method public showAppTextAndFlag(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V
    .locals 6
    .param p1, "al"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p2, "appNametime"    # F
    .param p3, "flagTime"    # F

    .prologue
    .line 1371
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1372
    iget-object v4, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 1373
    .local v2, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2, p1, p2, p3}, Lcom/smartisanos/launcher/view/Page;->showAppTextAndFlag(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    .line 1371
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1375
    .end local v2    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v0

    .line 1376
    .local v0, "cellOnDock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 1377
    .local v3, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v3, p1, p2, p3}, Lcom/smartisanos/launcher/view/Cell;->showAppNameAndFlagAnimation(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V

    goto :goto_1

    .line 1379
    .end local v3    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    return-void
.end method

.method public showOrHideGaussianBatchBackground(Z)V
    .locals 4
    .param p1, "showOrHide"    # Z

    .prologue
    .line 3108
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v0

    .line 3109
    .local v0, "allPage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 3110
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Page;

    .line 3111
    .local v2, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v2, p1}, Lcom/smartisanos/launcher/view/Page;->showOrHideGaussianBatchBackground(Z)V

    .line 3109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3113
    .end local v2    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    return-void
.end method

.method protected showToastNoSpaceForInstall()V
    .locals 2

    .prologue
    .line 516
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/launcher/view/PageView$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/view/PageView$1;-><init>(Lcom/smartisanos/launcher/view/PageView;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 527
    return-void
.end method

.method public sinkPageAndShowDotView(II)V
    .locals 2
    .param p1, "dotCount"    # I
    .param p2, "dotIndex"    # I

    .prologue
    .line 2663
    const v0, 0x3dcccccd    # 0.1f

    const v1, 0x3f7d70a4    # 0.99f

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(IIFF)V

    .line 2664
    return-void
.end method

.method public sinkPageAndShowDotView(IIFF)V
    .locals 11
    .param p1, "dotCount"    # I
    .param p2, "dotIndex"    # I
    .param p3, "duration"    # F
    .param p4, "targetScale"    # F

    .prologue
    const/4 v1, 0x1

    .line 2667
    iput-boolean v1, p0, Lcom/smartisanos/launcher/view/PageView;->mIsPageSinked:Z

    .line 2668
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 2669
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v2, v1}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->setOnScroll(Z)V

    .line 2670
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v2, v3, :cond_3

    .line 2671
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2672
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 2675
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-nez v2, :cond_1

    .line 2676
    new-instance v2, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 2680
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v3, Lcom/smartisanos/launcher/view/PageView$10;

    invoke-direct {v3, p0}, Lcom/smartisanos/launcher/view/PageView$10;-><init>(Lcom/smartisanos/launcher/view/PageView;)V

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 2686
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_2

    .line 2687
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Page;

    .line 2688
    .local v9, "p":Lcom/smartisanos/launcher/view/Page;
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2689
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 2690
    invoke-virtual {v0, p3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 2691
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 2692
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Page;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    .line 2693
    .local v10, "ss":Lcom/smartisanos/smengine/math/Vector3f;
    iget v2, v10, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v10, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v10, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    const/high16 v7, 0x3f800000    # 1.0f

    move v5, p4

    move v6, p4

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 2694
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 2686
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2678
    .end local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v8    # "i":I
    .end local v9    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v10    # "ss":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->reset()V

    goto :goto_0

    .line 2696
    .restart local v8    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 2698
    .end local v8    # "i":I
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/launcher/view/DotView;->updateDotView(II)V

    .line 2699
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_APPEAR:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v1, v2, p2}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 2700
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_SINK:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    invoke-virtual {v1, v2, p2}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 2701
    return-void
.end method

.method public slidingDockLeftAnimation()V
    .locals 29

    .prologue
    .line 2590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 2593
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    const/high16 v4, 0x200000

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 2594
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v12

    .line 2595
    .local v12, "currentScreenIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/view/PageView;->getGroupNum()I

    move-result v16

    .line 2596
    .local v16, "groupNum":I
    move/from16 v0, v16

    new-array v0, v0, [Lcom/smartisanos/launcher/view/Page;

    move-object/from16 v21, v0

    .line 2597
    .local v21, "pageInScreen":[Lcom/smartisanos/launcher/view/Page;
    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v25, v0

    .line 2598
    .local v25, "x":[F
    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v27, v0

    .line 2599
    .local v27, "y":[F
    const/4 v10, 0x0

    .line 2600
    .local v10, "centerX":F
    const/4 v11, 0x0

    .line 2601
    .local v11, "centerY":F
    new-instance v19, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct/range {v19 .. v19}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 2602
    .local v19, "location":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 2603
    mul-int v3, v12, v16

    add-int v3, v3, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v20

    .line 2604
    .local v20, "page":Lcom/smartisanos/launcher/view/Page;
    aput-object v20, v21, v17

    .line 2605
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Page;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 2606
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v3

    aput v3, v25, v17

    .line 2607
    invoke-virtual/range {v19 .. v19}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v3

    aput v3, v27, v17

    .line 2608
    aget v3, v25, v17

    add-float/2addr v10, v3

    .line 2609
    aget v3, v27, v17

    add-float/2addr v11, v3

    .line 2602
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 2611
    .end local v20    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    move/from16 v0, v16

    int-to-float v3, v0

    div-float/2addr v10, v3

    .line 2612
    move/from16 v0, v16

    int-to-float v3, v0

    div-float/2addr v11, v3

    .line 2614
    new-instance v3, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 2615
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    .line 2616
    aget-object v20, v21, v17

    .line 2618
    .restart local v20    # "page":Lcom/smartisanos/launcher/view/Page;
    aget v3, v25, v17

    sub-float v26, v3, v10

    .line 2619
    .local v26, "xToCenter":F
    aget v3, v27, v17

    sub-float v28, v3, v11

    .line 2620
    .local v28, "yToCenter":F
    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/view/Page;->getLocation()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v18

    .line 2621
    .local v18, "loc":Lcom/smartisanos/smengine/math/Vector3f;
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;->getX()F

    move-result v13

    .line 2622
    .local v13, "fromX":F
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;->getY()F

    move-result v14

    .line 2623
    .local v14, "fromY":F
    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/smengine/math/Vector3f;->getZ()F

    move-result v15

    .line 2624
    .local v15, "fromZ":F
    const v3, -0x430a3d80    # -0.029999971f

    mul-float v3, v3, v26

    add-float v22, v13, v3

    .line 2625
    .local v22, "toX":F
    const v3, -0x430a3d80    # -0.029999971f

    mul-float v3, v3, v28

    add-float v23, v14, v3

    .line 2626
    .local v23, "toY":F
    move/from16 v24, v15

    .line 2628
    .local v24, "toZ":F
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2629
    .local v2, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 2630
    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 2631
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 2632
    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3f7851ec    # 0.97f

    const v8, 0x3f7851ec    # 0.97f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 2633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 2634
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v2    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2635
    .restart local v2    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v3, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 2636
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 2637
    const/4 v3, 0x0

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 2638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 2640
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v2    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2641
    .restart local v2    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 2642
    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 2643
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 2644
    const/4 v3, 0x1

    const v4, 0x3f7851ec    # 0.97f

    const v5, 0x3f7851ec    # 0.97f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 2645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 2646
    new-instance v2, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v2    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2647
    .restart local v2    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 2648
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 2649
    const/4 v3, 0x0

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v6, v24

    move v7, v13

    move v8, v14

    move v9, v15

    invoke-virtual/range {v2 .. v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 2650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v3, v4, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 2615
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 2652
    .end local v2    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v13    # "fromX":F
    .end local v14    # "fromY":F
    .end local v15    # "fromZ":F
    .end local v18    # "loc":Lcom/smartisanos/smengine/math/Vector3f;
    .end local v20    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v22    # "toX":F
    .end local v23    # "toY":F
    .end local v24    # "toZ":F
    .end local v26    # "xToCenter":F
    .end local v28    # "yToCenter":F
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v4, Lcom/smartisanos/launcher/view/PageView$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/smartisanos/launcher/view/PageView$9;-><init>(Lcom/smartisanos/launcher/view/PageView;)V

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 2659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 2660
    return-void
.end method

.method public slidingDockRightAnimation()V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const v13, 0x3dcccccd    # 0.1f

    const/4 v1, 0x1

    const v5, 0x3f83d70a    # 1.03f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2552
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2553
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 2555
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    const/high16 v4, 0x200000

    invoke-virtual {v3, v4, v1}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 2556
    new-instance v3, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v3}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 2557
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v11

    .line 2558
    .local v11, "currentScreenIndex":I
    invoke-virtual {p0, v11}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v12

    .line 2559
    .local v12, "page":Lcom/smartisanos/launcher/view/Page;
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2560
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 2561
    invoke-virtual {v0, v13}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 2562
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    move v3, v2

    move v4, v2

    move v6, v5

    move v7, v2

    .line 2563
    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 2564
    iget-object v3, p0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 2566
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .end local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-direct {v0, v12}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2567
    .restart local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, v8}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 2568
    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 2569
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    move-object v3, v0

    move v4, v1

    move v6, v5

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    .line 2570
    invoke-virtual/range {v3 .. v10}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 2571
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1, v13, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 2572
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v2, Lcom/smartisanos/launcher/view/PageView$8;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/PageView$8;-><init>(Lcom/smartisanos/launcher/view/PageView;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 2585
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 2587
    return-void
.end method

.method public startScroll()F
    .locals 2

    .prologue
    .line 2541
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->scrollAnimationIsRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2542
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->kill()V

    .line 2544
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->caculateScrollStatus()V

    .line 2545
    iget v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupNum:I

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/view/PageView;->sinkPageAndShowDotView(II)V

    .line 2546
    iget v0, p0, Lcom/smartisanos/launcher/view/PageView;->mMaxTranX:F

    iget v1, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupSpanX:F

    div-float/2addr v0, v1

    return v0
.end method

.method public switchPageMode(Lcom/smartisanos/launcher/view/Page;)Z
    .locals 1
    .param p1, "userSpecified"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 1393
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;I)Z

    move-result v0

    return v0
.end method

.method public switchPageMode(Lcom/smartisanos/launcher/view/Page;I)Z
    .locals 3
    .param p1, "userSpecified"    # Lcom/smartisanos/launcher/view/Page;
    .param p2, "action"    # I

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1402
    if-nez p2, :cond_0

    .line 1403
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/StatusManager;->canSWitchPage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1404
    sget-object v1, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "can not switch page for status is wrong"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1405
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/StatusManager;->dumpStatus()V

    .line 1430
    :goto_0
    return v0

    .line 1411
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1412
    sget-object v1, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "switchPageMode nothing to do by setting button is down"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 1416
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/AnimationController;->allAnimationForceFinish()V

    .line 1419
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DotView;->forceKillAllDotAnimation()V

    .line 1420
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/DotView;->setVisibility(Z)V

    .line 1422
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 1423
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 1425
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageViewAnimation:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->isMultipageInOneScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1426
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->resetAllPageBackgroundNoAnimation()V

    .line 1428
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForScale:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setScale(FFF)V

    .line 1429
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mPageViewAnimation:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->switchPageViewByMode(Lcom/smartisanos/launcher/view/Page;I)V

    .line 1430
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public unlockScreenAnimation()V
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/AnimationController;->playUnlockAnimation()V

    .line 870
    return-void
.end method

.method public unsinkPageAndhideDotView()V
    .locals 1

    .prologue
    .line 2705
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageView;->unsinkPageAndhideDotView(F)V

    .line 2707
    return-void
.end method

.method public unsinkPageAndhideDotView(F)V
    .locals 12
    .param p1, "duration"    # F

    .prologue
    const/4 v1, 0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 2709
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/PageView;->mIsPageSinked:Z

    if-eqz v2, :cond_3

    .line 2710
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v2, v3, :cond_4

    .line 2711
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2712
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->kill()V

    .line 2714
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    if-nez v2, :cond_1

    .line 2715
    new-instance v2, Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-direct {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;-><init>()V

    iput-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 2720
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_2

    .line 2721
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/view/Page;

    .line 2722
    .local v9, "p":Lcom/smartisanos/launcher/view/Page;
    new-instance v0, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-direct {v0, v9}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;)V

    .line 2723
    .local v0, "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setDuration(F)V

    .line 2724
    invoke-virtual {v0, v11}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setPreserveNodeScale(Z)V

    .line 2725
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/Page;->getScale()Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v10

    .line 2726
    .local v10, "ss":Lcom/smartisanos/smengine/math/Vector3f;
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setEasingInOutType(I)V

    .line 2727
    iget v2, v10, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v10, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v10, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/smartisanos/smengine/SceneNodeTweenAnimation;->setFromTo(IFFFFFF)V

    .line 2728
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimation(FLcom/smartisanos/smengine/Animation;)V

    .line 2720
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2717
    .end local v0    # "anim":Lcom/smartisanos/smengine/SceneNodeTweenAnimation;
    .end local v8    # "i":I
    .end local v9    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v10    # "ss":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->reset()V

    goto :goto_0

    .line 2730
    .restart local v8    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 2731
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    new-instance v2, Lcom/smartisanos/launcher/view/PageView$11;

    invoke-direct {v2, p0}, Lcom/smartisanos/launcher/view/PageView$11;-><init>(Lcom/smartisanos/launcher/view/PageView;)V

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 2755
    .end local v8    # "i":I
    :cond_3
    :goto_2
    return-void

    .line 2746
    :cond_4
    iput-boolean v11, p0, Lcom/smartisanos/launcher/view/PageView;->mIsPageSinked:Z

    .line 2747
    iget-boolean v2, p0, Lcom/smartisanos/launcher/view/PageView;->mIsInMultiSelectMode:Z

    if-eqz v2, :cond_5

    .line 2748
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->notifyScreenChange()V

    .line 2750
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v2

    invoke-virtual {v2, v1, v11}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 2751
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v1, v11}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->setOnScroll(Z)V

    goto :goto_2
.end method

.method public updateCell(J)V
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 574
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_0

    .line 575
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/smartisanos/launcher/view/MainView;->getCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 576
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {p0, v0, p1, p2}, Lcom/smartisanos/launcher/view/PageView;->updateCell(Lcom/smartisanos/launcher/view/Cell;J)V

    .line 578
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-void
.end method

.method public updateCell(Lcom/smartisanos/launcher/view/Cell;J)V
    .locals 6
    .param p1, "cell"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "id"    # J

    .prologue
    .line 581
    invoke-static {p2, p3}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    .line 582
    .local v0, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-nez p1, :cond_0

    .line 583
    invoke-virtual {p0, p2, p3}, Lcom/smartisanos/launcher/view/PageView;->getInvisiblePageCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object p1

    .line 585
    :cond_0
    if-nez p1, :cond_2

    .line 586
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 587
    .local v1, "selectCell":Lcom/smartisanos/launcher/view/Cell;
    if-nez v1, :cond_1

    .line 588
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 589
    if-nez v1, :cond_1

    .line 590
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TrashView;->getWaitingUninstallAppInfo()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    .line 593
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_2

    .line 594
    move-object p1, v1

    .line 597
    .end local v1    # "selectCell":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    if-eqz p1, :cond_4

    .line 598
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "DEBUG"

    const-string v4, "updateCell setItemInfo !"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_3
    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/view/Cell;->setItemInfo(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 600
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/smartisanos/launcher/view/Cell;->updateForegroundRect(Z)V

    .line 601
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 602
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 607
    :goto_0
    return-void

    .line 605
    :cond_4
    sget-object v2, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCell error ! can\'t get cell by id ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCellInfo()V
    .locals 4

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->updatePageIndex()V

    .line 143
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    .local v2, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 145
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 146
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 147
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->updatePageIndexInCell()V

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    return-void
.end method

.method public updateCells(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 532
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-nez p1, :cond_1

    .line 533
    sget-object v7, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "A140"

    const-string v9, "updateCells items is null"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 537
    .local v3, "length":I
    if-nez v3, :cond_2

    .line 538
    sget-object v7, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "A140"

    const-string v9, "updateCells items size is 0"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_2
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "A140"

    const-string v9, "updateCells begin !"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_3
    const/16 v5, 0x14

    .line 543
    .local v5, "maxBatchSize":I
    const/4 v6, 0x0

    .line 544
    .local v6, "needSplit":Z
    move v0, v3

    .line 545
    .local v0, "batchSize":I
    if-le v3, v5, :cond_4

    .line 546
    const/4 v6, 0x1

    .line 547
    move v0, v5

    .line 549
    :cond_4
    const/4 v1, 0x0

    .line 550
    .local v1, "index":I
    :cond_5
    :goto_1
    if-ge v1, v0, :cond_7

    .line 551
    add-int/lit8 v1, v1, 0x1

    .line 552
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 553
    .local v2, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v2, :cond_5

    .line 554
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "A140"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateCell for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/ItemInfo;->toSimpleInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_6
    iget-wide v8, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {p0, v8, v9}, Lcom/smartisanos/launcher/view/PageView;->updateCell(J)V

    goto :goto_1

    .line 558
    .end local v2    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_7
    if-eqz v6, :cond_8

    .line 559
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 561
    new-instance v7, Lcom/smartisanos/launcher/view/PageView$2;

    const/16 v8, 0x64

    invoke-direct {v7, p0, v8, v4}, Lcom/smartisanos/launcher/view/PageView$2;-><init>(Lcom/smartisanos/launcher/view/PageView;ILjava/util/List;)V

    const/4 v8, 0x0

    .line 566
    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/view/PageView$2;->send(F)V

    goto :goto_0

    .line 568
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_8
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/smartisanos/launcher/view/PageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "launcher_update_icon"

    const-string v9, "step 3 update UI finish!"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateFlagVisibility()V
    .locals 3

    .prologue
    .line 1986
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getVisiblePageCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1987
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/PageView;->getPageByIndex(I)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    .line 1988
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz v1, :cond_0

    .line 1989
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->updateFlagVisibility()V

    .line 1986
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1992
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    return-void
.end method

.method public updatePageIndex()V
    .locals 5

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v2

    .line 131
    .local v2, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 132
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 133
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 134
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    iput v0, v1, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    .line 135
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/TitleView;->updateGaussianMeshName()V

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    return-void
.end method

.method public updatePageList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/view/Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1505
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1506
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 1507
    .local v0, "pg":Lcom/smartisanos/launcher/view/Page;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1509
    .end local v0    # "pg":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    return-void
.end method

.method public updatePageTitleAndCover()V
    .locals 4

    .prologue
    .line 358
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v3, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v2, v3, :cond_1

    .line 359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 360
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 361
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    if-eqz v1, :cond_0

    .line 362
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->updateTitle()V

    .line 363
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->updateCover()V

    .line 359
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "i":I
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->updateGeometricState()V

    .line 368
    return-void
.end method

.method public updatePageViewBV(I)V
    .locals 9
    .param p1, "targetMode"    # I

    .prologue
    .line 1106
    invoke-static {p1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v3

    .line 1107
    .local v3, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget v0, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    .line 1108
    .local v0, "leftBottomX":F
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v6, v6

    iget v7, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_height:F

    sub-float/2addr v6, v7

    iget v7, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_bottom:F

    sub-float v1, v6, v7

    .line 1109
    .local v1, "leftBottomY":F
    new-instance v2, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 1110
    .local v2, "p":Lcom/smartisanos/smengine/math/Vector2f;
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, v6

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v7, v7

    invoke-static {v0, v1, v6, v7, v2}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 1111
    iget v0, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 1112
    iget v1, v2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 1114
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, v6

    iget v7, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_right:F

    sub-float v4, v6, v7

    .line 1115
    .local v4, "rightTopX":F
    sget v6, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v6, v6

    iget v7, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    add-float v5, v6, v7

    .line 1116
    .local v5, "rightTopY":F
    sget v6, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v6, v6

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v7, v7

    invoke-static {v4, v5, v6, v7, v2}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 1117
    iget v4, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 1118
    iget v5, v2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 1120
    new-instance v6, Lcom/smartisanos/smengine/math/Vector2f;

    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-direct {v6, v7, v1}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    new-instance v7, Lcom/smartisanos/smengine/math/Vector2f;

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-direct {v7, v8, v5}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    invoke-virtual {p0, v6, v7}, Lcom/smartisanos/launcher/view/PageView;->setBoundingRect(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)V

    .line 1121
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->updateWorldBoundingVolume()V

    .line 1122
    return-void
.end method

.method public updateScroll(F)V
    .locals 12
    .param p1, "deltaX"    # F

    .prologue
    const/16 v11, 0x3e6

    const v10, 0x4479c000    # 999.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/16 v8, 0x3e7

    .line 2758
    const/4 v3, 0x0

    .line 2759
    .local v3, "exceed":Z
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->caculateScrollParameters()V

    .line 2760
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mScrollX:F

    add-float/2addr v6, p1

    iput v6, p0, Lcom/smartisanos/launcher/view/PageView;->mScrollX:F

    .line 2761
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupSpanX:F

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v6, v7

    float-to-int v5, v6

    .line 2762
    .local v5, "spanX":I
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mScrollX:F

    iget v7, p0, Lcom/smartisanos/launcher/view/PageView;->mMinTranX:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .line 2763
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mMinTranX:F

    iget v7, p0, Lcom/smartisanos/launcher/view/PageView;->mScrollX:F

    sub-float/2addr v6, v7

    int-to-float v7, v5

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 2764
    .local v4, "index":I
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mMinTranX:F

    iget v7, p0, Lcom/smartisanos/launcher/view/PageView;->mScrollX:F

    sub-float/2addr v6, v7

    int-to-float v7, v5

    div-float/2addr v6, v7

    int-to-float v7, v4

    sub-float v2, v6, v7

    .line 2765
    .local v2, "distance":F
    const/16 v6, 0x3e8

    if-ge v4, v6, :cond_2

    .line 2766
    if-nez v4, :cond_1

    .line 2767
    .local v0, "a":F
    :goto_0
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->SCROLL_PARA_TABLE:[F

    aget v1, v6, v4

    .line 2768
    .local v1, "b":F
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mMinTranX:F

    sub-float v7, v9, v2

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    mul-float v7, v1, v2

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    .line 2773
    .end local v1    # "b":F
    :goto_1
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    iget v7, p0, Lcom/smartisanos/launcher/view/PageView;->mMinTranX:F

    iget v8, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupSpanX:F

    sub-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 2774
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mMinTranX:F

    iget v7, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupSpanX:F

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    .line 2775
    const/4 v3, 0x1

    .line 2797
    .end local v0    # "a":F
    .end local v2    # "distance":F
    .end local v4    # "index":I
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    iget v7, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->setTranslateX(F)V

    .line 2798
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/PageParentForTranslate;->updateGeometricState()V

    .line 2800
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/DockView;->getDotView()Lcom/smartisanos/launcher/view/DotView;

    move-result-object v6

    iget v7, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/view/DotView;->translateMovedNode(F)V

    .line 2801
    return-void

    .line 2766
    .restart local v2    # "distance":F
    .restart local v4    # "index":I
    :cond_1
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->SCROLL_PARA_TABLE:[F

    add-int/lit8 v7, v4, -0x1

    aget v0, v6, v7

    goto :goto_0

    .line 2770
    :cond_2
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->SCROLL_PARA_TABLE:[F

    aget v6, v6, v8

    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->SCROLL_PARA_TABLE:[F

    aget v7, v7, v11

    sub-float v0, v6, v7

    .line 2771
    .restart local v0    # "a":F
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mMinTranX:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->SCROLL_PARA_TABLE:[F

    aget v7, v7, v8

    sub-float/2addr v6, v7

    int-to-float v7, v4

    add-float/2addr v7, v2

    sub-float/2addr v7, v10

    mul-float/2addr v7, v0

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    goto :goto_1

    .line 2778
    .end local v0    # "a":F
    .end local v2    # "distance":F
    .end local v4    # "index":I
    :cond_3
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mScrollX:F

    iget v7, p0, Lcom/smartisanos/launcher/view/PageView;->mMaxTranX:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_6

    .line 2779
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mScrollX:F

    iget v7, p0, Lcom/smartisanos/launcher/view/PageView;->mMaxTranX:F

    sub-float/2addr v6, v7

    int-to-float v7, v5

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 2780
    .restart local v4    # "index":I
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mScrollX:F

    iget v7, p0, Lcom/smartisanos/launcher/view/PageView;->mMaxTranX:F

    sub-float/2addr v6, v7

    int-to-float v7, v5

    div-float/2addr v6, v7

    int-to-float v7, v4

    sub-float v2, v6, v7

    .line 2781
    .restart local v2    # "distance":F
    const/16 v6, 0x3e8

    if-ge v4, v6, :cond_5

    .line 2782
    if-nez v4, :cond_4

    .line 2783
    .restart local v0    # "a":F
    :goto_3
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->SCROLL_PARA_TABLE:[F

    aget v1, v6, v4

    .line 2784
    .restart local v1    # "b":F
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mMaxTranX:F

    sub-float v7, v9, v2

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    mul-float v7, v1, v2

    add-float/2addr v6, v7

    iput v6, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    .line 2789
    .end local v1    # "b":F
    :goto_4
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    iget v7, p0, Lcom/smartisanos/launcher/view/PageView;->mMaxTranX:F

    iget v8, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupSpanX:F

    add-float/2addr v7, v8

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 2790
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mMaxTranX:F

    iget v7, p0, Lcom/smartisanos/launcher/view/PageView;->mPageGroupSpanX:F

    add-float/2addr v6, v7

    iput v6, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    .line 2791
    const/4 v3, 0x1

    goto :goto_2

    .line 2782
    .end local v0    # "a":F
    :cond_4
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->SCROLL_PARA_TABLE:[F

    add-int/lit8 v7, v4, -0x1

    aget v0, v6, v7

    goto :goto_3

    .line 2786
    :cond_5
    iget-object v6, p0, Lcom/smartisanos/launcher/view/PageView;->SCROLL_PARA_TABLE:[F

    aget v6, v6, v8

    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->SCROLL_PARA_TABLE:[F

    aget v7, v7, v11

    sub-float v0, v6, v7

    .line 2787
    .restart local v0    # "a":F
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mMaxTranX:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->SCROLL_PARA_TABLE:[F

    aget v7, v7, v8

    add-float/2addr v6, v7

    int-to-float v7, v4

    add-float/2addr v7, v2

    sub-float/2addr v7, v10

    mul-float/2addr v7, v0

    add-float/2addr v6, v7

    iput v6, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    goto :goto_4

    .line 2794
    .end local v0    # "a":F
    .end local v2    # "distance":F
    .end local v4    # "index":I
    :cond_6
    iget v6, p0, Lcom/smartisanos/launcher/view/PageView;->mScrollX:F

    iput v6, p0, Lcom/smartisanos/launcher/view/PageView;->mCurTranX:F

    goto/16 :goto_2
.end method

.method public updateScrollAnimationProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 3247
    iput p1, p0, Lcom/smartisanos/launcher/view/PageView;->mScrollAnimationProgressForGetScreenIndex:F

    .line 3248
    return-void
.end method

.method public upgradePageTitle(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/AnimationTimeLine;F)V
    .locals 10
    .param p1, "anim"    # Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;
    .param p2, "time_line"    # Lcom/smartisanos/smengine/AnimationTimeLine;
    .param p3, "anim_time"    # F

    .prologue
    const v9, 0x3ee66666    # 0.45f

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1885
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageView;->getAllPagesInWindow()Ljava/util/ArrayList;

    move-result-object v1

    .line 1886
    .local v1, "display_pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 1887
    iget-object v5, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 1888
    .local v3, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1889
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 1890
    .local v0, "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    .line 1891
    .local v4, "pc":Lcom/smartisanos/launcher/view/Cell;
    sget-object v6, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->TITLE_SHOW_EYE_AND_LOCK:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    if-ne v6, p1, :cond_1

    .line 1892
    invoke-virtual {v4, p2, v9}, Lcom/smartisanos/launcher/view/Cell;->showCellIntoPageEditModeAnimationCover(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    goto :goto_1

    .line 1893
    :cond_1
    sget-object v6, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->TITLE_SHOW_NAME:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    if-ne v6, p1, :cond_0

    .line 1894
    invoke-virtual {v4, p2, v9}, Lcom/smartisanos/launcher/view/Cell;->hideCellIntoPageEditModeAnimationCover(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    goto :goto_1

    .line 1897
    .end local v4    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getAnimation()Lcom/smartisanos/launcher/animations/PageAnimation;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/smartisanos/launcher/animations/PageAnimation;->switchTitleMode(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    .line 1886
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1899
    .end local v0    # "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_3
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 1900
    .restart local v0    # "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    .line 1901
    .restart local v4    # "pc":Lcom/smartisanos/launcher/view/Cell;
    sget-object v6, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->TITLE_SHOW_EYE_AND_LOCK:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    if-ne v6, p1, :cond_5

    .line 1902
    invoke-virtual {v4, v8, v7}, Lcom/smartisanos/launcher/view/Cell;->showCellIntoPageEditModeAnimationCover(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    goto :goto_3

    .line 1903
    :cond_5
    sget-object v6, Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;->TITLE_SHOW_NAME:Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;

    if-ne v6, p1, :cond_4

    .line 1904
    invoke-virtual {v4, v8, v7}, Lcom/smartisanos/launcher/view/Cell;->hideCellIntoPageEditModeAnimationCover(Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    goto :goto_3

    .line 1907
    .end local v4    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_6
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getAnimation()Lcom/smartisanos/launcher/animations/PageAnimation;

    move-result-object v5

    invoke-virtual {v5, p1, v8, v7}, Lcom/smartisanos/launcher/animations/PageAnimation;->switchTitleMode(Lcom/smartisanos/launcher/animations/PageAnimation$PAGE_ANIMATION;Lcom/smartisanos/smengine/AnimationTimeLine;F)V

    goto :goto_2

    .line 1911
    .end local v0    # "allpc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v3    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_7
    return-void
.end method

.method public writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V
    .locals 10
    .param p1, "parent"    # Lorg/w3c/dom/Element;
    .param p2, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 3117
    const-string v7, "PageView"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 3118
    .local v0, "element":Lorg/w3c/dom/Element;
    const-string v7, "mPageListCount"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3119
    const-string v7, "mInvisiblePageList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3120
    const-string v7, "pageObjectNameListCount"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->pageObjectNameList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3121
    const-string v7, "mPageParentForScale"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForScale:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3122
    const-string v7, "mPageParentForTranslate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mPageParentForTranslate:Lcom/smartisanos/launcher/view/PageParentForTranslate;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3123
    const-string v7, "displayPageInSingleMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->displayPageInSingleMode:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3124
    const-string v7, "mCurrentPageCell"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mCurrentPageCell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3125
    const-string v7, "mSlideAnimation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mSlideAnimation:Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3126
    const-string v7, "mPageSinkAnimation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mPageSinkAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3127
    const-string v7, "mPageViewAnimation"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mPageViewAnimation:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    const-string v7, "mIsPageSinked"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/smartisanos/launcher/view/PageView;->mIsPageSinked:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3129
    const-string v7, "mIsInMultiSelectMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/smartisanos/launcher/view/PageView;->mIsInMultiSelectMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    const-string v7, "mIsInPageSwitchMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/smartisanos/launcher/view/PageView;->mIsInPageSwitchMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3131
    const-string v7, "mIsInFloatPageMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/smartisanos/launcher/view/PageView;->mIsInFloatPageMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3132
    const-string v7, "mWaitingToLockPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mWaitingToLockPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3133
    const-string v7, "mConfirmPasswordPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mConfirmPasswordPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3134
    const-string v7, "mSettingEnableShowAppName"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/smartisanos/launcher/view/PageView;->mSettingEnableShowAppName:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3135
    const-string v7, "mAnimationController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/view/PageView;->mAnimationController:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    const-string v7, "PageObjectNames"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 3137
    .local v5, "pageObjectNames":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->pageObjectNameList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 3138
    const-string v7, "PageObjName"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 3139
    .local v4, "pageObjName":Lorg/w3c/dom/Element;
    const-string v7, "index"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3140
    const-string v8, "name"

    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->pageObjectNameList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    invoke-interface {v5, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3143
    .end local v4    # "pageObjName":Lorg/w3c/dom/Element;
    :cond_0
    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3144
    const-string v7, "VisiblePages"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    .line 3145
    .local v6, "visiblePages":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    :goto_1
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 3146
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 3147
    .local v3, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v3, v6, p2}, Lcom/smartisanos/launcher/view/Page;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 3145
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3149
    .end local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3150
    const-string v7, "InvisiblePages"

    invoke-interface {p2, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 3151
    .local v2, "invisiblePages":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    :goto_2
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 3152
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageView;->mInvisiblePageList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Page;

    .line 3153
    .restart local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v3, v2, p2}, Lcom/smartisanos/launcher/view/Page;->writeXML(Lorg/w3c/dom/Element;Lorg/w3c/dom/Document;)V

    .line 3151
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3155
    .end local v3    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_2
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3157
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3158
    return-void
.end method
