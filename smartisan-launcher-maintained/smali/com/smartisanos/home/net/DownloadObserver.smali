.class public Lcom/smartisanos/home/net/DownloadObserver;
.super Landroid/database/ContentObserver;
.source "DownloadObserver.java"


.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 31
    return-void
.end method

.method private ChangeCellIconViewStatus()V
    .locals 10

    .prologue
    .line 43
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->getUnSuccessDL()Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, "appInDownloadList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/handler/DLRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/handler/DLRecord;

    .line 46
    .local v2, "record":Lcom/smartisanos/launcher/data/handler/DLRecord;
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v4

    iget-wide v6, v2, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    invoke-static {v4, v6, v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(Landroid/content/Context;J)Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;

    move-result-object v1

    .line 47
    .local v1, "downloadStatus":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    if-nez v1, :cond_0

    .line 48
    iget v4, v2, Lcom/smartisanos/launcher/data/handler/DLRecord;->id:I

    invoke-static {v4}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->removeRecordById(I)V

    goto :goto_0

    .line 51
    :cond_0
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_1

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "observer "

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, v2, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " taskName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/smartisanos/home/net/DownloadObserver;->handleAppIconStatus(Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;Lcom/smartisanos/launcher/data/handler/DLRecord;)V

    goto :goto_0

    .line 57
    .end local v1    # "downloadStatus":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    .end local v2    # "record":Lcom/smartisanos/launcher/data/handler/DLRecord;
    :cond_2
    return-void
.end method

.method private convertStatusToTheme(I)I
    .locals 1
    .param p1, "DownLoadManagerStatus"    # I

    .prologue
    .line 166
    const/16 v0, 0x65

    .line 167
    .local v0, "ret":I
    sparse-switch p1, :sswitch_data_0

    .line 180
    :goto_0
    return v0

    .line 170
    :sswitch_0
    const/16 v0, 0x68

    .line 171
    goto :goto_0

    .line 174
    :sswitch_1
    const/16 v0, 0x67

    .line 175
    goto :goto_0

    .line 177
    :sswitch_2
    const/16 v0, 0x69

    goto :goto_0

    .line 167
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_2
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleAppIconStatus(Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;Lcom/smartisanos/launcher/data/handler/DLRecord;)V
    .locals 5
    .param p1, "downloadStatus"    # Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    .param p2, "record"    # Lcom/smartisanos/launcher/data/handler/DLRecord;

    .prologue
    const/4 v4, 0x2

    .line 71
    iget v1, p1, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->status:I

    .line 72
    .local v1, "status":I
    iput v1, p2, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_status:I

    .line 73
    iget v2, p2, Lcom/smartisanos/launcher/data/handler/DLRecord;->id:I

    int-to-long v2, v2

    invoke-direct {p0, v2, v3, v1}, Lcom/smartisanos/home/net/DownloadObserver;->updateDLRecoreStatus(JI)V

    .line 75
    iget v2, p2, Lcom/smartisanos/launcher/data/handler/DLRecord;->type:I

    if-ne v2, v4, :cond_0

    .line 76
    iget-object v2, p2, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/smartisanos/home/net/DownloadObserver;->convertStatusToTheme(I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/smartisanos/home/net/DownloadObserver;->updateThemeStatus(Ljava/lang/String;I)V

    .line 79
    :cond_0
    iget v0, p1, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->reason:I

    .line 80
    .local v0, "reason":I
    sparse-switch v1, :sswitch_data_0

    .line 123
    :cond_1
    :goto_0
    :sswitch_0
    return-void

    .line 86
    :sswitch_1
    iget-object v2, p2, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    invoke-direct {p0, v2, v3}, Lcom/smartisanos/home/net/DownloadObserver;->setViewIconState(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    goto :goto_0

    .line 94
    :sswitch_2
    if-nez v0, :cond_2

    .line 96
    iget-object v2, p2, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->DOWNLOADING:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    invoke-direct {p0, v2, v3}, Lcom/smartisanos/home/net/DownloadObserver;->setViewIconState(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    .line 99
    :cond_2
    iget v2, p2, Lcom/smartisanos/launcher/data/handler/DLRecord;->type:I

    if-ne v2, v4, :cond_1

    .line 100
    iget-object v2, p2, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/smartisanos/home/net/DownloadObserver;->sendProgressIntent(Ljava/lang/String;Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;)V

    goto :goto_0

    .line 105
    :sswitch_3
    iget-object v2, p2, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    invoke-direct {p0, v2, v3}, Lcom/smartisanos/home/net/DownloadObserver;->setViewIconState(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    .line 109
    invoke-direct {p0}, Lcom/smartisanos/home/net/DownloadObserver;->hasDownloadingRecord()Z

    move-result v2

    if-nez v2, :cond_1

    .line 110
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->unregisterDownloadObserver()V

    goto :goto_0

    .line 114
    :sswitch_4
    iget-object v2, p2, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    sget-object v3, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    invoke-direct {p0, v2, v3}, Lcom/smartisanos/home/net/DownloadObserver;->setViewIconState(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    .line 118
    invoke-direct {p0}, Lcom/smartisanos/home/net/DownloadObserver;->hasDownloadingRecord()Z

    move-result v2

    if-nez v2, :cond_1

    .line 119
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->unregisterDownloadObserver()V

    goto :goto_0

    .line 80
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method private hasDownloadingRecord()Z
    .locals 6

    .prologue
    .line 137
    invoke-static {}, Lcom/smartisanos/home/net/DownloadSupervisor;->getUnSuccessDL()Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "dlRecords":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/handler/DLRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/handler/DLRecord;

    .line 139
    .local v2, "dr":Lcom/smartisanos/launcher/data/handler/DLRecord;
    iget-wide v4, v2, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    invoke-static {v4, v5}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(J)I

    move-result v1

    .line 141
    .local v1, "downloadStatus":I
    const/16 v4, 0x8

    if-ne v1, v4, :cond_1

    const/16 v4, 0x10

    if-eq v1, v4, :cond_0

    .line 143
    :cond_1
    const/4 v3, 0x1

    .line 146
    .end local v1    # "downloadStatus":I
    .end local v2    # "dr":Lcom/smartisanos/launcher/data/handler/DLRecord;
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private sendProgressIntent(Ljava/lang/String;Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;)V
    .locals 6
    .param p1, "themeId"    # Ljava/lang/String;
    .param p2, "downloadStatus"    # Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;

    .prologue
    .line 150
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 151
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v1

    .line 153
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/launcher/theme/Theme;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-virtual {p2}, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->downloadProgress()I

    move-result v3

    int-to-double v4, v3

    .line 152
    invoke-static {v1, v2, v4, v5}, Lcom/smartisanos/launcher/provider/ThemeDownloadTriggerProvider;->updateDownloadProgress(Landroid/content/Context;Ljava/lang/String;D)V

    .line 156
    :cond_0
    return-void
.end method

.method private setViewIconState(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "dowloadState"    # Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .prologue
    .line 60
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->setCellDownloadStateByPkgName(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    .line 61
    return-void
.end method

.method private updateDLRecoreStatus(JI)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "status"    # I

    .prologue
    .line 126
    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 127
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "dl_status"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "where":Ljava/lang/String;
    const-string v2, "download_record"

    invoke-static {v2, v0, v1}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method private updateThemeStatus(Ljava/lang/String;I)V
    .locals 1
    .param p1, "themeId"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 159
    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .line 160
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-eqz v0, :cond_0

    .line 161
    iput p2, v0, Lcom/smartisanos/launcher/theme/Theme;->status:I

    .line 163
    :cond_0
    return-void
.end method


.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 36
    invoke-direct {p0}, Lcom/smartisanos/home/net/DownloadObserver;->ChangeCellIconViewStatus()V

    .line 37
    return-void
.end method
