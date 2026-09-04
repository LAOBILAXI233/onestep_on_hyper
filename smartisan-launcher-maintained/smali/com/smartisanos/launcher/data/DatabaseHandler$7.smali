.class final Lcom/smartisanos/launcher/data/DatabaseHandler$7;
.super Lcom/smartisanos/smengine/Event;
.source "DatabaseHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventUpdateIcon(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$itmeInfoList:Ljava/util/ArrayList;


.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 2173
    iput-object p2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$7;->val$itmeInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    .line 2176
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "itmeInfoList size ==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$7;->val$itmeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    .line 2178
    .local v0, "mainView":Lcom/smartisanos/launcher/view/MainView;
    if-nez v0, :cond_1

    .line 2189
    :cond_0
    :goto_0
    return-void

    .line 2181
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v1

    .line 2182
    .local v1, "pageView":Lcom/smartisanos/launcher/view/PageView;
    if-eqz v1, :cond_0

    .line 2185
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$7;->val$itmeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2186
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "launcher_update_icon"

    const-string v4, "step 2 update database finish ! begin to update UI"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$7;->val$itmeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/PageView;->updateCells(Ljava/util/List;)V

    goto :goto_0
.end method
