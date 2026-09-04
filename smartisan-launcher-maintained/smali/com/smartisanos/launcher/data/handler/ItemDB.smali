.class public Lcom/smartisanos/launcher/data/handler/ItemDB;
.super Lcom/smartisanos/launcher/data/handler/TableOperator;
.source "ItemDB.java"


.field public static final DEFAULT_ORDER:Ljava/lang/String; = "pageIndex ASC, cellIndex ASC"

.field public static final ITEM_INFO_COLUMNS:[Ljava/lang/String;

.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const-class v0, Lcom/smartisanos/launcher/data/handler/ItemDB;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/handler/ItemDB;->log:Lcom/smartisanos/launcher/LOG;

    .line 30
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pageIndex"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cellIndex"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "packageName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "componentName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "newlyInstalled"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "messagesNumber"

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/data/handler/ItemDB;->ITEM_INFO_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/handler/TableOperator;-><init>()V

    return-void
.end method

.method public static bulkInsert(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez p0, :cond_0

    .line 70
    const/4 v0, -0x1

    .line 72
    :goto_0
    return v0

    :cond_0
    const-string v0, "table_iteminfos"

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/data/handler/ItemDB;->bulkInsert(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    goto :goto_0
.end method

.method public static count()I
    .locals 4

    .prologue
    .line 218
    const/4 v0, -0x1

    .line 219
    .local v0, "count":I
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/ItemDB;->queryItem()Landroid/database/Cursor;

    move-result-object v1

    .line 220
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 222
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 226
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 223
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public static dump()V
    .locals 22

    .prologue
    .line 330
    sget-boolean v19, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-nez v19, :cond_1

    .line 362
    .local v10, "itemCursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 333
    .end local v10    # "itemCursor":Landroid/database/Cursor;
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/ItemDB;->queryItem()Landroid/database/Cursor;

    move-result-object v10

    .line 334
    .restart local v10    # "itemCursor":Landroid/database/Cursor;
    if-eqz v10, :cond_4

    .line 336
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_3

    .line 337
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 338
    .local v7, "idCol":I
    const-string v19, "itemType"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 339
    .local v18, "typeCol":I
    const-string v19, "pageIndex"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 340
    .local v14, "pidCol":I
    const-string v19, "cellIndex"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 341
    .local v3, "cidCol":I
    const-string v19, "title"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 342
    .local v12, "nameCol":I
    const-string v19, "packageName"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 343
    .local v16, "pkgCol":I
    const-string v19, "componentName"

    move-object/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 345
    .local v5, "cmpCol":I
    :cond_2
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 346
    .local v8, "id":J
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 347
    .local v13, "pid":I
    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 348
    .local v2, "cid":I
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 349
    .local v17, "type":I
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 350
    .local v11, "name":Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 351
    .local v15, "pkg":Ljava/lang/String;
    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 352
    .local v4, "cmp":Ljava/lang/String;
    sget-object v19, Lcom/smartisanos/launcher/data/handler/ItemDB;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "], name ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "], pkg ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "], cmp ["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 353
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-nez v19, :cond_2

    .line 358
    .end local v2    # "cid":I
    .end local v3    # "cidCol":I
    .end local v4    # "cmp":Ljava/lang/String;
    .end local v5    # "cmpCol":I
    .end local v7    # "idCol":I
    .end local v8    # "id":J
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "nameCol":I
    .end local v13    # "pid":I
    .end local v14    # "pidCol":I
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v16    # "pkgCol":I
    .end local v17    # "type":I
    .end local v18    # "typeCol":I
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_4
    :goto_1
    sget-boolean v19, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v19, :cond_0

    sget-object v19, Lcom/smartisanos/launcher/data/handler/ItemDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v20, "dump item table done  ###################################################"

    invoke-virtual/range {v19 .. v20}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 355
    :catch_0
    move-exception v6

    .line 356
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 358
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v19
.end method

.method public static getAllItem(Z)Ljava/util/Map;
    .locals 7
    .param p0, "checkIsSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p0}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Z)Ljava/util/List;

    move-result-object v2

    .line 103
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    if-eqz v2, :cond_2

    .line 105
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 106
    .local v0, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 107
    .local v4, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    .line 108
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 109
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    check-cast v1, Ljava/util/List;

    .line 111
    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_0
    if-nez v1, :cond_1

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 118
    .end local v0    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public static getAllItemWithStringId(Z)Ljava/util/Map;
    .locals 5
    .param p0, "checkIsSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-static {p0}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Z)Ljava/util/List;

    move-result-object v2

    .line 161
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v2, :cond_0

    .line 162
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    .restart local v0    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 164
    .local v1, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    .end local v1    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_0
    return-object v0
.end method

.method public static insert(Lcom/smartisanos/launcher/data/ItemInfo;)J
    .locals 13
    .param p0, "info"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 38
    const-wide/16 v2, -0x1

    .line 39
    .local v2, "id":J
    if-nez p0, :cond_0

    move-wide v4, v2

    .line 65
    .end local v2    # "id":J
    .local v4, "id":J
    :goto_0
    return-wide v4

    .line 42
    .end local v4    # "id":J
    .restart local v2    # "id":J
    :cond_0
    const/4 v6, 0x0

    .line 43
    .local v6, "pkgName":Ljava/lang/String;
    invoke-static {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->convertItemInfoToContentValues(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;

    move-result-object v7

    .line 44
    .local v7, "value":Landroid/content/ContentValues;
    const-string v9, "packageName"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 45
    const-string v9, "packageName"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 48
    .local v0, "cpName":Ljava/lang/String;
    const-string v9, "componentName"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 49
    const-string v9, "componentName"

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_2
    if-eqz v6, :cond_3

    if-nez v0, :cond_4

    .line 52
    :cond_3
    sget-object v9, Lcom/smartisanos/launcher/data/handler/ItemDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    const-string v11, "can\'t get package name or component name from ContentValues"

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    .line 53
    .end local v2    # "id":J
    .restart local v4    # "id":J
    goto :goto_0

    .line 56
    .end local v4    # "id":J
    .restart local v2    # "id":J
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName =\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' and "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "componentName"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " =\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, "whereCase":Ljava/lang/String;
    const-string v9, "table_iteminfos"

    invoke-static {v9, v8}, Lcom/smartisanos/launcher/data/handler/ItemDB;->checkExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 59
    .local v1, "exist":Z
    if-eqz v1, :cond_5

    .line 60
    sget-object v9, Lcom/smartisanos/launcher/data/handler/ItemDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "DEBUG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "this record already exist !!! COMPONENT_NAME ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "], PACKAGE_NAME ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    .line 61
    .end local v2    # "id":J
    .restart local v4    # "id":J
    goto/16 :goto_0

    .line 63
    .end local v4    # "id":J
    .restart local v2    # "id":J
    :cond_5
    const-string v9, "table_iteminfos"

    invoke-static {v9, v7}, Lcom/smartisanos/launcher/data/handler/ItemDB;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    move-wide v4, v2

    .line 65
    .end local v2    # "id":J
    .restart local v4    # "id":J
    goto/16 :goto_0
.end method

.method public static insertShortcut(Lcom/smartisanos/launcher/data/ShortcutInfo;)J
    .locals 6
    .param p0, "info"    # Lcom/smartisanos/launcher/data/ShortcutInfo;

    .prologue
    const-wide/16 v2, -0x1

    .line 457
    if-nez p0, :cond_0

    .line 466
    :goto_0
    return-wide v2

    .line 460
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/data/ShortcutInfo;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/data/handler/ItemDB;->shortcutExists(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    .line 461
    .local v0, "exist":Z
    if-eqz v0, :cond_1

    .line 462
    sget-object v4, Lcom/smartisanos/launcher/data/handler/ItemDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "insertShortcut failed, exist"

    invoke-virtual {v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_1
    invoke-static {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->convertItemInfoToContentValues(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;

    move-result-object v1

    .line 466
    .local v1, "value":Landroid/content/ContentValues;
    const-string v2, "table_iteminfos"

    invoke-static {v2, v1}, Lcom/smartisanos/launcher/data/handler/ItemDB;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static listItem(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(ZLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "where"    # Ljava/lang/String;
    .param p1, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listItem(Z)Ljava/util/List;
    .locals 1
    .param p0, "checkIsSystem"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-static {p0, v0, v0}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(ZLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listItem(ZLjava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "checkIsSystem"    # Z
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listItem(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "checkIsSystem"    # Z
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0, p3}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listItem(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "checkIsSystem"    # Z
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .param p4, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-static {p2, p3, p1, p4}, Lcom/smartisanos/launcher/data/handler/ItemDB;->queryItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 195
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 197
    :cond_0
    invoke-static {v0, p1}, Lcom/smartisanos/launcher/data/ItemInfo;->toItemInfo(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v2

    .line 198
    .local v2, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->isSettings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 199
    const/4 v4, 0x0

    iput v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 201
    :cond_1
    if-eqz p0, :cond_2

    .line 202
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v4

    iget-object v5, v2, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/smartisanos/home/Launcher;->isSystemAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 204
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 210
    .end local v2    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_3
    if-eqz v0, :cond_4

    .line 211
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_4
    :goto_0
    return-object v3

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    if-eqz v0, :cond_4

    .line 211
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_5

    .line 211
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4
.end method

.method public static listShortcuts(Ljava/util/Map;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "whereMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 406
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 407
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 408
    invoke-interface {v7, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 410
    :cond_0
    const-string v12, "itemType"

    const-string v13, "1"

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 412
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 413
    .local v5, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    new-array v8, v12, [Ljava/lang/String;

    .line 414
    .local v8, "selectArgs":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_2

    .line 415
    if-eqz v3, :cond_1

    .line 416
    const-string v12, " AND "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    :cond_1
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 419
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 420
    .local v10, "value":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " = ?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    aput-object v10, v8, v3

    .line 414
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 423
    .end local v4    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 424
    .local v11, "where":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ShortcutInfo;>;"
    const-string v12, "table_iteminfos"

    invoke-static {v12, v11, v8, v14, v14}, Lcom/smartisanos/launcher/data/handler/ItemDB;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 427
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 429
    :cond_3
    const/4 v12, 0x0

    invoke-static {v1, v12}, Lcom/smartisanos/launcher/data/ItemInfo;->toItemInfo(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/data/ShortcutInfo;

    .line 430
    .local v9, "shortcutInfo":Lcom/smartisanos/launcher/data/ShortcutInfo;
    if-eqz v9, :cond_4

    .line 431
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    if-nez v12, :cond_3

    .line 438
    .end local v9    # "shortcutInfo":Lcom/smartisanos/launcher/data/ShortcutInfo;
    :cond_5
    if-eqz v1, :cond_6

    .line 439
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 442
    :cond_6
    :goto_1
    return-object v6

    .line 435
    :catch_0
    move-exception v2

    .line 436
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    if-eqz v1, :cond_6

    .line 439
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 438
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    if-eqz v1, :cond_7

    .line 439
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v12
.end method

.method public static mapAllItems()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Z)Ljava/util/List;

    move-result-object v2

    .line 144
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v2, :cond_1

    .line 145
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 146
    .local v0, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 147
    .local v4, "pkg":Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 148
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-nez v1, :cond_0

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    .end local v0    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static mapAllItemsByPageIndex()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Z)Ljava/util/List;

    move-result-object v2

    .line 124
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 138
    :cond_0
    return-object v3

    .line 127
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 128
    .local v0, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v0, :cond_2

    .line 129
    iget v4, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 130
    .local v4, "pageIndex":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 131
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-nez v1, :cond_3

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static queryItem()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 395
    invoke-static {v0, v0, v0, v0}, Lcom/smartisanos/launcher/data/handler/ItemDB;->queryItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static queryItem(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "where"    # Ljava/lang/String;
    .param p1, "whereArgs"    # [Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "order"    # Ljava/lang/String;

    .prologue
    .line 399
    if-nez p3, :cond_0

    .line 400
    const-string p3, "pageIndex ASC, cellIndex ASC"

    .line 402
    :cond_0
    const-string v0, "table_iteminfos"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/smartisanos/launcher/data/handler/ItemDB;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static removeItemDataById(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    .line 298
    .local v1, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 299
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/smartisanos/launcher/data/handler/ItemDB$1;

    invoke-direct {v2, v0, p0}, Lcom/smartisanos/launcher/data/handler/ItemDB$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 326
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/handler/ItemDB$1;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    goto :goto_0
.end method

.method public static removeItemDataByPackage(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 242
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/handler/ItemDB;->removeItemDataByPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public static removeItemDataByPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "cmp"    # Ljava/lang/String;

    .prologue
    .line 246
    if-nez p0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 250
    .local v0, "strBuf":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    if-eqz p1, :cond_1

    .line 252
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "componentName=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "whereCase":Ljava/lang/String;
    invoke-static {v1}, Lcom/smartisanos/launcher/data/handler/ItemDB;->removeItemDataByWhereCase(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeItemDataByPackageList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 239
    :cond_0
    return-void

    .line 236
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    .local v0, "pkg":Ljava/lang/String;
    invoke-static {v0}, Lcom/smartisanos/launcher/data/handler/ItemDB;->removeItemDataByPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeItemDataByWhereCase(Ljava/lang/String;)V
    .locals 17
    .param p0, "whereCase"    # Ljava/lang/String;

    .prologue
    .line 260
    if-nez p0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v16

    .line 264
    .local v16, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 265
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "table_iteminfos"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 266
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 269
    const/4 v14, 0x0

    .line 271
    .local v14, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 272
    .local v8, "count":I
    if-lez v8, :cond_4

    .line 273
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v14    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v15, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :try_start_1
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 275
    .local v11, "idIndex":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    :cond_2
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 278
    .local v12, "id":J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    .end local v12    # "id":J
    :cond_3
    move-object v14, v15

    .line 285
    .end local v11    # "idIndex":I
    .end local v15    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v14    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 287
    .end local v8    # "count":I
    :goto_1
    if-eqz v14, :cond_0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-static {v14}, Lcom/smartisanos/launcher/data/handler/ItemDB;->removeItemDataById(Ljava/util/List;)V

    goto :goto_0

    .line 282
    :catch_0
    move-exception v10

    .line 283
    .local v10, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .end local v14    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v8    # "count":I
    .restart local v15    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v1

    move-object v14, v15

    .end local v15    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v14    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_3

    .line 282
    .end local v14    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v15    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_1
    move-exception v10

    move-object v14, v15

    .end local v15    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v14    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    goto :goto_2
.end method

.method public static shortcutExists(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "launchIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 446
    invoke-virtual {p1, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "intentUri":Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 448
    .local v2, "whereMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "intent"

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-static {v2}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listShortcuts(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 450
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ShortcutInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 451
    const/4 v3, 0x1

    .line 453
    :cond_0
    return v3
.end method

.method public static simpleDump()V
    .locals 20

    .prologue
    .line 365
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/ItemDB;->queryItem()Landroid/database/Cursor;

    move-result-object v6

    .line 366
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 392
    :goto_0
    return-void

    .line 370
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 371
    const-string v17, "_id"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 372
    .local v10, "idCol":I
    const-string v17, "pageIndex"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 373
    .local v14, "pidCol":I
    const-string v17, "cellIndex"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 374
    .local v3, "cidCol":I
    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 375
    .local v12, "nameCol":I
    const-string v17, "packageName"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 376
    .local v16, "pkgCol":I
    const-string v17, "componentName"

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 378
    .local v5, "cmpCol":I
    :cond_1
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 379
    .local v8, "id":J
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 380
    .local v13, "pid":I
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 381
    .local v2, "cid":I
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 382
    .local v11, "name":Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 383
    .local v15, "pkg":Ljava/lang/String;
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, "cmp":Ljava/lang/String;
    sget-object v17, Lcom/smartisanos/launcher/data/handler/ItemDB;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "pid ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "], cid ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "], id ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "], name ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 385
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v17

    if-nez v17, :cond_1

    .line 390
    .end local v2    # "cid":I
    .end local v3    # "cidCol":I
    .end local v4    # "cmp":Ljava/lang/String;
    .end local v5    # "cmpCol":I
    .end local v8    # "id":J
    .end local v10    # "idCol":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "nameCol":I
    .end local v13    # "pid":I
    .end local v14    # "pidCol":I
    .end local v15    # "pkg":Ljava/lang/String;
    .end local v16    # "pkgCol":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 387
    :catch_0
    move-exception v7

    .line 388
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v17
.end method

.method public static update(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 1
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "table_iteminfos"

    invoke-static {v0, p0, p1}, Lcom/smartisanos/launcher/data/handler/ItemDB;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static updateById(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez p0, :cond_0

    .line 81
    const/4 v2, 0x0

    .line 98
    :goto_0
    return v2

    .line 83
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 84
    .local v0, "value":Landroid/content/ContentValues;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "where":Ljava/lang/String;
    const-string v3, "table_iteminfos"

    invoke-static {v3, v0, v1}, Lcom/smartisanos/launcher/data/handler/ItemDB;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I

    goto :goto_1

    .line 98
    .end local v0    # "value":Landroid/content/ContentValues;
    .end local v1    # "where":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
