.class final Lcom/smartisanos/launcher/data/handler/PageDB$2;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "PageDB.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/handler/PageDB;->updatePagesDataByIndex(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$values:Ljava/util/List;


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 100
    iput-object p2, p0, Lcom/smartisanos/launcher/data/handler/PageDB$2;->val$values:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 8

    .prologue
    .line 103
    iget-object v3, p0, Lcom/smartisanos/launcher/data/handler/PageDB$2;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    .line 104
    iget-object v3, p0, Lcom/smartisanos/launcher/data/handler/PageDB$2;->val$values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 105
    .local v2, "value":Landroid/content/ContentValues;
    const-string v4, "pageIndex"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 106
    .local v1, "pageIndex":I
    iget-object v4, p0, Lcom/smartisanos/launcher/data/handler/PageDB$2;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "table_pageinfos"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 107
    .local v0, "num":I
    if-gtz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/PageDB;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePagesDataByIndex error by page index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cv : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lcom/smartisanos/launcher/data/handler/PageDB$2;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    goto :goto_0

    .line 112
    .end local v0    # "num":I
    .end local v1    # "pageIndex":I
    .end local v2    # "value":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method
