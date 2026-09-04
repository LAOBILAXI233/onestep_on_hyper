.class Lcom/smartisanos/home/Launcher$2;
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


.method constructor <init>(Lcom/smartisanos/home/Launcher;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/Launcher;
    .param p2, "type"    # I

    .prologue
    .line 471
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$2;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 474
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "handHabitChanged update dock view"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 475
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 476
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->relayoutDockByHandHabitChanged()V

    .line 478
    :cond_1
    return-void
.end method
