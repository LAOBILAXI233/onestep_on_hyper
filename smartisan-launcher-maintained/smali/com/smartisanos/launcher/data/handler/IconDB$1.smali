.class final Lcom/smartisanos/launcher/data/handler/IconDB$1;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "IconDB.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/handler/IconDB;->insertIcons(Ljava/util/List;)V
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
    .line 43
    iput-object p2, p0, Lcom/smartisanos/launcher/data/handler/IconDB$1;->val$values:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 46
    iget-object v1, p0, Lcom/smartisanos/launcher/data/handler/IconDB$1;->val$values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 47
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/smartisanos/launcher/data/handler/IconDB$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "table_icons"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 49
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method
