.class public Lcom/smartisanos/home/net/NetStatusUtil;
.super Ljava/lang/Object;
.source "NetStatusUtil.java"


.field private static final DOWNLOAD_CONTENT_URI:Landroid/net/Uri;

.field private static mAppList:[Lcom/smartisanos/home/apps/EmbeddedApp;

.field private static mDownloadObserver:Lcom/smartisanos/home/net/DownloadObserver;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->EMBEDDED_APPS:[Lcom/smartisanos/home/apps/EmbeddedApp;

    sput-object v0, Lcom/smartisanos/home/net/NetStatusUtil;->mAppList:[Lcom/smartisanos/home/apps/EmbeddedApp;

    .line 33
    const-string v0, "content://downloads/my_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/net/NetStatusUtil;->DOWNLOAD_CONTENT_URI:Landroid/net/Uri;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCellularConnected()Z
    .locals 5

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, "connected":Z
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v3

    if-nez v3, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v1

    .line 220
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v3

    const-string v4, "connectivity"

    .line 221
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 222
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 224
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0
.end method

.method public static isEnableCellularDownload()Z
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_CELLULAR:Z

    return v0
.end method

.method public static isEnableDownload()Z
    .locals 4

    .prologue
    .line 171
    const/4 v3, 0x0

    .line 172
    .local v3, "netStatus":Z
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isWifiConnected()Z

    move-result v2

    .line 173
    .local v2, "isWifiOk":Z
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isCellularConnected()Z

    move-result v0

    .line 174
    .local v0, "isCellularOk":Z
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isEnableCellularDownload()Z

    move-result v1

    .line 176
    .local v1, "isEnableCellularDownload":Z
    if-nez v2, :cond_1

    .line 177
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 178
    const/4 v3, 0x1

    .line 183
    :cond_0
    :goto_0
    return v3

    .line 181
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private static isInDownloadManagerApp(Ljava/lang/String;)Z
    .locals 2
    .param p0, "taskName"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {p0}, Lcom/smartisanos/home/net/DownloadSupervisor;->getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v0

    .line 139
    .local v0, "downloadRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    if-eqz v0, :cond_0

    .line 140
    const/4 v1, 0x1

    .line 142
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isNetworkConnected()Z
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "connected":Z
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isCellularConnected()Z

    move-result v0

    .line 203
    if-nez v0, :cond_0

    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    :cond_0
    const/4 v1, 0x1

    .line 206
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiConnected()Z
    .locals 5

    .prologue
    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, "connected":Z
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v3

    if-nez v3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v1

    .line 240
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v3

    const-string v4, "connectivity"

    .line 241
    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 242
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 243
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    goto :goto_0
.end method

.method public static registerDownloadObserver()V
    .locals 4

    .prologue
    .line 37
    sget-object v0, Lcom/smartisanos/home/net/NetStatusUtil;->mDownloadObserver:Lcom/smartisanos/home/net/DownloadObserver;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/smartisanos/home/net/DownloadObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/home/net/DownloadObserver;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/smartisanos/home/net/NetStatusUtil;->mDownloadObserver:Lcom/smartisanos/home/net/DownloadObserver;

    .line 39
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/home/net/NetStatusUtil;->DOWNLOAD_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    sget-object v3, Lcom/smartisanos/home/net/NetStatusUtil;->mDownloadObserver:Lcom/smartisanos/home/net/DownloadObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    :cond_0
    return-void
.end method

.method public static resumeAllDownloadingAppDownload()V
    .locals 8

    .prologue
    .line 56
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isEnableCellularDownload()Z

    move-result v3

    if-nez v3, :cond_1

    .line 69
    .local v0, "appdIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_0
    return-void

    .line 59
    .end local v0    # "appdIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->isNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-static {}, Lcom/smartisanos/home/net/NetStatusUtil;->retriveDownloadingAppDownloadId()Ljava/util/List;

    move-result-object v0

    .line 63
    .restart local v0    # "appdIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 64
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(J)I

    move-result v2

    .line 65
    .local v2, "status":I
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 66
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v5

    invoke-static {v4}, Lcom/smartisanos/home/net/DownloadSupervisor;->resumeDownload([J)Z

    goto :goto_0
.end method

.method public static retriveDownloadingAppDownloadId()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, "appDownloadIdArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v6, Lcom/smartisanos/home/net/NetStatusUtil;->mAppList:[Lcom/smartisanos/home/apps/EmbeddedApp;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v0, v6, v5

    .line 107
    .local v0, "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    invoke-virtual {v0}, Lcom/smartisanos/home/apps/EmbeddedApp;->pkg()Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "pkgName":Ljava/lang/String;
    invoke-static {v4}, Lcom/smartisanos/home/net/NetStatusUtil;->returnAppDownloadingId(Ljava/lang/String;)J

    move-result-wide v2

    .line 109
    .local v2, "downloadId":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-lez v8, :cond_0

    .line 110
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    .end local v2    # "downloadId":J
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static returnAllDownloadRecord()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/handler/DLRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v4, "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/handler/DLRecord;>;"
    sget-object v7, Lcom/smartisanos/home/net/NetStatusUtil;->mAppList:[Lcom/smartisanos/home/apps/EmbeddedApp;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_1

    aget-object v0, v7, v6

    .line 79
    .local v0, "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    invoke-virtual {v0}, Lcom/smartisanos/home/apps/EmbeddedApp;->pkg()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "pkgName":Ljava/lang/String;
    invoke-static {v1}, Lcom/smartisanos/home/net/NetStatusUtil;->isInDownloadManagerApp(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 81
    invoke-static {v1}, Lcom/smartisanos/home/net/NetStatusUtil;->returnAppDownloadingId(Ljava/lang/String;)J

    move-result-wide v2

    .line 82
    .local v2, "downloadId":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-lez v9, :cond_0

    .line 83
    new-instance v5, Lcom/smartisanos/launcher/data/handler/DLRecord;

    invoke-direct {v5}, Lcom/smartisanos/launcher/data/handler/DLRecord;-><init>()V

    .line 84
    .local v5, "tmp":Lcom/smartisanos/launcher/data/handler/DLRecord;
    iput-wide v2, v5, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .line 85
    iput-object v1, v5, Lcom/smartisanos/launcher/data/handler/DLRecord;->taskName:Ljava/lang/String;

    .line 86
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v2    # "downloadId":J
    .end local v5    # "tmp":Lcom/smartisanos/launcher/data/handler/DLRecord;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private static returnAppDownloadingId(Ljava/lang/String;)J
    .locals 3
    .param p0, "taskName"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p0}, Lcom/smartisanos/home/net/DownloadSupervisor;->getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v2

    .line 124
    .local v2, "downloadRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    const-wide/16 v0, -0x1

    .line 125
    .local v0, "downloadId":J
    if-eqz v2, :cond_0

    .line 126
    iget-wide v0, v2, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .line 128
    :cond_0
    return-wide v0
.end method

.method public static returnAppInDownloadManager()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, "downloadingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v4, Lcom/smartisanos/home/net/NetStatusUtil;->mAppList:[Lcom/smartisanos/home/apps/EmbeddedApp;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 157
    .local v0, "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    invoke-virtual {v0}, Lcom/smartisanos/home/apps/EmbeddedApp;->pkg()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "pkgName":Ljava/lang/String;
    invoke-static {v2}, Lcom/smartisanos/home/net/NetStatusUtil;->isInDownloadManagerApp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "app":Lcom/smartisanos/home/apps/EmbeddedApp;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static unregisterDownloadObserver()V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lcom/smartisanos/home/net/NetStatusUtil;->mDownloadObserver:Lcom/smartisanos/home/net/DownloadObserver;

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/home/net/NetStatusUtil;->mDownloadObserver:Lcom/smartisanos/home/net/DownloadObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/home/net/NetStatusUtil;->mDownloadObserver:Lcom/smartisanos/home/net/DownloadObserver;

    goto :goto_0
.end method
