.class Lcom/smartisanos/launcher/view/CellStatusForPage$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "CellStatusForPage.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CellStatusForPage;->handleOnUP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

.field final synthetic val$dockView:Lcom/smartisanos/launcher/view/DockView;

.field final synthetic val$mainView:Lcom/smartisanos/launcher/view/MainView;


.method constructor <init>(Lcom/smartisanos/launcher/view/CellStatusForPage;Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/launcher/view/MainView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/CellStatusForPage;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->val$dockView:Lcom/smartisanos/launcher/view/DockView;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->val$mainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 150
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_6

    .line 151
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 152
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->getCurrentFloatPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 153
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setDrawWithPostEffect(Z)V

    .line 154
    sget-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SEARCH:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setShowMagnifyGlass(Z)V

    .line 157
    :cond_0
    sput v2, Lcom/smartisanos/launcher/data/Constants;->sPostLayerCount:I

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->restoreFromPending()V

    .line 172
    sput-object v3, Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 175
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->setLockStatus()V

    .line 176
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->val$dockView:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/DockView;->setSelectedCell(Lcom/smartisanos/launcher/view/Cell;)V

    .line 178
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getCellBackgroundAnimation()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getCellBackgroundAnimation()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 182
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->taskCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 183
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->val$mainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->resetPageNoAnimation()V

    .line 188
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 190
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REFRESH:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 192
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$202(Lcom/smartisanos/launcher/view/CellStatusForPage;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 193
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$302(Lcom/smartisanos/launcher/view/CellStatusForPage;Z)Z

    .line 195
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->val$mainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 196
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->val$mainView:Lcom/smartisanos/launcher/view/MainView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 197
    return-void

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setDrawWithPostEffect(Z)V

    .line 160
    sget-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SEARCH:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setShowMagnifyGlass(Z)V

    .line 163
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/MainView;->setUsePostEffect(Z)V

    goto/16 :goto_0

    .line 166
    :cond_6
    sget-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SEARCH:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v0, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellStatusForPage$1;->this$0:Lcom/smartisanos/launcher/view/CellStatusForPage;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CellStatusForPage;->access$100(Lcom/smartisanos/launcher/view/CellStatusForPage;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setShowMagnifyGlass(Z)V

    .line 168
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/MainView;->setUsePostEffect(Z)V

    goto/16 :goto_0
.end method
