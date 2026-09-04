.class public Lcom/smartisanos/launcher/provider/AppStoreDelegate;
.super Landroid/content/ContentProvider;
.source "AppStoreDelegate.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/provider/AppStoreDelegate$ThemeDownloadDelegate;
    }
.end annotation


.field private static final ALL_ROWS:I = 0x1

.field public static final APP_STORE_AUTHORITIES:Ljava/lang/String; = "content://com.smartisanos.appstore.download"

.field public static final AUTHORITY:Ljava/lang/String; = "com.smartisanos.appstore.delegate"

.field public static final EXTRAS_DOWNLOAD_ID:Ljava/lang/String; = "downloadId"

.field public static final EXTRAS_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final EXTRAS_ICON:Ljava/lang/String; = "icon"

.field public static final EXTRAS_NAME:Ljava/lang/String; = "name"

.field public static final EXTRAS_PKG:Ljava/lang/String; = "pkg"

.field public static final EXTRAS_PROGRESS:Ljava/lang/String; = "progress"

.field public static final EXTRAS_STATUS:Ljava/lang/String; = "status"

.field public static final METHOD_DOWNLOAD_FAILED:Ljava/lang/String; = "downloadFailed"

.field public static final METHOD_DOWNLOAD_SUCCESS:Ljava/lang/String; = "downloadSuccess"

.field public static final METHOD_INSTALL_FAILED:Ljava/lang/String; = "installFailed"

.field public static final METHOD_INSTALL_SUCCESS:Ljava/lang/String; = "installedSuccess"

.field public static final METHOD_REMOVE_DOWNLOAD:Ljava/lang/String; = "removeDownload"

.field public static final METHOD_SET_DOWNLOAD_ID:Ljava/lang/String; = "setDownloadId"

.field public static final METHOD_SET_PROGRESS:Ljava/lang/String; = "setProgress"

.field public static final REMOVE_FAILED_BY_INSTALLING:I = 0x2

.field public static final REMOVE_FAILED_BY_NOT_EXIST:I = 0x3

.field public static final REMOVE_FAILED_BY_UNKNOWN:I = 0x4

.field public static final REMOVE_SUCCESS:I = 0x1

.field private static final SINGLE_ROW:I = 0x2

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static final matcher:Landroid/content/UriMatcher;


.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 20
    const-class v0, Lcom/smartisanos/launcher/provider/AppStoreDelegate;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->log:Lcom/smartisanos/launcher/LOG;

    .line 28
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->matcher:Landroid/content/UriMatcher;

    .line 29
    sget-object v0, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->matcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.appstore.delegate"

    const-string v2, "appstore"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    sget-object v0, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->matcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.appstore.delegate"

    const-string v2, "appstore/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method private downloadFailed(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 161
    invoke-static {p1}, Lcom/smartisanos/launcher/provider/AppStoreDelegate$ThemeDownloadDelegate;->isThemePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/provider/AppStoreDelegate$ThemeDownloadDelegate;->downloadFailed(Ljava/lang/String;I)V

    .line 165
    :cond_0
    return-void
.end method

