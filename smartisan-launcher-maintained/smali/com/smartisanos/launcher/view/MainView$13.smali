.class Lcom/smartisanos/launcher/view/MainView$13;
.super Lcom/smartisanos/smengine/Event;
.source "MainView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView;->clearMessageAndNewlyInstall(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MainView;


.method constructor <init>(Lcom/smartisanos/launcher/view/MainView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MainView;
    .param p2, "type"    # I

    .prologue
    .line 2123
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$13;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView$13;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/MainView;->access$800(Lcom/smartisanos/launcher/view/MainView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2127
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView$13;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/MainView;->access$700(Lcom/smartisanos/launcher/view/MainView;)V

    .line 2128
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView$13;->this$0:Lcom/smartisanos/launcher/view/MainView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/MainView;->access$802(Lcom/smartisanos/launcher/view/MainView;Z)Z

    .line 2130
    :cond_0
    return-void
.end method
