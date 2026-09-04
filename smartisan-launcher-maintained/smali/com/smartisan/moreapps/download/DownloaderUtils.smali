.class public Lcom/smartisan/moreapps/download/DownloaderUtils;
.super Ljava/lang/Object;
.source "DownloaderUtils.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Landroid/content/Context;Ljava/lang/String;)J
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 26
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 27
    .local v8, "resource":Landroid/net/Uri;
    new-instance v7, Landroid/app/DownloadManager$Request;

    invoke-direct {v7, v8}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 28
    .local v7, "request":Landroid/app/DownloadManager$Request;
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 29
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 30
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    .line 32
    .local v6, "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 31
    invoke-virtual {v6, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "mimeString":Ljava/lang/String;
    invoke-virtual {v7, v3}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 34
    invoke-virtual {v7, v10}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 35
    invoke-virtual {v7, v10}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 36
    invoke-static {v8}, Lcom/smartisan/moreapps/download/DownloaderUtils;->getDownloadApkFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "filename":Ljava/lang/String;
    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v7, v9, v2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 38
    const-string v9, "download"

    .line 39
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 40
    .local v0, "downloadManager":Landroid/app/DownloadManager;
    const-wide/16 v4, 0x0

    .line 42
    .local v4, "id":J
    :try_start_0
    invoke-virtual {v0, v7}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 46
    :goto_0
    return-wide v4

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    sget v9, Lcom/smartisan/libmoreapps/R$string;->system_downloader_error:I

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static getDownloadApkFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "resource"    # Landroid/net/Uri;

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "filename":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    const-string v0, "update.apk"

    .line 59
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDownloadStatus(Landroid/content/Context;J)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadId"    # J

    .prologue
    .line 92
    const/4 v3, -0x1

    .line 93
    .local v3, "status":I
    const-string v4, "download"

    .line 94
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 95
    .local v1, "downloadManager":Landroid/app/DownloadManager;
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 96
    .local v2, "query":Landroid/app/DownloadManager$Query;
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 97
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 100
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const-string v4, "status"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 104
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_1
    return v3

    .line 104
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public static isDownloadProcessing(Landroid/content/Context;J)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadId"    # J

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "result":Z
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    if-eqz p0, :cond_1

    .line 66
    invoke-static {p0, p1, p2}, Lcom/smartisan/moreapps/download/DownloaderUtils;->getDownloadStatus(Landroid/content/Context;J)I

    move-result v1

    .line 67
    .local v1, "status":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 69
    :cond_0
    const/4 v0, 0x1

    .line 72
    .end local v1    # "status":I
    :cond_1
    return v0
.end method

.method public static isDownloading(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    new-instance v3, Lcom/smartisan/moreapps/AppInfoList;

    invoke-direct {v3}, Lcom/smartisan/moreapps/AppInfoList;-><init>()V

    .line 78
    .local v3, "list":Lcom/smartisan/moreapps/AppInfoList;
    iget-object v4, v3, Lcom/smartisan/moreapps/AppInfoList;->mPackageNames:[Ljava/lang/String;

    .line 79
    .local v4, "pkgName":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_1

    .line 80
    invoke-static {p0}, Lcom/smartisan/moreapps/download/DownloaderPref;->getInstance(Landroid/content/Context;)Lcom/smartisan/moreapps/download/DownloaderPref;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v4, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisan/moreapps/download/DownloaderPref;->getDownloadId(Ljava/lang/String;)J

    move-result-wide v0

    .line 81
    .local v0, "downloadId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    if-eqz p0, :cond_0

    .line 82
    invoke-static {p0, v0, v1}, Lcom/smartisan/moreapps/download/DownloaderUtils;->getDownloadStatus(Landroid/content/Context;J)I

    move-result v5

    .line 83
    .local v5, "status":I
    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 84
    const/4 v6, 0x1

    .line 88
    .end local v0    # "downloadId":J
    .end local v5    # "status":I
    :goto_1
    return v6

    .line 79
    .restart local v0    # "downloadId":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "downloadId":J
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method
