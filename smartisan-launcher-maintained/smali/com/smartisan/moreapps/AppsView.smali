.class public Lcom/smartisan/moreapps/AppsView;
.super Landroid/widget/RelativeLayout;
.source "AppsView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisan/moreapps/AppsView$GetDataTask;
    }
.end annotation


.field private static final TAG:Ljava/lang/String; = "AppsView"


.field private mAppList:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field mDownloadApkReceiver:Lcom/smartisan/moreapps/download/DownloadApkReceiver;

.field private mListAdapter:Lcom/smartisan/moreapps/ProductsAdapter;

.field mPackageReceiver:Landroid/content/BroadcastReceiver;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/smartisan/moreapps/AppsView$1;

    invoke-direct {v0, p0}, Lcom/smartisan/moreapps/AppsView$1;-><init>(Lcom/smartisan/moreapps/AppsView;)V

    iput-object v0, p0, Lcom/smartisan/moreapps/AppsView;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 74
    iput-object p1, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/smartisan/moreapps/AppsView;->init()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/smartisan/moreapps/AppsView$1;

    invoke-direct {v0, p0}, Lcom/smartisan/moreapps/AppsView$1;-><init>(Lcom/smartisan/moreapps/AppsView;)V

    iput-object v0, p0, Lcom/smartisan/moreapps/AppsView;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Lcom/smartisan/moreapps/AppsView;->init()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/smartisan/moreapps/AppsView;)Lcom/smartisan/moreapps/ProductsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/smartisan/moreapps/AppsView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smartisan/moreapps/AppsView;->mListAdapter:Lcom/smartisan/moreapps/ProductsAdapter;

    return-object v0
.end method

.method private getFileContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 256
    const/4 v7, 0x0

    .line 286
    :goto_0
    return-object v7

    .line 259
    :cond_0
    const/4 v4, 0x0

    .line 260
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 261
    .local v2, "inBuffer":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 263
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    .end local v2    # "inBuffer":Ljava/io/BufferedReader;
    .local v3, "inBuffer":Ljava/io/BufferedReader;
    :try_start_2
    const-string v6, ""

    .line 266
    .local v6, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 267
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 269
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v2, v3

    .end local v3    # "inBuffer":Ljava/io/BufferedReader;
    .restart local v2    # "inBuffer":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 270
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    if-eqz v4, :cond_1

    .line 276
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 278
    :cond_1
    if-eqz v2, :cond_2

    .line 279
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 286
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 275
    .end local v2    # "inBuffer":Ljava/io/BufferedReader;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inBuffer":Ljava/io/BufferedReader;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_4

    .line 276
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 278
    :cond_4
    if-eqz v3, :cond_5

    .line 279
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    move-object v2, v3

    .end local v3    # "inBuffer":Ljava/io/BufferedReader;
    .restart local v2    # "inBuffer":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 283
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 281
    .end local v2    # "inBuffer":Ljava/io/BufferedReader;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inBuffer":Ljava/io/BufferedReader;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 282
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "inBuffer":Ljava/io/BufferedReader;
    .restart local v2    # "inBuffer":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 284
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 281
    .end local v6    # "line":Ljava/lang/String;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 282
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 271
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 272
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 275
    if-eqz v4, :cond_6

    .line 276
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 278
    :cond_6
    if-eqz v2, :cond_2

    .line 279
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 281
    :catch_4
    move-exception v1

    .line 282
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 274
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 275
    :goto_5
    if-eqz v4, :cond_7

    .line 276
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 278
    :cond_7
    if-eqz v2, :cond_8

    .line 279
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 283
    :cond_8
    :goto_6
    throw v7

    .line 281
    :catch_5
    move-exception v1

    .line 282
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 274
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    .end local v2    # "inBuffer":Ljava/io/BufferedReader;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inBuffer":Ljava/io/BufferedReader;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .end local v3    # "inBuffer":Ljava/io/BufferedReader;
    .restart local v2    # "inBuffer":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_5

    .line 271
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v1

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_4

    .end local v2    # "inBuffer":Ljava/io/BufferedReader;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inBuffer":Ljava/io/BufferedReader;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "inBuffer":Ljava/io/BufferedReader;
    .restart local v2    # "inBuffer":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 269
    :catch_8
    move-exception v1

    goto :goto_2

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catch_9
    move-exception v1

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private init()V
    .locals 4

    .prologue
    .line 85
    iget-object v2, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 86
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/smartisan/libmoreapps/R$layout;->more_apps_layout:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, "rootView":Landroid/view/View;
    new-instance v2, Lcom/smartisan/moreapps/ProductsAdapter;

    iget-object v3, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/smartisan/moreapps/ProductsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/smartisan/moreapps/AppsView;->mListAdapter:Lcom/smartisan/moreapps/ProductsAdapter;

    .line 88
    invoke-direct {p0}, Lcom/smartisan/moreapps/AppsView;->isLocalFileExist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-direct {p0}, Lcom/smartisan/moreapps/AppsView;->initFromLocalData()Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/smartisan/moreapps/AppsView;->mListAdapter:Lcom/smartisan/moreapps/ProductsAdapter;

    invoke-virtual {v2}, Lcom/smartisan/moreapps/ProductsAdapter;->init()V

    .line 96
    :cond_0
    :goto_0
    sget v2, Lcom/smartisan/libmoreapps/R$id;->app_list:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/smartisan/moreapps/AppsView;->mAppList:Landroid/widget/ListView;

    .line 97
    iget-object v2, p0, Lcom/smartisan/moreapps/AppsView;->mAppList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/smartisan/moreapps/AppsView;->mListAdapter:Lcom/smartisan/moreapps/ProductsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget-object v2, p0, Lcom/smartisan/moreapps/AppsView;->mAppList:Landroid/widget/ListView;

    invoke-static {v2}, Lcom/smartisan/moreapps/AppsView;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 101
    invoke-direct {p0}, Lcom/smartisan/moreapps/AppsView;->updateList()V

    .line 102
    return-void

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/smartisan/moreapps/AppsView;->mListAdapter:Lcom/smartisan/moreapps/ProductsAdapter;

    invoke-virtual {v2}, Lcom/smartisan/moreapps/ProductsAdapter;->init()V

    goto :goto_0
