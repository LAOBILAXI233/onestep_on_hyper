.class public Lcom/smartisanos/launcher/data/setting/SettingDB;
.super Ljava/lang/Object;
.source "SettingDB.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/smartisanos/launcher/data/setting/SettingDB;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/setting/SettingDB;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/smartisanos/launcher/data/setting/SettingDB;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method private static dumpSettingTable()V
    .locals 14

    .prologue
    .line 74
    sget-object v1, Lcom/smartisanos/launcher/data/setting/SettingDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "A140"

    const-string v3, "dumpSettingTable begin !"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v11

    .line 76
    .local v11, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v11}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getReadableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 78
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "table_settings"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 79
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 80
    const-string v1, "key"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 81
    .local v10, "keyIndex":I
    const-string v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 82
    .local v13, "valueIndex":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 86
    .local v12, "value":Ljava/lang/String;
    sget-object v1, Lcom/smartisanos/launcher/data/setting/SettingDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "A140"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "keyIndex":I
    .end local v13    # "valueIndex":I
    :cond_2
    :goto_0
    sget-object v1, Lcom/smartisanos/launcher/data/setting/SettingDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "A140"

    const-string v3, "dumpSettingTable end !"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    .line 91
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static initLauncherSetting(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    .line 60
    .local v1, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 61
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/smartisanos/launcher/data/setting/SettingDB$2;

    invoke-direct {v2, v0, p0}, Lcom/smartisanos/launcher/data/setting/SettingDB$2;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 70
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/setting/SettingDB$2;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    goto :goto_0
.end method

.method public static isLauncherSettingExist()Z
    .locals 13

    .prologue
    .line 22
    const/4 v8, -0x1

    .line 23
    .local v8, "count":I
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v12

    .line 25
    .local v12, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    :try_start_0
    invoke-virtual {v12}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getReadableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 26
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "table_settings"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 27
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 28
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 29
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-lez v8, :cond_1

    .line 50
    const/4 v1, 0x1

    .line 52
    :goto_1
    return v1

    .line 31
    :catch_0
    move-exception v10

    .line 32
    .local v10, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/smartisanos/launcher/data/setting/SettingDB;->log:Lcom/smartisanos/launcher/LOG;

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 34
    :try_start_1
    invoke-virtual {v12}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 35
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Lcom/smartisanos/launcher/data/setting/SettingDB$1;

    invoke-direct {v1, v0}, Lcom/smartisanos/launcher/data/setting/SettingDB$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/setting/SettingDB$1;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    move-result-object v1

    iget v8, v1, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->i:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 45
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception v11

    .line 46
    .local v11, "ex":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static readBool(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "flag":Z
    const-string v2, ""

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/data/setting/SettingDB;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    .end local p1    # "def":Z
    :cond_0
    :goto_0
    return p1

    .line 203
    .restart local p1    # "def":Z
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    const/4 v0, 0x1

    :cond_2
    move p1, v0

    .line 206
    goto :goto_0
.end method

.method public static readInt(Ljava/lang/String;I)I
    .locals 12
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    const/4 v4, 0x0

    .line 97
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v10

    .line 98
    .local v10, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getReadableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 99
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "whereCase":Ljava/lang/String;
    const-string v1, "table_settings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "value"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 104
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 106
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    :cond_0
    const-string v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 110
    .local v11, "value":Ljava/lang/String;
    :try_start_1
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p1

    .line 119
    .end local p1    # "def":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 122
    .end local v11    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return p1

    .line 111
    .restart local v11    # "value":Ljava/lang/String;
    .restart local p1    # "def":I
    :catch_0
    move-exception v9

    .line 112
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 119
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 116
    :catch_1
    move-exception v9

    .line 117
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static readLong(Ljava/lang/String;J)J
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # J

    .prologue
    .line 218
    const-string v2, ""

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/data/setting/SettingDB;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 222
    .end local p1    # "def":J
    :goto_0
    return-wide p1

    .line 221
    .restart local p1    # "def":J
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v10

    .line 132
    .local v10, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v10}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getReadableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 133
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "whereCase":Ljava/lang/String;
    const-string v1, "table_settings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "value"

    aput-object v6, v2, v5

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 138
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 140
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const-string v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 148
    .end local p1    # "def":Ljava/lang/String;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_0
    :goto_0
    return-object p1

    .line 148
    .restart local p1    # "def":Ljava/lang/String;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 145
    :catch_0
    move-exception v9

    .line 146
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public static setBool(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 210
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "newValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 212
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_0
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/setting/SettingDB;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method public static setInt(Ljava/lang/String;I)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "newValue":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/setting/SettingDB;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static setLong(Ljava/lang/String;J)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "newValue":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/data/setting/SettingDB;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 155
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    const-string v12, ""

    .line 159
    .local v12, "newValue":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 160
    move-object v12, p1

    .line 162
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v13

    .line 163
    .local v13, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v13}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 164
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "whereCase":Ljava/lang/String;
    const-string v1, "table_settings"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "value"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 169
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 170
    .local v11, "exist":Z
    if-eqz v8, :cond_4

    .line 172
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 174
    const/4 v11, 0x1

    .line 180
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 183
    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    .line 185
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 186
    .local v9, "cv":Landroid/content/ContentValues;
    const-string v1, "value"

    invoke-virtual {v9, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "table_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v9, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 177
    .end local v9    # "cv":Landroid/content/ContentValues;
    :catch_0
    move-exception v10

    .line 178
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 190
    :cond_5
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .restart local v9    # "cv":Landroid/content/ContentValues;
    const-string v1, "key"

    invoke-virtual {v9, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v1, "value"

    invoke-virtual {v9, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "table_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0
.end method
