.class public Lcom/smartisanos/launcher/data/table/RedirectIcon;
.super Lcom/smartisanos/launcher/data/table/Table;
.source "RedirectIcon.java"


.field public static final COMPONENT_NAME:Ljava/lang/String; = "componentName"

.field public static final DATA1:Ljava/lang/String; = "data1"

.field public static final DATA2:Ljava/lang/String; = "data2"

.field public static final DATA3:Ljava/lang/String; = "data3"

.field public static final ICON:Ljava/lang/String; = "icon"

.field public static final LAST_UPDATE_TIME:Ljava/lang/String; = "last_update_time"

.field public static final MD5:Ljava/lang/String; = "md5"

.field public static final NAME:Ljava/lang/String; = "redirect_icons"

.field public static final OWNER_ID:Ljava/lang/String; = "owner_id"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final USE_IMPROVED_APP_ICON:Ljava/lang/String; = "use_improved_app_icon"

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
    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/table/RedirectIcon;->columnProps:Ljava/util/Map;

    .line 26
    sget-object v0, Lcom/smartisanos/launcher/data/table/RedirectIcon;->columnProps:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/smartisanos/launcher/data/table/RedirectIcon;->columnProps:Ljava/util/Map;

    const-string v1, "owner_id"

    const-string v2, "INTEGER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/smartisanos/launcher/data/table/RedirectIcon;->columnProps:Ljava/util/Map;

    const-string v1, "packageName"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/smartisanos/launcher/data/table/RedirectIcon;->columnProps:Ljava/util/Map;

    const-string v1, "componentName"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/smartisanos/launcher/data/table/RedirectIcon;->columnProps:Ljava/util/Map;

    const-string v1, "use_improved_app_icon"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/smartisanos/launcher/data/table/RedirectIcon;->columnProps:Ljava/util/Map;

    const-string v1, "last_update_time"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/smartisanos/launcher/data/table/RedirectIcon;->columnProps:Ljava/util/Map;

    const-string v1, "md5"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/smartisanos/launcher/data/table/RedirectIcon;->columnProps:Ljava/util/Map;

    const-string v1, "icon"

    const-string v2, "BLOB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/smartisanos/launcher/data/table/RedirectIcon;->columnProps:Ljava/util/Map;

    const-string v1, "data1"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/smartisanos/launcher/data/table/RedirectIcon;->columnProps:Ljava/util/Map;

    const-string v1, "data2"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/smartisanos/launcher/data/table/RedirectIcon;->columnProps:Ljava/util/Map;

    const-string v1, "data3"

    const-string v2, "TEXT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
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
    .line 52
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/table/RedirectIcon;->getColumns()[Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "columns":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 56
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "redirect_icons"

    sget-object v2, Lcom/smartisanos/launcher/data/table/RedirectIcon;->columnProps:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lcom/smartisanos/launcher/data/table/RedirectIcon;->generateCreateSQL(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getColumns()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 46
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "owner_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "packageName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "componentName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "use_improved_app_icon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "last_update_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "md5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data3"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public tableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "redirect_icons"

    return-object v0
.end method

.method public updateTo(ILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 60
    return-void
.end method
