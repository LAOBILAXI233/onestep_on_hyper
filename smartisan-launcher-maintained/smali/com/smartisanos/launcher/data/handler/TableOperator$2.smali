.class final Lcom/smartisanos/launcher/data/handler/TableOperator$2;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "TableOperator.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/handler/TableOperator;->bulkInsert(Ljava/lang/String;Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$values:Ljava/util/List;


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 36
    iput-object p2, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$2;->val$values:Ljava/util/List;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$2;->val$name:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 8

    .prologue
    .line 39
    iget-object v5, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$2;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const/4 v6, -0x1

    iput v6, v5, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 40
    iget-object v5, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$2;->val$values:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 41
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 42
    iget-object v5, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$2;->val$values:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 43
    .local v4, "value":Landroid/content/ContentValues;
    if-eqz v4, :cond_1

    .line 44
    iget-object v5, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$2;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$2;->val$name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 45
    .local v2, "id":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    .line 52
    .end local v2    # "id":J
    .end local v4    # "value":Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 48
    .restart local v2    # "id":J
    .restart local v4    # "value":Landroid/content/ContentValues;
    :cond_0
    const-string v5, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 41
    .end local v2    # "id":J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v4    # "value":Landroid/content/ContentValues;
    :cond_2
    iget-object v5, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$2;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    iget-object v6, p0, Lcom/smartisanos/launcher/data/handler/TableOperator$2;->val$values:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v5, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    goto :goto_1
.end method
