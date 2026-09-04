.class public Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;
.super Ljava/lang/Object;
.source "RedirectIconDB.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanIllegalIconByPackageName(Ljava/lang/String;)V
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 276
    if-nez p0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    .line 280
    .local v1, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 281
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$4;

    invoke-direct {v2, v0, p0}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$4;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$4;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    goto :goto_0
.end method

.method public static cleanIllegalIconItem(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    .line 255
    .local v1, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 256
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$3;

    invoke-direct {v2, v0, p0}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$3;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 272
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$3;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    goto :goto_0
.end method

.method public static getIconTableData(Z)Ljava/util/Map;
    .locals 5
    .param p0, "loadIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    const/4 v3, 0x0

    invoke-static {v3, p0}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->query(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 113
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 114
    .local v1, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->getPrimaryId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 116
    .end local v1    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    :cond_0
    return-object v0
.end method

.method public static getRedirectIcon(I)[B
    .locals 4
    .param p0, "ownerId"    # I

    .prologue
    .line 124
    int-to-long v2, p0

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->getRedirectIconInfo(J)Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    move-result-object v0

    .line 125
    .local v0, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->iconData:[B

    .line 128
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRedirectIcon(J)[B
    .locals 2
    .param p0, "id"    # J

    .prologue
    .line 132
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->getRedirectIconInfo(J)Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    move-result-object v0

    .line 133
    .local v0, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    if-eqz v0, :cond_0

    .line 134
    iget-object v1, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->iconData:[B

    .line 136
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getRedirectIcon(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "cmp"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "data":[B
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v0

    .line 148
    .end local v0    # "data":[B
    .local v1, "data":[B
    :goto_0
    return-object v1

    .line 144
    .end local v1    # "data":[B
    .restart local v0    # "data":[B
    :cond_1
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->getRedirectIconInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    move-result-object v2

    .line 145
    .local v2, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    if-eqz v2, :cond_2

    .line 146
    iget-object v0, v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->iconData:[B

    :cond_2
    move-object v1, v0

    .line 148
    .end local v0    # "data":[B
    .restart local v1    # "data":[B
    goto :goto_0
.end method

.method public static getRedirectIconInfo(J)Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .locals 6
    .param p0, "ownerId"    # J

    .prologue
    const/4 v5, 0x1

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "owner_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "where":Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->query(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 154
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    const/4 v0, 0x0

    .line 155
    .local v0, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 156
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    check-cast v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 158
    .restart local v0    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    :cond_0
    return-object v0
.end method

.method public static getRedirectIconInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .locals 7
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "cmp"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v1, v0

    .line 172
    .end local v0    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .local v1, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    :goto_0
    return-object v1

    .line 166
    .end local v1    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .restart local v0    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packageName=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "componentName"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "where":Ljava/lang/String;
    invoke-static {v3, v6}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->query(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 169
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 170
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    check-cast v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .restart local v0    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    :cond_2
    move-object v1, v0

    .line 172
    .end local v0    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .restart local v1    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    goto :goto_0
.end method

.method public static list(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "loadIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    .line 179
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "where":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->query(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public static listAllInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->query(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static needFetchIconForInit()Z
    .locals 12

    .prologue
    .line 27
    const/4 v10, 0x1

    .line 29
    .local v10, "flag":Z
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v11

    .line 30
    .local v11, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v11}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getReadableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 31
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "redirect_icons"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 32
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 33
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 34
    const/4 v10, 0x0

    .line 36
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    :cond_1
    :goto_0
    return v10

    .line 38
    :catch_0
    move-exception v9

    .line 39
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static query(Ljava/lang/String;Z)Ljava/util/List;
    .locals 23
    .param p0, "where"    # Ljava/lang/String;
    .param p1, "loadIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;>;"
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v21

    .line 186
    .local v21, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getReadableDB()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 187
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "redirect_icons"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 194
    .local v17, "cursor":Landroid/database/Cursor;
    if-nez v17, :cond_0

    .line 229
    :goto_0
    return-object v20

    .line 198
    :cond_0
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    const-string v3, "owner_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 200
    .local v14, "COLUMN_OWNER":I
    const-string v3, "packageName"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 201
    .local v15, "COLUMN_PKG":I
    const-string v3, "componentName"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 202
    .local v10, "COLUMN_CMP":I
    const-string v3, "md5"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 203
    .local v13, "COLUMN_MD5":I
    const-string v3, "use_improved_app_icon"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 204
    .local v16, "COLUMN_USE":I
    const-string v3, "last_update_time"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 205
    .local v12, "COLUMN_LAST_UPDATE_TIME":I
    const-string v3, "icon"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 207
    .local v11, "COLUMN_ICON_DATA":I
    const-string v3, "data1"

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    :cond_1
    new-instance v19, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-direct/range {v19 .. v19}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;-><init>()V

    .line 208
    .local v19, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, v19

    iput-wide v4, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->ownerId:J

    .line 209
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    .line 210
    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    .line 211
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->md5:Ljava/lang/String;

    .line 212
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->lastUpdateTime:Ljava/lang/String;

    if-ltz v18, :cond_data1_done

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->drawableName:Ljava/lang/String;

    :cond_data1_done

    .line 213
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 214
    .local v22, "use":Ljava/lang/String;
    if-eqz v22, :cond_4

    const-string v3, "true"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 215
    const/4 v3, 0x1

    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z

    .line 219
    :goto_1
    if-eqz p1, :cond_2

    .line 220
    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->iconData:[B

    .line 222
    :cond_2
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 225
    .end local v10    # "COLUMN_CMP":I
    .end local v11    # "COLUMN_ICON_DATA":I
    .end local v12    # "COLUMN_LAST_UPDATE_TIME":I
    .end local v13    # "COLUMN_MD5":I
    .end local v14    # "COLUMN_OWNER":I
    .end local v15    # "COLUMN_PKG":I
    .end local v16    # "COLUMN_USE":I
    .end local v19    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .end local v22    # "use":Ljava/lang/String;
    :cond_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 226
    :catch_0
    move-exception v18

    .line 227
    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 217
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v10    # "COLUMN_CMP":I
    .restart local v11    # "COLUMN_ICON_DATA":I
    .restart local v12    # "COLUMN_LAST_UPDATE_TIME":I
    .restart local v13    # "COLUMN_MD5":I
    .restart local v14    # "COLUMN_OWNER":I
    .restart local v15    # "COLUMN_PKG":I
    .restart local v16    # "COLUMN_USE":I
    .restart local v19    # "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .restart local v22    # "use":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->useImprovedAppIcon:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static updateIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Z
    .locals 7
    .param p0, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .prologue
    const/4 v3, 0x0

    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "flag":Z
    if-nez p0, :cond_0

    .line 47
    sget-object v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "updateIcon return false by info is null"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_0
    return v3

    .line 50
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->md5:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->iconData:[B

    if-nez v4, :cond_2

    .line 54
    :cond_1
    sget-object v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    const-string v6, "updateIcon return false by lose info"

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v4, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v2

    .line 59
    .local v2, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 60
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;

    invoke-direct {v3, v0, p0}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    .line 106
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$1;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    move-result-object v3

    iget-boolean v1, v3, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    move v3, v1

    .line 107
    goto :goto_0
.end method

.method public static updateIconStatus(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "cmp"    # Ljava/lang/String;
    .param p2, "status"    # Z

    .prologue
    .line 233
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    .line 237
    .local v1, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 238
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$2;

    invoke-direct {v2, v0, p2, p0, p1}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$2;-><init>(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$2;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    goto :goto_0
.end method

.method public static updateIconDrawableName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "cmp"    # Ljava/lang/String;
    .param p2, "drawableName"    # Ljava/lang/String;

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v2, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$5;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$5;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconDB$5;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    goto :goto_0
.end method
