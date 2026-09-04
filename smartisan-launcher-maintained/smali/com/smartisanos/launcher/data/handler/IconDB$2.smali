.class final Lcom/smartisanos/launcher/data/handler/IconDB$2;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "IconDB.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/handler/IconDB;->updateIcons(Ljava/util/List;)V
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
    .line 59
    iput-object p2, p0, Lcom/smartisanos/launcher/data/handler/IconDB$2;->val$values:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 6

    .prologue
    .line 62
    iget-object v2, p0, Lcom/smartisanos/launcher/data/handler/IconDB$2;->val$values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 63
    .local v0, "cv":Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "owner="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "owner"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "whereCase":Ljava/lang/String;
    iget-object v3, p0, Lcom/smartisanos/launcher/data/handler/IconDB$2;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "table_icons"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "whereCase":Ljava/lang/String;
    :cond_0
    return-void
.end method
