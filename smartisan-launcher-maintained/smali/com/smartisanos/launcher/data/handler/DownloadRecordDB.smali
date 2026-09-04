.class public Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;
.super Lcom/smartisanos/launcher/data/handler/TableOperator;
.source "DownloadRecordDB.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/handler/TableOperator;-><init>()V

    return-void
.end method

.method public static addRecord(Lcom/smartisanos/launcher/data/handler/DLRecord;)J
    .locals 10
    .param p0, "record"    # Lcom/smartisanos/launcher/data/handler/DLRecord;

    .prologue
    .line 21
    const-wide/16 v2, -0x1

    .line 22
    .local v2, "id":J
    iget-object v4, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    .line 23
    .local v4, "taskName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "task_name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 24
    .local v5, "where":Ljava/lang/String;
    const-string v6, "download_record"

    invoke-static {v6, v5}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->checkExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 25
    .local v1, "exist":Z
    if-eqz v1, :cond_0

    .line 26
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 27
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v6, "dl_id"

    iget-wide v8, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    const-string v6, "dl_status"

    iget v7, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_status:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 29
    const-string v6, "download_record"

    invoke-static {v6, v0, v5}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-wide v2

    .line 31
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 32
    .restart local v0    # "cv":Landroid/content/ContentValues;
    const-string v6, "type"

    iget v7, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    const-string v6, "dl_id"

    iget-wide v8, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 34
    const-string v6, "dl_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    const-string v6, "task_name"

    iget-object v7, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v6, "dl_url"

    iget-object v7, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_url:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v6, "md5"

    iget-object v7, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->md5:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v6, "file"

    iget-object v7, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->file:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v6, "dl_status"

    iget v7, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_status:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    const-string v6, "download_record"

    invoke-static {v6, v0}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getRecordByDL_ID(J)Lcom/smartisanos/launcher/data/handler/DLRecord;
    .locals 6
    .param p0, "downloadId"    # J

    .prologue
    const/4 v2, 0x0

    .line 70
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-gtz v3, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object v2

    .line 73
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dl_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "whereCause":Ljava/lang/String;
    invoke-static {v1}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/handler/DLRecord;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 76
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/handler/DLRecord;

    goto :goto_0
.end method

.method public static getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;
    .locals 5
    .param p0, "taskName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 82
    if-nez p0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v2

    .line 85
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "task_name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "whereCause":Ljava/lang/String;
    invoke-static {v1}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 87
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/handler/DLRecord;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 88
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/handler/DLRecord;

    goto :goto_0
.end method

.method public static list(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "whereCause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/handler/DLRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v3, "records":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/handler/DLRecord;>;"
    const-string v4, "download_record"

    invoke-static {v4, p0, v5, v5}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->query(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 48
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 50
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/launcher/data/handler/DLRecord;->toDLRecord(Landroid/database/Cursor;)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v2

    .line 53
    .local v2, "record":Lcom/smartisanos/launcher/data/handler/DLRecord;
    if-eqz v2, :cond_1

    .line 54
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 61
    .end local v2    # "record":Lcom/smartisanos/launcher/data/handler/DLRecord;
    :cond_2
    if-eqz v0, :cond_3

    .line 62
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_3
    :goto_0
    return-object v3

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    if-eqz v0, :cond_3

    .line 62
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_4

    .line 62
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4
.end method

.method public static removeRecord(Ljava/lang/String;)V
    .locals 3
    .param p0, "whereCause"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getInstance()Lcom/smartisanos/launcher/data/DatabaseProvider;

    move-result-object v1

    .line 105
    .local v1, "provider":Lcom/smartisanos/launcher/data/DatabaseProvider;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/DatabaseProvider;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 106
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB$1;

    invoke-direct {v2, v0, p0}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB$1;->execute()Lcom/smartisanos/launcher/data/DatabaseProvider$TransactionTask$Result;

    .line 112
    return-void
.end method

.method public static removeRecordByDL_ID(J)V
    .locals 4
    .param p0, "dl_id"    # J

    .prologue
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dl_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "whereCause":Ljava/lang/String;
    invoke-static {v0}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->removeRecord(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static removeRecordById(I)V
    .locals 3
    .param p0, "id"    # I

    .prologue
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "whereCause":Ljava/lang/String;
    invoke-static {v0}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->removeRecord(Ljava/lang/String;)V

    .line 96
    return-void
.end method
