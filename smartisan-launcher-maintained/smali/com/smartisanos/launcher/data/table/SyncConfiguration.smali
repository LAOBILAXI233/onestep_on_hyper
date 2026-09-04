.class public Lcom/smartisanos/launcher/data/table/SyncConfiguration;
.super Lcom/smartisanos/launcher/data/table/Table;
.source "SyncConfiguration.java"


.field public static final CONFIG_NAME:Ljava/lang/String; = "name"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final MD5:Ljava/lang/String; = "md5"

.field public static final NAME:Ljava/lang/String; = "sync_configuration"

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
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/table/SyncConfiguration;->columnProps:Ljava/util/Map;

    .line 17
    sget-object v0, Lcom/smartisanos/launcher/data/table/SyncConfiguration;->columnProps:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/smartisanos/launcher/data/table/SyncConfiguration;->columnProps:Ljava/util/Map;

    const-string v1, "name"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lcom/smartisanos/launcher/data/table/SyncConfiguration;->columnProps:Ljava/util/Map;

    const-string v1, "md5"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/smartisanos/launcher/data/table/SyncConfiguration;->columnProps:Ljava/util/Map;

    const-string v1, "data"

    const-string v2, "BLOB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
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
    .line 37
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/table/SyncConfiguration;->getColumns()[Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "columns":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 39
    const/4 v1, 0x0

    .line 41
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "sync_configuration"

    sget-object v2, Lcom/smartisanos/launcher/data/table/SyncConfiguration;->columnProps:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lcom/smartisanos/launcher/data/table/SyncConfiguration;->generateCreateSQL(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "md5"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "sync_configuration"

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
