.class Lcom/smartisanos/launcher/receiver/DataDumpReceiver$1;
.super Lcom/smartisanos/smengine/Event;
.source "DataDumpReceiver.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

.field final synthetic val$pageIndex:I


.method constructor <init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/receiver/DataDumpReceiver;
    .param p2, "type"    # I

    .prologue
    .line 229
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$1;->this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    iput p3, p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$1;->val$pageIndex:I

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 232
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/PageView;->getPageList()Ljava/util/ArrayList;

    move-result-object v1

    .line 233
    .local v1, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    iget v2, p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$1;->val$pageIndex:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$1;->val$pageIndex:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    iget v2, p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$1;->val$pageIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 238
    .local v0, "p":Lcom/smartisanos/launcher/view/Page;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    if-eqz v2, :cond_0

    .line 239
    invoke-static {}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "### dump target."

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 240
    check-cast v0, Lcom/smartisanos/launcher/view/PageWithRenderTarget;

    .end local v0    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageWithRenderTarget;->getPageRenderTargetForPageWithRT()Lcom/smartisanos/smengine/RenderTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/RenderTarget;->readPixel()V

    goto :goto_0
.end method
