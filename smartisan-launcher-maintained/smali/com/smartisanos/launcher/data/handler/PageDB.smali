.class public Lcom/smartisanos/launcher/data/handler/PageDB;
.super Lcom/smartisanos/launcher/data/handler/TableOperator;
.source "PageDB.java"


.field public static final PAGE_DATA_AREA_SIZE:I = 0x3e8

.field public static final PAGE_INFO_COLUMNS:[Ljava/lang/String;

.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const-class v0, Lcom/smartisanos/launcher/data/handler/PageDB;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/handler/PageDB;->log:Lcom/smartisanos/launcher/LOG;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pageIndex"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pageTitle"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/data/handler/PageDB;->PAGE_INFO_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/handler/TableOperator;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/smartisanos/launcher/data/handler/PageDB;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method public static bulkInsert(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v0, "table_pageinfos"

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/data/handler/PageDB;->bulkInsert(Ljava/lang/String;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public static dump()V
    .locals 11

    .prologue
    .line 246
    sget-boolean v8, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-nez v8, :cond_0

    .line 261
    .local v0, "i":I
    .local v4, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    .local v6, "size":I
    :goto_0
    return-void

    .line 249
    .end local v0    # "i":I
    .end local v4    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    .end local v6    # "size":I
    :cond_0
    sget-object v8, Lcom/smartisanos/launcher/data/handler/PageDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "dump page table begin ###################################################"

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/PageDB;->listPage()Ljava/util/List;

    move-result-object v4

    .line 251
    .restart local v4    # "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 252
    .restart local v6    # "size":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v6, :cond_1

    .line 253
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/PageInfo;

    .line 254
    .local v3, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    iget v1, v3, Lcom/smartisanos/launcher/data/PageInfo;->id:I

    .line 255
    .local v1, "id":I
    iget v5, v3, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 256
    .local v5, "pid":I
    iget v7, v3, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    .line 257
    .local v7, "status":I
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/PageInfo;->getPageName()Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "name":Ljava/lang/String;
    sget-object v8, Lcom/smartisanos/launcher/data/handler/PageDB;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pid ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], id ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], status ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], name ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    .end local v1    # "id":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    .end local v5    # "pid":I
    .end local v7    # "status":I
    :cond_1
    sget-object v8, Lcom/smartisanos/launcher/data/handler/PageDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v9, "dump page table done  ###################################################"

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getRealPageRecoredCount()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 232
    const-string v2, "table_pageinfos"

    invoke-static {v2, v3, v3, v3}, Lcom/smartisanos/launcher/data/handler/PageDB;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 233
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, -0x1

    .line 234
    .local v0, "count":I
    if-eqz v1, :cond_0

    .line 236
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 237
    :catch_0
    move-exception v2

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static listPage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/smartisanos/launcher/data/handler/PageDB;->listPage(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listPage(I)Ljava/util/List;
    .locals 1
    .param p0, "maxPageCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 129
    invoke-static {v0, v0, p0}, Lcom/smartisanos/launcher/data/handler/PageDB;->listPage(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listPage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "where"    # Ljava/lang/String;
    .param p1, "order"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/data/handler/PageDB;->listPage(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static listPage(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 12
    .param p0, "where"    # Ljava/lang/String;
    .param p1, "order"    # Ljava/lang/String;
    .param p2, "maxPageCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 133
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v7, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    const/4 v4, 0x0

    .line 136
    .local v4, "cursor":Landroid/database/Cursor;
    if-nez p0, :cond_0

    .line 137
    :try_start_0
    const-string p0, "pageIndex > -1"

    .line 139
    :cond_0
    if-nez p1, :cond_1

    .line 140
    const-string p1, "pageIndex ASC"

    .line 143
    :cond_1
    const-string v9, "table_pageinfos"

    sget-object v10, Lcom/smartisanos/launcher/data/handler/PageDB;->PAGE_INFO_COLUMNS:[Ljava/lang/String;

    invoke-static {v9, p0, v10, p1}, Lcom/smartisanos/launcher/data/handler/PageDB;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 144
    const-string v9, "_id"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, "columnPageId":I
    const-string v9, "pageIndex"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 146
    .local v1, "columnPageIndex":I
    const-string v9, "pageTitle"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 147
    .local v3, "columnTitleIndex":I
    const-string v9, "status"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 148
    .local v2, "columnStatusIndex":I
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 150
    :cond_2
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 151
    .local v6, "index":I
    if-eq v6, v11, :cond_3

    .line 152
    new-instance v8, Lcom/smartisanos/launcher/data/PageInfo;

    invoke-direct {v8}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 153
    .local v8, "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v8, Lcom/smartisanos/launcher/data/PageInfo;->id:I

    .line 154
    iput v6, v8, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 155
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v8, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    .line 156
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/data/PageInfo;->setPageName(Ljava/lang/String;)V

    .line 157
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .end local v8    # "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    if-nez v9, :cond_2

    .line 165
    .end local v6    # "index":I
    :cond_4
    if-eqz v4, :cond_5

    .line 166
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 169
    .end local v0    # "columnPageId":I
    .end local v1    # "columnPageIndex":I
    .end local v2    # "columnStatusIndex":I
    .end local v3    # "columnTitleIndex":I
    :cond_5
    :goto_0
    if-eq p2, v11, :cond_6

    .line 170
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, p2, :cond_6

    .line 171
    const/4 v9, 0x0

    invoke-interface {v7, v9, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    .line 174
    :cond_6
    return-object v7

    .line 161
    :catch_0
    move-exception v5

    .line 162
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 163
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    if-eqz v4, :cond_5

    .line 166
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 165
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_7

    .line 166
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v9
.end method

.method public static refreshPageTable(Ljava/util/List;)V
    .locals 12
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
    .line 38
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 95
    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    .line 43
    .local v7, "size":I
    new-array v5, v7, [I

    .line 44
    .local v5, "indexArr":[I
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 45
    .local v1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/content/ContentValues;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 46
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 47
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v9, "pageIndex"

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 48
    .local v4, "index":I
    aput v4, v5, v3

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v4    # "index":I
    :cond_2
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 52
    const/4 v3, 0x0

    :goto_1
    array-length v9, v5

    if-ge v3, v9, :cond_4

    .line 53
    aget v9, v5, v3

    if-eq v9, v3, :cond_3

    .line 54
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "page index error ! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 52
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 58
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v6

    .line 59
    .local v6, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v6}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 60
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v9, Lcom/smartisanos/launcher/data/handler/PageDB$1;

    invoke-direct {v9, v2, v7, v1}, Lcom/smartisanos/launcher/data/handler/PageDB$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;ILjava/util/Map;)V

    .line 88
    invoke-virtual {v9}, Lcom/smartisanos/launcher/data/handler/PageDB$1;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    move-result-object v9

    iget-boolean v8, v9, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    .line 89
    .local v8, "updateError":Z
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 90
    if-eqz v8, :cond_0

    .line 91
    sget-object v9, Lcom/smartisanos/launcher/data/handler/PageDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v10, "error dump page table begin !!!"

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/PageDB;->dump()V

    .line 93
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "refreshPageTable error"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static rewritePageTable(Ljava/util/List;I)V
    .locals 5
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/smartisanos/launcher/data/handler/PageDB;->log:Lcom/smartisanos/launcher/LOG;

    const-string v3, "A140"

    const-string v4, "rewritePageTable begin !"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    .line 181
    .local v1, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 182
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/smartisanos/launcher/data/handler/PageDB$3;

    invoke-direct {v2, v0, p0, p1}, Lcom/smartisanos/launcher/data/handler/PageDB$3;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;I)V

    .line 228
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/handler/PageDB$3;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    .line 229
    return-void
.end method

.method public static updatePagesDataByIndex(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    .line 99
    .local v1, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 100
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/smartisanos/launcher/data/handler/PageDB$2;

    invoke-direct {v3, v0, p0}, Lcom/smartisanos/launcher/data/handler/PageDB$2;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 113
    invoke-virtual {v3}, Lcom/smartisanos/launcher/data/handler/PageDB$2;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    move-result-object v3

    iget-boolean v2, v3, Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;->b:Z

    .line 114
    .local v2, "updateError":Z
    if-eqz v2, :cond_0

    .line 115
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "updatePagesDataByIndex error"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 117
    :cond_0
    const/4 v3, 0x0

    return v3
.end method
