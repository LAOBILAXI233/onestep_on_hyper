.class Lcom/smartisanos/launcher/view/Page$6;
.super Ljava/lang/Object;
.source "Page.java"

.implements Lcom/smartisanos/smengine/SceneNode$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Page;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Page;


.method constructor <init>(Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page$6;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 5
    .param p1, "v"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1379
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    .line 1380
    .local v0, "preview":Z
    if-eqz v0, :cond_1

    .line 1381
    invoke-static {}, Lcom/smartisanos/launcher/view/Page;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "onClick return by preview true"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1403
    :cond_0
    :goto_0
    return-void

    .line 1384
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1385
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$6;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1386
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$6;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1, v3, v4, v4, v3}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 1387
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$6;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/TitleView;->setEyeState(Z)V

    goto :goto_0

    .line 1388
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$6;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1389
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->isVerifyPassword()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1390
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$6;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1, v3, v4, v4, v3}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(IZZZ)V

    .line 1391
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$6;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/TitleView;->setLockState(Z)V

    .line 1392
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$6;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/Page;->setCellItemInfoLockStatus(Z)V

    goto :goto_0

    .line 1394
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$6;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->getTitleView()Lcom/smartisanos/launcher/view/TitleView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TitleView;->verifyPassword()V

    goto :goto_0

    .line 1398
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$6;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->isPageHidden()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$6;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->isPageLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1399
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Page$6;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->pageToFloat()V

    goto :goto_0
.end method
