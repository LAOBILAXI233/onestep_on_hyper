.class Lcom/smartisan/trackerlib/db/TrackerProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TrackerProvider.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/trackerlib/db/TrackerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const-string v0, "libtracker.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 143
    return-void
.end method

.method private createTransportTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 160
    const-string v0, "CREATE TABLE IF NOT EXISTS actual_raw_transport (_id INTEGER PRIMARY KEY AUTOINCREMENT,eventid TEXT,time_stamp LONG,eventdata TEXT,wifionly INTEGER,upload_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    return-void
.end method


.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/smartisan/trackerlib/db/TrackerProvider$DatabaseHelper;->createTransportTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 148
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 157
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 152
    return-void
.end method
