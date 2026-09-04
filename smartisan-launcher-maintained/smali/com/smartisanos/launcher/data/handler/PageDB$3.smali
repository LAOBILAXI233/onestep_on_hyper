.class final Lcom/smartisanos/launcher/data/handler/PageDB$3;
.super Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
.source "PageDB.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/handler/PageDB;->rewritePageTable(Ljava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$max:I

.field final synthetic val$values:Ljava/util/List;


.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)V
    .locals 0
    .param p1, "_db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 182
    iput-object p2, p0, Lcom/smartisanos/launcher/data/handler/PageDB$3;->val$values:Ljava/util/List;

    iput p3, p0, Lcom/smartisanos/launcher/data/handler/PageDB$3;->val$max:I

    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method


.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 185
    iget-object v10, p0, Lcom/smartisanos/launcher/data/handler/PageDB$3;->val$values:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 186
    .local v9, "size":I
    const/4 v2, 0x0

    .line 187
    .local v2, "effectiveArea":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v5, 0x0

    .line 188
    .local v5, "invalidRegion":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    iget v10, p0, Lcom/smartisanos/launcher/data/handler/PageDB$3;->val$max:I

    if-le v9, v10, :cond_0

    .line 189
    iget-object v10, p0, Lcom/smartisanos/launcher/data/handler/PageDB$3;->val$values:Ljava/util/List;

    iget v11, p0, Lcom/smartisanos/launcher/data/handler/PageDB$3;->val$max:I

    invoke-interface {v10, v13, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 190
    iget-object v10, p0, Lcom/smartisanos/launcher/data/handler/PageDB$3;->val$values:Ljava/util/List;

    iget v11, p0, Lcom/smartisanos/launcher/data/handler/PageDB$3;->val$max:I

    invoke-interface {v10, v11, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 194
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 195
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v9, :cond_1

    .line 196
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 197
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v10, "_id"

    add-int/lit8 v11, v4, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 192
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/data/handler/PageDB$3;->val$values:Ljava/util/List;

    goto :goto_0

    .line 199
    .restart local v4    # "i":I
    :cond_1
    move-object v3, v2

    .line 200
    .local v3, "effectiveAreaF":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object v6, v5

    .line 201
    .local v6, "invalidRegionF":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 202
    .local v7, "length":I
    iget-object v10, p0, Lcom/smartisanos/launcher/data/handler/PageDB$3;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "DELETE FROM table_pageinfos"

    invoke-virtual {v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 203
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_2

    .line 204
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 205
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v10, "_id"

    add-int/lit8 v11, v4, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    iget-object v10, p0, Lcom/smartisanos/launcher/data/handler/PageDB$3;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "table_pageinfos"

    invoke-virtual {v10, v11, v12, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 209
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_2
    rsub-int v0, v7, 0x3e8

    .line 210
    .local v0, "count":I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_3

    .line 211
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 212
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v10, "_id"

    add-int v11, v7, v4

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v10, "pageIndex"

    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v10, "status"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v10, "pageTitle"

    const-string v11, ""

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v10, p0, Lcom/smartisanos/launcher/data/handler/PageDB$3;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "table_pageinfos"

    invoke-virtual {v10, v11, v12, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 219
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_3
    if-eqz v6, :cond_4

    .line 220
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    .line 221
    .local v8, "s":I
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v8, :cond_4

    .line 222
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 223
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v10, "_id"

    add-int/lit16 v11, v4, 0x3e8

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    iget-object v10, p0, Lcom/smartisanos/launcher/data/handler/PageDB$3;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "table_pageinfos"

    invoke-virtual {v10, v11, v12, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 227
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v8    # "s":I
    :cond_4
    return-void
.end method
