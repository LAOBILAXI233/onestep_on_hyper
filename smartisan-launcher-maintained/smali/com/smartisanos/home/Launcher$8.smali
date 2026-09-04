.class Lcom/smartisanos/home/Launcher$8;
.super Lcom/smartisanos/smengine/Event;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher;->createVerifyOkEvent()Lcom/smartisanos/smengine/Event;
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
    .line 804
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$8;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 807
    iget-object v2, p0, Lcom/smartisanos/home/Launcher$8;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-virtual {v2}, Lcom/smartisanos/home/Launcher;->sessionUnlockAllPackage()V

    .line 808
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getConfirmPasswordPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    .line 809
    .local v1, "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz v1, :cond_0

    .line 810
    new-instance v0, Lcom/smartisanos/smengine/Notification;

    invoke-direct {v0}, Lcom/smartisanos/smengine/Notification;-><init>()V

    .line 811
    .local v0, "n":Lcom/smartisanos/smengine/Notification;
    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Notification;->addData(Ljava/lang/Object;)V

    .line 812
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/MainView;->setHasVerifyPassword(Z)V

    .line 813
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v2

    const-string v3, "CoverPageClicked"

    invoke-virtual {v2, v3, v0}, Lcom/smartisanos/smengine/NotificationManager;->postNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V

    .line 814
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/PageView;->setConfirmPasswordPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 816
    .end local v0    # "n":Lcom/smartisanos/smengine/Notification;
    :cond_0
    return-void
.end method
