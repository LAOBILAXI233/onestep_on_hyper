.class public Lcom/smartisan/weather/lib/db/ENCityDBHelper;
.super Ljava/lang/Object;
.source "ENCityDBHelper.java"

.implements Lcom/smartisan/weather/lib/db/LocalCityDBHelper;


.field private final baseTableName:Ljava/lang/String;

.field private final tableName:Ljava/lang/String;

.field private unionTable:Ljava/lang/String;


.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "city_en"

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/ENCityDBHelper;->tableName:Ljava/lang/String;

    .line 10
    const-string v0, "city_base"

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/ENCityDBHelper;->baseTableName:Ljava/lang/String;

    .line 11
    const-string v0, "city_en"

    const-string v1, "city_base"

    invoke-static {v0, v1}, Lcom/smartisan/weather/lib/db/CityDatabaseHelper;->getUnionSearchText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/ENCityDBHelper;->unionTable:Ljava/lang/String;

    return-void
.end method


.method public getHotCities(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 23
    const/4 v0, 0x0

    .line 24
    .local v0, "result":Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    const-string v1, "select b.*, c.latitude, c.longitude, (select count(0) from location where b.city_id = locationKey) isAdd from hot_city a, city_en b, city_base c where a.city_id = b.city_id and a.city_id = c.city_id"

    .line 28
    .local v1, "sql":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 30
    .end local v1    # "sql":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getSearchResultCursor(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select *,(select count(0) from location where city_id = locationKey) isAdd from ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisan/weather/lib/db/ENCityDBHelper;->unionTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") where city_parent like ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " or city_child like ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "or province like ? escape \'/\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 18
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method
