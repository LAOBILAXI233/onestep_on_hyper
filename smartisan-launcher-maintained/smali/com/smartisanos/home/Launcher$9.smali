.class Lcom/smartisanos/home/Launcher$9;
.super Lcom/smartisanos/smengine/Event;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher;->createScrollToLeftEvent()Lcom/smartisanos/smengine/Event;
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
    .line 821
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$9;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 824
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/PageView;->getAnimationController()Lcom/smartisanos/launcher/view/AnimationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/AnimationController;->scrollToLeft()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    .line 825
    .local v0, "result":Lcom/smartisanos/smengine/AnimationTimeLine;
    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 829
    :cond_0
    return-void
.end method
