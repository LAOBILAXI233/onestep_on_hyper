.class public Lcom/smartisanos/launcher/data/DatabaseProvider;
.super Ljava/lang/Object;
.source "DatabaseProvider.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask;
    }
.end annotation


.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static myself:Lcom/smartisanos/launcher/data/DatabaseProvider;


.field private mOpenHelper:Lcom/smartisanos/launcher/data/DBHelper;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/smartisanos/launcher/data/DatabaseProvider;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseProvider;->log:Lcom/smartisanos/launcher/LOG;

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseProvider;->myself:Lcom/smartisanos/launcher/data/DatabaseProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseProvider;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method public static getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseProvider;->myself:Lcom/smartisanos/launcher/data/DatabaseProvider;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    new-instance v0, Lcom/smartisanos/launcher/data/DatabaseProvider;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/DatabaseProvider;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseProvider;->myself:Lcom/smartisanos/launcher/data/DatabaseProvider;

    .line 23
    sget-object v0, Lcom/smartisanos/launcher/data/DatabaseProvider;->myself:Lcom/smartisanos/launcher/data/DatabaseProvider;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/data/DatabaseProvider;->onCreate(Landroid/content/Context;)Z

    .line 24
    return-void
.end method


.method public getHelper()Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/smartisanos/launcher/data/DatabaseProvider;->mOpenHelper:Lcom/smartisanos/launcher/data/DBHelper;

    return-object v0
.end method

.method public getReadableDB()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/smartisanos/launcher/data/DatabaseProvider;->mOpenHelper:Lcom/smartisanos/launcher/data/DBHelper;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/smartisanos/launcher/data/DatabaseProvider;->mOpenHelper:Lcom/smartisanos/launcher/data/DBHelper;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/smartisanos/launcher/data/DatabaseProvider;->mOpenHelper:Lcom/smartisanos/launcher/data/DBHelper;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    new-instance v0, Lcom/smartisanos/launcher/data/DBHelper;

    invoke-direct {v0, p1}, Lcom/smartisanos/launcher/data/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/data/DatabaseProvider;->mOpenHelper:Lcom/smartisanos/launcher/data/DBHelper;

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 113
    iget-object v1, p0, Lcom/smartisanos/launcher/data/DatabaseProvider;->mOpenHelper:Lcom/smartisanos/launcher/data/DBHelper;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 115
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 122
    :goto_0
    return-object v8

    .line 117
    :catch_0
    move-exception v9

    .line 118
    .local v9, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 120
    .end local v9    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v9

    .line 121
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public syncNewApps(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "itemValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .local p2, "pageValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    iget-object v2, p0, Lcom/smartisanos/launcher/data/DatabaseProvider;->mOpenHelper:Lcom/smartisanos/launcher/data/DBHelper;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 128
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/smartisanos/launcher/data/DatabaseProvider$1;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/smartisanos/launcher/data/DatabaseProvider$1;-><init>(Lcom/smartisanos/launcher/data/DatabaseProvider;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/util/List;)V

    .line 154
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/DatabaseProvider$1;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    move-result-object v2

    iget-boolean v1, v2, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    .line 155
    .local v1, "flag":Z
    return v1
.end method
