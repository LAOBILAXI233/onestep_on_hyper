.class public Lcom/smartisanos/launcher/data/table/LaunchCountRecord;
.super Lcom/smartisanos/launcher/data/table/Table;
.source "LaunchCountRecord.java"


.field public static final LAUNCH_COUNT:Ljava/lang/String; = "count"

.field public static final NAME:Ljava/lang/String; = "launch_count_record"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "pkg"

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
    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/table/LaunchCountRecord;->columnProps:Ljava/util/Map;

    .line 15
    sget-object v0, Lcom/smartisanos/launcher/data/table/LaunchCountRecord;->columnProps:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v0, Lcom/smartisanos/launcher/data/table/LaunchCountRecord;->columnProps:Ljava/util/Map;

    const-string v1, "pkg"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lcom/smartisanos/launcher/data/table/LaunchCountRecord;->columnProps:Ljava/util/Map;

    const-string v1, "count"

    const-string v2, "INTEGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
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
    .line 36
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/table/LaunchCountRecord;->getColumns()[Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "columns":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 38
    const/4 v1, 0x0

    .line 40
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "launch_count_record"

    sget-object v2, Lcom/smartisanos/launcher/data/table/LaunchCountRecord;->columnProps:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lcom/smartisanos/launcher/data/table/LaunchCountRecord;->generateCreateSQL(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pkg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "count"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "launch_count_record"

    return-object v0
.end method

.method public updateTo(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 45
    return-void
.end method
