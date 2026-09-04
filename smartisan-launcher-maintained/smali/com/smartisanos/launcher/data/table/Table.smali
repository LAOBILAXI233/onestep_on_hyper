.class public abstract Lcom/smartisanos/launcher/data/table/Table;
.super Ljava/lang/Object;
.source "Table.java"


.field public static final ID:Ljava/lang/String; = "_id"

.field public static TABLES:[Lcom/smartisanos/launcher/data/table/Table;

.field static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const-class v0, Lcom/smartisanos/launcher/data/table/Table;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/table/Table;->log:Lcom/smartisanos/launcher/LOG;

    .line 19
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/smartisanos/launcher/data/table/Table;

    const/4 v1, 0x0

    new-instance v2, Lcom/smartisanos/launcher/data/table/ITEM;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/table/ITEM;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/smartisanos/launcher/data/table/PAGE;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/table/PAGE;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/smartisanos/launcher/data/table/ICON;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/table/ICON;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/smartisanos/launcher/data/table/THEME;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/table/THEME;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/smartisanos/launcher/data/table/BACKUP;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/table/BACKUP;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/smartisanos/launcher/data/table/DownloadRecord;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/table/DownloadRecord;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/smartisanos/launcher/data/table/SyncConfiguration;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/table/SyncConfiguration;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/smartisanos/launcher/data/table/SETTING;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/table/SETTING;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/smartisanos/launcher/data/table/LaunchCountRecord;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/table/LaunchCountRecord;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/smartisanos/launcher/data/table/RedirectIcon;

    invoke-direct {v2}, Lcom/smartisanos/launcher/data/table/RedirectIcon;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/smartisanos/expandservice/launcher/data/APP_CATEGORY;

    invoke-direct {v2}, Lcom/smartisanos/expandservice/launcher/data/APP_CATEGORY;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/smartisanos/expandservice/launcher/data/CATEGORY_NAME_MAP;

    invoke-direct {v2}, Lcom/smartisanos/expandservice/launcher/data/CATEGORY_NAME_MAP;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/smartisanos/expandservice/launcher/data/PREDEFINED_CATEGORY;

    invoke-direct {v2}, Lcom/smartisanos/expandservice/launcher/data/PREDEFINED_CATEGORY;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/data/table/Table;->TABLES:[Lcom/smartisanos/launcher/data/table/Table;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "createSql"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v1, 0x1

    .line 69
    .local v1, "success":Z
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 71
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/smartisanos/launcher/data/table/Table;->formatTableImpl(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    :goto_0
    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 74
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 75
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 79
    :catch_2
    move-exception v0

    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 78
    :try_start_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 82
    :goto_1
    throw v2

    .line 79
    :catch_3
    move-exception v0

    .line 80
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static formatTableImpl(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "createSql"    # Ljava/lang/String;

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    sget-object v6, Lcom/smartisanos/launcher/data/table/Table;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "mergeTable return by tableName is null"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 99
    :cond_0
    if-eqz p2, :cond_1

    array-length v6, p2

    if-nez v6, :cond_2

    .line 100
    :cond_1
    sget-object v6, Lcom/smartisanos/launcher/data/table/Table;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    const-string v8, "mergeTable return by columns is empty"

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_old"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "oldTableName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ALTER TABLE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " RENAME TO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "renameTableSql":Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, p2

    if-ge v1, v6, :cond_4

    .line 112
    aget-object v6, p2, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    array-length v6, p2

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_3

    .line 114
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 117
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "mergeColumns":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") SELECT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, "mergeSql":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    invoke-static {v4}, Lcom/smartisanos/launcher/data/DBHelper;->dropTableSql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected static generateCreateSQL(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p0, "table"    # Ljava/lang/String;
    .param p1, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 47
    aget-object v1, p1, v2

    .line 48
    .local v1, "column":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 49
    .local v3, "prop":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_0

    .line 53
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "column":Ljava/lang/String;
    .end local v3    # "prop":Ljava/lang/String;
    :cond_1
    const-string v4, ");"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


.method public abstract createSQL()Ljava/lang/String;
.end method

.method public abstract getColumns()[Ljava/lang/String;
.end method

.method public abstract tableName()Ljava/lang/String;
.end method

.method public abstract updateTo(ILandroid/database/sqlite/SQLiteDatabase;)V
.end method
