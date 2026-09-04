.class final Lcom/smartisanos/launcher/data/DatabaseHandler$9;
.super Lcom/smartisanos/smengine/Event;
.source "DatabaseHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventRemoveNewFlagByIntent(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$ids:Ljava/util/List;


.method constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 2275
    iput-object p2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$9;->val$ids:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 9

    .prologue
    .line 2278
    iget-object v4, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$9;->val$ids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2279
    .local v2, "id":J
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/smartisanos/launcher/view/MainView;->getCellById(J)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 2280
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCellById cell:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    :cond_1
    if-eqz v0, :cond_0

    .line 2282
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    .line 2283
    .local v1, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNewlyInstalled set false by convertContentValuesToItemInfo, name ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], pkg ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], cmp ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2285
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v4

    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 2286
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->clearFlagNewRect()V

    .line 2287
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2288
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/smartisanos/home/Launcher;->setLatestOpenCell(Lcom/smartisanos/launcher/view/Cell;)V

    goto/16 :goto_0

    .line 2292
    .end local v0    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v1    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v2    # "id":J
    :cond_3
    return-void
.end method
