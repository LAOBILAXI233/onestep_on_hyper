.class public Lcom/smartisanos/launcher/data/table/DownloadRecord;
.super Lcom/smartisanos/launcher/data/table/Table;
.source "DownloadRecord.java"


.field public static final DL_ID:Ljava/lang/String; = "dl_id"

.field public static final DL_STATUS:Ljava/lang/String; = "dl_status"

.field public static final DL_TIME:Ljava/lang/String; = "dl_time"

.field public static final DL_URL:Ljava/lang/String; = "dl_url"

.field public static final FILE:Ljava/lang/String; = "file"

.field public static final MD5:Ljava/lang/String; = "md5"

.field public static final NAME:Ljava/lang/String; = "download_record"

.field public static final TASK_NAME:Ljava/lang/String; = "task_name"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final _ID:Ljava/lang/String; = "_id"

.field private static final columnProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/table/DownloadRecord;->columnProps:Ljava/util/Map;

    .line 22
    sget-object v0, Lcom/smartisanos/launcher/data/table/DownloadRecord;->columnProps:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/smartisanos/launcher/data/table/DownloadRecord;->columnProps:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "INTEGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/smartisanos/launcher/data/table/DownloadRecord;->columnProps:Ljava/util/Map;

    const-string v1, "dl_id"

    const-string v2, "LONG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/smartisanos/launcher/data/table/DownloadRecord;->columnProps:Ljava/util/Map;

    const-string v1, "dl_status"

    const-string v2, "INTEGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/smartisanos/launcher/data/table/DownloadRecord;->columnProps:Ljava/util/Map;

    const-string v1, "dl_time"

    const-string v2, "LONG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/smartisanos/launcher/data/table/DownloadRecord;->columnProps:Ljava/util/Map;

    const-string v1, "task_name"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/smartisanos/launcher/data/table/DownloadRecord;->columnProps:Ljava/util/Map;

    const-string v1, "dl_url"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/smartisanos/launcher/data/table/DownloadRecord;->columnProps:Ljava/util/Map;

    const-string v1, "md5"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/smartisanos/launcher/data/table/DownloadRecord;->columnProps:Ljava/util/Map;

    const-string v1, "file"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/table/Table;-><init>()V

    return-void
.end method


.method public createSQL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/table/DownloadRecord;->getColumns()[Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "columns":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 53
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "download_record"

    sget-object v2, Lcom/smartisanos/launcher/data/table/DownloadRecord;->columnProps:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lcom/smartisanos/launcher/data/table/DownloadRecord;->generateCreateSQL(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dl_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dl_status"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "dl_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "task_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dl_url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "md5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "file"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "download_record"

    return-object v0
.end method

.method public updateTo(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 58
    return-void
.end method
