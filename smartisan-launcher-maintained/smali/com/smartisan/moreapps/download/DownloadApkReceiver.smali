.class public Lcom/smartisan/moreapps/download/DownloadApkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadApkReceiver.java"


.field public static final CONNECTIVITY_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final DOWNLOAD_COMPLETE_ACTION:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "action":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/smartisan/moreapps/SmartisanAppUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v15

    .line 31
    .local v15, "networkType":I
    const-string v18, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 32
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_6

    .line 33
    invoke-static/range {p1 .. p1}, Lcom/smartisan/moreapps/download/DownloadPending;->getDownloadTask(Landroid/content/Context;)[[Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, "downloadTask":[[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v18, 0x0

    aget-object v18, v5, v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 35
    const/16 v18, 0x0

    aget-object v18, v5, v18

    aget-object v16, v18, v10

    .line 36
    .local v16, "pkgName":Ljava/lang/String;
    const/16 v18, 0x1

    aget-object v18, v5, v18

    aget-object v12, v18, v10

    .line 37
    .local v12, "location":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 38
    new-instance v6, Lcom/smartisan/moreapps/download/AppDownloader;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/smartisan/moreapps/download/AppDownloader;-><init>(Landroid/content/Context;)V

    .line 39
    .local v6, "downloader":Lcom/smartisan/moreapps/download/AppDownloader;
    move-object/from16 v0, v16

    invoke-virtual {v6, v0, v12}, Lcom/smartisan/moreapps/download/AppDownloader;->DownloadApk(Ljava/lang/String;Ljava/lang/String;)Z

    .line 34
    .end local v6    # "downloader":Lcom/smartisan/moreapps/download/AppDownloader;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 43
    .end local v12    # "location":Ljava/lang/String;
    .end local v16    # "pkgName":Ljava/lang/String;
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/smartisan/moreapps/SmartisanAppPref;->getInstance(Landroid/content/Context;)Lcom/smartisan/moreapps/SmartisanAppPref;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisan/moreapps/SmartisanAppPref;->getUpdateFlag()Z

    move-result v13

    .line 44
    .local v13, "needUpdate":Z
    if-eqz v13, :cond_2

    .line 45
    new-instance v9, Lcom/smartisan/moreapps/AppsView$GetDataTask;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/smartisan/moreapps/AppsView$GetDataTask;-><init>(Landroid/content/Context;)V

    .line 46
    .local v9, "getTask":Lcom/smartisan/moreapps/AppsView$GetDataTask;
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/smartisan/moreapps/AppsView$GetDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 55
    .end local v5    # "downloadTask":[[Ljava/lang/String;
    .end local v9    # "getTask":Lcom/smartisan/moreapps/AppsView$GetDataTask;
    .end local v10    # "i":I
    .end local v13    # "needUpdate":Z
    :cond_2
    :goto_1
    const-string v18, "android.intent.action.DOWNLOAD_COMPLETE"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 56
    invoke-static/range {p1 .. p1}, Lcom/smartisan/moreapps/download/DownloaderUtils;->isDownloading(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 57
    invoke-static/range {p1 .. p1}, Lcom/smartisan/moreapps/download/DownloadPending;->clearDownloadInfo(Landroid/content/Context;)V

    .line 59
    :cond_3
    new-instance v17, Landroid/app/DownloadManager$Query;

    invoke-direct/range {v17 .. v17}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 60
    .local v17, "query":Landroid/app/DownloadManager$Query;
    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/app/DownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    .line 61
    const-string v18, "download"

    .line 62
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/DownloadManager;

    .line 63
    .local v4, "downloadManager":Landroid/app/DownloadManager;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    .line 64
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_5

    .line 66
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 67
    const-string v18, "local_filename"

    .line 68
    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 69
    .local v8, "fileIndex":I
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, "file":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v11, "installIntent":Landroid/content/Intent;
    const/high16 v18, 0x10000000

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v18

    const-string v19, "application/vnd.android.package-archive"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "fileIndex":I
    .end local v11    # "installIntent":Landroid/content/Intent;
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 81
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v4    # "downloadManager":Landroid/app/DownloadManager;
    .end local v17    # "query":Landroid/app/DownloadManager$Query;
    :cond_5
    return-void

    .line 48
    :cond_6
    if-nez v15, :cond_2

    .line 49
    invoke-static/range {p1 .. p1}, Lcom/smartisan/moreapps/download/DownloaderUtils;->isDownloading(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 50
    sget v18, Lcom/smartisan/libmoreapps/R$string;->network_error_message:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 51
    .local v14, "netOffMsg":Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v14, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 77
    .end local v14    # "netOffMsg":Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "downloadManager":Landroid/app/DownloadManager;
    .restart local v17    # "query":Landroid/app/DownloadManager$Query;
    :catchall_0
    move-exception v18

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v18
.end method
