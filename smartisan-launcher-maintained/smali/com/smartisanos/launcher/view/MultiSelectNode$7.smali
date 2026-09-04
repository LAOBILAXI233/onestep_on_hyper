.class Lcom/smartisanos/launcher/view/MultiSelectNode$7;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MultiSelectNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MultiSelectNode;->uninstallOKAllPageDoFinish()Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$7;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$7;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1139
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$7;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 1140
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$7;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    if-ne v3, v4, :cond_1

    .line 1143
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    .line 1144
    .local v2, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v2, :cond_0

    .line 1145
    iget-wide v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/LauncherModel;->removeItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1147
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/smartisanos/launcher/view/Cell;->clear(Z)V

    .line 1148
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 1138
    .end local v2    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1152
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$7;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1154
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$7;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v3, v6}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1102(Lcom/smartisanos/launcher/view/MultiSelectNode;Z)Z

    .line 1155
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$7;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->disableAllPageForceRender()V

    .line 1156
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->cleanPageViewWhenCellOnUpNoDelay()V

    .line 1157
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->updatePageTitleAndCover()V

    .line 1159
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->resetPageFreeTextureIndexList()V

    .line 1160
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->updatePageIndex()V

    .line 1161
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->createPageObjectNameList()V

    .line 1162
    sget-object v3, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REFRESH:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v3}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 1164
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v6}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 1166
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$7;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v3, v7}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$502(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;

    .line 1167
    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$7;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v3, v7}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1702(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;

    .line 1168
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 1169
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 1170
    return-void
.end method
