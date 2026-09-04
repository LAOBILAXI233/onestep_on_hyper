.class public Lcom/smartisan/moreapps/download/AppDownloader;
.super Landroid/os/AsyncTask;
.source "AppDownloader.java"


.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/smartisan/moreapps/VersionInfo;",
        ">;"
    }
.end annotation


.field public static final APK_HOST2_NAME:Ljava/lang/String; = "dl2.smartisan.cn"

.field public static final APK_HOST_NAME:Ljava/lang/String; = "dl.smartisan.cn"

.field public static final APK_TEST_HOST_NAME:Ljava/lang/String; = "update.smartisanos.com"

.field private static final TAG:Ljava/lang/String; = "AppDownloader"


.field private mContext:Landroid/content/Context;

.field private mDownloadIdKey:Ljava/lang/String;

.field private mUpdateUrl:Ljava/lang/String;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/smartisan/moreapps/download/AppDownloader;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private isValidVersion(Lcom/smartisan/moreapps/VersionInfo;)Z
    .locals 8
    .param p1, "version"    # Lcom/smartisan/moreapps/VersionInfo;

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 120
    .local v2, "isValid":Z
    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/smartisan/moreapps/VersionInfo;->getUpdateUrl()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "urlStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 124
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 125
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "host":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "dl.smartisan.cn"

    .line 127
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "dl2.smartisan.cn"

    .line 128
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "update.smartisanos.com"

    .line 129
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 130
    :cond_0
    const/4 v2, 0x1

    .line 140
    .end local v1    # "host":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "urlStr":Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 132
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v3    # "url":Ljava/net/URL;
    .restart local v4    # "urlStr":Ljava/lang/String;
    :cond_2
    const-string v5, "AppDownloader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid download url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v1    # "host":Ljava/lang/String;
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method


.method public DownloadApk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v4

    .line 53
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_ID"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisan/moreapps/download/AppDownloader;->mDownloadIdKey:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/smartisan/moreapps/download/AppDownloader;->mUpdateUrl:Ljava/lang/String;

    .line 57
    iget-object v5, p0, Lcom/smartisan/moreapps/download/AppDownloader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/smartisan/moreapps/SmartisanAppPref;->getInstance(Landroid/content/Context;)Lcom/smartisan/moreapps/SmartisanAppPref;

    move-result-object v3

    .line 58
    .local v3, "sharePreFerence":Lcom/smartisan/moreapps/SmartisanAppPref;
    iget-object v5, p0, Lcom/smartisan/moreapps/download/AppDownloader;->mDownloadIdKey:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/smartisan/moreapps/SmartisanAppPref;->getDownloadId(Ljava/lang/String;)J

    move-result-wide v0

    .line 59
    .local v0, "downloadId":J
    iget-object v5, p0, Lcom/smartisan/moreapps/download/AppDownloader;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v1}, Lcom/smartisan/moreapps/download/DownloaderUtils;->isDownloadProcessing(Landroid/content/Context;J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 63
    new-array v5, v4, [Ljava/lang/Void;

    invoke-virtual {p0, v5}, Lcom/smartisan/moreapps/download/AppDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    iget-object v5, p0, Lcom/smartisan/moreapps/download/AppDownloader;->mContext:Landroid/content/Context;

    sget v6, Lcom/smartisan/libmoreapps/R$string;->downloading_message:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "downloadMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/smartisan/moreapps/download/AppDownloader;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 68
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/smartisan/moreapps/VersionInfo;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 78
    const/4 v3, 0x0

    .line 79
    .local v3, "version":Lcom/smartisan/moreapps/VersionInfo;
    new-instance v2, Lcom/smartisan/moreapps/HttpData;

    invoke-direct {v2}, Lcom/smartisan/moreapps/HttpData;-><init>()V

    .line 83
    .local v2, "httpdata":Lcom/smartisan/moreapps/HttpData;
    :try_start_0
    iget-object v5, p0, Lcom/smartisan/moreapps/download/AppDownloader;->mUpdateUrl:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/smartisan/moreapps/HttpData;->executeHttpGetWithRetry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 86
    iget-object v5, p0, Lcom/smartisan/moreapps/download/AppDownloader;->mContext:Landroid/content/Context;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/smartisan/moreapps/VersionInfo;->parse(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/smartisan/moreapps/VersionInfo;

    move-result-object v3

    .line 87
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lcom/smartisan/moreapps/download/AppDownloader;->isValidVersion(Lcom/smartisan/moreapps/VersionInfo;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 88
    :cond_0
    const-string v6, "AppDownloader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid version info:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_1

    const-string v5, ""

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "data":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 88
    .restart local v0    # "data":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/smartisan/moreapps/VersionInfo;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 92
    .end local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "AppDownloader"

    const-string v6, "update error "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":Ljava/lang/String;
    :cond_2
    move-object v4, v3

    .line 96
    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/smartisan/moreapps/download/AppDownloader;->doInBackground([Ljava/lang/Void;)Lcom/smartisan/moreapps/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/smartisan/moreapps/VersionInfo;)V
    .locals 4
    .param p1, "version"    # Lcom/smartisan/moreapps/VersionInfo;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 102
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/smartisan/moreapps/download/AppDownloader;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/smartisan/moreapps/download/AppDownloader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/smartisan/moreapps/VersionInfo;->getUpdateUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartisan/moreapps/download/DownloaderUtils;->download(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 106
    .local v0, "downloadId":J
    iget-object v2, p0, Lcom/smartisan/moreapps/download/AppDownloader;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/smartisan/moreapps/SmartisanAppPref;->getInstance(Landroid/content/Context;)Lcom/smartisan/moreapps/SmartisanAppPref;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisan/moreapps/download/AppDownloader;->mDownloadIdKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/smartisan/moreapps/SmartisanAppPref;->setDownloadId(Ljava/lang/String;J)V

    .line 108
    .end local v0    # "downloadId":J
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/smartisan/moreapps/VersionInfo;

    invoke-virtual {p0, p1}, Lcom/smartisan/moreapps/download/AppDownloader;->onPostExecute(Lcom/smartisan/moreapps/VersionInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 74
    return-void
.end method
