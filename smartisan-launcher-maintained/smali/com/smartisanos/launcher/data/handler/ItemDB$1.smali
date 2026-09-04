.class final Lcom/smartisanos/launcher/data/handler/ItemDB$1;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "ItemDB.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/handler/ItemDB;->removeItemDataById(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$ids:Ljava/util/List;


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 299
    iput-object p2, p0, Lcom/smartisanos/launcher/data/handler/ItemDB$1;->val$ids:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 304
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 305
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/smartisanos/launcher/data/handler/ItemDB$1;->val$ids:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 306
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 307
    iget-object v6, p0, Lcom/smartisanos/launcher/data/handler/ItemDB$1;->val$ids:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 308
    .local v2, "id":Ljava/lang/Long;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    add-int/lit8 v6, v3, -0x1

    if-eq v1, v6, :cond_0

    .line 310
    const-string v6, " OR "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v2    # "id":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "whereCaseForItem":Ljava/lang/String;
    iget-object v6, p0, Lcom/smartisanos/launcher/data/handler/ItemDB$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "table_iteminfos"

    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 315
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 317
    iget-object v6, p0, Lcom/smartisanos/launcher/data/handler/ItemDB$1;->val$ids:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 318
    .restart local v2    # "id":Ljava/lang/Long;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "owner="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    add-int/lit8 v6, v3, -0x1

    if-eq v1, v6, :cond_2

    .line 320
    const-string v6, " OR "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    .end local v2    # "id":Ljava/lang/Long;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "whereCaseForIcon":Ljava/lang/String;
    iget-object v6, p0, Lcom/smartisanos/launcher/data/handler/ItemDB$1;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "table_icons"

    invoke-virtual {v6, v7, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 325
    return-void
.end method
