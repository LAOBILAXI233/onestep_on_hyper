.class public Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DataBaseHelper.java"


.field private static final DB_NAME:Ljava/lang/String; = "SearchIndex.db"

.field private static final DB_VERSION:I = 0x1

.field private static mContext:Landroid/content/Context;

.field private static mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;


.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v0, "SearchIndex.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 36
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget-object v0, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    invoke-direct {v0, p0}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    .line 42
    :cond_0
    sget-object v0, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->mDataBaseHelper:Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;

    return-object v0
.end method

.method private recreateDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 65
    const-string v0, "drop TABLE IF EXISTS contact_index;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 69
    return-void
.end method


.method public declared-synchronized delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 164
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 163
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized delete(Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;)[I
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [[Ljava/lang/String;

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 169
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    array-length v3, p3

    new-array v1, v3, [I

    .line 170
    .local v1, "deleteList":[I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 171
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_0

    .line 172
    aget-object v3, p3, v2

    invoke-virtual {v0, p1, p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 175
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    const/4 v0, 0x0

    .line 178
    monitor-exit p0

    return-object v1

    .line 168
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "deleteList":[I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 135
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit p0

    return-wide v2

    .line 134
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized insert(Ljava/lang/String;[Landroid/content/ContentValues;)[J
    .locals 7
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "contentValues"    # [Landroid/content/ContentValues;

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 140
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    array-length v4, p2

    new-array v3, v4, [J

    .line 142
    .local v3, "insertList":[J
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 143
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_1

    .line 144
    aget-object v4, p2, v2

    if-eqz v4, :cond_0

    .line 145
    const/4 v4, 0x0

    aget-object v5, p2, v2

    invoke-virtual {v0, p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    aput-wide v5, v3, v2

    .line 143
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 149
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "i":I
    :goto_1
    monitor-exit p0

    return-object v3

    .line 151
    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    const/4 v3, 0x0

    goto :goto_1

    .line 139
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v3    # "insertList":[J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 49
    const-string v0, " CREATE TABLE IF NOT EXISTS contact_index(_id INTEGER  UNIQUE NOT NULL,contact_id INTEGER  NOT NULL,version INTEGER NOT NULL,lookupkey TEXT  NOT NULL,displayname TEXT NOT NULL,number TEXT NOT NULL,origin_index TEXT NOT NULL,qwerty_index TEXT NOT NULL,t9_index TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 55
    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 56
    invoke-direct {p0, p1}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->recreateDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 62
    return-void
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "orderBy"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 96
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public recreateAppTable()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    .line 79
    const-string v1, "\u5220\u9664\u5e76\u91cd\u65b0\u521b\u5efaapp\u7d22\u5f15\u8868"

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public recreateContactTable()V
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 84
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "drop TABLE IF EXISTS contact_index;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 85
    const-string v1, " CREATE TABLE IF NOT EXISTS contact_index(_id INTEGER  UNIQUE NOT NULL,contact_id INTEGER  NOT NULL,version INTEGER NOT NULL,lookupkey TEXT  NOT NULL,displayname TEXT NOT NULL,number TEXT NOT NULL,origin_index TEXT NOT NULL,qwerty_index TEXT NOT NULL,t9_index TEXT NOT NULL);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 90
    const-string v1, "\u5220\u9664\u5e76\u91cd\u65b0\u521b\u5efa\u8054\u7cfb\u4eba\u7d22\u5f15\u8868"

    invoke-static {v1}, Lcom/smartisanos/quicksearchbox/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public declared-synchronized update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 101
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 100
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized update(Ljava/lang/String;[Landroid/content/ContentValues;Ljava/lang/String;[[Ljava/lang/String;)[I
    .locals 12
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "contentValues"    # [Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [[Ljava/lang/String;

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 106
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    array-length v4, p2

    new-array v3, v4, [I

    .line 108
    .local v3, "updateArray":[I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 109
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_0

    .line 110
    move-object v6, v0

    move-object v7, p1

    aget-object v8, p2, v2

    move-object v9, p3

    aget-object v10, p4, v2

    const/4 v11, 0x5

    invoke-virtual/range {v6 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v4

    aput v4, v3, v2

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 113
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "i":I
    :goto_1
    monitor-exit p0

    return-object v3

    .line 115
    .restart local v2    # "i":I
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    const/4 v3, 0x0

    goto :goto_1

    .line 105
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v3    # "updateArray":[I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
