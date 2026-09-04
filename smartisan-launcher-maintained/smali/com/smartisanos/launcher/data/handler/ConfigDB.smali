.class public Lcom/smartisanos/launcher/data/handler/ConfigDB;
.super Lcom/smartisanos/launcher/data/handler/TableOperator;
.source "ConfigDB.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/smartisanos/launcher/data/handler/ConfigDB;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/handler/ConfigDB;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/handler/TableOperator;-><init>()V

    return-void
.end method

.method public static list()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 95
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v5, "sync_configuration"

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "name"

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/smartisanos/launcher/data/handler/ConfigDB;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 96
    const-string v5, "name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 97
    .local v2, "index":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    :cond_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 106
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 107
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 110
    .end local v2    # "index":I
    :cond_2
    :goto_0
    return-object v4

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 106
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    .line 107
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method public static readConfig(Ljava/lang/String;)[B
    .locals 15
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 18
    if-nez p0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-object v9

    .line 21
    :cond_1
    const/4 v9, 0x0

    .line 22
    .local v9, "data":[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "where":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v14

    .line 24
    .local v14, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    const/4 v8, 0x0

    .line 26
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v14}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 27
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "sync_configuration"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 28
    const-string v1, "name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 29
    .local v13, "nameIndex":I
    const-string v1, "md5"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 30
    .local v12, "md5Index":I
    const-string v1, "data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 31
    .local v10, "dataIndex":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    :cond_2
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 34
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 40
    :cond_3
    if-eqz v8, :cond_0

    .line 41
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 36
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "dataIndex":I
    .end local v12    # "md5Index":I
    .end local v13    # "nameIndex":I
    :catch_0
    move-exception v11

    .line 37
    .local v11, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 38
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    if-eqz v8, :cond_0

    .line 41
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 40
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 41
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
.end method

.method public static remove(Ljava/lang/String;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 84
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    .line 85
    .local v1, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "where":Ljava/lang/String;
    const-string v3, "sync_configuration"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    .end local v2    # "where":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static updateConfig(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "md5"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 48
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const/4 v2, 0x0

    .line 52
    .local v2, "exist":Z
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/ConfigDB;->list()Ljava/util/List;

    move-result-object v3

    .line 53
    .local v3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 54
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 55
    const/4 v2, 0x1

    .line 60
    .end local v5    # "str":Ljava/lang/String;
    :cond_3
    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 61
    .local v6, "values":Landroid/content/ContentValues;
    const-string v8, "md5"

    invoke-virtual {v6, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v8, "data"

    invoke-virtual {v6, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 63
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v4

    .line 64
    .local v4, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 65
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v2, :cond_4

    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, "where":Ljava/lang/String;
    const-string v8, "sync_configuration"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v4    # "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    .end local v6    # "values":Landroid/content/ContentValues;
    .end local v7    # "where":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    .restart local v6    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_1
    const-string v8, "name"

    invoke-virtual {v6, v8, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v8, "sync_configuration"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
