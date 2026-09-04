.class public Ltqt/weibo/cn/tqtsdk/kit/b/g;
.super Ljava/lang/Object;
.source "FileUtils.java"


.method public static a(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 14
    if-nez p0, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 22
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 26
    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 27
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 28
    invoke-static {v3}, Ltqt/weibo/cn/tqtsdk/kit/b/g;->a(Ljava/io/File;)V

    .line 26
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 30
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 33
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 47
    invoke-static {p0, p1}, Ltqt/weibo/cn/tqtsdk/kit/b/g;->b(Ljava/io/File;Ljava/io/File;)V

    goto :goto_0
.end method

.method public static a([BLjava/io/File;)V
    .locals 3

    .prologue
    .line 65
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 67
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 68
    invoke-virtual {v0, p0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 69
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/OutputStream;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a([Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 72
    :catch_1
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/lang/Long;Ljava/lang/Long;Ltqt/weibo/cn/tqtsdk/kit/b/p$d;)[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    .line 107
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    invoke-static {v1, p3}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a(Ljava/io/InputStream;Ltqt/weibo/cn/tqtsdk/kit/b/p$d;)[B

    move-result-object v0

    .line 115
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/InputStream;

    aput-object v1, v2, v3

    invoke-static {v2}, Ltqt/weibo/cn/tqtsdk/kit/b/p;->a([Ljava/io/InputStream;)V

    .line 116
    :goto_0
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 110
    new-array v0, v3, [B

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ltqt/weibo/cn/tqtsdk/kit/b/p$d;)[B
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-static {p0, v0, v0, p1}, Ltqt/weibo/cn/tqtsdk/kit/b/g;->a(Ljava/io/File;Ljava/lang/Long;Ljava/lang/Long;Ltqt/weibo/cn/tqtsdk/kit/b/p$d;)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 56
    invoke-static {p0}, Ltqt/weibo/cn/tqtsdk/kit/b/g;->b(Ljava/io/File;)[B

    move-result-object v0

    .line 57
    invoke-static {v0, p1}, Ltqt/weibo/cn/tqtsdk/kit/b/g;->a([BLjava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/io/File;)[B
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ltqt/weibo/cn/tqtsdk/kit/b/g;->a(Ljava/io/File;Ltqt/weibo/cn/tqtsdk/kit/b/p$d;)[B

    move-result-object v0

    return-object v0
.end method
