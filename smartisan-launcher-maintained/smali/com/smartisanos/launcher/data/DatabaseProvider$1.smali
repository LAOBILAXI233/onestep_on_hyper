.class Lcom/smartisanos/launcher/data/DatabaseProvider$1;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "DatabaseProvider.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/DatabaseProvider;->syncNewApps(Ljava/util/List;Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/data/DatabaseProvider;

.field final synthetic val$itemValues:Ljava/util/List;

.field final synthetic val$pageValues:Ljava/util/List;


.method constructor <init>(Lcom/smartisanos/launcher/data/DatabaseProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/data/DatabaseProvider;
    .param p2, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$1;->this$0:Lcom/smartisanos/launcher/data/DatabaseProvider;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$1;->val$itemValues:Ljava/util/List;

    iput-object p4, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$1;->val$pageValues:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 131
    iget-object v8, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$1;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    .line 132
    iget-object v8, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$1;->val$itemValues:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 133
    .local v5, "numValues":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_2

    .line 134
    iget-object v8, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$1;->val$itemValues:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 135
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_1

    .line 136
    const-string v8, "_id"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 137
    const-string v8, "_id"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 139
    :cond_0
    iget-object v8, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "table_iteminfos"

    invoke-virtual {v8, v9, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 140
    .local v2, "id":J
    const-string v8, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    .end local v2    # "id":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_2
    iget-object v8, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$1;->val$pageValues:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 145
    .local v7, "value":Landroid/content/ContentValues;
    const-string v9, "pageIndex"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 146
    .local v6, "pageIndex":I
    iget-object v9, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "table_pageinfos"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v7, v11, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 147
    .local v4, "num":I
    if-gtz v4, :cond_3

    .line 148
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updatePagesDataByIndex error by page index : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", cv : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 153
    .end local v4    # "num":I
    .end local v6    # "pageIndex":I
    .end local v7    # "value":Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 152
    :cond_4
    iget-object v8, p0, Lcom/smartisanos/launcher/data/DatabaseProvider$1;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    goto :goto_1
.end method
