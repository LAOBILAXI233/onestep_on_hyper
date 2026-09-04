.class public Lcom/smartisan/moreapps/AppListParser;
.super Ljava/lang/Object;
.source "AppListParser.java"


.field private static final TAG:Ljava/lang/String; = "AppListParser"


.field private mContext:Landroid/content/Context;

.field private mFromLocal:Z

.field private mListData:Ljava/lang/String;


.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listData"    # Ljava/lang/String;
    .param p3, "fromLocal"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/smartisan/moreapps/AppListParser;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/smartisan/moreapps/AppListParser;->mListData:Ljava/lang/String;

    .line 35
    iput-boolean p3, p0, Lcom/smartisan/moreapps/AppListParser;->mFromLocal:Z

    .line 36
    return-void
.end method

.method private getImageFromLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 246
    const/4 v2, 0x0

    .line 260
    :cond_0
    :goto_0
    return-object v2

    .line 249
    :cond_1
    const/4 v2, 0x0

    .line 250
    .local v2, "inputStream":Ljava/io/InputStream;
    iget-object v5, p0, Lcom/smartisan/moreapps/AppListParser;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    .line 251
    .local v4, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "inputStream":Ljava/io/InputStream;
    .local v3, "inputStream":Ljava/io/InputStream;
    move-object v2, v3

    .line 257
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getImageFromNet(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 240
    new-instance v0, Lcom/smartisan/moreapps/HttpData;

    invoke-direct {v0}, Lcom/smartisan/moreapps/HttpData;-><init>()V

    .line 241
    .local v0, "httpdata":Lcom/smartisan/moreapps/HttpData;
    invoke-virtual {v0, p1}, Lcom/smartisan/moreapps/HttpData;->executeHttpGet(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method private getLanguageFolder()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "values"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v3, p0, Lcom/smartisan/moreapps/AppListParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "locale":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 168
    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "localeArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 170
    aget-object v3, v1, v5

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    .line 171
    aget-object v3, v1, v6

    const-string v4, "rTW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v1, v6

    const-string v4, "TW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v3, "-rTW"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .end local v1    # "localeArray":[Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 174
    .restart local v1    # "localeArray":[Ljava/lang/String;
    :cond_2
    aget-object v3, v1, v6

    const-string v4, "rCN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, v1, v6

    const-string v4, "CN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v3, "-rCN"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 178
    :cond_4
    aget-object v3, v1, v5

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private parseBitmapFromUri(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 188
    const/16 v0, 0x90

    .line 189
    .local v0, "ICON_SIZE":I
    const/4 v1, 0x0

    .line 190
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 191
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 193
    .local v5, "inputStreamSave":Ljava/io/InputStream;
    :try_start_0
    iget-boolean v8, p0, Lcom/smartisan/moreapps/AppListParser;->mFromLocal:Z

    if-eqz v8, :cond_5

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/smartisan/moreapps/AppListParser;->getImageFromLocal(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 202
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 203
    iget-object v8, p0, Lcom/smartisan/moreapps/AppListParser;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 204
    .local v6, "res":Landroid/content/res/Resources;
    sget v8, Lcom/smartisan/libmoreapps/R$integer;->item_icon_size:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 206
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 207
    .local v7, "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 208
    const/4 v8, 0x1

    invoke-static {v7, v0, v0, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 209
    if-eq v1, v7, :cond_1

    .line 210
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-boolean v8, p0, Lcom/smartisan/moreapps/AppListParser;->mFromLocal:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/smartisan/moreapps/AppListParser;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/smartisan/moreapps/SmartisanAppUtils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 216
    invoke-direct {p0, p1}, Lcom/smartisan/moreapps/AppListParser;->getImageFromNet(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 218
    invoke-direct {p0, v5, p2}, Lcom/smartisan/moreapps/AppListParser;->saveBitmapToLocal(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_2
    if-eqz v4, :cond_3

    .line 227
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 229
    :cond_3
    if-eqz v5, :cond_4

    .line 230
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    move-object v2, v1

    .line 236
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    return-object v2

    .line 197
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_5
    :try_start_2
    iget-object v8, p0, Lcom/smartisan/moreapps/AppListParser;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/smartisan/moreapps/SmartisanAppUtils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 198
    invoke-direct {p0, p1}, Lcom/smartisan/moreapps/AppListParser;->getImageFromNet(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 232
    :catch_0
    move-exception v3

    .line 233
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 222
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    if-eqz v4, :cond_6

    .line 227
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 229
    :cond_6
    if-eqz v5, :cond_7

    .line 230
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_3
    move-object v2, v1

    .line 236
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 232
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 233
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 225
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 226
    if-eqz v4, :cond_8

    .line 227
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 229
    :cond_8
    if-eqz v5, :cond_9

    .line 230
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 234
    :cond_9
    :goto_4
    throw v8

    .line 232
    :catch_3
    move-exception v3

    .line 233
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private saveBitmapToLocal(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 11
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 270
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v8, p0, Lcom/smartisan/moreapps/AppListParser;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    .line 275
    .local v7, "path":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 276
    .local v4, "fileFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 277
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 280
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 282
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 285
    :cond_3
    const/4 v5, 0x0

    .line 287
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 290
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 292
    .local v1, "bytesRead":I
    const/16 v8, 0x2000

    :try_start_1
    new-array v0, v8, [B

    .line 293
    .local v0, "buffer":[B
    :goto_1
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {p1, v0, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v8, -0x1

    if-eq v1, v8, :cond_4

    .line 294
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 296
    .end local v0    # "buffer":[B
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 297
    .end local v1    # "bytesRead":I
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    if-eqz v5, :cond_0

    .line 301
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 302
    :catch_1
    move-exception v2

    .line 303
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_4
    if-eqz v6, :cond_6

    .line 301
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v5, v6

    .line 304
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 302
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    .line 303
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    .line 304
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 299
    .end local v0    # "buffer":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v5, :cond_5

    .line 301
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 304
    :cond_5
    :goto_4
    throw v8

    .line 302
    :catch_3
    move-exception v2

    .line 303
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 299
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "bytesRead":I
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 296
    .end local v1    # "bytesRead":I
    :catch_4
    move-exception v2

    goto :goto_2

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "bytesRead":I
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_6
    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method


.method public parse()Ljava/util/ArrayList;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisan/moreapps/AppInfoList$AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisan/moreapps/AppListParser;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisan/moreapps/AppListParser;->mListData:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    :cond_0
    const/16 v18, 0x0

    .line 153
    :cond_1
    :goto_0
    return-object v18

    .line 67
    :cond_2
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v3, 0x0

    const-string v23, "values"

    aput-object v23, v20, v3

    const/4 v3, 0x1

    const-string v23, "values-ja"

    aput-object v23, v20, v3

    const/4 v3, 0x2

    const-string v23, "values-ko"

    aput-object v23, v20, v3

    const/4 v3, 0x3

    const-string v23, "values-zh-rCN"

    aput-object v23, v20, v3

    const/4 v3, 0x4

    const-string v23, "values-zh-rTW"

    aput-object v23, v20, v3

    .line 74
    .local v20, "languageArray":[Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v18, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisan/moreapps/AppInfoList$AppInfo;>;"
    const/16 v22, -0x1

    .line 78
    .local v22, "languageIndex":I
    invoke-direct/range {p0 .. p0}, Lcom/smartisan/moreapps/AppListParser;->getLanguageFolder()Ljava/lang/String;

    move-result-object v21

    .line 79
    .local v21, "languageFoler":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, v20

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_3

    .line 80
    aget-object v3, v20, v16

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 81
    move/from16 v22, v16

    .line 87
    :cond_3
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisan/moreapps/AppListParser;->mListData:Ljava/lang/String;

    invoke-direct {v9, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    .local v9, "allDataJson":Lorg/json/JSONObject;
    if-eqz v9, :cond_1

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v9, v3, :cond_1

    .line 89
    const-string v3, "apps"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 91
    .local v10, "appArrayJson":Lorg/json/JSONArray;
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 92
    const/16 v16, 0x0

    :goto_2
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_1

    .line 93
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONObject;

    .line 94
    .local v12, "appJson":Lorg/json/JSONObject;
    const-string v3, "package_name"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "pkgName":Ljava/lang/String;
    const-string v3, "update_info"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "updateInfo":Ljava/lang/String;
    const/4 v5, 0x0

    .line 99
    .local v5, "appName":Ljava/lang/String;
    const-string v3, "app_name"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 100
    .local v13, "appNameJson":Lorg/json/JSONArray;
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 101
    if-ltz v22, :cond_4

    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_4

    .line 102
    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    .line 103
    .local v19, "langJson":Lorg/json/JSONObject;
    aget-object v3, v20, v22

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .end local v19    # "langJson":Lorg/json/JSONObject;
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 107
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 108
    .local v14, "defaultJson":Lorg/json/JSONObject;
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .end local v14    # "defaultJson":Lorg/json/JSONObject;
    :cond_5
    const/4 v6, 0x0

    .line 114
    .local v6, "appDes":Ljava/lang/String;
    const-string v3, "app_desc"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 115
    .local v11, "appDescJson":Lorg/json/JSONArray;
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 116
    if-ltz v22, :cond_6

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v22

    if-ge v0, v3, :cond_6

    .line 117
    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/json/JSONObject;

    .line 118
    .restart local v19    # "langJson":Lorg/json/JSONObject;
    aget-object v3, v20, v22

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    .end local v19    # "langJson":Lorg/json/JSONObject;
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 122
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 123
    .restart local v14    # "defaultJson":Lorg/json/JSONObject;
    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    .end local v14    # "defaultJson":Lorg/json/JSONObject;
    :cond_7
    const-string v3, "icon_uri"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 129
    .local v17, "iconUri":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lcom/smartisan/moreapps/AppListParser;->parseBitmapFromUri(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 130
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    if-nez v8, :cond_8

    .line 131
    const-string v3, "AppListParser"

    const-string v23, "Fail to get bitmap"

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v8, :cond_9

    .line 136
    new-instance v2, Lcom/smartisan/moreapps/AppInfoList$AppInfo;

    const/4 v3, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/smartisan/moreapps/AppInfoList$AppInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 143
    .local v2, "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v2    # "info":Lcom/smartisan/moreapps/AppInfoList$AppInfo;
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 79
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "appName":Ljava/lang/String;
    .end local v6    # "appDes":Ljava/lang/String;
    .end local v7    # "updateInfo":Ljava/lang/String;
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "allDataJson":Lorg/json/JSONObject;
    .end local v10    # "appArrayJson":Lorg/json/JSONArray;
    .end local v11    # "appDescJson":Lorg/json/JSONArray;
    .end local v12    # "appJson":Lorg/json/JSONObject;
    .end local v13    # "appNameJson":Lorg/json/JSONArray;
    .end local v17    # "iconUri":Ljava/lang/String;
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 150
    :catch_0
    move-exception v15

    .line 151
    .local v15, "e":Lorg/json/JSONException;
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    .line 153
    const/16 v18, 0x0

    goto/16 :goto_0
.end method
