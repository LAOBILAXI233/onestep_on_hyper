.class public abstract Lcom/smartisanos/launcher/data/handler/TableOperator;
.super Ljava/lang/Object;
.source "TableOperator.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/smartisanos/launcher/data/handler/TableOperator;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/handler/TableOperator;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bulkInsert(Ljava/lang/String;Ljava/util/List;)I
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v2

    .line 35
    .local v2, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 36
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/smartisanos/launcher/data/handler/TableOperator$2;

    invoke-direct {v3, v1, p1, p0}, Lcom/smartisanos/launcher/data/handler/TableOperator$2;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/handler/TableOperator$2;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    move-result-object v3

    iget v0, v3, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 54
    .local v0, "count":I
    return v0
.end method

.method public static checkExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "whereCase"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 99
    const/4 v2, -0x1

    .line 100
    .local v2, "recordCount":I
    const/4 v0, 0x0

    .line 102
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-static {p0, p1, v5, v6}, Lcom/smartisanos/launcher/data/handler/TableOperator;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 109
    :cond_0
    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_1
    :goto_0
    if-lez v2, :cond_3

    :goto_1
    return v3

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 109
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 110
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    :cond_3
    move v3, v4

    .line 113
    goto :goto_1
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "where"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v2

    .line 59
    .local v2, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 60
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/smartisanos/launcher/data/handler/TableOperator$3;

    invoke-direct {v3, v1, p0, p1}, Lcom/smartisanos/launcher/data/handler/TableOperator$3;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/handler/TableOperator$3;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    move-result-object v3

    iget v0, v3, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 66
    .local v0, "count":I
    if-lez v0, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Landroid/content/ContentValues;

    .prologue
    .line 21
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    .line 22
    .local v1, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 23
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Lcom/smartisanos/launcher/data/handler/TableOperator$1;

    invoke-direct {v4, v0, p0, p1}, Lcom/smartisanos/launcher/data/handler/TableOperator$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 29
    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/handler/TableOperator$1;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    move-result-object v4

    iget-wide v2, v4, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->l:J

    .line 30
    .local v2, "id":J
    return-wide v2
.end method

.method public static query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "order"    # Ljava/lang/String;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/smartisanos/launcher/data/handler/TableOperator;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "where"    # Ljava/lang/String;
    .param p2, "selectArgs"    # [Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "order"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v10

    .line 88
    .local v10, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 89
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 91
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v7, p4

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 95
    :goto_0
    return-object v8

    .line 92
    :catch_0
    move-exception v9

    .line 93
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v2

    .line 71
    .local v2, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 72
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/smartisanos/launcher/data/handler/TableOperator$4;

    invoke-direct {v3, v1, p0, p1, p2}, Lcom/smartisanos/launcher/data/handler/TableOperator$4;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/handler/TableOperator$4;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    move-result-object v3

    iget v0, v3, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I

    .line 79
    .local v0, "count":I
    return v0
.end method
