.class final Lcom/smartisanos/launcher/data/DatabaseHandler$1;
.super Landroid/os/Handler;
.source "DatabaseHandler.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/data/DatabaseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;

    .prologue
    .line 151
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    .line 154
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 155
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/home/Launcher;->getDbThreadId()I

    move-result v6

    if-nez v6, :cond_0

    .line 156
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v6

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$000()Landroid/os/HandlerThread;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/home/Launcher;->setDbThreadId(I)V

    .line 157
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DB_THREAD_ID ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/smartisanos/home/Launcher;->getDbThreadId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    .line 161
    .local v3, "dataList":Ljava/util/ArrayList;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 162
    .local v5, "task":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v1, 0x0

    .line 163
    .local v1, "additionParams":Ljava/util/List;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v10, :cond_1

    .line 164
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "additionParams":Ljava/util/List;
    check-cast v1, Ljava/util/ArrayList;

    .line 166
    .restart local v1    # "additionParams":Ljava/util/List;
    :cond_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 167
    :cond_2
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    const-string v7, "DEBUG"

    const-string v8, "remove illegal task, task is null !"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_3
    :goto_0
    return-void

    .line 170
    :cond_4
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .line 171
    .local v0, "actionType":Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage execute action ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->getActionName(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_5
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 173
    .local v2, "contentValueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {v0, v2, v1}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$200(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/List;)V

    .line 174
    sget-object v6, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_INIT_DATA:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    if-ne v0, v6, :cond_6

    .line 175
    invoke-static {v1}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$300(Ljava/util/List;)V

    goto :goto_0

    .line 178
    :cond_6
    :try_start_0
    invoke-static {v0, v2, v1}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$400(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v4

    .line 180
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
