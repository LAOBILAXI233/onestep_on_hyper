.class final Lcom/smartisanos/launcher/data/DatabaseHandler$10;
.super Lcom/smartisanos/smengine/Event;
.source "DatabaseHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/DatabaseHandler;->handleReloadIcons(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$iconDataMap:Ljava/util/Map;


.method constructor <init>(ILjava/util/Map;)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 2350
    iput-object p2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$10;->val$iconDataMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    .line 2353
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$10;->val$iconDataMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2354
    .local v1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2355
    .local v0, "id":Ljava/lang/Long;
    iget-object v5, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$10;->val$iconDataMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 2356
    .local v3, "newIcon":[B
    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 2357
    .local v2, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v2, :cond_0

    .line 2358
    iput-object v3, v2, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    goto :goto_0

    .line 2361
    .end local v0    # "id":Ljava/lang/Long;
    .end local v2    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v3    # "newIcon":[B
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$10;->val$iconDataMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 2362
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->setReloadIcon()V

    .line 2363
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->createThemeCubeAnim()V

    .line 2364
    return-void
.end method
