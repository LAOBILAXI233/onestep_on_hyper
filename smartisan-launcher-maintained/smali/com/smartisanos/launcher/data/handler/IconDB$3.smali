.class final Lcom/smartisanos/launcher/data/handler/IconDB$3;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "IconDB.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/handler/IconDB;->saveIconData(Landroid/content/ContentValues;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$exist:Z

.field final synthetic val$id:J

.field final synthetic val$values:Landroid/content/ContentValues;


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;ZJLandroid/content/ContentValues;)V
    .locals 1
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 95
    iput-boolean p2, p0, Lcom/smartisanos/launcher/data/handler/IconDB$3;->val$exist:Z

    iput-wide p3, p0, Lcom/smartisanos/launcher/data/handler/IconDB$3;->val$id:J

    iput-object p5, p0, Lcom/smartisanos/launcher/data/handler/IconDB$3;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 98
    iget-object v1, p0, Lcom/smartisanos/launcher/data/handler/IconDB$3;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    .line 99
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/handler/IconDB$3;->val$exist:Z

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "owner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/smartisanos/launcher/data/handler/IconDB$3;->val$id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "where":Ljava/lang/String;
    iget-object v1, p0, Lcom/smartisanos/launcher/data/handler/IconDB$3;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table_icons"

    iget-object v3, p0, Lcom/smartisanos/launcher/data/handler/IconDB$3;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 105
    .end local v0    # "where":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/data/handler/IconDB$3;->result:Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    .line 106
    return-void

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/data/handler/IconDB$3;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "table_icons"

    iget-object v3, p0, Lcom/smartisanos/launcher/data/handler/IconDB$3;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method
