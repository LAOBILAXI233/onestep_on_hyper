.class final Lcom/smartisanos/launcher/data/DatabaseHandler$6;
.super Lcom/smartisanos/smengine/Event;
.source "DatabaseHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/DatabaseHandler;->handleEventUpdateIcon(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$colorInfoStr:Ljava/lang/String;

.field final synthetic val$item:Lcom/smartisanos/launcher/data/ItemInfo;

.field final synthetic val$itmeInfoList:Ljava/util/ArrayList;


.method constructor <init>(ILcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 2137
    iput-object p2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$6;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$6;->val$colorInfoStr:Ljava/lang/String;

    iput-object p4, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$6;->val$itmeInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 8

    .prologue
    .line 2140
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$6;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v1

    .line 2141
    .local v1, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$6;->val$colorInfoStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->toColorInfo(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v0

    .line 2142
    .local v0, "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    if-nez v0, :cond_0

    .line 2143
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse color error by string : ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$6;->val$colorInfoStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    :cond_0
    if-eqz v1, :cond_2

    .line 2147
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEventUpdateIcon update icon for id ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v1, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$6;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    iput-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    .line 2149
    if-eqz v0, :cond_1

    .line 2150
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->setOwner(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 2151
    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 2153
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$6;->val$itmeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$6;->val$itmeInfoList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/data/Utils;->refreshProfileShortcutIconsForPackage(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2168
    :goto_0
    return-void

    .line 2155
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseHandler$6;->val$item:Lcom/smartisanos/launcher/data/ItemInfo;

    iput-object v0, v2, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 2156
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "launcher_update_icon"

    const-string v4, "update icon error by item info is null, send PackageTask"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    :cond_3
    new-instance v2, Lcom/smartisanos/launcher/data/DatabaseHandler$6$1;

    const/16 v3, 0x65

    invoke-direct {v2, p0, v3}, Lcom/smartisanos/launcher/data/DatabaseHandler$6$1;-><init>(Lcom/smartisanos/launcher/data/DatabaseHandler$6;I)V

    const/4 v3, 0x0

    .line 2166
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/data/DatabaseHandler$6$1;->send(F)V

    goto :goto_0
.end method
