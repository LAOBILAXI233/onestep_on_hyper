.class Lcom/smartisanos/home/Launcher$22;
.super Lcom/smartisanos/smengine/Event;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/Launcher;


.method constructor <init>(Lcom/smartisanos/home/Launcher;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/Launcher;
    .param p2, "type"    # I

    .prologue
    .line 1604
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$22;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 1606
    iget-object v1, p0, Lcom/smartisanos/home/Launcher$22;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-static {v1}, Lcom/smartisanos/home/Launcher;->access$1000(Lcom/smartisanos/home/Launcher;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/home/Launcher$22;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-static {v1}, Lcom/smartisanos/home/Launcher;->access$1100(Lcom/smartisanos/home/Launcher;)Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/home/Launcher$22;->this$0:Lcom/smartisanos/home/Launcher;

    .line 1607
    invoke-static {v1}, Lcom/smartisanos/home/Launcher;->access$1100(Lcom/smartisanos/home/Launcher;)Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/home/Launcher$22;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-static {v1}, Lcom/smartisanos/home/Launcher;->access$1100(Lcom/smartisanos/home/Launcher;)Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageInitFinishStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1608
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1609
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getScreenIndex()I

    move-result v0

    .line 1610
    .local v0, "screen":I
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/smartisanos/launcher/view/PageView;->initOrReleaseScreen(IZ)V

    .line 1612
    .end local v0    # "screen":I
    :cond_0
    return-void
.end method
