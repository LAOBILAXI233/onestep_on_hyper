.class public final Ltqt/weibo/cn/tqtsdk/kit/b/o;
.super Ljava/lang/Object;
.source "StorageUtils.java"


.method public static a()Z
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 16
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 19
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(J)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-static {}, Ltqt/weibo/cn/tqtsdk/kit/b/o;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    .line 44
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    .line 45
    const-wide/16 v6, -0x1

    cmp-long v1, p0, v6

    if-eqz v1, :cond_2

    mul-long/2addr v2, v4

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    .line 48
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;J)Z
    .locals 7

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 28
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 29
    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    mul-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
