.class public Lcom/smartisan/feedbackhelper/upload/UploadWorker;
.super Ljava/lang/Object;
.source "UploadWorker.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;,
        Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;
    }
.end annotation


.field private static final MAX_DIR_NEST_LEVEL:I = 0x14

.field public static createDate:Ljava/lang/String; = null

.field private static final tag:Ljava/lang/String; = "BugReportUploadWorker"


.field private mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

.field public mReportSender:Lcom/smartisan/feedbackhelper/upload/ReportSender;

.field private mUploader:Lcom/smartisan/feedbackhelper/upload/ReliableUploader;


.method public constructor <init>(Lcom/smartisan/feedbackhelper/upload/ReliableUploader;)V
    .locals 1
    .param p1, "uploader"    # Lcom/smartisan/feedbackhelper/upload/ReliableUploader;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mUploader:Lcom/smartisan/feedbackhelper/upload/ReliableUploader;

    .line 47
    new-instance v0, Lcom/smartisan/feedbackhelper/upload/ReportSender;

    invoke-direct {v0, p1, p0}, Lcom/smartisan/feedbackhelper/upload/ReportSender;-><init>(Lcom/smartisan/feedbackhelper/upload/ReliableUploader;Lcom/smartisan/feedbackhelper/upload/UploadWorker;)V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mReportSender:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/feedbackhelper/upload/UploadWorker;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisan/feedbackhelper/upload/UploadWorker;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->compressLogs()V

    return-void
.end method

