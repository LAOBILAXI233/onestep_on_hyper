.class final Lcom/smartisanos/launcher/data/handler/PageDB$1;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "PageDB.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/handler/PageDB;->refreshPageTable(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$dataMap:Ljava/util/Map;

.field final synthetic val$size:I


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;ILjava/util/Map;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 60
    iput p2, p0, Lcom/smartisanos/launcher/data/handler/PageDB$1;->val$size:I

    iput-object p3, p0, Lcom/smartisanos/launcher/data/handler/PageDB$1;->val$dataMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 63
    iget-object v6, p0, Lcom/smartisanos/launcher/data/handler/PageDB$1;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    iput-boolean v9, v6, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/smartisanos/launcher/data/handler/PageDB$1;->val$size:I

    if-ge v1, v6, :cond_2

    .line 65
    iget-object v6, p0, Lcom/smartisanos/launcher/data/handler/PageDB$1;->val$dataMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 66
    .local v0, "cv":Landroid/content/ContentValues;
    move v4, v1

    .line 68
    .local v4, "pageIndex":I
    add-int/lit8 v3, v4, 0x1

    .line 69
    .local v3, "pageId":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "whereCase":Ljava/lang/String;
    const/16 v6, 0x3e8

    if-gt v3, v6, :cond_1

    .line 71
    iget-object v6, p0, Lcom/smartisanos/launcher/data/handler/PageDB$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "table_pageinfos"

    invoke-virtual {v6, v7, v0, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 72
    .local v2, "numOfEffectRow":I
    if-gtz v2, :cond_0

    .line 73
    iget-object v6, p0, Lcom/smartisanos/launcher/data/handler/PageDB$1;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    .line 74
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/PageDB;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "update page table error, by index ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 64
    .end local v2    # "numOfEffectRow":I
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    iget-object v6, p0, Lcom/smartisanos/launcher/data/handler/PageDB$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "table_pageinfos"

    invoke-virtual {v6, v7, v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 82
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v3    # "pageId":I
    .end local v4    # "pageIndex":I
    .end local v5    # "whereCase":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string v6, "pageIndex"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v6, "status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const-string v6, "pageTitle"

    const-string v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v6, p0, Lcom/smartisanos/launcher/data/handler/PageDB$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "table_pageinfos"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/smartisanos/launcher/data/handler/PageDB$1;->val$size:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v0, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    return-void
.end method
