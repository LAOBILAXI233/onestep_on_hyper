.class public Lcom/smartisanos/expandservice/launcher/data/APP_CATEGORY;
.super Lcom/smartisanos/launcher/data/table/Table;
.source "APP_CATEGORY.java"


.field public static final CATEGORY_ID:Ljava/lang/String; = "category_id"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final NAME:Ljava/lang/String; = "app_category"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "pkg"

.field public static final SYNC_TIME:Ljava/lang/String; = "sync_time"

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

    sput-object v0, Lcom/smartisanos/expandservice/launcher/data/APP_CATEGORY;->columnProps:Ljava/util/Map;

    .line 21
    sget-object v0, Lcom/smartisanos/expandservice/launcher/data/APP_CATEGORY;->columnProps:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/smartisanos/expandservice/launcher/data/APP_CATEGORY;->columnProps:Ljava/util/Map;

    const-string v1, "pkg"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/smartisanos/expandservice/launcher/data/APP_CATEGORY;->columnProps:Ljava/util/Map;

    const-string v1, "category_id"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/smartisanos/expandservice/launcher/data/APP_CATEGORY;->columnProps:Ljava/util/Map;

    const-string v1, "sync_time"

    const-string v2, "LONG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/table/Table;-><init>()V

    return-void
.end method


.method public createSQL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/smartisanos/expandservice/launcher/data/APP_CATEGORY;->getColumns()[Ljava/lang/String;

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
    const-string v1, "app_category"

    sget-object v2, Lcom/smartisanos/expandservice/launcher/data/APP_CATEGORY;->columnProps:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lcom/smartisanos/expandservice/launcher/data/APP_CATEGORY;->generateCreateSQL(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pkg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "category_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sync_time"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "app_category"

    return-object v0
.end method

.method public updateTo(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 54
    return-void
.end method
