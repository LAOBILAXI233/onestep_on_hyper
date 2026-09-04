.class public final Ltqt/weibo/cn/tqtsdk/kit/b/b;
.super Ljava/lang/Object;
.source "AppDirUtils.java"


.method public static final a()Ljava/io/File;
    .locals 1

    .prologue
    .line 26
    const-string v0, "crash"

    invoke-static {v0}, Ltqt/weibo/cn/tqtsdk/kit/b/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 103
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/kit/b/o;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const/4 v0, 0x0

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/io/File;

    const-string v2, "TianQiTong"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 111
    new-instance v2, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 115
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 117
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 118
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
