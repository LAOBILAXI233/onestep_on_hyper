.class Lcom/smartisanos/launcher/data/ExportDataProvider$2;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "ExportDataProvider.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/ExportDataProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

.field final synthetic val$cvs:Ljava/util/List;

.field final synthetic val$table:Ljava/lang/String;


.method constructor <init>(Lcom/smartisanos/launcher/data/ExportDataProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/data/ExportDataProvider;
    .param p2, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$2;->this$0:Lcom/smartisanos/launcher/data/ExportDataProvider;

    iput-object p3, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$2;->val$cvs:Ljava/util/List;

    iput-object p4, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$2;->val$table:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 8

    .prologue
    .line 119
    iget-object v5, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$2;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const/4 v6, -0x1

    iput v6, v5, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 120
    iget-object v5, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$2;->val$cvs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 121
    .local v4, "numValues":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 122
    iget-object v5, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$2;->val$cvs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 123
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz v0, :cond_1

    .line 124
    iget-object v5, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$2;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$2;->val$table:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 125
    .local v2, "id":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    .line 132
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "id":J
    :goto_1
    return-void

    .line 128
    .restart local v0    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "id":J
    :cond_0
    const-string v5, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    .end local v2    # "id":J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_2
    iget-object v5, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$2;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    iget-object v6, p0, Lcom/smartisanos/launcher/data/ExportDataProvider$2;->val$cvs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iput v6, v5, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    goto :goto_1
.end method