.end method

.method private initFromLocalData()Z
    .locals 7

    .prologue
    .line 178
    const/4 v2, 0x0

    .line 180
    .local v2, "initialized":Z
    iget-object v5, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 181
    .local v4, "path":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "string.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/smartisan/moreapps/AppsView;->getFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 183
    new-instance v3, Lcom/smartisan/moreapps/AppListParser;

    iget-object v5, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-direct {v3, v5, v0, v6}, Lcom/smartisan/moreapps/AppListParser;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 184
    .local v3, "parser":Lcom/smartisan/moreapps/AppListParser;
    invoke-virtual {v3}, Lcom/smartisan/moreapps/AppListParser;->parse()Ljava/util/ArrayList;

    move-result-object v1

    .line 185
    .local v1, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/moreapps/AppInfoList$AppInfo;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 187
    iget-object v5, p0, Lcom/smartisan/moreapps/AppsView;->mListAdapter:Lcom/smartisan/moreapps/ProductsAdapter;

    invoke-virtual {v5, v1}, Lcom/smartisan/moreapps/ProductsAdapter;->updateAppList(Ljava/util/ArrayList;)V

    .line 188
    const/4 v2, 0x1

    .line 192
    .end local v1    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/moreapps/AppInfoList$AppInfo;>;"
    .end local v3    # "parser":Lcom/smartisan/moreapps/AppListParser;
    :cond_0
    return v2
.end method

