.class public Lcom/smartisanos/launcher/data/table/ICON;
.super Lcom/smartisanos/launcher/data/table/Table;
.source "ICON.java"


.field public static final COLOR_INFO:Ljava/lang/String; = "color_info"

.field public static final DARK_ICON:Ljava/lang/String; = "dark_icon"

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final DATA2:Ljava/lang/String; = "data2"

.field public static final DATA3:Ljava/lang/String; = "data3"

.field public static final LIGHT_ICON:Ljava/lang/String; = "light_icon"

.field public static final NAME:Ljava/lang/String; = "table_icons"

.field public static final OWNER_ID:Ljava/lang/String; = "owner"

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
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/table/ICON;->columnProps:Ljava/util/Map;

    .line 24
    sget-object v0, Lcom/smartisanos/launcher/data/table/ICON;->columnProps:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/smartisanos/launcher/data/table/ICON;->columnProps:Ljava/util/Map;

    const-string v1, "owner"

    const-string v2, "INTEGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/smartisanos/launcher/data/table/ICON;->columnProps:Ljava/util/Map;

    const-string v1, "color_info"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/smartisanos/launcher/data/table/ICON;->columnProps:Ljava/util/Map;

    const-string v1, "dark_icon"

    const-string v2, "BLOB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/smartisanos/launcher/data/table/ICON;->columnProps:Ljava/util/Map;

    const-string v1, "light_icon"

    const-string v2, "BLOB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/smartisanos/launcher/data/table/ICON;->columnProps:Ljava/util/Map;

    const-string v1, "data1"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/smartisanos/launcher/data/table/ICON;->columnProps:Ljava/util/Map;

    const-string v1, "data2"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/smartisanos/launcher/data/table/ICON;->columnProps:Ljava/util/Map;

    const-string v1, "data3"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/table/Table;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/data/table/ICON;->version:I

    .line 36
    const/4 v0, 0x3

    iput v0, p0, Lcom/smartisanos/launcher/data/table/ICON;->version:I

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "v"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/table/Table;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisanos/launcher/data/table/ICON;->version:I

    .line 40
    iput p1, p0, Lcom/smartisanos/launcher/data/table/ICON;->version:I

    .line 41
    return-void
.end method


.method public createSQL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/table/ICON;->getColumns()[Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "columns":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 59
    const/4 v1, 0x0

    .line 61
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "table_icons"

    sget-object v2, Lcom/smartisanos/launcher/data/table/ICON;->columnProps:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lcom/smartisanos/launcher/data/table/ICON;->generateCreateSQL(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 50
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "owner"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "color_info"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dark_icon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "light_icon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data3"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "table_icons"

    return-object v0
.end method

.method public updateTo(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 66
    return-void
.end method
