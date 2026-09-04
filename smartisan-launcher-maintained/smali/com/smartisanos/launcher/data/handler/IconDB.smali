.class public Lcom/smartisanos/launcher/data/handler/IconDB;
.super Ljava/lang/Object;
.source "IconDB.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/smartisanos/launcher/data/handler/IconDB;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExist(Ljava/lang/String;)I
    .locals 12
    .param p0, "whereCase"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v11, -0x1

    .line 113
    .local v11, "recordCount":I
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v10

    .line 114
    .local v10, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 115
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 117
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "table_icons"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 124
    if-eqz v8, :cond_0

    .line 125
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 130
    :cond_0
    if-eqz v8, :cond_1

    .line 131
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_1
    :goto_0
    return v11

    .line 127
    :catch_0
    move-exception v9

    .line 128
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    if-eqz v8, :cond_1

    .line 131
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 130
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    .line 131
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static insertIcons(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    .line 42
    .local v1, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 43
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/smartisanos/launcher/data/handler/IconDB$1;

    invoke-direct {v2, v0, p0}, Lcom/smartisanos/launcher/data/handler/IconDB$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 50
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/handler/IconDB$1;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    goto :goto_0
.end method

.method public static listIcon()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v5, 0x0

    .line 139
    .local v5, "icons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;>;"
    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "owner"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "color_info"

    aput-object v12, v2, v11

    .line 140
    .local v2, "columns":[Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v11, v2}, Lcom/smartisanos/launcher/data/handler/IconDB;->queryIcon(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 142
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .end local v5    # "icons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;>;"
    .local v6, "icons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;>;"
    :try_start_1
    const-string v11, "owner"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 144
    .local v10, "indexOwner":I
    const-string v11, "color_info"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 145
    .local v7, "indexColor":I
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 147
    :cond_0
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 148
    .local v8, "id":J
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-gtz v11, :cond_2

    .line 154
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-nez v11, :cond_0

    .line 159
    .end local v8    # "id":J
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object v5, v6

    .line 161
    .end local v6    # "icons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;>;"
    .end local v7    # "indexColor":I
    .end local v10    # "indexOwner":I
    .restart local v5    # "icons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;>;"
    :goto_1
    return-object v5

    .line 151
    .end local v5    # "icons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;>;"
    .restart local v6    # "icons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;>;"
    .restart local v7    # "indexColor":I
    .restart local v8    # "id":J
    .restart local v10    # "indexOwner":I
    :cond_2
    :try_start_2
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "colorInfo":Ljava/lang/String;
    invoke-static {v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->toColorInfo(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v0

    .line 153
    .local v0, "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v6, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 156
    .end local v0    # "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .end local v1    # "colorInfo":Ljava/lang/String;
    .end local v7    # "indexColor":I
    .end local v8    # "id":J
    .end local v10    # "indexOwner":I
    :catch_0
    move-exception v4

    move-object v5, v6

    .line 157
    .end local v6    # "icons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;>;"
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "icons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;>;"
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 159
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v11

    .end local v5    # "icons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;>;"
    .restart local v6    # "icons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;>;"
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "icons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;>;"
    .restart local v5    # "icons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;>;"
    goto :goto_3

    .line 156
    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method public static loadIconToItem(Landroid/content/Context;Ljava/util/Map;Z)V
    .locals 56
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "isOta"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v50

    if-nez v50, :cond_1

    .line 429
    :cond_0
    return-void

    .line 193
    :cond_1
    new-instance v27, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v50

    move-object/from16 v0, v27

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 194
    .local v27, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v50, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v51, "DEBUG"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "loadIcons total item size "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, ", isOta = "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v50 .. v52}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/16 v50, 0x0

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    const-string v53, "owner"

    aput-object v53, v51, v52

    invoke-static/range {v50 .. v51}, Lcom/smartisanos/launcher/data/handler/IconDB;->queryIcon(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 197
    .local v12, "cursor":Landroid/database/Cursor;
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v41, "ownerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v16, "duplicateIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v12, :cond_4

    .line 201
    :try_start_0
    const-string v50, "owner"

    move-object/from16 v0, v50

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v42

    .line 202
    .local v42, "ownerIndex":I
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v50

    if-eqz v50, :cond_3

    .line 204
    :cond_2
    move/from16 v0, v42

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 205
    .local v24, "id":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_6

    .line 206
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, v16

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v50

    if-nez v50, :cond_2

    .line 215
    .end local v24    # "id":J
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 218
    .end local v42    # "ownerIndex":I
    :cond_4
    :goto_1
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v45, "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :cond_5
    :goto_2
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_7

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Long;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 220
    .restart local v24    # "id":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, v27

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    .line 221
    .local v19, "exist":Z
    if-nez v19, :cond_5

    .line 223
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, v45

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 208
    .end local v19    # "exist":Z
    .end local v45    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v42    # "ownerIndex":I
    :cond_6
    :try_start_1
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    .end local v24    # "id":J
    .end local v42    # "ownerIndex":I
    :catch_0
    move-exception v17

    .line 213
    .local v17, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v50

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v50

    .line 226
    .restart local v45    # "removeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_7
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->size()I

    move-result v50

    if-lez v50, :cond_8

    .line 227
    sget-object v50, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v51, "removeIconDataByOwnerId for removeList"

    invoke-virtual/range {v50 .. v51}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 228
    invoke-static/range {v45 .. v45}, Lcom/smartisanos/launcher/data/handler/IconDB;->removeIconDataByOwnerId(Ljava/util/List;)V

    .line 230
    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v50

    if-lez v50, :cond_9

    .line 231
    sget-object v50, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v51, "removeIconDataByOwnerId for duplicateIds"

    invoke-virtual/range {v50 .. v51}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 232
    invoke-static/range {v16 .. v16}, Lcom/smartisanos/launcher/data/handler/IconDB;->removeIconDataByOwnerId(Ljava/util/List;)V

    .line 236
    :cond_9
    sget-object v50, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string v52, "loadIcons isOta ["

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string v52, "]"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 237
    if-eqz p2, :cond_c

    .line 238
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v48, "sysAppIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :cond_a
    :goto_3
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_b

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 240
    .local v24, "id":Ljava/lang/Long;
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 241
    .local v31, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v31, :cond_a

    move-object/from16 v0, v31

    iget-byte v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    move/from16 v51, v0

    if-nez v51, :cond_a

    .line 242
    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v52, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    move-object/from16 v0, v48

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 245
    .end local v24    # "id":Ljava/lang/Long;
    .end local v31    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_b
    invoke-static/range {v48 .. v48}, Lcom/smartisanos/launcher/data/handler/IconDB;->removeIconDataByOwnerId(Ljava/util/List;)V

    .line 249
    .end local v48    # "sysAppIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_c
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->clear()V

    .line 250
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/IconDB;->queryIcon()Landroid/database/Cursor;

    move-result-object v12

    .line 251
    if-eqz v12, :cond_12

    .line 253
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v35

    .line 254
    .local v35, "length":I
    sget-object v50, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v51, "DEBUG"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "loadIcons icon table record size "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v50 .. v52}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    if-lez v35, :cond_11

    .line 256
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v50

    if-eqz v50, :cond_11

    .line 257
    const-string v50, "owner"

    move-object/from16 v0, v50

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 258
    .local v23, "idIndex":I
    const-string v50, "color_info"

    move-object/from16 v0, v50

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 259
    .local v9, "colorInfoIndex":I
    const/16 v21, -0x1

    .line 260
    .local v21, "iconDataIndex":I
    sget-object v50, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    sget-object v51, Lcom/smartisanos/launcher/data/Constants$IconType;->Dark:Lcom/smartisanos/launcher/data/Constants$IconType;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_14

    .line 261
    const-string v50, "dark_icon"

    move-object/from16 v0, v50

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 266
    :cond_d
    :goto_4
    move/from16 v0, v23

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 267
    .local v32, "itemId":J
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 268
    .local v8, "colorInfo":Ljava/lang/String;
    const-wide/16 v50, 0x0

    cmp-long v50, v32, v50

    if-lez v50, :cond_10

    .line 269
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 271
    .local v29, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v20

    .line 272
    .local v20, "iconData":[B
    if-eqz v29, :cond_10

    .line 273
    if-eqz v20, :cond_10

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v50, v0

    if-lez v50, :cond_10

    .line 274
    invoke-static {v8}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->toColorInfo(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v7

    .line 275
    .local v7, "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    if-eqz v7, :cond_e

    .line 276
    move-object/from16 v0, v29

    iput-object v0, v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->owner:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 277
    move-object/from16 v0, v29

    iput-object v7, v0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 279
    :cond_e
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->isActiveIconApp(Ljava/lang/String;)Z

    move-result v50

    if-eqz v50, :cond_f

    .line 280
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v50, v0

    sget-object v51, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v51

    invoke-static {v0, v1, v2}, Lcom/smartisanos/launcher/data/Utils;->generateShadowWithoutIcon(Landroid/content/Context;Ljava/lang/String;Lcom/smartisanos/launcher/data/Constants$IconType;)[B

    move-result-object v20

    .line 282
    :cond_f
    move-object/from16 v0, v29

    invoke-static {v0}, Lcom/smartisanos/launcher/data/Utils;->isProfileShortcut(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v50

    if-eqz v50, :cond_profile_badge_loaded

    const/4 v1, 0x1

    move-object/from16 v0, v29

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/Utils;->reloadIconData(Lcom/smartisanos/launcher/data/ItemInfo;Z)[B

    move-result-object v50

    if-eqz v50, :cond_profile_badge_loaded

    move-object/from16 v20, v50

    :cond_profile_badge_loaded
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    .line 286
    .end local v7    # "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .end local v20    # "iconData":[B
    .end local v29    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_10
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v50

    if-nez v50, :cond_d

    .line 292
    .end local v8    # "colorInfo":Ljava/lang/String;
    .end local v9    # "colorInfoIndex":I
    .end local v21    # "iconDataIndex":I
    .end local v23    # "idIndex":I
    .end local v32    # "itemId":J
    :cond_11
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 296
    .end local v35    # "length":I
    :cond_12
    :goto_5
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v40, "loseIconItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    sget-object v50, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v51, "DEBUG"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "loadIcons ==============> ids size "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v50 .. v52}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :cond_13
    :goto_6
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_15

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Long;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 299
    .local v24, "id":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 300
    .restart local v31    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    move-object/from16 v50, v0

    if-nez v50, :cond_13

    move-object/from16 v0, v31

    iget-byte v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    move/from16 v50, v0

    if-nez v50, :cond_13

    .line 302
    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 263
    .end local v24    # "id":J
    .end local v31    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v40    # "loseIconItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .restart local v9    # "colorInfoIndex":I
    .restart local v21    # "iconDataIndex":I
    .restart local v23    # "idIndex":I
    .restart local v35    # "length":I
    :cond_14
    :try_start_4
    const-string v50, "light_icon"

    move-object/from16 v0, v50

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v21

    goto/16 :goto_4

    .line 289
    .end local v9    # "colorInfoIndex":I
    .end local v21    # "iconDataIndex":I
    .end local v23    # "idIndex":I
    .end local v35    # "length":I
    :catch_1
    move-exception v17

    .line 290
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 292
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v50

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v50

    .line 305
    .restart local v40    # "loseIconItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_15
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v50

    if-lez v50, :cond_20

    .line 306
    sget-object v50, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v51, "DEBUG"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "loadIcons loseIconItems size "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v50 .. v52}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v49, "updateList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v30, "insertList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/LauncherModel;->getResolveInfos(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v47

    .line 310
    .local v47, "resolveInfoHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v43

    .line 311
    .local v43, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 312
    .local v15, "drawableMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/ItemInfo;Landroid/graphics/drawable/Drawable;>;"
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :goto_7
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_19

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 326
    .restart local v31    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    .line 327
    .local v44, "pkg":Ljava/lang/String;
    const/4 v14, 0x0

    .line 328
    .local v14, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v34

    .line 329
    .local v34, "key":Ljava/lang/String;
    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/content/pm/ResolveInfo;

    .line 330
    .local v46, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v46, :cond_17

    .line 331
    invoke-static/range {v44 .. v44}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->isEmbeddedApp(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_16

    .line 332
    invoke-static/range {v44 .. v44}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->getEmbeddedApp(Ljava/lang/String;)Lcom/smartisanos/home/apps/EmbeddedApp;

    move-result-object v18

    .line 333
    .local v18, "embeddedApp":Lcom/smartisanos/home/apps/EmbeddedApp;
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v51

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/apps/EmbeddedApp;->icon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 338
    .end local v18    # "embeddedApp":Lcom/smartisanos/home/apps/EmbeddedApp;
    :cond_16
    :goto_8
    if-eqz v14, :cond_18

    .line 339
    move-object/from16 v0, v31

    invoke-interface {v15, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 336
    :cond_17
    move-object/from16 v0, v46

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/Utils;->loadIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto :goto_8

    .line 341
    :cond_18
    sget-object v51, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v52, "DEBUG"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "lose drawable loadIconToItem ["

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v31 .. v31}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "]"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v51 .. v53}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 344
    .end local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v31    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v34    # "key":Ljava/lang/String;
    .end local v44    # "pkg":Ljava/lang/String;
    .end local v46    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_19
    sget-object v50, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v51, "DEBUG"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "loadIcons generateIconDataList drawableMap size "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v50 .. v52}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v50 .. v50}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    .line 346
    .local v22, "iconDataValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v15, v0, v1}, Lcom/smartisanos/launcher/data/Utils;->generateIconDataList(Ljava/util/Map;Landroid/content/Context;Ljava/util/List;)V

    .line 348
    sget-object v50, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v51, "DEBUG"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "loadIcons get ContentValues list size "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v50 .. v52}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :cond_1a
    :goto_9
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_1e

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    .line 350
    .local v13, "cv":Landroid/content/ContentValues;
    const-string v51, "owner"

    move-object/from16 v0, v51

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 351
    .restart local v24    # "id":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_1d

    .line 352
    move-object/from16 v0, v49

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    :goto_a
    const-string v4, "dark_icon"

    .line 357
    .local v4, "COLUMN_NAME":Ljava/lang/String;
    sget-object v51, Lcom/smartisanos/launcher/data/Constants;->ICON_TYPE:Lcom/smartisanos/launcher/data/Constants$IconType;

    sget-object v52, Lcom/smartisanos/launcher/data/Constants$IconType;->Dark:Lcom/smartisanos/launcher/data/Constants$IconType;

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    if-eq v0, v1, :cond_1b

    .line 358
    const-string v4, "light_icon"

    .line 360
    :cond_1b
    invoke-virtual {v13, v4}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v28

    .line 361
    .local v28, "imageData":[B
    if-nez v28, :cond_1c

    .line 362
    sget-object v51, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v52, "DEBUG"

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    const-string v54, "loadIcons lose icon data ! "

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string v54, "owner"

    move-object/from16 v0, v54

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v51 .. v53}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_1c
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 365
    .local v39, "loseIconItem":Lcom/smartisanos/launcher/data/ItemInfo;
    const-string v51, "color_info"

    move-object/from16 v0, v51

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 366
    .local v10, "colorInfoStr":Ljava/lang/String;
    if-eqz v39, :cond_1a

    .line 367
    move-object/from16 v0, v28

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    .line 368
    invoke-static {v10}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->toColorInfo(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v7

    .line 369
    .restart local v7    # "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    move-object/from16 v0, v39

    iput-object v0, v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->owner:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 370
    move-object/from16 v0, v39

    iput-object v7, v0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    goto/16 :goto_9

    .line 354
    .end local v4    # "COLUMN_NAME":Ljava/lang/String;
    .end local v7    # "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .end local v10    # "colorInfoStr":Ljava/lang/String;
    .end local v28    # "imageData":[B
    .end local v39    # "loseIconItem":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_1d
    move-object/from16 v0, v30

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 373
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v24    # "id":J
    :cond_1e
    sget-object v50, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v51, "DEBUG"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "insertList length ["

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "], updateList length ["

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-interface/range {v49 .. v49}, Ljava/util/List;->size()I

    move-result v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "]"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v50 .. v52}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v50

    if-lez v50, :cond_1f

    .line 375
    invoke-static/range {v30 .. v30}, Lcom/smartisanos/launcher/data/handler/IconDB;->insertIcons(Ljava/util/List;)V

    .line 377
    :cond_1f
    invoke-interface/range {v49 .. v49}, Ljava/util/List;->size()I

    move-result v50

    if-lez v50, :cond_20

    .line 378
    invoke-static/range {v49 .. v49}, Lcom/smartisanos/launcher/data/handler/IconDB;->updateIcons(Ljava/util/List;)V

    .line 382
    .end local v15    # "drawableMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/ItemInfo;Landroid/graphics/drawable/Drawable;>;"
    .end local v22    # "iconDataValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v30    # "insertList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v43    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v47    # "resolveInfoHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/ResolveInfo;>;"
    .end local v49    # "updateList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_20
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getColorAlgorithmVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 383
    .local v6, "algorithmVersion":Ljava/lang/String;
    const/4 v5, 0x0

    .line 384
    .local v5, "algorithmUpgrade":Z
    const-string v50, "0.93"

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v50

    if-nez v50, :cond_21

    .line 385
    const/4 v5, 0x1

    .line 386
    sget-object v50, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v51, "DEBUG"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "COLOR_ALGORITHM_VERSION update, from ["

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "] to ["

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "0.93"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "]"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v50 .. v52}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_21
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v38, "loseIconColorItemList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :cond_22
    :goto_b
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_24

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Long;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 390
    .restart local v24    # "id":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    move-object/from16 v0, p1

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 391
    .restart local v31    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-object/from16 v50, v0

    if-eqz v50, :cond_23

    if-eqz v5, :cond_22

    .line 392
    :cond_23
    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 395
    .end local v24    # "id":J
    .end local v31    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_24
    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v50

    if-lez v50, :cond_26

    .line 396
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v50 .. v50}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 397
    .local v11, "contentValueses":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object/from16 v0, v38

    invoke-static {v0, v11}, Lcom/smartisanos/launcher/data/Utils;->generateColorInfo(Ljava/util/List;Ljava/util/List;)V

    .line 398
    sget-object v50, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v51, "DEBUG"

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "loseIconColorItemList size "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, ", contentValueses size "

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v50 .. v52}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :goto_c
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_25

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    .line 400
    .restart local v13    # "cv":Landroid/content/ContentValues;
    const-string v51, "owner"

    move-object/from16 v0, v51

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 401
    .restart local v24    # "id":J
    const-string v51, "color_info"

    move-object/from16 v0, v51

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 402
    .restart local v10    # "colorInfoStr":Ljava/lang/String;
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    move-object/from16 v0, p1

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 403
    .restart local v31    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-static {v10}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->toColorInfo(Ljava/lang/String;)Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v7

    .line 404
    .restart local v7    # "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    move-object/from16 v0, v31

    iput-object v0, v7, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->owner:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 405
    move-object/from16 v0, v31

    iput-object v7, v0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    goto :goto_c

    .line 407
    .end local v7    # "color":Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;
    .end local v10    # "colorInfoStr":Ljava/lang/String;
    .end local v13    # "cv":Landroid/content/ContentValues;
    .end local v24    # "id":J
    .end local v31    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_25
    invoke-static {v11}, Lcom/smartisanos/launcher/data/handler/IconDB;->updateIcons(Ljava/util/List;)V

    .line 408
    if-eqz v5, :cond_26

    .line 409
    const-string v50, "0.93"

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/LauncherPreferences;->setColorAlgorithmVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 414
    .end local v11    # "contentValueses":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_26
    new-instance v26, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v50

    move-object/from16 v0, v26

    move-object/from16 v1, v50

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 415
    .local v26, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :cond_27
    :goto_d
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_0

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 416
    .local v24, "id":Ljava/lang/Long;
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 417
    .restart local v31    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    const/16 v37, 0x0

    .line 418
    .local v37, "loseIcon":Z
    const/16 v36, 0x0

    .line 419
    .local v36, "loseColor":Z
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    move-object/from16 v51, v0

    if-nez v51, :cond_28

    .line 420
    const/16 v37, 0x1

    .line 422
    :cond_28
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-object/from16 v51, v0

    if-nez v51, :cond_29

    .line 423
    const/16 v36, 0x1

    .line 425
    :cond_29
    if-nez v37, :cond_2a

    if-eqz v36, :cond_27

    .line 426
    :cond_2a
    sget-object v51, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    const-string v53, "["

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v54, v0

    move-object/from16 v0, v52

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "]["

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "] loseIcon ["

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "], loseColor ["

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "]"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method private static queryIcon()Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 432
    invoke-static {v0, v0}, Lcom/smartisanos/launcher/data/handler/IconDB;->queryIcon(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static queryIcon(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p0, "where"    # Ljava/lang/String;
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 436
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v8

    .line 437
    .local v8, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v8}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 438
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "table_icons"

    move-object v2, p1

    move-object v3, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static removeIconDataByOwnerId(Ljava/util/List;)V
    .locals 10
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
    .line 165
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 169
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 170
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_3

    .line 171
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 172
    .local v3, "id":Ljava/lang/Long;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "owner="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    add-int/lit8 v7, v5, -0x1

    if-eq v2, v7, :cond_2

    .line 174
    const-string v7, " OR "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 177
    .end local v3    # "id":Ljava/lang/Long;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "whereCase":Ljava/lang/String;
    sget-boolean v7, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeIconDataByOwnerId where ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 179
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v4

    .line 180
    .local v4, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 181
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v7, Lcom/smartisanos/launcher/data/handler/IconDB$4;

    invoke-direct {v7, v1, v6}, Lcom/smartisanos/launcher/data/handler/IconDB$4;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v7}, Lcom/smartisanos/launcher/data/handler/IconDB$4;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    goto :goto_0
.end method

.method public static saveIconData(Landroid/content/ContentValues;)Z
    .locals 18
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 v9, 0x0

    .line 108
    :goto_0
    return v9

    .line 74
    :cond_0
    const-wide/16 v10, -0x1

    .line 75
    .local v10, "_id":J
    const-string v3, "owner"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    const-string v3, "owner"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 78
    :cond_1
    const-wide/16 v16, -0x1

    cmp-long v3, v10, v16

    if-nez v3, :cond_2

    .line 79
    sget-object v3, Lcom/smartisanos/launcher/data/handler/IconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    const-string v15, "saveIconData nothing to do by can\'t get owner id from ContentValues"

    invoke-virtual {v3, v8, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v9, 0x0

    goto :goto_0

    .line 82
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "owner="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 83
    .local v14, "whereCase":Ljava/lang/String;
    const/4 v2, 0x0

    .line 84
    .local v2, "alreadyExist":Z
    invoke-static {v14}, Lcom/smartisanos/launcher/data/handler/IconDB;->checkExist(Ljava/lang/String;)I

    move-result v13

    .line 85
    .local v13, "recordCount":I
    const/4 v3, 0x1

    if-ne v13, v3, :cond_3

    .line 86
    const/4 v2, 0x1

    .line 88
    :cond_3
    const/4 v3, 0x1

    if-le v13, v3, :cond_4

    .line 89
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "duplicate owner id ["

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "], there are ["

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v15, "] records in db"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_4
    move-wide v6, v10

    .line 92
    .local v6, "id":J
    move v5, v2

    .line 93
    .local v5, "exist":Z
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v12

    .line 94
    .local v12, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v12}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 95
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/smartisanos/launcher/data/handler/IconDB$3;

    move-object/from16 v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/smartisanos/launcher/data/handler/IconDB$3;-><init>(Landroid/database/sqlite/SQLiteDatabase;ZJLandroid/content/ContentValues;)V

    .line 107
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/handler/IconDB$3;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    move-result-object v3

    iget-boolean v9, v3, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    .line 108
    .local v9, "flag":Z
    goto/16 :goto_0
.end method

.method public static updateIcons(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    .line 58
    .local v1, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 59
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/smartisanos/launcher/data/handler/IconDB$2;

    invoke-direct {v2, v0, p0}, Lcom/smartisanos/launcher/data/handler/IconDB$2;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 67
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/handler/IconDB$2;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    goto :goto_0
.end method
