.class public Lcom/smartisan/weather/lib/db/CityDatabaseHelper;
.super Ljava/lang/Object;
.source "CityDatabaseHelper.java"


.field private static instance:Lcom/smartisan/weather/lib/db/CityDatabaseHelper;


.field private final TABLE_NAME_BASE:Ljava/lang/String;

.field private final TABLE_NAME_CN:Ljava/lang/String;

.field private final TABLE_NAME_EN:Ljava/lang/String;

.field private final TABLE_NAME_TW:Ljava/lang/String;

.field private currentTableName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

.field private mLocalHelper:Lcom/smartisan/weather/lib/db/LocalCityDBHelper;


.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "city_base"

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->TABLE_NAME_BASE:Ljava/lang/String;

    .line 29
    const-string v0, "city_cn"

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->TABLE_NAME_CN:Ljava/lang/String;

    .line 30
    const-string v0, "city_en"

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->TABLE_NAME_EN:Ljava/lang/String;

    .line 31
    const-string v0, "city_tw"

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->TABLE_NAME_TW:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->mContext:Landroid/content/Context;

    .line 40
    iget-object v0, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    .line 41
    invoke-virtual {p0}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->initLocalHelper()V

    .line 42
    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_0
    return-void
.end method

.method private closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 96
    :cond_0
    return-void
.end method

