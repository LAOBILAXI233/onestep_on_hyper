.class Lcom/smartisanos/home/Launcher$12$4;
.super Lcom/smartisanos/smengine/Event;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher$12;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/home/Launcher$12;


.method constructor <init>(Lcom/smartisanos/home/Launcher$12;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/home/Launcher$12;
    .param p2, "type"    # I

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$12$4;->this$1:Lcom/smartisanos/home/Launcher$12;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 1203
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "view create begin !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1204
    :cond_0
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    .line 1205
    .local v0, "launcher":Lcom/smartisanos/home/Launcher;
    invoke-virtual {v0}, Lcom/smartisanos/home/Launcher;->getMainView()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    .line 1206
    .local v1, "mainView":Lcom/smartisanos/launcher/view/MainView;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->loadPage()V

    .line 1207
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "#### mainView loadPage #####"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1208
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 1209
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "view create done !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1210
    :cond_2
    new-instance v2, Lcom/smartisanos/home/Launcher$12$4$1;

    const/16 v3, 0x64

    invoke-direct {v2, p0, v3}, Lcom/smartisanos/home/Launcher$12$4$1;-><init>(Lcom/smartisanos/home/Launcher$12$4;I)V

    const/4 v3, 0x0

    .line 1216
    invoke-virtual {v2, v3}, Lcom/smartisanos/home/Launcher$12$4$1;->send(F)V

    .line 1217
    return-void
.end method
