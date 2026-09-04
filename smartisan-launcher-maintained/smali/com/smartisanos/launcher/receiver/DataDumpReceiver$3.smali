.class Lcom/smartisanos/launcher/receiver/DataDumpReceiver$3;
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


.method constructor <init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/receiver/DataDumpReceiver;
    .param p2, "type"    # I

    .prologue
    .line 395
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$3;->this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 15

    .prologue
    .line 398
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    .line 399
    .local v3, "mainView":Lcom/smartisanos/launcher/view/MainView;
    if-nez v3, :cond_1

    .line 423
    :cond_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v7

    .line 403
    .local v7, "pv":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    .line 404
    .local v0, "dv":Lcom/smartisanos/launcher/view/DockView;
    if-eqz v7, :cond_0

    if-eqz v0, :cond_0

    .line 408
    new-instance v8, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;

    invoke-direct {v8}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;-><init>()V

    .line 409
    .local v8, "root":Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;
    const-string v13, "root"

    iput-object v13, v8, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;->info:Ljava/lang/String;

    .line 410
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v10

    .line 411
    .local v10, "statusBar":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v10}, Lcom/smartisanos/smengine/SceneNode;->getLayer()I

    move-result v11

    .line 412
    .local v11, "statusBarLayer":I
    new-instance v12, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;

    invoke-direct {v12}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;-><init>()V

    .line 413
    .local v12, "statusBarNode":Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "status bar layer ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;->info:Ljava/lang/String;

    .line 415
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v6

    .line 416
    .local v6, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 417
    .local v9, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_0

    .line 418
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/view/Page;

    .line 419
    .local v5, "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Page;->getLayer()I

    move-result v2

    .line 420
    .local v2, "layer":I
    new-instance v4, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;

    invoke-direct {v4}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;-><init>()V

    .line 421
    .local v4, "n":Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "page, index ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v5, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v4, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$Node;->info:Ljava/lang/String;

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
