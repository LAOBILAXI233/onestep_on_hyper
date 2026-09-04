.class public Lcom/smartisan/moreapps/AppsView$GetDataTask;
.super Landroid/os/AsyncTask;
.source "AppsView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisan/moreapps/AppsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/smartisan/moreapps/AppInfoList$AppInfo;",
        ">;>;"
    }
.end annotation


.field private mContext:Landroid/content/Context;

.field private mLatestVersionCode:I


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 294
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mLatestVersionCode:I

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mContext:Landroid/content/Context;

    .line 295
    iput-object p1, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mContext:Landroid/content/Context;

    .line 296
    return-void
.end method

.method private isNeedUpdate()Z
    .locals 10

    .prologue
    .line 363
    const/4 v4, 0x0

    .line 366
    .local v4, "update":Z
    const/4 v5, 0x0

    .line 368
    .local v5, "version":Lcom/smartisan/moreapps/VersionInfo;
    :try_start_0
    iget-object v6, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/smartisan/moreapps/SmartisanAppPref;->getInstance(Landroid/content/Context;)Lcom/smartisan/moreapps/SmartisanAppPref;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisan/moreapps/SmartisanAppPref;->getAppListVersion()I

    move-result v0

    .line 371
    .local v0, "currentVersion":I
    new-instance v3, Lcom/smartisan/moreapps/HttpData;

    invoke-direct {v3}, Lcom/smartisan/moreapps/HttpData;-><init>()V

    .line 372
    .local v3, "httpdata":Lcom/smartisan/moreapps/HttpData;
    const-string v6, "http://setting.smartisan.com/config/app/i18n_version"

    invoke-virtual {v3, v6}, Lcom/smartisan/moreapps/HttpData;->executeHttpGetWithRetry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 375
    iget-object v6, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mContext:Landroid/content/Context;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/smartisan/moreapps/VersionInfo;->parse(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/smartisan/moreapps/VersionInfo;

    move-result-object v5

    .line 376
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/smartisan/moreapps/VersionInfo;->getCode()I

    move-result v6

    if-le v6, v0, :cond_0

    .line 377
    const/4 v4, 0x1

    .line 379
    :cond_0
    invoke-virtual {v5}, Lcom/smartisan/moreapps/VersionInfo;->getCode()I

    move-result v6

    iput v6, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mLatestVersionCode:I

    .line 380
    iget-object v6, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/smartisan/moreapps/SmartisanAppPref;->getInstance(Landroid/content/Context;)Lcom/smartisan/moreapps/SmartisanAppPref;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/smartisan/moreapps/SmartisanAppPref;->setListCheckTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v0    # "currentVersion":I
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "httpdata":Lcom/smartisan/moreapps/HttpData;
    :cond_1
    :goto_0
    return v4

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "AppsView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to get verion information, exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveData(Ljava/lang/String;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    iget-object v6, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    .line 401
    .local v5, "path":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v2, "fileFolder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 403
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 406
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "string.xml"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 408
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 411
    :cond_3
    const/4 v3, 0x0

    .line 413
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 416
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 421
    if-eqz v4, :cond_5

    .line 423
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 426
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 424
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 426
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 418
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 419
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 421
    if-eqz v3, :cond_0

    .line 423
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 424
    :catch_2
    move-exception v0

    .line 425
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 421
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_4

    .line 423
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 426
    :cond_4
    :goto_3
    throw v6

    .line 424
    :catch_3
    move-exception v0

    .line 425
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 421
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 418
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_5
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 290
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/smartisan/moreapps/AppsView$GetDataTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "paras"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/moreapps/AppInfoList$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 300
    invoke-direct {p0}, Lcom/smartisan/moreapps/AppsView$GetDataTask;->isNeedUpdate()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 302
    iget-object v8, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/smartisan/moreapps/SmartisanAppPref;->getInstance(Landroid/content/Context;)Lcom/smartisan/moreapps/SmartisanAppPref;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/smartisan/moreapps/SmartisanAppPref;->setUpdateFlag(Z)V

    .line 305
    iget-object v8, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/smartisan/moreapps/SmartisanAppUtils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-object v7

    .line 311
    :cond_1
    const/4 v6, 0x0

    .line 312
    .local v6, "uri":Ljava/lang/String;
    new-instance v2, Lcom/smartisan/moreapps/HttpData;

    invoke-direct {v2}, Lcom/smartisan/moreapps/HttpData;-><init>()V

    .line 314
    .local v2, "httpdata":Lcom/smartisan/moreapps/HttpData;
    const-string v8, "http://setting.smartisan.com/config/app/i18n"

    invoke-virtual {v2, v8}, Lcom/smartisan/moreapps/HttpData;->executeHttpGetWithRetry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "dataLink":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 317
    .local v3, "link":Lorg/json/JSONObject;
    const-string v8, "uri"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 322
    .end local v3    # "link":Lorg/json/JSONObject;
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 324
    iget-object v8, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/smartisan/moreapps/SmartisanAppUtils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 327
    invoke-virtual {v2, v6}, Lcom/smartisan/moreapps/HttpData;->executeHttpGetWithRetry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "listData":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/smartisan/moreapps/AppsView$GetDataTask;->saveData(Ljava/lang/String;)V

    .line 332
    new-instance v5, Lcom/smartisan/moreapps/AppListParser;

    iget-object v7, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, v4, v10}, Lcom/smartisan/moreapps/AppListParser;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 333
    .local v5, "parser":Lcom/smartisan/moreapps/AppListParser;
    invoke-virtual {v5}, Lcom/smartisan/moreapps/AppListParser;->parse()Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_0

    .line 318
    .end local v4    # "listData":Ljava/lang/String;
    .end local v5    # "parser":Lcom/smartisan/moreapps/AppListParser;
    :catch_0
    move-exception v1

    .line 319
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 336
    .end local v0    # "dataLink":Ljava/lang/String;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "httpdata":Lcom/smartisan/moreapps/HttpData;
    .end local v6    # "uri":Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/smartisan/moreapps/SmartisanAppPref;->getInstance(Landroid/content/Context;)Lcom/smartisan/moreapps/SmartisanAppPref;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/smartisan/moreapps/SmartisanAppPref;->setUpdateFlag(Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 290
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/smartisan/moreapps/AppsView$GetDataTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/moreapps/AppInfoList$AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/moreapps/AppInfoList$AppInfo;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 345
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 347
    iget v0, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mLatestVersionCode:I

    if-lez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisan/moreapps/SmartisanAppPref;->getInstance(Landroid/content/Context;)Lcom/smartisan/moreapps/SmartisanAppPref;

    move-result-object v0

    iget v1, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mLatestVersionCode:I

    invoke-virtual {v0, v1}, Lcom/smartisan/moreapps/SmartisanAppPref;->setAppListVersion(I)V

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/smartisan/moreapps/AppsView$GetDataTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisan/moreapps/SmartisanAppPref;->getInstance(Landroid/content/Context;)Lcom/smartisan/moreapps/SmartisanAppPref;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisan/moreapps/SmartisanAppPref;->setUpdateFlag(Z)V

    .line 354
    :cond_1
    return-void
.end method
