.class Lcom/smartisanos/launcher/view/Cell$8;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->cellUpOnPageView(Lcom/smartisanos/launcher/view/Page;FZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Cell;

.field final synthetic val$al:Lcom/smartisanos/smengine/Animation$AnimationListener;

.field final synthetic val$posindex:I

.field final synthetic val$targetPage:Lcom/smartisanos/launcher/view/Page;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/Animation$AnimationListener;Lcom/smartisanos/launcher/view/Page;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 1914
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Cell$8;->val$al:Lcom/smartisanos/smengine/Animation$AnimationListener;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/Cell$8;->val$targetPage:Lcom/smartisanos/launcher/view/Page;

    iput p4, p0, Lcom/smartisanos/launcher/view/Cell$8;->val$posindex:I

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 1

    .prologue
    .line 1917
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBegin()V

    .line 1918
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$8;->val$al:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$8;->val$al:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBegin()V

    .line 1921
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1925
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 1926
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->val$al:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v3, :cond_0

    .line 1927
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->val$al:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 1930
    :cond_0
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/Cell;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v3

    const-string v4, "#### cell up on page,printCellLayer."

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 1931
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/Cell;->printCellLayer(Lcom/smartisanos/smengine/SceneNode;)V

    .line 1934
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Cell;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 1936
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v9}, Lcom/smartisanos/launcher/view/Cell;->setShowLongPressAppName(Z)V

    .line 1937
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v10}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 1938
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->layoutIcon()V

    .line 1939
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/Cell$8;->val$targetPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/Cell;->changeAncestor(Lcom/smartisanos/smengine/SceneNode;)Z

    .line 1940
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    iget v4, p0, Lcom/smartisanos/launcher/view/Cell$8;->val$posindex:I

    aget-object v2, v3, v4

    .line 1941
    .local v2, "to":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget v4, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v5, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v6, v2, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 1943
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v3

    if-nez v3, :cond_2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v3, v4, :cond_2

    .line 1944
    sget-object v3, Lcom/smartisanos/launcher/data/Constants;->pageCellSizeScale:[Lcom/smartisanos/smengine/math/Vector2f;

    sget v4, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    aget-object v1, v3, v4

    .line 1945
    .local v1, "targetScale":Lcom/smartisanos/smengine/math/Vector2f;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget v4, v1, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v5, v1, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v3, v4, v5, v7}, Lcom/smartisanos/launcher/view/Cell;->setScale(FFF)V

    .line 1947
    .end local v1    # "targetScale":Lcom/smartisanos/smengine/math/Vector2f;
    :cond_2
    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v3, v4, :cond_3

    .line 1948
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v7, v7, v7}, Lcom/smartisanos/launcher/view/Cell;->setScale(FFF)V

    .line 1950
    :cond_3
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 1952
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->val$targetPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1953
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->setLockStatus()V

    .line 1956
    :cond_4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->val$targetPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->reSortChildren()V

    .line 1958
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Cell;->mForegroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v7, v7, v7, v7}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1959
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Cell;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v7, v7, v7, v7}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1960
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Cell;->mActiveIconView:Lcom/smartisanos/launcher/view/ActiveIconView;

    if-eqz v3, :cond_5

    .line 1961
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Cell;->mForegroundOverlapRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v7, v7, v7, v7}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1964
    :cond_5
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v3, :cond_6

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v4, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->val$targetPage:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1965
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Cell;->mForegroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v8, v8, v8, v8}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1966
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Cell;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v8, v8, v8, v8}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1967
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Cell;->mActiveIconView:Lcom/smartisanos/launcher/view/ActiveIconView;

    if-eqz v3, :cond_6

    .line 1968
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Cell;->mForegroundOverlapRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v8, v8, v8, v8}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 1972
    :cond_6
    sget-boolean v3, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v3, :cond_7

    .line 1973
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/Cell;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v3, v9}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 1977
    :cond_7
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->cleanPageViewWhenCellOnUpNoDelay()V

    .line 1978
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->clearCellAnimationStatus()V

    .line 1980
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/smartisanos/launcher/view/PageView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 1981
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iput-boolean v10, v3, Lcom/smartisanos/launcher/view/Cell;->APP_CAN_EXEC:Z

    .line 1982
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v10}, Lcom/smartisanos/launcher/view/Cell;->setCellCanHandleTouchEvent(Z)V

    .line 1983
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/smartisanos/launcher/view/MainView;->setCanInToHoverMode(Z)V

    .line 1991
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/smartisanos/launcher/view/AnimationController;->setHasAnimationPlaying(Z)V

    .line 1992
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iput-object v11, v3, Lcom/smartisanos/launcher/view/Cell;->mCellOnUpAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1993
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 1994
    .local v0, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9

    .line 1995
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(I)V

    .line 1999
    :cond_8
    :goto_0
    return-void

    .line 1996
    :cond_9
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->getLayStatus()I

    move-result v3

    if-nez v3, :cond_8

    .line 1997
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$8;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v9}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(I)V

    goto :goto_0
.end method
