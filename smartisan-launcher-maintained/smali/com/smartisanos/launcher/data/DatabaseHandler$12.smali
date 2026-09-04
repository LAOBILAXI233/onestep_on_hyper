.class final Lcom/smartisanos/launcher/data/DatabaseHandler$12;
.super Lcom/smartisanos/smengine/Event;
.source "DatabaseHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventUninstallShortcut(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$shortcutInfos:Ljava/util/List;


.method constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 2519
    iput-object p2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$12;->val$shortcutInfos:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    .line 2522
    iget-object v4, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$12;->val$shortcutInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ShortcutInfo;

    .line 2523
    .local v0, "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    iget-object v3, v0, Lcom/smartisanos/launcher/data/ShortcutInfo;->packageName:Ljava/lang/String;

    .line 2524
    .local v3, "pkg":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2525
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2526
    new-instance v2, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v1}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 2527
    .local v2, "pTask":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    invoke-static {v2}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->appendTask(Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;)V

    .line 2528
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->handleTaskList()V

    goto :goto_0

    .line 2530
    .end local v0    # "info":Lcom/smartisanos/launcher/data/ShortcutInfo;
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v2    # "pTask":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_0
    return-void
.end method
