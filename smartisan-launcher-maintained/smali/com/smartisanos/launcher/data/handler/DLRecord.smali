.class public Lcom/smartisanos/launcher/data/handler/DLRecord;
.super Lcom/smartisanos/launcher/data/handler/TableOperator;
.source "DLRecord.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;


.field public dl_id:J

.field public dl_status:I

.field public dl_time:J

.field public dl_url:Ljava/lang/String;

.field public file:Ljava/lang/String;

.field public id:I

.field public md5:Ljava/lang/String;

.field public taskName:Ljava/lang/String;

.field public type:I


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/smartisanos/launcher/data/handler/DLRecord;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/handler/TableOperator;-><init>()V

    .line 14
    iput v1, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->id:I

    .line 15
    iput v1, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->type:I

    .line 16
    iput-wide v2, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .line 17
    iput v1, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_status:I

    .line 18
    iput-wide v2, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_time:J

    .line 19
    iput-object v0, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_url:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->md5:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->file:Ljava/lang/String;

    return-void
.end method

.method public static toDLRecord(Landroid/database/Cursor;)Lcom/smartisanos/launcher/data/handler/DLRecord;
    .locals 14
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 26
    :try_start_0
    new-instance v8, Lcom/smartisanos/launcher/data/handler/DLRecord;

    invoke-direct {v8}, Lcom/smartisanos/launcher/data/handler/DLRecord;-><init>()V

    .line 27
    .local v8, "record":Lcom/smartisanos/launcher/data/handler/DLRecord;
    const-string v11, "_id"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 28
    .local v6, "idIndex":I
    const-string v11, "type"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 29
    .local v10, "typeIndex":I
    const-string v11, "dl_id"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 30
    .local v0, "dlIdIndex":I
    const-string v11, "dl_status"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 31
    .local v1, "dlStatusIndex":I
    const-string v11, "dl_time"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 32
    .local v2, "dlTimeIndex":I
    const-string v11, "task_name"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 33
    .local v9, "taskNameIndex":I
    const-string v11, "dl_url"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 34
    .local v3, "dlUrlIndex":I
    const-string v11, "md5"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 35
    .local v7, "md5Index":I
    const-string v11, "file"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 36
    .local v5, "fileIndex":I
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v8, Lcom/smartisanos/launcher/data/handler/DLRecord;->id:I

    .line 37
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v8, Lcom/smartisanos/launcher/data/handler/DLRecord;->type:I

    .line 38
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v8, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .line 39
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v8, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_status:I

    .line 40
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v8, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_time:J

    .line 41
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    .line 42
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/smartisanos/launcher/data/handler/DLRecord;->md5:Ljava/lang/String;

    .line 43
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_url:Ljava/lang/String;

    .line 44
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/smartisanos/launcher/data/handler/DLRecord;->file:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "dlIdIndex":I
    .end local v1    # "dlStatusIndex":I
    .end local v2    # "dlTimeIndex":I
    .end local v3    # "dlUrlIndex":I
    .end local v5    # "fileIndex":I
    .end local v6    # "idIndex":I
    .end local v7    # "md5Index":I
    .end local v8    # "record":Lcom/smartisanos/launcher/data/handler/DLRecord;
    .end local v9    # "taskNameIndex":I
    .end local v10    # "typeIndex":I
    :goto_0
    return-object v8

    .line 46
    :catch_0
    move-exception v4

    .line 47
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    const/4 v8, 0x0

    goto :goto_0
.end method


.method public debug()V
    .locals 6

    .prologue
    .line 53
    sget-object v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    const-string v2, "##### DLRecord DEBUG #####"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id        ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type      ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dl_id     ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dl_status ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dl_time   ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_time:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "taskName  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dl_url    ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file      ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/data/handler/DLRecord;->file:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
