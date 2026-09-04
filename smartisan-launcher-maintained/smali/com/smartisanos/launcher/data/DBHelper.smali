.class public Lcom/smartisanos/launcher/data/DBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


.field private static final DATABASE_NAME:Ljava/lang/String; = "launcher.db"

.field private static final DROP_TABLE_SQL_PREFIX:Ljava/lang/String; = "DROP TABLE IF EXISTS "

.field public static final SQL_DELETE_TABLE_PAGE:Ljava/lang/String; = "DELETE FROM table_pageinfos"

.field public static final VERSION:I = 0x3

.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/smartisanos/launcher/data/DBHelper;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/DBHelper;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const-string v0, "launcher.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 27
    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/smartisanos/launcher/data/DBHelper;->dropAllTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 55
    sget-object v3, Lcom/smartisanos/launcher/data/table/Table;->TABLES:[Lcom/smartisanos/launcher/data/table/Table;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 56
    .local v1, "table":Lcom/smartisanos/launcher/data/table/Table;
    if-nez v1, :cond_0

    .line 55
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/table/Table;->createSQL()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 62
    .end local v0    # "sql":Ljava/lang/String;
    .end local v1    # "table":Lcom/smartisanos/launcher/data/table/Table;
    :cond_1
    return-void
.end method

.method private static dropAllTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 87
    sget-object v3, Lcom/smartisanos/launcher/data/table/Table;->TABLES:[Lcom/smartisanos/launcher/data/table/Table;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 88
    .local v1, "table":Lcom/smartisanos/launcher/data/table/Table;
    if-nez v1, :cond_0

    .line 87
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/table/Table;->tableName()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/smartisanos/launcher/data/DBHelper;->dropTableSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 94
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "table":Lcom/smartisanos/launcher/data/table/Table;
    :cond_1
    return-void
.end method

.method public static dropTableSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initAppSearchInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    const/4 v3, 0x7

    new-array v1, v3, [Ljava/lang/String;

    const-string v3, "table_iteminfos"

    aput-object v3, v1, v5

    const-string v3, "title"

    aput-object v3, v1, v6

    const-string v3, "packageName"

    aput-object v3, v1, v7

    const-string v3, "componentName"

    aput-object v3, v1, v8

    const-string v3, "origin_index"

    aput-object v3, v1, v9

    const/4 v3, 0x5

    const-string v4, "qwerty_index"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "t9_index"

    aput-object v4, v1, v3

    .line 46
    .local v1, "itemTableInfo":[Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/String;

    const-string v3, "table_icons"

    aput-object v3, v0, v5

    const-string v3, "owner"

    aput-object v3, v0, v6

    const-string v3, "light_icon"

    aput-object v3, v0, v7

    .line 48
    .local v0, "iconTableInfo":[Ljava/lang/String;
    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "redirect_icons"

    aput-object v3, v2, v5

    const-string v3, "owner_id"

    aput-object v3, v2, v6

    const-string v3, "use_improved_app_icon"

    aput-object v3, v2, v7

    const-string v3, "icon"

    aput-object v3, v2, v8

    .line 51
    .local v2, "redirectIconTableInfo":[Ljava/lang/String;
    return-void
.end method

.method private replaceWithEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 119
    sget-object v0, Lcom/smartisanos/launcher/data/DBHelper;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "replaceWithEmptyDB "

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v0, Lcom/smartisanos/launcher/data/DBHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/launcher/data/DBHelper$3;-><init>(Lcom/smartisanos/launcher/data/DBHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 128
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/DBHelper$3;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    .line 129
    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/data/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 130
    return-void
.end method

.method public static resetDB()V
    .locals 3

    .prologue
    .line 75
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    .line 76
    .local v1, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 77
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/smartisanos/launcher/data/DBHelper$2;

    invoke-direct {v2, v0}, Lcom/smartisanos/launcher/data/DBHelper$2;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 83
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/DBHelper$2;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    .line 84
    return-void
.end method

.method public static resetDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 65
    new-instance v0, Lcom/smartisanos/launcher/data/DBHelper$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/data/DBHelper$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/DBHelper$1;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    .line 72
    return-void
.end method


.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 39
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/launcher/data/DBHelper;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "DBHelper onCreate !"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/launcher/data/DBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 41
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 99
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/smartisanos/launcher/data/DBHelper;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onUpgrade begin ! oldVersion ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], newVersion ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 101
    .local v0, "time1":J
    const/4 v4, 0x0

    .line 102
    .local v4, "upgradeFailed":Z
    move v5, p2

    .line 103
    .local v5, "upgradeVersion":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 104
    const/4 v5, 0x3

    .line 105
    const/4 v4, 0x1

    .line 106
    invoke-static {p1}, Lcom/smartisanos/launcher/data/DBHelper;->resetDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 107
    const/4 v4, 0x0

    .line 110
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 111
    .local v2, "time2":J
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/smartisanos/launcher/data/DBHelper;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DB onUpgrade spend time ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v2, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_2
    if-eqz v4, :cond_3

    .line 113
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/DBHelper;->replaceWithEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    :cond_3
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/smartisanos/launcher/data/DBHelper;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "onUpgrade done !"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_4
    return-void
.end method
