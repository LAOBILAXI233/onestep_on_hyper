.class Lcom/smartisanos/home/Launcher$14$2;
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
    .line 1346
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$14$2;->this$1:Lcom/smartisanos/home/Launcher$14;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 1349
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/MainView;->setVerifyPasswordRunningStatus(Z)V

    .line 1350
    return-void
.end method
