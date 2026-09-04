.class public Lcom/smartisan/updater/UpdateUtils;
.super Ljava/lang/Object;
.source "UpdateUtils.java"


.field private static final APP_CHANNEL_KEY:Ljava/lang/String; = "AppChannel"

.field private static final GOOGLE_PLAY_CHANNEL_ID:I = 0x65


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Landroid/content/Context;Ljava/lang/String;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 162
    const-wide/16 v4, 0x0

    .line 164
    .local v4, "id":J
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 165
    .local v8, "resource":Landroid/net/Uri;
    new-instance v7, Landroid/app/DownloadManager$Request;

    invoke-direct {v7, v8}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 166
    .local v7, "request":Landroid/app/DownloadManager$Request;
    const/4 v9, 0x3

    invoke-virtual {v7, v9}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    .line 167
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 168
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    .line 170
    .local v6, "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 169
    invoke-virtual {v6, v9}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "mimeString":Ljava/lang/String;
    invoke-virtual {v7, v3}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 172
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 173
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    .line 174
    invoke-static {v8}, Lcom/smartisan/updater/UpdateUtils;->getDownloadApkFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "filename":Ljava/lang/String;
    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v7, v9, v2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 176
    const-string v9, "download"

    .line 177
    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 178
    .local v0, "downloadManager":Landroid/app/DownloadManager;
    invoke-virtual {v7}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 179
    invoke-virtual {v0, v7}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 184
    .end local v0    # "downloadManager":Landroid/app/DownloadManager;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "mimeString":Ljava/lang/String;
    .end local v6    # "mimeTypeMap":Landroid/webkit/MimeTypeMap;
    .end local v7    # "request":Landroid/app/DownloadManager$Request;
    .end local v8    # "resource":Landroid/net/Uri;
    :goto_0
    return-wide v4

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    sget v9, Lcom/smartisan/updater/R$string;->system_downloader_err:I

    invoke-static {p0, v9}, Lcom/smartisan/updater/UpdateUtils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static final getAppChannelID(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 298
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "AppChannel"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "channel key AppChannel does not match, plz check your manifest "

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 307
    const/4 v2, -0x1

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v2

    .line 301
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :try_start_1
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "AppChannel"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 303
    .local v2, "id":I
    goto :goto_0
.end method

.method public static getDownloadApkFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "resource"    # Landroid/net/Uri;

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, "filename":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 204
    if-nez v0, :cond_1

    .line 205
    const-string v0, "update.apk"

    .line 210
    :cond_0
    :goto_0
    return-object v0

    .line 206
    :cond_1
    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
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

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 335
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 336
    const/4 v6, 0x0

    .line 355
    :goto_0
    return-object v6

    .line 340
    :cond_0
    const/16 v6, 0x400

    new-array v1, v6, [B

    .line 342
    .local v1, "buffer":[B
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 343
    .local v2, "digest":Ljava/security/MessageDigest;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 344
    .local v4, "in":Ljava/io/FileInputStream;
    :goto_1
    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-virtual {v4, v1, v6, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .local v5, "len":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 345
    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 350
    .end local v1    # "buffer":[B
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    :catch_0
    move-exception v3

    .line 351
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v6, "Utils"

    const-string v7, "getFileMD5"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 355
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    const-string v6, ""

    goto :goto_0

    .line 347
    .restart local v1    # "buffer":[B
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "len":I
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 348
    new-instance v0, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-direct {v0, v6, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 349
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    .line 352
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v1    # "buffer":[B
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    :catch_1
    move-exception v3

    .line 353
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "Utils"

    const-string v7, "getFileMD5"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static final getSmartisanAppId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    .line 279
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 281
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "AppId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 282
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "AppId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 283
    .local v2, "id":I
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 285
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "id":I
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 288
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "cann\'t get AppId, plz check your manifest"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getVersionCode(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    const/4 v3, 0x1

    .line 256
    .local v3, "versionCode":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 257
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 258
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Utils"

    const-string v5, "getVersionCode"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    const-string v3, "1.0"

    .line 268
    .local v3, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 269
    .local v2, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 270
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "manager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Utils"

    const-string v5, "getVersionName"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isDownloadProcessing(Landroid/content/Context;J)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadId"    # J

    .prologue
    const/4 v10, 0x1

    .line 214
    const/4 v4, 0x0

    .line 216
    .local v4, "result":Z
    const-wide/16 v8, 0x0

    cmp-long v7, p1, v8

    if-ltz v7, :cond_2

    .line 217
    const-string v7, "download"

    .line 218
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 219
    .local v1, "downloadManager":Landroid/app/DownloadManager;
    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 220
    .local v3, "query":Landroid/app/DownloadManager$Query;
    new-array v7, v10, [J

    const/4 v8, 0x0

    aput-wide p1, v7, v8

    invoke-virtual {v3, v7}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 225
    const-string v7, "status"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 226
    .local v6, "statusIndex":I
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 227
    .local v5, "status":I
    if-eq v5, v10, :cond_0

    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    .line 229
    :cond_0
    const/4 v4, 0x1

    .line 236
    .end local v5    # "status":I
    .end local v6    # "statusIndex":I
    :cond_1
    if-eqz v0, :cond_2

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 242
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "downloadManager":Landroid/app/DownloadManager;
    .end local v3    # "query":Landroid/app/DownloadManager$Query;
    :cond_2
    :goto_0
    return v4

    .line 232
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "downloadManager":Landroid/app/DownloadManager;
    .restart local v3    # "query":Landroid/app/DownloadManager$Query;
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    sget v7, Lcom/smartisan/updater/R$string;->system_downloader_err:I

    invoke-static {p0, v7}, Lcom/smartisan/updater/UpdateUtils;->showToast(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    if-eqz v0, :cond_2

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 236
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_3

    .line 237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v7
.end method

.method public static isGooglePlayChannel(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    const/16 v0, 0x65

    invoke-static {p0}, Lcom/smartisan/updater/UpdateUtils;->getAppChannelID(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMobileNetworkAllowed(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v3, 0x0

    .line 112
    .local v3, "result":Z
    :try_start_0
    const-string v4, "connectivity"

    .line 113
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 114
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 116
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 119
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 151
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 121
    .restart local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :pswitch_0
    const/4 v3, 0x0

    .line 122
    goto :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 129
    :pswitch_2
    const/4 v3, 0x0

    .line 130
    goto :goto_0

    .line 142
    :pswitch_3
    const/4 v3, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 124
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static isNeedUpdate(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteVersion"    # I

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "result":Z
    if-ltz p1, :cond_0

    .line 248
    invoke-static {p0}, Lcom/smartisan/updater/UpdateUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    if-le p1, v1, :cond_1

    const/4 v0, 0x1

    .line 250
    :cond_0
    :goto_0
    return v0

    .line 248
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkAllowed(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v3, 0x0

    .line 67
    .local v3, "result":Z
    :try_start_0
    const-string v4, "connectivity"

    .line 68
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 69
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 71
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 74
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 106
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 76
    .restart local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :pswitch_0
    const/4 v3, 0x1

    .line 77
    goto :goto_0

    .line 79
    :pswitch_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 84
    :pswitch_2
    const/4 v3, 0x0

    .line 85
    goto :goto_0

    .line 97
    :pswitch_3
    const/4 v3, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 79
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static isWiFiActive(Landroid/content/Context;)Z
    .locals 6
    .param p0, "inContext"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 42
    .local v1, "context":Landroid/content/Context;
    const-string v4, "connectivity"

    .line 43
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 44
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v3

    .line 46
    .local v3, "info":[Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    .line 47
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 48
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    const/4 v4, 0x1

    .line 54
    .end local v2    # "i":I
    .end local v3    # "info":[Landroid/net/NetworkInfo;
    :goto_1
    return v4

    .line 47
    .restart local v2    # "i":I
    .restart local v3    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "i":I
    .end local v3    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static launchDetailsForPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 316
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.vending"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 317
    .local v2, "launchIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.android.vending"

    const-string v4, "com.google.android.finsky.activities.LaunchUrlHandlerActivity"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://details?id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    .end local v1    # "comp":Landroid/content/ComponentName;
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 324
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 323
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static needUpdate(Landroid/content/Context;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "remoteVersionCode"    # I

    .prologue
    .line 329
    invoke-static {p0}, Lcom/smartisan/updater/UpdateUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 330
    .local v0, "curVersion":I
    if-le p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 188
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 189
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/smartisan/updater/UpdateUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/smartisan/updater/UpdateUtils$1;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
