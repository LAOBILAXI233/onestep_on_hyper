.class public Lcom/smartisanos/launcher/data/table/BACKUP;
.super Lcom/smartisanos/launcher/data/table/Table;
.source "BACKUP.java"


.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final DATA2:Ljava/lang/String; = "data2"

.field public static final DATA3:Ljava/lang/String; = "data3"

.field public static final NAME:Ljava/lang/String; = "table_backup"

.field public static final TIME:Ljava/lang/String; = "time"

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

    sput-object v0, Lcom/smartisanos/launcher/data/table/BACKUP;->columnProps:Ljava/util/Map;

    .line 21
    sget-object v0, Lcom/smartisanos/launcher/data/table/BACKUP;->columnProps:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/smartisanos/launcher/data/table/BACKUP;->columnProps:Ljava/util/Map;

    const-string v1, "time"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/smartisanos/launcher/data/table/BACKUP;->columnProps:Ljava/util/Map;

    const-string v1, "type"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/smartisanos/launcher/data/table/BACKUP;->columnProps:Ljava/util/Map;

    const-string v1, "data"

    const-string v2, "BLOB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/smartisanos/launcher/data/table/BACKUP;->columnProps:Ljava/util/Map;

    const-string v1, "data1"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/smartisanos/launcher/data/table/BACKUP;->columnProps:Ljava/util/Map;

    const-string v1, "data2"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/smartisanos/launcher/data/table/BACKUP;->columnProps:Ljava/util/Map;

    const-string v1, "data3"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
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
    .line 42
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/table/BACKUP;->getColumns()[Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "columns":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 44
    const/4 v1, 0x0

    .line 46
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "table_backup"

    sget-object v2, Lcom/smartisanos/launcher/data/table/BACKUP;->columnProps:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lcom/smartisanos/launcher/data/table/BACKUP;->generateCreateSQL(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data3"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "table_backup"

    return-object v0
.end method

.method public updateTo(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 50
    return-void
.end method
