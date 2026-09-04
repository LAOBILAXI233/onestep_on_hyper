.class Lcom/smartisanos/launcher/view/SettingButton$1;
.super Ljava/lang/Object;
.source "SettingButton.java"

.implements Lcom/smartisanos/smengine/SceneNode$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/SettingButton;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/SettingButton;


.method constructor <init>(Lcom/smartisanos/launcher/view/SettingButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/SettingButton;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SettingButton$1;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 5
    .param p1, "v"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/4 v4, 0x0

    .line 73
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v1, v2, :cond_1

    .line 74
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/SettingButton;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "DEBUG"

    const-string v3, "SettingButton onClick return by current mode is SINGLE_PAGE_MODE"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 81
    :cond_2
    :goto_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 82
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 83
    .local v0, "c":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->clearCellSelected()I

    .line 84
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/view/SettingButton;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### mMultiSelectNode.mSelectedCellList > 0 remove 1, size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    iget-object v3, v3, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v3, v3, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    .end local v0    # "c":Lcom/smartisanos/launcher/view/Cell;
    :cond_3
    const-string v1, "A260003"

    invoke-static {v1}, Lcom/smartisanos/home/tracker/LauncherAgent;->event(Ljava/lang/String;)V

    .line 92
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SettingButton$1;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/view/SettingButton;->access$102(Lcom/smartisanos/launcher/view/SettingButton;Z)Z

    .line 93
    iget-object v1, p0, Lcom/smartisanos/launcher/view/SettingButton$1;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/SettingButton;->handleTap(Z)V

    goto/16 :goto_0
.end method
