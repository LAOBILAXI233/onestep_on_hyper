.class public Lcom/smartisan/feedbackhelper/upload/ReliableUploader;
.super Landroid/app/Service;
.source "ReliableUploader.java"


.field public static final tag:Ljava/lang/String; = "BugReportReliableUploader"


.field private mLastUploadResult:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

.field private mUploadWorker:Lcom/smartisan/feedbackhelper/upload/UploadWorker;


.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    sget-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->SUCCESSFUL:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReliableUploader;->mLastUploadResult:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    return-void
.end method

.method private declared-synchronized startNextUpload(Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
    .locals 2
    .param p1, "report"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    const-string v0, "BugReportReliableUploader"

    const-string v1, "startUpload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReliableUploader;->mUploadWorker:Lcom/smartisan/feedbackhelper/upload/UploadWorker;

    invoke-virtual {v0, p1}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->startUpload(Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


.method public declared-synchronized getCurrentUpload()Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReliableUploader;->mUploadWorker:Lcom/smartisan/feedbackhelper/upload/UploadWorker;

    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;->getCurrentUpload()Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "BugReportReliableUploader"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 32
    new-instance v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker;

    invoke-direct {v0, p0}, Lcom/smartisan/feedbackhelper/upload/UploadWorker;-><init>(Lcom/smartisan/feedbackhelper/upload/ReliableUploader;)V

    iput-object v0, p0, Lcom/smartisan/feedbackhelper/upload/ReliableUploader;->mUploadWorker:Lcom/smartisan/feedbackhelper/upload/UploadWorker;

    .line 33
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "BugReportReliableUploader"

    const-string v1, "Reliable Upload onDestroy()."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 99
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 36
    const-string v1, "BugReportReliableUploader"

    const-string v2, "onStartCommand()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "report":Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    if-eqz p1, :cond_0

    .line 41
    const-string v1, "COMPLAINT_REPORT"

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "report":Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    check-cast v0, Lcom/smartisan/feedbackhelper/utils/ComplainReport;

    .line 45
    .restart local v0    # "report":Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    :cond_0
    if-eqz v0, :cond_1

    .line 46
    invoke-direct {p0, v0}, Lcom/smartisan/feedbackhelper/upload/ReliableUploader;->startNextUpload(Lcom/smartisan/feedbackhelper/utils/ComplainReport;)V

    .line 50
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected onUploadFinished(Lcom/smartisan/feedbackhelper/utils/ComplainReport;Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;)V
    .locals 3
    .param p1, "task"    # Lcom/smartisan/feedbackhelper/utils/ComplainReport;
    .param p2, "result"    # Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    .prologue
    .line 59
    const-string v0, "BugReportReliableUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUploadFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v0, Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;->FAILED:Lcom/smartisan/feedbackhelper/upload/UploadWorker$Result;

    if-ne v0, p2, :cond_0

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "smartisan.intent.action.BUGREPORT.REPORT_UPLOAD_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/smartisan/feedbackhelper/upload/ReliableUploader;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    new-instance v0, Lcom/smartisan/feedbackhelper/upload/ReliableUploader$1;

    invoke-direct {v0, p0}, Lcom/smartisan/feedbackhelper/upload/ReliableUploader$1;-><init>(Lcom/smartisan/feedbackhelper/upload/ReliableUploader;)V

    .line 74
    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/upload/ReliableUploader$1;->start()V

    .line 89
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "smartisan.intent.action.BUGREPORT.REPORT_UPLOAD_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/smartisan/feedbackhelper/upload/ReliableUploader;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    new-instance v0, Lcom/smartisan/feedbackhelper/upload/ReliableUploader$2;

    invoke-direct {v0, p0}, Lcom/smartisan/feedbackhelper/upload/ReliableUploader$2;-><init>(Lcom/smartisan/feedbackhelper/upload/ReliableUploader;)V

    .line 87
    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/upload/ReliableUploader$2;->start()V

    goto :goto_0
.end method
