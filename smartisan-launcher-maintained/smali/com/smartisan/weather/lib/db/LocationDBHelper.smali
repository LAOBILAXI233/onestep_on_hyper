.class public Lcom/smartisan/weather/lib/db/LocationDBHelper;
.super Ljava/lang/Object;
.source "LocationDBHelper.java"


.field private static instance:Lcom/smartisan/weather/lib/db/LocationDBHelper;


.field private TABLE_NAME:Ljava/lang/String;

.field public locationDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;


.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-string v0, "location"

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->TABLE_NAME:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/smartisan/weather/lib/db/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    .line 74
    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 100
    if-eqz p1, :cond_0

    .line 101
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_0
    return-void
.end method

.method private closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 97
    :cond_0
    return-void
.end method

.method private creatContentValuesFromLocation(Lcom/smartisan/weather/lib/bean/SmartisanLocation;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "location"    # Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    .prologue
    .line 263
    if-nez p1, :cond_1

    .line 264
    const/4 v0, 0x0

    .line 273
    :cond_0
    :goto_0
    return-object v0

    .line 266
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 268
    const-string v1, "locationKey"

    iget-object v2, p1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_2
    iget v1, p1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->sortOrder:I

    if-eqz v1, :cond_0

    .line 271
    const-string v1, "sort_order"

    iget v2, p1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->sortOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private creatLocationFromCursor(Landroid/database/Cursor;)Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, -0x1

    .line 247
    if-nez p1, :cond_1

    .line 248
    const/4 v0, 0x0

    .line 259
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :cond_1
    new-instance v0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    invoke-direct {v0}, Lcom/smartisan/weather/lib/bean/SmartisanLocation;-><init>()V

    .line 250
    .local v0, "location":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->id:I

    .line 251
    const-string v1, "locationKey"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationKey:Ljava/lang/String;

    .line 252
    const-string v1, "sort_order"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->sortOrder:I

    .line 253
    const-string v1, "city_child"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 254
    const-string v1, "city_child"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationName:Ljava/lang/String;

    .line 256
    :cond_2
    const-string v1, "city_parent"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 257
    const-string v1, "city_parent"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->locationParentName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static destory()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->instance:Lcom/smartisan/weather/lib/db/LocationDBHelper;

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->instance:Lcom/smartisan/weather/lib/db/LocationDBHelper;

    .line 91
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/LocationDBHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    sget-object v0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->instance:Lcom/smartisan/weather/lib/db/LocationDBHelper;

    if-nez v0, :cond_1

    .line 78
    const-class v1, Lcom/smartisan/weather/lib/db/LocationDBHelper;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->instance:Lcom/smartisan/weather/lib/db/LocationDBHelper;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/smartisan/weather/lib/db/LocationDBHelper;

    invoke-direct {v0, p0}, Lcom/smartisan/weather/lib/db/LocationDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->instance:Lcom/smartisan/weather/lib/db/LocationDBHelper;

    .line 82
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_1
    sget-object v0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->instance:Lcom/smartisan/weather/lib/db/LocationDBHelper;

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


.method public declared-synchronized addLocation(Lcom/smartisan/weather/lib/bean/SmartisanLocation;Lcom/smartisan/weather/lib/bean/SmartisanLocation;)Z
    .locals 6
    .param p1, "location"    # Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    .param p2, "previous"    # Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    .prologue
    .line 208
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 209
    :cond_0
    const/4 v2, 0x0

    .line 227
    :goto_0
    monitor-exit p0

    return v2

    .line 210
    :cond_1
    const/4 v2, 0x0

    .line 211
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v4}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 213
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->TABLE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set sort_order = (sort_order + 1) where sort_order > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->sortOrder:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    iget v4, p2, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->sortOrder:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->sortOrder:I

    .line 217
    invoke-direct {p0, p1}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->creatContentValuesFromLocation(Lcom/smartisan/weather/lib/bean/SmartisanLocation;)Landroid/content/ContentValues;

    move-result-object v3

    .line 218
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 219
    iget-object v4, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->TABLE_NAME:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 221
    :cond_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 225
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 208
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 222
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 223
    .local v1, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v4, "Excepition"

    const-string v5, "addLocation"

    invoke-static {v4, v5, v1}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 225
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1    # "e":Landroid/database/SQLException;
    :catchall_1
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized delLocation(Lcom/smartisan/weather/lib/bean/SmartisanLocation;)Z
    .locals 8
    .param p1, "location"    # Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 231
    monitor-enter p0

    if-nez p1, :cond_1

    .line 242
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 233
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v5}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 234
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 237
    .local v0, "args":[Ljava/lang/String;
    iget-object v5, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->TABLE_NAME:Ljava/lang/String;

    const-string v6, "_id = ?"

    invoke-virtual {v1, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 238
    .local v2, "delete":I
    invoke-direct {p0, v1}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    if-lez v2, :cond_0

    move v3, v4

    .line 240
    goto :goto_0

    .line 231
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "delete":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized deleteCurrentLocation()Z
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 133
    monitor-enter p0

    const/4 v1, 0x0

    .line 134
    .local v1, "result":Z
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 135
    .local v3, "values":Landroid/content/ContentValues;
    const-string v6, "locationKey"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v6, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v6}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 137
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v6, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->TABLE_NAME:Ljava/lang/String;

    const-string v7, "_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "1"

    aput-object v10, v8, v9

    invoke-virtual {v0, v6, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 140
    .local v2, "update":I
    if-lez v2, :cond_0

    move v1, v4

    .line 141
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, v5

    .line 140
    goto :goto_0

    .line 133
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "update":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized deleteCurrentLocationWeather()Z
    .locals 4

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    const-string v1, "locationKey = (select locationKey from location where _id = 1)"

    .line 128
    .local v1, "whereClause":Ljava/lang/String;
    iget-object v2, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v2}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "weather_provider"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 127
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "whereClause":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getCityCount()I
    .locals 10

    .prologue
    .line 277
    monitor-enter p0

    const/4 v9, 0x0

    .line 278
    .local v9, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 279
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "count(0)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 282
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 283
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 286
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_1
    monitor-exit p0

    return v9

    .line 277
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized queryByKey(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    .locals 10
    .param p1, "locationKey"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 191
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    :goto_0
    monitor-exit p0

    return-object v9

    .line 193
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 194
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "locationKey = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 197
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 198
    .local v9, "result":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    invoke-direct {p0, v8}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->creatLocationFromCursor(Landroid/database/Cursor;)Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    move-result-object v9

    .line 201
    :cond_1
    invoke-direct {p0, v8}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 202
    invoke-direct {p0, v0}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 191
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "result":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized queryCurrentLocation()Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    .locals 10

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 162
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "1"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 165
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 166
    .local v9, "result":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-direct {p0, v8}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->creatLocationFromCursor(Landroid/database/Cursor;)Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    move-result-object v9

    .line 169
    :cond_0
    invoke-direct {p0, v8}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 170
    invoke-direct {p0, v0}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-object v9

    .line 161
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "result":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized queryFirstLocation()Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    .locals 10

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v1}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 179
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->TABLE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "locationKey <>\'\' "

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "sort_order limit 1"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 181
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 182
    .local v9, "result":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-direct {p0, v8}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->creatLocationFromCursor(Landroid/database/Cursor;)Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    move-result-object v9

    .line 185
    :cond_0
    invoke-direct {p0, v8}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 186
    invoke-direct {p0, v0}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-object v9

    .line 178
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "result":Lcom/smartisan/weather/lib/bean/SmartisanLocation;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateCurrentLocation(Lcom/smartisan/weather/lib/bean/SmartisanLocation;)Z
    .locals 11
    .param p1, "location"    # Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 106
    monitor-enter p0

    if-nez p1, :cond_0

    .line 123
    :goto_0
    monitor-exit p0

    return v5

    .line 108
    :cond_0
    const/4 v1, 0x0

    .line 109
    .local v1, "result":Z
    :try_start_0
    iget-object v6, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v6}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 110
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->creatContentValuesFromLocation(Lcom/smartisan/weather/lib/bean/SmartisanLocation;)Landroid/content/ContentValues;

    move-result-object v3

    .line 111
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 113
    iget-object v6, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->TABLE_NAME:Ljava/lang/String;

    const-string v7, "_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "1"

    aput-object v10, v8, v9

    invoke-virtual {v0, v6, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 120
    .local v2, "update":I
    if-lez v2, :cond_2

    move v1, v4

    .line 122
    .end local v2    # "update":I
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v1

    .line 123
    goto :goto_0

    .restart local v2    # "update":I
    :cond_2
    move v1, v5

    .line 120
    goto :goto_1

    .line 106
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "update":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized updateLocation(Lcom/smartisan/weather/lib/bean/SmartisanLocation;)Z
    .locals 12
    .param p1, "location"    # Lcom/smartisan/weather/lib/bean/SmartisanLocation;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 145
    monitor-enter p0

    if-nez p1, :cond_0

    .line 157
    :goto_0
    monitor-exit p0

    return v5

    .line 147
    :cond_0
    const/4 v1, 0x0

    .line 148
    .local v1, "result":Z
    :try_start_0
    iget-object v6, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v6}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 149
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, p1}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->creatContentValuesFromLocation(Lcom/smartisan/weather/lib/bean/SmartisanLocation;)Landroid/content/ContentValues;

    move-result-object v3

    .line 150
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 151
    iget-object v6, p0, Lcom/smartisan/weather/lib/db/LocationDBHelper;->TABLE_NAME:Ljava/lang/String;

    const-string v7, "_id = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p1, Lcom/smartisan/weather/lib/bean/SmartisanLocation;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v0, v6, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, "update":I
    if-lez v2, :cond_2

    move v1, v4

    .line 156
    .end local v2    # "update":I
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Lcom/smartisan/weather/lib/db/LocationDBHelper;->closeDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v1

    .line 157
    goto :goto_0

    .restart local v2    # "update":I
    :cond_2
    move v1, v5

    .line 154
    goto :goto_1

    .line 145
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "update":I
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
