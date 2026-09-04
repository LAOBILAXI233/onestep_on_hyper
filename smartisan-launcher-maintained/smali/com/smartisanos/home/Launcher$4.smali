.class Lcom/smartisanos/home/Launcher$4;
.super Lcom/smartisanos/smengine/Event;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/Launcher;

.field final synthetic val$shouldDoChangeThemeAnim:Z


.method constructor <init>(Lcom/smartisanos/home/Launcher;IZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/Launcher;
    .param p2, "type"    # I

    .prologue
    .line 506
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$4;->this$0:Lcom/smartisanos/home/Launcher;

    iput-boolean p3, p0, Lcom/smartisanos/home/Launcher$4;->val$shouldDoChangeThemeAnim:Z

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 509
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    .line 510
    .local v0, "mainView":Lcom/smartisanos/launcher/view/MainView;
    if-nez v0, :cond_1

    .line 511
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v3

    const-string v4, "onResume, LauncherModel is dirty or theme is changed, but nothing to do, by main view is null"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->setModeToSingleForChangeTheme()V

    .line 516
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v2

    .line 517
    .local v2, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    if-eqz v2, :cond_3

    .line 518
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Page;

    .line 519
    .local v1, "p":Lcom/smartisanos/launcher/view/Page;
    if-eqz v1, :cond_2

    .line 520
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Page;->removePageTitle()V

    goto :goto_1

    .line 524
    .end local v1    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_3
    iget-boolean v3, p0, Lcom/smartisanos/home/Launcher$4;->val$shouldDoChangeThemeAnim:Z

    if-eqz v3, :cond_4

    .line 525
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 526
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockTouchEvent()V

    .line 528
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->isDirtyMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/DockView;->updateUV()V

    .line 530
    iget-object v3, p0, Lcom/smartisanos/home/Launcher$4;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-virtual {v3}, Lcom/smartisanos/home/Launcher;->handleSettingsChange()V

    .line 531
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/smartisanos/launcher/LauncherModel;->setDirtyMode(Z)V

    goto :goto_0
.end method
