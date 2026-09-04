.class public Lcom/smartisanos/launcher/data/table/THEME;
.super Lcom/smartisanos/launcher/data/table/Table;
.source "THEME.java"


.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final DATA2:Ljava/lang/String; = "data2"

.field public static final DATA3:Ljava/lang/String; = "data3"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DOWNLOAD_URL:Ljava/lang/String; = "url"

.field public static final MD5:Ljava/lang/String; = "md5"

.field public static final NAME:Ljava/lang/String; = "table_themes"

.field public static final RESOURCE_NAME:Ljava/lang/String; = "resource_name"

.field public static final THEME_ID:Ljava/lang/String; = "theme_id"

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


.field private version:I


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/table/THEME;->columnProps:Ljava/util/Map;

    .line 25
    sget-object v0, Lcom/smartisanos/launcher/data/table/THEME;->columnProps:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/smartisanos/launcher/data/table/THEME;->columnProps:Ljava/util/Map;

    const-string v1, "theme_id"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/smartisanos/launcher/data/table/THEME;->columnProps:Ljava/util/Map;

    const-string v1, "resource_name"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/smartisanos/launcher/data/table/THEME;->columnProps:Ljava/util/Map;

    const-string v1, "display_name"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/smartisanos/launcher/data/table/THEME;->columnProps:Ljava/util/Map;

    const-string v1, "md5"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/smartisanos/launcher/data/table/THEME;->columnProps:Ljava/util/Map;

    const-string v1, "url"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/smartisanos/launcher/data/table/THEME;->columnProps:Ljava/util/Map;

    const-string v1, "data1"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/smartisanos/launcher/data/table/THEME;->columnProps:Ljava/util/Map;

    const-string v1, "data2"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/smartisanos/launcher/data/table/THEME;->columnProps:Ljava/util/Map;

    const-string v1, "data3"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/table/Table;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/data/table/THEME;->version:I

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/smartisanos/launcher/data/table/THEME;->version:I

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/table/Table;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/data/table/THEME;->version:I

    .line 42
    iput p1, p0, Lcom/smartisanos/launcher/data/table/THEME;->version:I

    .line 43
    return-void
.end method


.method public createSQL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/table/THEME;->getColumns()[Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "columns":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 64
    const/4 v1, 0x0

    .line 66
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "table_themes"

    sget-object v2, Lcom/smartisanos/launcher/data/table/THEME;->columnProps:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lcom/smartisanos/launcher/data/table/THEME;->generateCreateSQL(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 52
    iget v0, p0, Lcom/smartisanos/launcher/data/table/THEME;->version:I

    if-gt v0, v3, :cond_0

    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "theme_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "resource_name"

    aput-object v2, v0, v1

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "md5"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data3"

    aput-object v2, v0, v1

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "table_themes"

    return-object v0
.end method

.method public updateTo(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 70
    return-void
.end method
