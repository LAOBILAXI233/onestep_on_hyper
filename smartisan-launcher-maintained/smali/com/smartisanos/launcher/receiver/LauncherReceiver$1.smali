.class Lcom/smartisanos/launcher/receiver/LauncherReceiver$1;
.super Lcom/smartisanos/smengine/Event;
.source "LauncherReceiver.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/receiver/LauncherReceiver;->showDialogForThemeUninstalled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;


.method constructor <init>(Lcom/smartisanos/launcher/receiver/LauncherReceiver;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/receiver/LauncherReceiver;
    .param p2, "type"    # I

    .prologue
    .line 156
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver$1;->this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 158
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    .line 159
    .local v0, "mainView":Lcom/smartisanos/launcher/view/MainView;
    if-nez v0, :cond_1

    .line 160
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    const-string v2, "onResume, LauncherModel is dirty or theme is changed, but nothing to do, by main view is null"

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->setModeToSingleForChangeTheme()V

    goto :goto_0
.end method
