.class Lcom/smartisanos/launcher/view/MultiSelectNode$8;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MultiSelectNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MultiSelectNode;->uninstallCancelSendSomeCellsReturnToItOwnPage(Ljava/util/List;Lcom/smartisanos/smengine/AnimationTimeLine;)V
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
    .line 1181
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$8;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1185
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$8;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1102(Lcom/smartisanos/launcher/view/MultiSelectNode;Z)Z

    .line 1186
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$8;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->disableAllPageForceRender()V

    .line 1187
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->cleanPageViewWhenCellOnUpNoDelay()V

    .line 1188
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->updatePageTitleAndCover()V

    .line 1190
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->resetPageFreeTextureIndexList()V

    .line 1191
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->updatePageIndex()V

    .line 1192
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->createPageObjectNameList()V

    .line 1193
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REFRESH:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v0}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V

    .line 1194
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 1195
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$8;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$502(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;

    .line 1196
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$8;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1702(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/launcher/view/Page;

    .line 1197
    return-void
.end method
