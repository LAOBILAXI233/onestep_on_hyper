.class Lcom/smartisanos/home/Launcher$13;
.super Lcom/smartisanos/smengine/Event;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 1297
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$13;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 1300
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/MainView;->setVerifyPasswordRunningStatus(Z)V

    .line 1301
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getWaitingToLockPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    .line 1302
    .local v0, "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz v0, :cond_0

    .line 1303
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->lockPageByEvent()V

    .line 1304
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/PageView;->setWaitingToLockPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 1306
    :cond_0
    return-void
.end method