.method private addFileToZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;I[B)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "out"    # Ljava/util/zip/ZipOutputStream;
    .param p3, "nestLevel"    # I
    .param p4, "inBuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 192
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 194
    const/16 v7, 0x14

    if-lt p3, v7, :cond_1

    .line 195
    const-string v6, "BugReportUploadWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Max nest level of 20 reached at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 196
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; aborting branch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 195
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 201
    .local v1, "childFiles":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 202
    array-length v7, v1

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v0, v1, v6

    .line 203
    .local v0, "childFile":Ljava/io/File;
    add-int/lit8 v8, p3, 0x1

    invoke-direct {p0, v0, p2, v8, p4}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->addFileToZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;I[B)V

    .line 202
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 207
    .end local v0    # "childFile":Ljava/io/File;
    .end local v1    # "childFiles":[Ljava/io/File;
    :cond_2
    const/4 v4, 0x0

    .line 209
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    array-length v7, p4

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 212
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v5, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 213
    .local v3, "entry":Ljava/util/zip/ZipEntry;
    invoke-direct {p0, p1}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->isCompressed(Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 216
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 224
    :goto_2
    invoke-virtual {p2, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 226
    :goto_3
    const/4 v6, 0x0

    array-length v7, p4

    invoke-virtual {v5, p4, v6, v7}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    .local v2, "count":I
    if-eq v2, v8, :cond_5

    .line 227
    const/4 v6, 0x0

    invoke-virtual {p2, p4, v6, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 231
    .end local v2    # "count":I
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v6

    move-object v4, v5

    .line 232
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    :goto_4
    if-eqz v4, :cond_3

    .line 233
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 236
    :cond_3
    :goto_5
    throw v6

    .line 222
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    :cond_4
    const/4 v6, -0x1

    :try_start_3
    invoke-virtual {p2, v6}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    goto :goto_2

    .line 229
    .restart local v2    # "count":I
    :cond_5
    invoke-virtual {p2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    if-eqz v5, :cond_0

    .line 233
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v6

    goto :goto_0

    .end local v2    # "count":I
    .end local v3    # "entry":Ljava/util/zip/ZipEntry;
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v7

    goto :goto_5

    .line 231
    :catchall_1
    move-exception v6

    goto :goto_4
.end method

.method private compressFolderToZip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "srcPath"    # Ljava/lang/String;
    .param p2, "destPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 175
    .local v0, "inBuf":[B
    const/4 v1, 0x0

    .line 177
    .local v1, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .local v2, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4, v0}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->addFileToZip(Ljava/io/File;Ljava/util/zip/ZipOutputStream;I[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 182
    if-eqz v2, :cond_0

    .line 183
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 181
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_0
    move-exception v3

    .line 182
    :goto_1
    if-eqz v1, :cond_1

    .line 183
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 186
    :cond_1
    :goto_2
    throw v3

    .line 184
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 181
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_1
.end method

.method private compressLogs()V
    .locals 9

    .prologue
    .line 63
    const-string v6, "BugReportUploadWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "compressLogs : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_0
    sget-object v5, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->PREPARE:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    .line 73
    .local v5, "subState":Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;
    const/4 v2, 0x0

    .line 75
    .local v2, "ifCancelled":Z
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v6}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getLogPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 78
    sget-object v5, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->CHANGE_LOGPATH:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    .line 86
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->getZipLogPath()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "logPath":Ljava/lang/String;
    sget-object v6, Lcom/smartisan/feedbackhelper/upload/UploadWorker$2;->$SwitchMap$com$smartisan$feedbackhelper$upload$UploadWorker$CompressSubstate:[I

    invoke-virtual {v5}, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 142
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "ifCancelled":Z
    .end local v3    # "logPath":Ljava/lang/String;
    .end local v5    # "subState":Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;
    :goto_1
    return-void

    .line 79
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "ifCancelled":Z
    .restart local v5    # "subState":Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    sget-object v5, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->START_TO_UPLOAD:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    goto :goto_0

    .line 81
    :cond_2
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v6}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getState()Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    move-result-object v6

    sget-object v7, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_TRANSMIT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    if-ne v6, v7, :cond_0

    .line 83
    sget-object v5, Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;->REMOVE_FILES:Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;

    goto :goto_0

    .line 90
    .restart local v3    # "logPath":Ljava/lang/String;
    :pswitch_0
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    sget-object v7, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPRESSING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setState(Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)V

    .line 100
    :pswitch_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v3}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->compressFolderToZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :pswitch_2
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :try_start_1
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v6}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getState()Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    move-result-object v4

    .line 108
    .local v4, "state":Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->USER_DELETED_OUTBOX:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    if-ne v4, v6, :cond_4

    .line 113
    invoke-static {v3}, Lcom/smartisan/feedbackhelper/utils/Util;->removeFile(Ljava/lang/String;)Z

    .line 114
    const/4 v2, 0x1

    .line 124
    :cond_3
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .end local v4    # "state":Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;
    :pswitch_3
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/smartisan/feedbackhelper/utils/Util;->removeFile(Ljava/lang/String;)Z

    .line 130
    :pswitch_4
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v6, v3}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setLogPath(Ljava/lang/String;)V

    .line 132
    :pswitch_5
    if-eqz v2, :cond_5

    .line 133
    sget-object v6, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->CANCELLED:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    invoke-virtual {p0, v6}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->onUploadFinished(Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 138
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "ifCancelled":Z
    .end local v3    # "logPath":Ljava/lang/String;
    .end local v5    # "subState":Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "BugReportUploadWorker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to compress "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->failwithException()V

    goto :goto_1

    .line 116
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "ifCancelled":Z
    .restart local v3    # "logPath":Ljava/lang/String;
    .restart local v4    # "state":Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;
    .restart local v5    # "subState":Lcom/smartisan/feedbackhelper/upload/UploadWorker$CompressSubstate;
    :cond_4
    :try_start_3
    iget-object v6, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    sget-object v7, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_TRANSMIT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .line 117
    invoke-virtual {v6, v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setState(Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)V

    .line 118
    sget-object v6, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPRESSING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    if-eq v4, v6, :cond_3

    .line 121
    const/4 v2, 0x1

    goto :goto_2

    .line 124
    .end local v4    # "state":Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 135
    :cond_5
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->startUploadJob()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private failwithException()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPRESS_FAILED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setState(Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)V

    .line 147
    sget-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->FAILED:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    invoke-virtual {p0, v0}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->onUploadFinished(Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;)V

    .line 148
    return-void
.end method

.method private getZipLogPath()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 151
    const-string v5, "yyyy-MM-dd_HH-mm-ss.SSSZ"

    iget-object v6, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    .line 152
    invoke-virtual {v6}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getCreateTime()Ljava/util/Date;

    move-result-object v6

    .line 151
    invoke-static {v5, v6}, Lcom/smartisan/feedbackhelper/utils/Util;->formatDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->createDate:Ljava/lang/String;

    .line 153
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v6}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getLogPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 154
    .local v2, "parentFile":Ljava/io/File;
    if-nez v2, :cond_0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 156
    .local v3, "parentPath":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v5}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getApVersion()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "apVersion_full":Ljava/lang/String;
    move-object v4, v0

    .line 160
    .local v4, "versionText":Ljava/lang/String;
    sget-object v5, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->AUTO:Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    iget-object v6, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v6}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getType()Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisan/feedbackhelper/utils/ComplainReport$Type;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 161
    const-string v5, "%s%s-%s-%s@%s.zip"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v4, v6, v8

    iget-object v7, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    .line 162
    invoke-virtual {v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getTag()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 163
    invoke-static {}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getInstance()Lcom/smartisan/feedbackhelper/utils/DeviceID;

    move-result-object v7

    iget-object v8, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mUploader:Lcom/smartisan/feedbackhelper/upload/ReliableUploader;

    invoke-virtual {v7, v8}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    sget-object v7, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->createDate:Ljava/lang/String;

    aput-object v7, v6, v11

    .line 161
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "logPath":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 154
    .end local v0    # "apVersion_full":Ljava/lang/String;
    .end local v1    # "logPath":Ljava/lang/String;
    .end local v3    # "parentPath":Ljava/lang/String;
    .end local v4    # "versionText":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 165
    .restart local v0    # "apVersion_full":Ljava/lang/String;
    .restart local v3    # "parentPath":Ljava/lang/String;
    .restart local v4    # "versionText":Ljava/lang/String;
    :cond_1
    const-string v5, "%s%s-%s-%s@%s.zip"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v4, v6, v8

    iget-object v7, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    .line 166
    invoke-virtual {v7}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getTag()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 167
    invoke-static {}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getInstance()Lcom/smartisan/feedbackhelper/utils/DeviceID;

    move-result-object v7

    iget-object v8, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mUploader:Lcom/smartisan/feedbackhelper/upload/ReliableUploader;

    invoke-virtual {v7, v8}, Lcom/smartisan/feedbackhelper/utils/DeviceID;->getId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    sget-object v7, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->createDate:Ljava/lang/String;

    aput-object v7, v6, v11

    .line 165
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "logPath":Ljava/lang/String;
    goto :goto_1
.end method

.method private isCompressed(Ljava/io/File;)Z
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 242
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "name":Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 244
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    .line 243
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "ext":Ljava/lang/String;
    const/4 v6, 0x6

    new-array v3, v6, [Ljava/lang/String;

    const-string v6, "gz"

    aput-object v6, v3, v5

    const-string v6, "zip"

    aput-object v6, v3, v4

    const/4 v6, 0x2

    const-string v7, "rar"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "7z"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string v7, "tgz"

    aput-object v7, v3, v6

    const/4 v6, 0x5

    const-string v7, "png"

    aput-object v7, v3, v6

    .line 246
    .local v3, "zipExts":[Ljava/lang/String;
    array-length v7, v3

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v2, v3, v6

    .line 247
    .local v2, "zipExt":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 250
    .end local v2    # "zipExt":Ljava/lang/String;
    :goto_1
    return v4

    .line 246
    .restart local v2    # "zipExt":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v2    # "zipExt":Ljava/lang/String;
    :cond_1
    move v4, v5

    .line 250
    goto :goto_1
.end method

.method private startUploadJob()V
    .locals 4

    .prologue
    .line 254
    const-string v1, "BugReportUploadWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startUploadJob : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getLogPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    const-string v1, "BugReportUploadWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty zip file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v3}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getLogPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v1, "UploadWorker"

    const-string v2, "Empty File"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->WAIT_USER_INPUT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setState(Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)V

    .line 262
    sget-object v1, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->FAILED:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    invoke-virtual {p0, v1}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->onUploadFinished(Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;)V

    .line 272
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getState()Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    move-result-object v1

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->TRANSMITTING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    if-eq v1, v2, :cond_1

    .line 269
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    sget-object v2, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->TRANSMITTING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v1, v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setState(Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)V

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mReportSender:Lcom/smartisan/feedbackhelper/upload/ReportSender;

    iget-object v2, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v1, v2}, Lcom/smartisan/feedbackhelper/upload/ReportSender;->sendReport(Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V

    goto :goto_0
.end method


.method public declared-synchronized cancel(Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;)V
    .locals 3
    .param p1, "reason"    # Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    if-nez v0, :cond_1

    .line 276
    const-string v0, "BugReportUploadWorker"

    const-string v1, "No uploading report can be canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 279
    :cond_1
    :try_start_1
    const-string v0, "BugReportUploadWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPRESSING:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getState()Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    sget-object v0, Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;->UPLOAD_DELETED:Lcom/smartisan/feedbackhelper/utils/Constants$ReturnCode;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->USER_DELETED_OUTBOX:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    .line 284
    :goto_1
    invoke-virtual {v1, v0}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setState(Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 283
    :cond_2
    :try_start_2
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->COMPRESSION_PAUSED:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public getCurrentUpload()Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    return-object v0
.end method

.method public onUploadFinished(Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;)V
    .locals 3
    .param p1, "result"    # Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    .prologue
    .line 294
    sget-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->SUCCESSFUL:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    if-ne p1, v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_COMPLETE:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setState(Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)V

    .line 299
    :goto_0
    sget-object v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_COMPLETE:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getState()Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_ARCHIVE:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setState(Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)V

    .line 301
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->ARCHIVED_FULL:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setState(Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)V

    .line 304
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getLogPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    .line 305
    invoke-virtual {v2}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->getScreenshotPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 304
    invoke-static {v0}, Lcom/smartisan/feedbackhelper/utils/Util;->removeFiles([Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mUploader:Lcom/smartisan/feedbackhelper/upload/ReliableUploader;

    iget-object v1, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    invoke-virtual {v0, v1, p1}, Lcom/smartisan/feedbackhelper/upload/ReliableUploader;->onUploadFinished(Lcom/smartisan/feedbackhelper/utils/ComplainReport;Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;)V

    .line 307
    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    sget-object v1, Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;->READY_TO_TRANSMIT:Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/utils/ComplainReport;->setState(Lcom/smartisan/feedbackhelper/utils/ComplainReport$State;)V

    goto :goto_0
.end method

.method public startUpload(Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
    .locals 3
    .param p1, "task"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Upload can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    const-string v0, "BugReportUploadWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startUpload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iput-object p1, p0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->mCurrentReport:Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    .line 55
    new-instance v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$1;

    invoke-direct {v0, p0}, Lcom/smartisan/feedbackhelper/upload/UploadWorker$1;-><init>(Lcom/smartisan/feedbackhelper/upload/UploadWorker;)V

    .line 59
    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/upload/UploadWorker$1;->start()V

    .line 60
    return-void
.end method