.method private isLocalFileExist()Z
    .locals 4

    .prologue
    .line 220
    iget-object v2, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 221
    .local v1, "path":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method private isVersionChecked()Z
    .locals 13

    .prologue
    .line 231
    const/4 v11, 0x1

    .line 233
    .local v11, "isUpdate":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 234
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 235
    .local v10, "curYear":I
    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 236
    .local v7, "curMonth":I
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 237
    .local v6, "curDay":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 239
    .local v8, "curTime":J
    iget-object v12, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/smartisan/moreapps/SmartisanAppPref;->getInstance(Landroid/content/Context;)Lcom/smartisan/moreapps/SmartisanAppPref;

    move-result-object v12

    invoke-virtual {v12}, Lcom/smartisan/moreapps/SmartisanAppPref;->getListCheckTime()J

    move-result-wide v2

    .line 240
    .local v2, "checkTime":J
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 241
    const/4 v12, 0x1

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 242
    .local v5, "chkYear":I
    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 243
    .local v4, "chkMonth":I
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 244
    .local v1, "chkDay":I
    if-ne v10, v5, :cond_0

    if-ne v7, v4, :cond_0

    if-ne v6, v1, :cond_0

    cmp-long v12, v8, v2

    if-lez v12, :cond_0

    .line 248
    const/4 v11, 0x0

    .line 251
    :cond_0
    return v11
.end method

.method private static measureScrapChild(Landroid/view/View;)V
    .locals 8
    .param p0, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 158
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 159
    .local v3, "p":Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 160
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .end local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 162
    .restart local v3    # "p":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    :cond_0
    const/high16 v5, -0x80000000

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 166
    .local v4, "widthMeasureSpec":I
    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v4, v7, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 167
    .local v1, "childWidthSpec":I
    iget v2, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 169
    .local v2, "lpHeight":I
    if-lez v2, :cond_1

    .line 170
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 174
    .local v0, "childHeightSpec":I
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    .line 175
    return-void

    .line 172
    .end local v0    # "childHeightSpec":I
    :cond_1
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0    # "childHeightSpec":I
    goto :goto_0
.end method

.method private static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 8
    .param p0, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 140
    .local v2, "listAdapter":Landroid/widget/ListAdapter;
    if-nez v2, :cond_0

    .line 155
    :goto_0
    return-void

    .line 145
    :cond_0
    const/4 v5, 0x0

    .line 146
    .local v5, "totalHeight":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 147
    const/4 v6, 0x0

    invoke-interface {v2, v1, v6, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 148
    .local v3, "listItem":Landroid/view/View;
    invoke-static {v3}, Lcom/smartisan/moreapps/AppsView;->measureScrapChild(Landroid/view/View;)V

    .line 149
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 150
    .local v0, "height":I
    add-int/2addr v5, v0

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    .end local v0    # "height":I
    .end local v3    # "listItem":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 153
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v6

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 154
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateList()V
    .locals 2

    .prologue
    .line 196
    iget-object v1, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartisan/moreapps/SmartisanAppUtils;->isGooglePlayChannel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/smartisan/moreapps/AppsView;->setVisibility(I)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/smartisan/moreapps/AppsView;->isVersionChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    new-instance v0, Lcom/smartisan/moreapps/AppsView$GetDataTask;

    iget-object v1, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisan/moreapps/AppsView$GetDataTask;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "getTask":Lcom/smartisan/moreapps/AppsView$GetDataTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/smartisan/moreapps/AppsView$GetDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 108
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/smartisan/moreapps/download/DownloadApkReceiver;

    invoke-direct {v2}, Lcom/smartisan/moreapps/download/DownloadApkReceiver;-><init>()V

    iput-object v2, p0, Lcom/smartisan/moreapps/AppsView;->mDownloadApkReceiver:Lcom/smartisan/moreapps/download/DownloadApkReceiver;

    .line 110
    invoke-virtual {p0}, Lcom/smartisan/moreapps/AppsView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisan/moreapps/AppsView;->mDownloadApkReceiver:Lcom/smartisan/moreapps/download/DownloadApkReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/smartisan/moreapps/AppsView;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 122
    iget-object v0, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/smartisan/moreapps/AppsView;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    iget-object v0, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/smartisan/moreapps/AppsView;->mDownloadApkReceiver:Lcom/smartisan/moreapps/download/DownloadApkReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/smartisan/moreapps/AppsView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisan/moreapps/SmartisanAppUtils;->isGooglePlayChannel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
