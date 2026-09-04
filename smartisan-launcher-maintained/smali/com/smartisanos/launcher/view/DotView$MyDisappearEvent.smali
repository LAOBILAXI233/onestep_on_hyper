.class Lcom/smartisanos/launcher/view/DotView$MyDisappearEvent;
.super Lcom/smartisanos/smengine/Event;
.source "DotView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/DotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDisappearEvent"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/DotView;


.method public constructor <init>(Lcom/smartisanos/launcher/view/DotView;I)V
    .locals 0
    .param p2, "type"    # I

    .prologue
    .line 96
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DotView$MyDisappearEvent;->this$0:Lcom/smartisanos/launcher/view/DotView;

    .line 97
    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    .line 98
    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 101
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/DotView;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    const-string v2, "## disappear event start run ###"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DotView$MyDisappearEvent;->this$0:Lcom/smartisanos/launcher/view/DotView;

    sget-object v1, Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;->DOT_DISAPPEAR:Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/DotView;->startAnimation(Lcom/smartisanos/launcher/view/DotView$DOT_ANIMATION;I)V

    .line 103
    return-void
.end method
