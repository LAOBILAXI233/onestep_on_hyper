.class Lcom/smartisanos/home/Launcher$15$1;
.super Lcom/smartisanos/smengine/Event;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/home/Launcher$15;


.method constructor <init>(Lcom/smartisanos/home/Launcher$15;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/home/Launcher$15;
    .param p2, "type"    # I

    .prologue
    .line 1369
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$15$1;->this$1:Lcom/smartisanos/home/Launcher$15;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 1372
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/MainView;->setVerifyPasswordRunningStatus(Z)V

    .line 1373
    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v1, v2, :cond_0

    .line 1374
    iget-object v1, p0, Lcom/smartisanos/home/Launcher$15$1;->this$1:Lcom/smartisanos/home/Launcher$15;

    iget-object v1, v1, Lcom/smartisanos/home/Launcher$15;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-static {v1}, Lcom/smartisanos/home/Launcher;->access$800(Lcom/smartisanos/home/Launcher;)Lcom/smartisanos/smengine/Event;

    move-result-object v0

    .line 1375
    .local v0, "e":Lcom/smartisanos/smengine/Event;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Event;->send(F)V

    .line 1377
    .end local v0    # "e":Lcom/smartisanos/smengine/Event;
    :cond_0
    return-void
.end method
