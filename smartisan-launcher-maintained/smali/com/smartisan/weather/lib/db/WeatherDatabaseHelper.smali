.class public Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;
.super Ljava/lang/Object;
.source "WeatherDatabaseHelper.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper$WeatherDBOpenHelper;
    }
.end annotation


.field private m_context:Landroid/content/Context;

.field private m_dbopenhelper:Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper$WeatherDBOpenHelper;

.field private m_dbpath:Ljava/lang/String;

.field public m_weatherdb:Landroid/database/sqlite/SQLiteDatabase;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_context:Landroid/content/Context;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/weatherdb.db3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_dbpath:Ljava/lang/String;

    .line 70
    return-void
.end method


.method public closeDb()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_weatherdb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_weatherdb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 87
    :cond_0
    return-void
.end method

.method public deleteData(Ljava/lang/String;)V
    .locals 4
    .param p1, "cityname"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_weatherdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from weather_data where location = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public insertData([Ljava/lang/String;)V
    .locals 9
    .param p1, "wdata"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    iget-object v0, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_weatherdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "insert into weather_data values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    const/16 v2, 0x23

    new-array v2, v2, [Ljava/lang/String;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    aget-object v3, p1, v5

    aput-object v3, v2, v5

    aget-object v3, p1, v6

    aput-object v3, v2, v6

    aget-object v3, p1, v7

    aput-object v3, v2, v7

    aget-object v3, p1, v8

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x6

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x7

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x8

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0x9

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const/16 v4, 0xa

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xb

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xc

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0xd

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0xe

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0xf

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const/16 v4, 0x10

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const/16 v4, 0x11

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x12

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x13

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0x14

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const/16 v4, 0x15

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const/16 v4, 0x16

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const/16 v4, 0x17

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0x18

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const/16 v4, 0x19

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0x1b

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const/16 v4, 0x1d

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const/16 v4, 0x1f

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const/16 v4, 0x20

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const/16 v4, 0x21

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const/16 v4, 0x22

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public openDb()V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper$WeatherDBOpenHelper;

    iget-object v1, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_dbpath:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper$WeatherDBOpenHelper;-><init>(Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_dbopenhelper:Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper$WeatherDBOpenHelper;

    .line 77
    iget-object v0, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_dbopenhelper:Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper$WeatherDBOpenHelper;

    invoke-virtual {v0}, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper$WeatherDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_weatherdb:Landroid/database/sqlite/SQLiteDatabase;

    .line 78
    return-void
.end method

.method public queryCity(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "citycode"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_weatherdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "select * from weather_data where citycode like ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 149
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public queryWeatherData()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 158
    iget-object v1, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_weatherdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "select * from weather_data"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 159
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public updateData([Ljava/lang/String;)V
    .locals 9
    .param p1, "wdata"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 120
    iget-object v0, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_weatherdb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "update weather_data set citycode=?,location=?,published_data=?,weathercode=?,weathercode2=?,humity=?,winds=?,temp=?,pm25=?,pm10=?,_1stdate=?,_1stlowtemp=?,_1sthightemp=?,_1stweathercode=?,_1stweathercode2=?,_2nddate=?,_2ndlowtemp=?,_2ndhightemp=?,_2ndweathercode=?,_2ndweathercode2=?,_3rddate=?,_3rdlowtemp=?,_3rdhightemp=?,_3rdweathercode=?,_3rdweathercode2=?,_4thdate=?,_4thlowtemp=?,_4thhightemp=?,_4thweathercode=?,_4thweathercode2=?,_5thdate=?,_5thlowtemp=?,_5thhightemp=?,_5thweathercode=?,_5thweathercode2=?  where citycode like ?"

    const/16 v2, 0x24

    new-array v2, v2, [Ljava/lang/String;

    aget-object v3, p1, v5

    aput-object v3, v2, v5

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    aget-object v3, p1, v6

    aput-object v3, v2, v6

    aget-object v3, p1, v7

    aput-object v3, v2, v7

    aget-object v3, p1, v8

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const/4 v4, 0x6

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x7

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x8

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0x9

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const/16 v4, 0xa

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0xb

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const/16 v4, 0xc

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const/16 v4, 0xd

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const/16 v4, 0xe

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const/16 v4, 0xf

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const/16 v4, 0x10

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const/16 v4, 0x11

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const/16 v4, 0x12

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const/16 v4, 0x13

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const/16 v4, 0x14

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const/16 v4, 0x15

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const/16 v4, 0x16

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const/16 v4, 0x17

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const/16 v4, 0x18

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const/16 v4, 0x19

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const/16 v4, 0x1b

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const/16 v4, 0x1d

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const/16 v4, 0x1f

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const/16 v4, 0x20

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const/16 v4, 0x21

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const/16 v4, 0x22

    aget-object v4, p1, v4

    aput-object v4, v2, v3

    const/16 v3, 0x23

    aget-object v4, p1, v5

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return-void
.end method
