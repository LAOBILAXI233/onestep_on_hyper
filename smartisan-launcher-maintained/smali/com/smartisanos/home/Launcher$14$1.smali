.class Lcom/smartisanos/home/Launcher$14$1;
.super Lcom/smartisanos/smengine/Event;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/home/Launcher$14;


.method constructor <init>(Lcom/smartisanos/home/Launcher$14;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/home/Launcher$14;
    .param p2, "type"    # I

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$14$1;->this$1:Lcom/smartisanos/home/Launcher$14;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 1325
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/MainView;->setVerifyPasswordRunningStatus(Z)V

    .line 1326
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getConfirmPasswordPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v0

    .line 1327
    .local v0, "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz v0, :cond_1

    .line 1328
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v1, v2, :cond_0

    .line 1329
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/MainView;->setHasVerifyPassword(Z)V

    .line 1330
    iget-object v1, p0, Lcom/smartisanos/home/Launcher$14$1;->this$1:Lcom/smartisanos/home/Launcher$14;

    iget-object v1, v1, Lcom/smartisanos/home/Launcher$14;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-virtual {v1}, Lcom/smartisanos/home/Launcher;->sessionUnlockAllPackage()V

    .line 1331
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->unLockPageByEvent()V

    .line 1334
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/PageView;->setConfirmPasswordPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 1336
    :cond_1
    return-void
.end method