.method public static creatCityFromCursor(Landroid/database/Cursor;)Lcom/smartisan/weather/lib/bean/SinaCity;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 108
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_2

    .line 109
    :cond_0
    const/4 v0, 0x0

    .line 125
    :cond_1
    :goto_0
    return-object v0

    .line 110
    :cond_2
    new-instance v0, Lcom/smartisan/weather/lib/bean/SinaCity;

    invoke-direct {v0}, Lcom/smartisan/weather/lib/bean/SinaCity;-><init>()V

    .line 112
    .local v0, "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    const-string v2, "city_id"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityId:Ljava/lang/String;

    .line 113
    const-string v2, "city_child"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityChild:Ljava/lang/String;

    .line 114
    const-string v2, "city_parent"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityParent:Ljava/lang/String;

    .line 115
    const-string v2, "province"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->province:Ljava/lang/String;

    .line 116
    const-string v2, "country"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->country:Ljava/lang/String;

    .line 117
    const-string v2, "city_name_ab"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityNameAB:Ljava/lang/String;

    .line 118
    const-string v2, "other_data"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->otherData:Ljava/lang/String;

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "latitude"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->latitude:Ljava/lang/String;

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "longitude"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->longitude:Ljava/lang/String;

    .line 121
    const-string v2, "isAdd"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 122
    .local v1, "isAddIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 123
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->isAdd:Z

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getCursorPostionOfCurrentCity(DDLandroid/database/Cursor;)I
    .locals 19
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 160
    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v2, v3, [D

    .line 161
    .local v2, "distance":[D
    const/16 v16, 0x0

    .line 162
    .local v16, "i":I
    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    const-string v3, "latitude"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 164
    .local v8, "latitude":D
    const-string v3, "longitude"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v10

    .local v10, "longitude":D
    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    .line 166
    invoke-direct/range {v3 .. v11}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getDistance(DDDD)D

    move-result-wide v14

    .line 167
    .local v14, "dist":D
    aput-wide v14, v2, v16

    .line 168
    add-int/lit8 v16, v16, 0x1

    .line 162
    invoke-interface/range {p5 .. p5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 170
    .end local v8    # "latitude":D
    .end local v10    # "longitude":D
    .end local v14    # "dist":D
    :cond_0
    const/16 v18, 0x0

    .line 171
    .local v18, "mIndexofCursor":I
    array-length v3, v2

    if-lez v3, :cond_2

    .line 172
    const/4 v3, 0x0

    aget-wide v12, v2, v3

    .line 173
    .local v12, "closeDistance":D
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_1
    array-length v3, v2

    move/from16 v0, v17

    if-ge v0, v3, :cond_2

    .line 174
    aget-wide v4, v2, v17

    cmpg-double v3, v4, v12

    if-gez v3, :cond_1

    .line 175
    aget-wide v12, v2, v17

    .line 176
    move/from16 v18, v17

    .line 173
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 180
    .end local v12    # "closeDistance":D
    .end local v17    # "j":I
    :cond_2
    return v18
.end method

.method private getDistance(DDDD)D
    .locals 15
    .param p1, "latA"    # D
    .param p3, "lonA"    # D
    .param p5, "latitude"    # D
    .param p7, "longitude"    # D

    .prologue
    .line 184
    const v6, 0x42652eee

    .line 185
    .local v6, "pk":F
    float-to-double v12, v6

    div-double v12, p5, v12

    double-to-float v0, v12

    .line 186
    .local v0, "a1":F
    float-to-double v12, v6

    div-double v12, p7, v12

    double-to-float v1, v12

    .line 187
    .local v1, "a2":F
    float-to-double v12, v6

    div-double v12, p1, v12

    double-to-float v2, v12

    .line 188
    .local v2, "b1":F
    float-to-double v12, v6

    div-double v12, p3, v12

    double-to-float v3, v12

    .line 189
    .local v3, "b2":F
    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v12

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v13

    mul-float/2addr v12, v13

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v13

    mul-float/2addr v12, v13

    .line 190
    invoke-static {v3}, Landroid/util/FloatMath;->cos(F)F

    move-result v13

    mul-float v7, v12, v13

    .line 191
    .local v7, "t1":F
    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v12

    invoke-static {v1}, Landroid/util/FloatMath;->sin(F)F

    move-result v13

    mul-float/2addr v12, v13

    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v13

    mul-float/2addr v12, v13

    .line 192
    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v13

    mul-float v8, v12, v13

    .line 193
    .local v8, "t2":F
    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v12

    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v13

    mul-float v9, v12, v13

    .line 194
    .local v9, "t3":F
    add-float v12, v7, v8

    add-float/2addr v12, v9

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    .line 195
    .local v10, "tt":D
    const-wide v12, 0x40b8ec0000000000L    # 6380.0

    mul-double v4, v12, v10

    .line 196
    .local v4, "dist":D
    return-wide v4
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/smartisan/weather/lib/db/CityDatabaseHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->instance:Lcom/smartisan/weather/lib/db/CityDatabaseHelper;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->instance:Lcom/smartisan/weather/lib/db/CityDatabaseHelper;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->instance:Lcom/smartisan/weather/lib/db/CityDatabaseHelper;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->instance:Lcom/smartisan/weather/lib/db/CityDatabaseHelper;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getUnionSearchText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "tableName"    # Ljava/lang/String;
    .param p1, "baseTableName"    # Ljava/lang/String;

    .prologue
    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".*, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".longitude, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".latitude from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".city_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".city_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "unionTable":Ljava/lang/String;
    return-object v0
.end method

.method private openDb(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p1, "isWriteableDB"    # Z

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->mDBHelper:Lcom/smartisan/weather/lib/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/smartisan/weather/lib/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method


.method public declared-synchronized getCityByCityId(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SinaCity;
    .locals 7
    .param p1, "cityId"    # Ljava/lang/String;

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 224
    :goto_0
    monitor-exit p0

    return-object v0

    .line 202
    :cond_0
    const/4 v0, 0x0

    .line 203
    .local v0, "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v4}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->openDb(Z)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 204
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 206
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select * from ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->currentTableName:Ljava/lang/String;

    const-string v6, "city_base"

    .line 207
    invoke-static {v5, v6}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getUnionSearchText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") where city_id = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 206
    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_1

    .line 212
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 213
    invoke-static {v1}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->creatCityFromCursor(Landroid/database/Cursor;)Lcom/smartisan/weather/lib/bean/SinaCity;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 219
    :cond_1
    if-eqz v1, :cond_2

    .line 220
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_2
    invoke-direct {p0, v2}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 200
    .end local v0    # "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 216
    .restart local v0    # "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v3

    .line 217
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "CityDatabaseHelper"

    const-string v5, "getCityByCityId error"

    invoke-static {v4, v5, v3}, Lcom/smartisan/weather/lib/util/DebugLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 219
    if-eqz v1, :cond_3

    .line 220
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_3
    invoke-direct {p0, v2}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 219
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    if-eqz v1, :cond_4

    .line 220
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_4
    invoke-direct {p0, v2}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized getCityByCityId(Ljava/util/Set;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/smartisan/weather/lib/bean/SinaCity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 232
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 259
    :goto_0
    monitor-exit p0

    return-object v3

    .line 233
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 236
    .local v2, "id":Ljava/lang/String;
    const-string v7, "\'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 231
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 238
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 239
    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->openDb(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 241
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "select city_id,city_child,city_parent from ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->currentTableName:Ljava/lang/String;

    const-string v8, "city_base"

    .line 242
    invoke-static {v7, v8}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getUnionSearchText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") where city_id in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 243
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 244
    .local v5, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 246
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 247
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/weather/lib/bean/SinaCity;>;"
    if-eqz v0, :cond_4

    .line 248
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/weather/lib/bean/SinaCity;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/smartisan/weather/lib/bean/SinaCity;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_3

    .line 250
    new-instance v6, Lcom/smartisan/weather/lib/bean/SinaCity;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    .line 251
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/smartisan/weather/lib/bean/SinaCity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 253
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 257
    :goto_3
    invoke-direct {p0, v0}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 258
    invoke-direct {p0, v1}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 255
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_3
.end method

.method public declared-synchronized getCityByLocation(Landroid/location/Location;)Lcom/smartisan/weather/lib/bean/SinaCity;
    .locals 13
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 132
    monitor-enter p0

    if-nez p1, :cond_0

    .line 133
    const/4 v9, 0x0

    .line 155
    :goto_0
    monitor-exit p0

    return-object v9

    .line 135
    :cond_0
    const/4 v9, 0x0

    .line 136
    .local v9, "sinaCity":Lcom/smartisan/weather/lib/bean/SinaCity;
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->openDb(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 137
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 138
    .local v2, "latitude":D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 139
    .local v4, "longitude":D
    const-string v1, "select * from city_base where latitude > ? - 0.5 and latitude < ? + 0.5 and longitude > ? - 0.5 and longitude < ? + 0.5"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 143
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    .line 144
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    .line 139
    invoke-virtual {v7, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 147
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    move-object v1, p0

    .line 148
    invoke-direct/range {v1 .. v6}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getCursorPostionOfCurrentCity(DDLandroid/database/Cursor;)I

    move-result v8

    .line 149
    .local v8, "mIndexofCursor":I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 150
    const-string v1, "city_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "cityId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getCityByCityId(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v9

    .line 153
    .end local v0    # "cityId":Ljava/lang/String;
    .end local v8    # "mIndexofCursor":I
    :cond_1
    invoke-direct {p0, v6}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 154
    invoke-direct {p0, v7}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCitysByCNAddressName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SinaCity;
    .locals 8
    .param p1, "adminArea"    # Ljava/lang/String;
    .param p2, "locality"    # Ljava/lang/String;
    .param p3, "subLocality"    # Ljava/lang/String;
    .param p4, "subLocalityWithPostfix"    # Ljava/lang/String;

    .prologue
    .line 292
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v4}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->openDb(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 293
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 294
    .local v0, "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    const-string v4, "select * from city_cn where (province = ? and city_parent = ? and city_child = ?) or (province = ? and city_parent = ? and city_child = ?)"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 300
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 301
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 302
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 303
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 295
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 305
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 306
    :cond_0
    invoke-direct {p0, v2}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 307
    const-string v4, "select * from city_cn where (province = ? and city_parent = ? and city_child = ?) or (province = ? and city_parent = ? and city_child = ?)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 313
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 314
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 308
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 318
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 319
    :cond_2
    invoke-direct {p0, v2}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 320
    const-string v4, "select * from city_cn where (province = ? and city_parent = ? and city_child = ?) "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 325
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 326
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 321
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 330
    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_4

    .line 331
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 332
    const-string v4, "city_id"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "cityId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getCityByCityId(Ljava/lang/String;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v0

    .line 336
    .end local v1    # "cityId":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v2}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 337
    invoke-direct {p0, v3}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-object v0

    .line 292
    .end local v0    # "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getCurrentTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->currentTableName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getHotCities()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/weather/lib/bean/SinaCity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, v4}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->openDb(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 347
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 348
    .local v1, "citys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/SinaCity;>;"
    iget-object v4, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->mLocalHelper:Lcom/smartisan/weather/lib/db/LocalCityDBHelper;

    invoke-interface {v4, v3}, Lcom/smartisan/weather/lib/db/LocalCityDBHelper;->getHotCities(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v2

    .line 349
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "citys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/SinaCity;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .restart local v1    # "citys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/SinaCity;>;"
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    invoke-static {v2}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->creatCityFromCursor(Landroid/database/Cursor;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v0

    .line 353
    .local v0, "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    iget-object v4, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityChild:Ljava/lang/String;

    invoke-static {v4}, Lcom/smartisan/weather/lib/Utility;->fristCharToUpdderCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityChild:Ljava/lang/String;

    .line 354
    iget-object v4, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityParent:Ljava/lang/String;

    invoke-static {v4}, Lcom/smartisan/weather/lib/Utility;->fristCharToUpdderCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityParent:Ljava/lang/String;

    .line 355
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 346
    .end local v0    # "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    .end local v1    # "citys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/SinaCity;>;"
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 358
    .restart local v1    # "citys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/SinaCity;>;"
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 359
    invoke-direct {p0, v3}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    monitor-exit p0

    return-object v1
.end method

.method public initLocalHelper()V
    .locals 3

    .prologue
    .line 56
    iget-object v2, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "language":Ljava/lang/String;
    iget-object v2, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "country":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    const-string v2, "CN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    const-string v2, "city_cn"

    iput-object v2, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->currentTableName:Ljava/lang/String;

    .line 62
    new-instance v2, Lcom/smartisan/weather/lib/db/CNCityDBHelper;

    invoke-direct {v2}, Lcom/smartisan/weather/lib/db/CNCityDBHelper;-><init>()V

    iput-object v2, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->mLocalHelper:Lcom/smartisan/weather/lib/db/LocalCityDBHelper;

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v2, "TW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 64
    const-string v2, "city_tw"

    iput-object v2, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->currentTableName:Ljava/lang/String;

    .line 65
    new-instance v2, Lcom/smartisan/weather/lib/db/TWCityDBHelper;

    invoke-direct {v2}, Lcom/smartisan/weather/lib/db/TWCityDBHelper;-><init>()V

    iput-object v2, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->mLocalHelper:Lcom/smartisan/weather/lib/db/LocalCityDBHelper;

    goto :goto_0

    .line 67
    :cond_2
    const-string v2, "city_tw"

    iput-object v2, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->currentTableName:Ljava/lang/String;

    .line 68
    new-instance v2, Lcom/smartisan/weather/lib/db/TWCityDBHelper;

    invoke-direct {v2}, Lcom/smartisan/weather/lib/db/TWCityDBHelper;-><init>()V

    iput-object v2, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->mLocalHelper:Lcom/smartisan/weather/lib/db/LocalCityDBHelper;

    goto :goto_0

    .line 71
    :cond_3
    const-string v2, "city_en"

    iput-object v2, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->currentTableName:Ljava/lang/String;

    .line 72
    new-instance v2, Lcom/smartisan/weather/lib/db/ENCityDBHelper;

    invoke-direct {v2}, Lcom/smartisan/weather/lib/db/ENCityDBHelper;-><init>()V

    iput-object v2, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->mLocalHelper:Lcom/smartisan/weather/lib/db/LocalCityDBHelper;

    goto :goto_0
.end method

.method public declared-synchronized searchCitys(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/weather/lib/bean/SinaCity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    const/4 v1, 0x0

    .line 279
    :goto_0
    monitor-exit p0

    return-object v1

    .line 265
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v4}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->openDb(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 266
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 267
    .local v1, "citys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/SinaCity;>;"
    iget-object v4, p0, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->mLocalHelper:Lcom/smartisan/weather/lib/db/LocalCityDBHelper;

    invoke-interface {v4, p1, v3}, Lcom/smartisan/weather/lib/db/LocalCityDBHelper;->getSearchResultCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v2

    .line 268
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "citys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/SinaCity;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .restart local v1    # "citys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/SinaCity;>;"
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 271
    invoke-static {v2}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->creatCityFromCursor(Landroid/database/Cursor;)Lcom/smartisan/weather/lib/bean/SinaCity;

    move-result-object v0

    .line 272
    .local v0, "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    iget-object v4, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityChild:Ljava/lang/String;

    invoke-static {v4}, Lcom/smartisan/weather/lib/Utility;->fristCharToUpdderCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityChild:Ljava/lang/String;

    .line 273
    iget-object v4, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityParent:Ljava/lang/String;

    invoke-static {v4}, Lcom/smartisan/weather/lib/Utility;->fristCharToUpdderCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/smartisan/weather/lib/bean/SinaCity;->cityParent:Ljava/lang/String;

    .line 274
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 263
    .end local v0    # "city":Lcom/smartisan/weather/lib/bean/SinaCity;
    .end local v1    # "citys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/SinaCity;>;"
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 277
    .restart local v1    # "citys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/weather/lib/bean/SinaCity;>;"
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_2
    invoke-direct {p0, v2}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeCursor(Landroid/database/Cursor;)V

    .line 278
    invoke-direct {p0, v3}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->closeDb(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
