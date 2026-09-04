.class public Lcom/smartisanos/expandservice/launcher/data/CategoryDB;
.super Ljava/lang/Object;
.source "CategoryDB.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask;,
        Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;
    }
.end annotation


.field private static final SUB_CATEGORY_ARR:Ljava/lang/String; = "son_category"

.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "whereCase"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v8, -0x1

    .line 126
    .local v8, "recordCount":I
    const/4 v6, 0x0

    .line 129
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->getDBHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->query(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 130
    if-eqz v6, :cond_0

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 136
    :cond_0
    if-eqz v6, :cond_1

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_1
    :goto_0
    if-lez v8, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 133
    :catch_0
    move-exception v7

    .line 134
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    if-eqz v6, :cond_1

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 136
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 140
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getCategoryFromPredefinedData(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 353
    if-nez p0, :cond_0

    .line 373
    :goto_0
    return-object v2

    .line 356
    :cond_0
    const/4 v6, 0x0

    .line 357
    .local v6, "category":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, "where":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->getDBHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    const-string v1, "predefined_category"

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->query(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 361
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "category_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 362
    .local v7, "cidIndex":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 371
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v7    # "cidIndex":I
    :goto_1
    move-object v2, v6

    .line 373
    goto :goto_0

    .line 368
    :catch_0
    move-exception v9

    .line 369
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getDBHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    return-object v0
.end method

.method public static initPredefinedCategoryData(Ljava/util/List;)V
    .locals 5
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
    .line 344
    .local p0, "cvs":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 345
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-static {}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->getDBHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v3

    const-string v4, "predefined_category"

    invoke-static {v3, v4, v0}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->insert(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    .end local v0    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 348
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 350
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public static insert(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p0, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/content/ContentValues;

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 392
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$1;

    invoke-direct {v1, v0, p1, p2}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 398
    invoke-virtual {v1}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$1;->execute()Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    move-result-object v1

    iget-wide v2, v1, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;->l:J

    .line 399
    .local v2, "id":J
    return-wide v2
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 10
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v9, 0x1

    .line 102
    .local v9, "empty":Z
    const/4 v7, 0x0

    .line 105
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->getDBHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->query(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 106
    if-eqz v7, :cond_0

    .line 107
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 108
    .local v6, "count":I
    if-lez v6, :cond_0

    .line 109
    const/4 v9, 0x0

    .line 115
    .end local v6    # "count":I
    :cond_0
    if-eqz v7, :cond_1

    .line 117
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 121
    :cond_1
    :goto_0
    return v9

    .line 112
    :catch_0
    move-exception v8

    .line 113
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    if-eqz v7, :cond_1

    .line 117
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 118
    :catch_1
    move-exception v0

    goto :goto_0

    .line 115
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 117
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 118
    :cond_2
    :goto_1
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static listAppCategory(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p0, "where"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/expandservice/launcher/data/AppCategoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/expandservice/launcher/data/AppCategoryInfo;>;"
    const/4 v10, 0x0

    .line 200
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->getDBHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v2

    const-string v3, "category_id_names_map"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v2 .. v7}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->query(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 201
    const-string v2, "category_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 202
    .local v9, "cidIndex":I
    const-string v2, "pkg"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 203
    .local v15, "pkgIndex":I
    const-string v2, "sync_time"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 204
    .local v16, "syncTimeIndex":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    :cond_0
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, "categoryId":Ljava/lang/String;
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 208
    .local v14, "pkg":Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 209
    .local v18, "time":J
    new-instance v12, Lcom/smartisanos/expandservice/launcher/data/AppCategoryInfo;

    invoke-direct {v12}, Lcom/smartisanos/expandservice/launcher/data/AppCategoryInfo;-><init>()V

    .line 210
    .local v12, "info":Lcom/smartisanos/expandservice/launcher/data/AppCategoryInfo;
    iput-object v8, v12, Lcom/smartisanos/expandservice/launcher/data/AppCategoryInfo;->categoryId:Ljava/lang/String;

    .line 211
    iput-object v14, v12, Lcom/smartisanos/expandservice/launcher/data/AppCategoryInfo;->packageName:Ljava/lang/String;

    .line 212
    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/smartisanos/expandservice/launcher/data/AppCategoryInfo;->lastSyncTime:J

    .line 213
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 219
    .end local v8    # "categoryId":Ljava/lang/String;
    .end local v12    # "info":Lcom/smartisanos/expandservice/launcher/data/AppCategoryInfo;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v18    # "time":J
    :cond_1
    if-eqz v10, :cond_2

    .line 220
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 223
    .end local v9    # "cidIndex":I
    .end local v15    # "pkgIndex":I
    .end local v16    # "syncTimeIndex":I
    :cond_2
    :goto_0
    return-object v13

    .line 216
    :catch_0
    move-exception v11

    .line 217
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    if-eqz v10, :cond_2

    .line 220
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 219
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_3

    .line 220
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public static listCategoryName(Landroid/content/Context;)Ljava/util/List;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, "category_language":Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;>;"
    invoke-static {}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->getDBHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    const-string v2, "category_id_names_map"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->query(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 232
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "category_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 233
    .local v9, "cidIndex":I
    const-string v1, "sub_category_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 234
    .local v17, "subIdIndex":I
    const-string v1, "category_names"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 235
    .local v15, "namesIndex":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    :cond_0
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 238
    .local v8, "cid":Ljava/lang/String;
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 239
    .local v16, "subId":Ljava/lang/String;
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 240
    .local v14, "nameJson":Ljava/lang/String;
    new-instance v12, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;

    move-object/from16 v0, v16

    invoke-direct {v12, v8, v0, v14, v7}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .local v12, "info":Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 247
    .end local v8    # "cid":Ljava/lang/String;
    .end local v12    # "info":Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;
    .end local v14    # "nameJson":Ljava/lang/String;
    .end local v16    # "subId":Ljava/lang/String;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 249
    .end local v9    # "cidIndex":I
    .end local v15    # "namesIndex":I
    .end local v17    # "subIdIndex":I
    :goto_0
    return-object v13

    .line 244
    :catch_0
    move-exception v11

    .line 245
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static mapAllAppCategory()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 320
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 322
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->getDBHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    const-string v1, "app_category"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->query(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 324
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "pkg"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 325
    .local v12, "pkgIndex":I
    const-string v0, "category_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 326
    .local v7, "cidIndex":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    :cond_0
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 329
    .local v11, "pkg":Ljava/lang/String;
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 330
    .local v6, "category":Ljava/lang/String;
    invoke-interface {v10, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 336
    .end local v6    # "category":Ljava/lang/String;
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 338
    .end local v7    # "cidIndex":I
    .end local v12    # "pkgIndex":I
    :goto_0
    return-object v10

    .line 333
    :catch_0
    move-exception v9

    .line 334
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static parseCategoryNames([B)Ljava/util/List;
    .locals 18
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;>;"
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    new-instance v17, Ljava/lang/String;

    invoke-direct/range {v17 .. v18}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    .local v11, "object":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 150
    .local v4, "keys":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 151
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 155
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 156
    .local v10, "names":Lorg/json/JSONObject;
    if-eqz v10, :cond_0

    .line 159
    const/4 v14, 0x0

    .line 160
    .local v14, "subCategoryArr":Lorg/json/JSONObject;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 161
    .local v9, "nameValueObject":Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 162
    .local v7, "nameKeys":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 163
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 164
    .local v6, "nameKey":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 167
    const-string v17, "son_category"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 168
    const-string v17, "son_category"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, "nameValue":Ljava/lang/String;
    invoke-virtual {v9, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Iterator;
    .end local v6    # "nameKey":Ljava/lang/String;
    .end local v7    # "nameKeys":Ljava/util/Iterator;
    .end local v8    # "nameValue":Ljava/lang/String;
    .end local v9    # "nameValueObject":Lorg/json/JSONObject;
    .end local v10    # "names":Lorg/json/JSONObject;
    .end local v11    # "object":Lorg/json/JSONObject;
    .end local v14    # "subCategoryArr":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/Exception;
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 190
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    return-object v5

    .line 174
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "keys":Ljava/util/Iterator;
    .restart local v7    # "nameKeys":Ljava/util/Iterator;
    .restart local v9    # "nameValueObject":Lorg/json/JSONObject;
    .restart local v10    # "names":Lorg/json/JSONObject;
    .restart local v11    # "object":Lorg/json/JSONObject;
    .restart local v14    # "subCategoryArr":Lorg/json/JSONObject;
    :cond_4
    :try_start_1
    new-instance v1, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v1, v3, v0}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v1, "category":Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v1, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->namesString:Ljava/lang/String;

    .line 176
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    if-eqz v14, :cond_0

    .line 178
    invoke-virtual {v14}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    .line 179
    .local v15, "subCategoryIterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 180
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 181
    .local v16, "subCid":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 182
    .local v12, "subCNames":Lorg/json/JSONObject;
    new-instance v13, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;

    move-object/from16 v0, v16

    invoke-direct {v13, v3, v0}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v13, "subCategory":Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v13, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->namesString:Ljava/lang/String;

    .line 184
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static query(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p0, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 416
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 418
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 425
    :goto_0
    return-object v8

    .line 420
    :catch_0
    move-exception v9

    .line 421
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 423
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v9

    .line 424
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static update(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 3
    .param p0, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;

    .prologue
    .line 403
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 404
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$2;

    invoke-direct {v2, v1, p1, p2, p3}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$2;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v2}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$2;->execute()Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;

    move-result-object v2

    iget v0, v2, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$TransactionTask$Result;->i:I

    .line 411
    .local v0, "count":I
    return v0
.end method

.method public static updateAppCategory(Landroid/content/ContentValues;)V
    .locals 4
    .param p0, "value"    # Landroid/content/ContentValues;

    .prologue
    .line 377
    if-nez p0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 381
    :cond_0
    const-string v2, "pkg"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "pkg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "where":Ljava/lang/String;
    const-string v2, "app_category"

    invoke-static {v2, v1}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->checkExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    invoke-static {}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->getDBHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v2

    const-string v3, "app_category"

    invoke-static {v2, v3, p0, v1}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->update(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    :cond_1
    invoke-static {}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->getDBHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v2

    const-string v3, "app_category"

    invoke-static {v2, v3, p0}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->insert(Landroid/database/sqlite/SQLiteOpenHelper;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method public static updateCategoryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "subCategory"    # Ljava/lang/String;
    .param p2, "names"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 267
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v6

    .line 270
    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 273
    const/4 v2, 0x0

    .line 274
    .local v2, "exist":Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "category_id=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 275
    .local v9, "where":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 276
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "sub_category_id"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 279
    :cond_2
    :try_start_0
    const-string v10, "category_id_names_map"

    invoke-static {v10, v9}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->checkExist(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 283
    :goto_1
    const/4 v6, 0x0

    .line 285
    .local v6, "success":Z
    :try_start_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .local v8, "values":Landroid/content/ContentValues;
    const-string v10, "category_id"

    invoke-virtual {v8, v10, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v10, "category_names"

    invoke-virtual {v8, v10, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    if-eqz p1, :cond_3

    .line 289
    const-string v10, "sub_category_id"

    invoke-virtual {v8, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_3
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v3

    .line 293
    .local v3, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 296
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v2, :cond_4

    .line 298
    const-string v10, "category_id_names_map"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v8, v9, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 299
    .local v7, "updateRows":I
    if-lez v7, :cond_0

    .line 300
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 280
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    .end local v6    # "success":Z
    .end local v7    # "updateRows":I
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 304
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    .restart local v6    # "success":Z
    .restart local v8    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    const-string v10, "category_id_names_map"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v4

    .line 305
    .local v4, "insertId":J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_0

    .line 306
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 309
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    .end local v4    # "insertId":J
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    .line 310
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static updateCategoryNames(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "categoryList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;>;"
    const/4 v1, 0x0

    .line 254
    .local v1, "saved":Z
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 263
    :cond_0
    return v1

    .line 257
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;

    .line 258
    .local v0, "category":Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;
    if-eqz v0, :cond_2

    .line 261
    iget-object v3, v0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->categoryId:Ljava/lang/String;

    iget-object v4, v0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->subCategoryId:Ljava/lang/String;

    iget-object v5, v0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->namesString:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->updateCategoryName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
