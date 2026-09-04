.class public Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;
.super Ljava/lang/Object;
.source "DownloadEmbeddedApp.java"


.field private static final log:Lcom/smartisanos/launcher/LOG;

.field public static mConfirmDialog:Landroid/app/AlertDialog;

.field private static mNetworkIsCloseNoticeDialog:Landroid/app/Dialog;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const-class v0, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->log:Lcom/smartisanos/launcher/LOG;

    .line 37
    sput-object v1, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 165
    sput-object v1, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->mNetworkIsCloseNoticeDialog:Landroid/app/Dialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/Dialog;

    .prologue
    .line 34
    sput-object p0, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->mNetworkIsCloseNoticeDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static handle(Lcom/smartisanos/launcher/data/ItemInfo;Landroid/app/Activity;)V
    .locals 19
    .param p0, "itemInfo"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    if-nez p0, :cond_0

    .line 41
    sget-object v15, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    const-string v17, "DownloadEmbeddedApp handle return by itemInfo is null"

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 45
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 46
    .local v11, "pkg":Ljava/lang/String;
    invoke-static {v11}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->getEmbeddedApp(Ljava/lang/String;)Lcom/smartisanos/home/apps/EmbeddedApp;

    move-result-object v2

    .line 47
    .local v2, "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    if-nez v2, :cond_1

    .line 48
    sget-object v15, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "no embedded app is matched. app ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v2}, Lcom/smartisanos/home/apps/EmbeddedApp;->taskName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/smartisanos/home/net/DownloadSupervisor;->getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v8

    .line 53
    .local v8, "downloadRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    const-wide/16 v6, -0x1

    .line 54
    .local v6, "downloadId":J
    if-eqz v8, :cond_2

    .line 55
    iget-wide v6, v8, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .line 57
    :cond_2
    const-wide/16 v16, 0x0

    cmp-long v15, v6, v16

    if-lez v15, :cond_5

    .line 59
    const/4 v5, 0x0

    .line 60
    .local v5, "dlViewStatus":Lcom/smartisanos/launcher/view/DownloadView$DownloadState;
    invoke-static {v6, v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(J)I

    move-result v13

    .line 61
    .local v13, "status":I
    sget-object v15, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "downloadId ==> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", status "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v10, 0x0

    .line 63
    .local v10, "needDownload":Z
    sparse-switch v13, :sswitch_data_0

    .line 105
    sget-object v15, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "unknown download status ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {v6, v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->cleanDownloadRecord(J)V

    .line 107
    sget-object v5, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .line 108
    const/4 v10, 0x1

    .line 112
    :cond_3
    :goto_1
    invoke-static {v11, v5}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->setCellDownloadStateByPkgName(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    .line 130
    if-nez v10, :cond_5

    .line 131
    sget-object v15, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    const-string v17, "needDownload false"

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 65
    :sswitch_0
    invoke-static {v6, v7}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->downloadFileExist(J)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 66
    invoke-static {v6, v7}, Lcom/smartisanos/launcher/actions/DownloadReceiver;->handleInstall(J)V

    .line 71
    :goto_2
    sget-object v5, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .line 72
    goto :goto_1

    .line 68
    :cond_4
    invoke-static {v6, v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->cleanDownloadRecord(J)V

    .line 69
    const/4 v10, 0x1

    goto :goto_2

    .line 75
    :sswitch_1
    invoke-static {v6, v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->resumeDownload(J)Z

    move-result v12

    .line 76
    .local v12, "resumed":Z
    if-nez v12, :cond_3

    .line 77
    sget-object v15, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "download status STATUS_PAUSED, resumed failed, downloadId ["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {v6, v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->cleanDownloadRecord(J)V

    .line 79
    sget-object v5, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->PAUSE:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .line 80
    const/4 v10, 0x1

    goto :goto_1

    .line 88
    .end local v12    # "resumed":Z
    :sswitch_2
    sget-object v15, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "downloading for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v2}, Lcom/smartisanos/home/apps/EmbeddedApp;->appId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v4

    .line 90
    .local v4, "application":Lcom/smartisanos/launcher/LauncherApplication;
    invoke-virtual {v2, v4}, Lcom/smartisanos/home/apps/EmbeddedApp;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "appName":Ljava/lang/String;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v15

    const v16, 0x7f080048

    invoke-virtual/range {v15 .. v16}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, "msg":Ljava/lang/String;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 93
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v15, v9, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    .line 94
    .local v14, "toast":Landroid/widget/Toast;
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 98
    .end local v3    # "appName":Ljava/lang/String;
    .end local v4    # "application":Lcom/smartisanos/launcher/LauncherApplication;
    .end local v9    # "msg":Ljava/lang/String;
    .end local v14    # "toast":Landroid/widget/Toast;
    :sswitch_3
    invoke-static {v6, v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->cleanDownloadRecord(J)V

    .line 99
    const/4 v10, 0x1

    .line 100
    sget-object v5, Lcom/smartisanos/launcher/view/DownloadView$DownloadState;->NEED_DOWNLOAD:Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .line 101
    goto/16 :goto_1

    .line 135
    .end local v5    # "dlViewStatus":Lcom/smartisanos/launcher/view/DownloadView$DownloadState;
    .end local v10    # "needDownload":Z
    .end local v13    # "status":I
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->showConfirmDialog(Lcom/smartisanos/home/apps/EmbeddedApp;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public static isAppDowloading(Ljava/lang/String;)Z
    .locals 10
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 266
    invoke-static {p0}, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->getEmbeddedApp(Ljava/lang/String;)Lcom/smartisanos/home/apps/EmbeddedApp;

    move-result-object v0

    .line 267
    .local v0, "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    if-nez v0, :cond_1

    .line 268
    sget-object v6, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no embedded app is matched. app ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    :goto_0
    return v5

    .line 272
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/home/apps/EmbeddedApp;->taskName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v1

    .line 273
    .local v1, "downloadRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    const-wide/16 v2, -0x1

    .line 274
    .local v2, "downloadId":J
    if-eqz v1, :cond_2

    .line 275
    iget-wide v2, v1, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .line 277
    :cond_2
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    .line 279
    invoke-static {v2, v3}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(J)I

    move-result v4

    .line 280
    .local v4, "status":I
    const/4 v7, 0x2

    if-eq v7, v4, :cond_3

    if-ne v6, v4, :cond_0

    :cond_3
    move v5, v6

    .line 281
    goto :goto_0
.end method

.method public static setCellDownloadStateByPkgName(Ljava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "cellViewState"    # Lcom/smartisanos/launcher/view/DownloadView$DownloadState;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    .line 146
    move-object v1, p1

    .line 147
    .local v1, "viewStatus":Lcom/smartisanos/launcher/view/DownloadView$DownloadState;
    move-object v0, p0

    .line 148
    .local v0, "pkg":Ljava/lang/String;
    new-instance v2, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$1;

    const/16 v3, 0x64

    invoke-direct {v2, v3, v0, v1}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$1;-><init>(ILjava/lang/String;Lcom/smartisanos/launcher/view/DownloadView$DownloadState;)V

    const/4 v3, 0x0

    .line 161
    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$1;->send(F)V

    .line 163
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "viewStatus":Lcom/smartisanos/launcher/view/DownloadView$DownloadState;
    :cond_0
    return-void
.end method

.method private static showConfirmDialog(Lcom/smartisanos/home/apps/EmbeddedApp;Landroid/app/Activity;)V
    .locals 11
    .param p0, "app"    # Lcom/smartisanos/home/apps/EmbeddedApp;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 199
    sget-object v7, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->mNetworkIsCloseNoticeDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_0

    .line 200
    sget-object v7, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    const-string v9, "mNetworkIsCloseNoticeDialog is not null, so return"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 203
    :cond_0
    sget-object v7, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->mConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_1

    .line 204
    sget-object v7, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    const-string v9, "mConfirmDialog is not null, so return"

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    const/4 v5, 0x0

    .line 209
    .local v5, "netStatus":Z
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isWifiConnected()Z

    move-result v3

    .line 210
    .local v3, "isWifiOk":Z
    if-nez v3, :cond_3

    .line 211
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isNetworkConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 212
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isEnableCellularDownload()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 213
    const/4 v5, 0x1

    .line 219
    :cond_2
    :goto_1
    if-nez v5, :cond_4

    .line 220
    sget-object v7, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "DEBUG"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MSG_REQUEST_DOWNLOAD_THEME return by ENABLE_CELLULAR ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/smartisanos/launcher/data/Constants;->ENABLE_CELLULAR:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "], netStatus ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {p1}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->showNetworkIsClosedDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 217
    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    .line 226
    :cond_4
    move-object v2, p0

    .line 227
    .local v2, "downloadApp":Lcom/smartisanos/home/apps/EmbeddedApp;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v4

    .line 228
    .local v4, "launcher":Lcom/smartisanos/home/Launcher;
    const v7, 0x7f080036

    invoke-virtual {v4, v7}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "confirmMsg":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/smartisanos/home/apps/EmbeddedApp;->name(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "appName":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 231
    new-instance v6, Landroid/view/ContextThemeWrapper;

    const v7, 0x103012b

    invoke-direct {v6, p1, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 232
    .local v6, "themeWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f08009e

    new-instance v9, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$8;

    invoke-direct {v9, v2}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$8;-><init>(Lcom/smartisanos/home/apps/EmbeddedApp;)V

    .line 234
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f080032

    new-instance v9, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$7;

    invoke-direct {v9}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$7;-><init>()V

    .line 245
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$6;

    invoke-direct {v8}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$6;-><init>()V

    .line 250
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$5;

    invoke-direct {v8}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$5;-><init>()V

    .line 255
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 261
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    sput-object v7, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->mConfirmDialog:Landroid/app/AlertDialog;

    .line 262
    sget-object v7, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private static showNetworkIsClosedDialog(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 168
    sget-object v1, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->mNetworkIsCloseNoticeDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 169
    sget-object v1, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->log:Lcom/smartisanos/launcher/LOG;

    const-string v2, "A140"

    const-string v3, "mNetworkIsCloseNoticeDialog is not null"

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v1, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->mNetworkIsCloseNoticeDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 196
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030128

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 174
    .local v0, "themeWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080097

    .line 175
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080031

    .line 176
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08004a

    new-instance v3, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$4;

    invoke-direct {v3}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$4;-><init>()V

    .line 177
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$3;

    invoke-direct {v2}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$3;-><init>()V

    .line 183
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$2;

    invoke-direct {v2}, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp$2;-><init>()V

    .line 188
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->mNetworkIsCloseNoticeDialog:Landroid/app/Dialog;

    .line 195
    sget-object v1, Lcom/smartisanos/launcher/actions/DownloadEmbeddedApp;->mNetworkIsCloseNoticeDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