.method private downloadSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {p1}, Lcom/smartisanos/launcher/provider/AppStoreDelegate$ThemeDownloadDelegate;->isThemePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {p1}, Lcom/smartisanos/launcher/provider/AppStoreDelegate$ThemeDownloadDelegate;->downloadSuccess(Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void
.end method

.method private handleCall(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 101
    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v8, "setDownloadId"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 105
    const-string v8, "downloadId"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 106
    .local v0, "downloadId":J
    const-string v8, "pkg"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "pkg":Ljava/lang/String;
    const-string v8, "name"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, "name":Ljava/lang/String;
    const-string v8, "icon"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "iconUri":Ljava/lang/String;
    sget-object v8, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "METHOD_SET_DOWNLOAD_ID ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, v5, v0, v1}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->setDownloadId(Ljava/lang/String;J)V

    goto :goto_0

    .line 111
    .end local v0    # "downloadId":J
    .end local v3    # "iconUri":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_2
    const-string v8, "setProgress"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 112
    const-string v8, "downloadId"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 113
    .restart local v0    # "downloadId":J
    const-string v8, "pkg"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 114
    .restart local v5    # "pkg":Ljava/lang/String;
    const-string v8, "name"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .restart local v4    # "name":Ljava/lang/String;
    const-string v8, "status"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 116
    .local v7, "status":I
    const-string v8, "progress"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-int v6, v8

    .line 117
    .local v6, "progress":I
    sget-object v8, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "METHOD_SET_PROGRESS ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v5, v6, v7}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->setProgress(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 119
    .end local v0    # "downloadId":J
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "progress":I
    .end local v7    # "status":I
    :cond_3
    const-string v8, "downloadSuccess"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 120
    const-string v8, "pkg"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    .restart local v5    # "pkg":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->downloadSuccess(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_4
    const-string v8, "downloadFailed"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 123
    const-string v8, "pkg"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .restart local v5    # "pkg":Ljava/lang/String;
    const-string v8, "errorCode"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 125
    .local v2, "errorCode":I
    invoke-direct {p0, v5, v2}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->downloadFailed(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 126
    .end local v2    # "errorCode":I
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_5
    const-string v8, "installedSuccess"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 127
    const-string v8, "pkg"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    .restart local v5    # "pkg":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->installedSuccess(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_6
    const-string v8, "installFailed"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 130
    const-string v8, "pkg"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    .restart local v5    # "pkg":Ljava/lang/String;
    const-string v8, "errorCode"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 132
    .restart local v2    # "errorCode":I
    invoke-direct {p0, v5, v2}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->installFailed(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 133
    .end local v2    # "errorCode":I
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_7
    const-string v8, "removeDownload"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_0
.end method

.method private installFailed(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 175
    invoke-static {p1}, Lcom/smartisanos/launcher/provider/AppStoreDelegate$ThemeDownloadDelegate;->isThemePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/provider/AppStoreDelegate$ThemeDownloadDelegate;->installFailed(Ljava/lang/String;I)V

    .line 179
    :cond_0
    return-void
.end method

.method private installedSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p1}, Lcom/smartisanos/launcher/provider/AppStoreDelegate$ThemeDownloadDelegate;->isThemePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {p1}, Lcom/smartisanos/launcher/provider/AppStoreDelegate$ThemeDownloadDelegate;->installedSuccess(Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method

.method public static requestDownload(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "netWorkType"    # I

    .prologue
    .line 276
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 277
    .local v1, "extra":Landroid/os/Bundle;
    const-string v4, "pkg"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v4, "allowedNetworkTypes"

    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    :try_start_0
    const-string v4, "content://com.smartisanos.appstore.download"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 281
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 282
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v4, "download"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    const/4 v4, 0x1

    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return v4

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static requestFetchIcon(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgArr"    # [Ljava/lang/String;

    .prologue
    .line 291
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 292
    .local v1, "extra":Landroid/os/Bundle;
    const-string v4, "pkgArr"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 294
    :try_start_0
    const-string v4, "content://com.smartisanos.appstore.download"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 295
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 296
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v4, "fetchIcon"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestRemoveDownload(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 308
    const/4 v3, 0x0

    .line 309
    .local v3, "removeSuccess":Z
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v2, "extra":Landroid/os/Bundle;
    const-string v7, "pkg"

    invoke-virtual {v2, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :try_start_0
    const-string v7, "content://com.smartisanos.appstore.download"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 313
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 314
    .local v4, "resolver":Landroid/content/ContentResolver;
    const-string v7, "removeDownload"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v8, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 315
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 316
    const-string v7, "result"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 317
    .local v5, "result":I
    sget-object v7, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestRemoveDownload result ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    .line 319
    const/4 v3, 0x1

    .line 325
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "result":I
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return v3

    .line 322
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setDownloadId(Ljava/lang/String;J)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "downloadId"    # J

    .prologue
    .line 139
    invoke-static {p1}, Lcom/smartisanos/launcher/provider/AppStoreDelegate$ThemeDownloadDelegate;->isThemePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p1, p2, p3}, Lcom/smartisanos/launcher/provider/AppStoreDelegate$ThemeDownloadDelegate;->setDownloadId(Ljava/lang/String;J)V

    .line 143
    :cond_0
    return-void
.end method

.method private setProgress(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "status"    # I

    .prologue
    .line 146
    sget-object v0, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->log:Lcom/smartisanos/launcher/LOG;

    const-string v1, "DEBUG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "METHOD_SET_PROGRESS pkg ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], progress ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {p1}, Lcom/smartisanos/launcher/provider/AppStoreDelegate$ThemeDownloadDelegate;->isThemePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/provider/AppStoreDelegate$ThemeDownloadDelegate;->setProgress(Ljava/lang/String;I)V

    .line 151
    :cond_0
    return-void
.end method


.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 92
    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->handleCall(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "strings"    # [Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 45
    sget-object v1, Lcom/smartisanos/launcher/provider/AppStoreDelegate;->matcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 46
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.appstore.delegate"

    .line 51
    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.appstore.delegate"

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "strings"    # [Ljava/lang/String;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings1"    # [Ljava/lang/String;
    .param p5, "s1"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "strings"    # [Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method
