.class Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper$WeatherDBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WeatherDatabaseHelper.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WeatherDBOpenHelper"
.end annotation


.field public static final VERSION:I = 0x2


.field final synthetic this$0:Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;


.method public constructor <init>(Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper$WeatherDBOpenHelper;->this$0:Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;

    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 171
    return-void
.end method

.method public constructor <init>(Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p5, "version"    # I

    .prologue
    .line 173
    iput-object p1, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper$WeatherDBOpenHelper;->this$0:Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;

    .line 174
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 175
    return-void
.end method


.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 180
    const-string v0, "create table weather_data(_id integer primary key autoincrement,citycode varchar(20),location varchar(20),published_data varchar(30),weathercode varchar(10),weathercode2 varchar(10),humity varchar(10),winds varchar(10),temp varchar(10),pm25 varchar(10),pm10 varchar(10),_1stdate varchar(20),_1stlowtemp varchar(10),_1sthightemp varchar(10),_1stweathercode varchar(10),_1stweathercode2 varchar(10),_2nddate varchar(20),_2ndlowtemp varchar(10),_2ndhightemp varchar(10),_2ndweathercode varchar(10),_2ndweathercode2 varchar(10),_3rddate varchar(20),_3rdlowtemp varchar(10),_3rdhightemp varchar(10),_3rdweathercode varchar(10),_3rdweathercode2 varchar(10),_4thdate varchar(20),_4thlowtemp varchar(10),_4thhightemp varchar(10),_4thweathercode varchar(10),_4thweathercode2 varchar(10),_5thdate varchar(20),_5thlowtemp varchar(10),_5thhightemp varchar(10),_5thweathercode varchar(10),_5thweathercode2 varchar(10))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper$WeatherDBOpenHelper;->this$0:Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;

    iput-object p1, v0, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper;->m_weatherdb:Landroid/database/sqlite/SQLiteDatabase;

    .line 199
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 204
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---upgrade database called---Version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 206
    const-string v0, "DROP TABLE weather_data"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/smartisan/weather/lib/db/WeatherDatabaseHelper$WeatherDBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 208
    return-void
.end method
