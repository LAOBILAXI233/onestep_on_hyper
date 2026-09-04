.class Lcom/loc/ba;
.super Ljava/lang/Object;
.source "DexFileManager.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/ba$a;
    }
.end annotation


.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/loc/aj;Lcom/loc/v;)Ljava/lang/String;
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "copy"

    invoke-static {v0, v1}, Lcom/loc/be;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/loc/be;

    invoke-direct {v1}, Lcom/loc/be;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/loc/aj;->c(Ljava/lang/String;Lcom/loc/ak;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v8

    :goto_0
    return-object v0

    :cond_1
    invoke-static {v9}, Lcom/loc/ba;->a(Ljava/util/List;)V

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/loc/bf;

    invoke-virtual {v6}, Lcom/loc/bf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/loc/ba;->a(Landroid/content/Context;Lcom/loc/aj;Ljava/lang/String;Lcom/loc/v;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/loc/bf$a;

    invoke-virtual {p2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loc/ba;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/loc/bf;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lcom/loc/bf;->e()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/loc/bf$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "usedex"

    invoke-virtual {v0, v1}, Lcom/loc/bf$a;->a(Ljava/lang/String;)Lcom/loc/bf$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bf$a;->a()Lcom/loc/bf;

    move-result-object v0

    invoke-virtual {v6}, Lcom/loc/bf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/loc/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/loc/ba;->a(Landroid/content/Context;Lcom/loc/aj;Lcom/loc/v;Lcom/loc/bf;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/loc/bf;->e()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DexFileManager"

    const-string v2, "loadAvailableDynamicSDKFile"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lcom/loc/bf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/loc/ba;->a(Landroid/content/Context;Lcom/loc/aj;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v0, v8

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/ba;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/loc/ba;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/loc/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/loc/aj;Lcom/loc/v;Lcom/loc/bf;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/loc/bf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/loc/ba;->b(Landroid/content/Context;Lcom/loc/aj;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {p2}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {v1, v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    :goto_2
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_0
    :goto_3
    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_1
    :goto_4
    throw v0

    :cond_2
    :try_start_6
    invoke-virtual {p3}, Lcom/loc/bf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/be;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/loc/ba$a;->a(Lcom/loc/aj;Lcom/loc/bf;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_3
    :goto_5
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_4
    :goto_6
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v3, v2

    :goto_7
    :try_start_9
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v3, v2

    :goto_8
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catch_9
    move-exception v0

    goto :goto_7

    :catch_a
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catch_b
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_c
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method static a(Landroid/content/Context;Lcom/loc/aj;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/loc/ba;->c(Landroid/content/Context;Lcom/loc/aj;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/loc/aj;Landroid/content/Context;Lcom/loc/v;)V
    .locals 4

    new-instance v0, Lcom/loc/be;

    invoke-direct {v0}, Lcom/loc/be;-><init>()V

    invoke-virtual {p2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loc/ba;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/loc/ba$a;->a(Lcom/loc/aj;Ljava/lang/String;)Lcom/loc/bf;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p1, p0, v2}, Lcom/loc/ba;->b(Landroid/content/Context;Lcom/loc/aj;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/loc/bf;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/loc/be;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/loc/aj;->c(Ljava/lang/String;Lcom/loc/ak;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bf;

    const-string v1, "errorstatus"

    invoke-virtual {v0, v1}, Lcom/loc/bf;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/bf;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/be;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/ba$a;->a(Lcom/loc/aj;Lcom/loc/bf;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/bf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/loc/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method static a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/loc/bf;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    move v3, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bf;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loc/bf;

    invoke-virtual {v0}, Lcom/loc/bf;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/loc/bf;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/loc/bh;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {p0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method static a(Landroid/content/Context;Lcom/loc/aj;Ljava/lang/String;Lcom/loc/v;)Z
    .locals 1

    invoke-static {p0, p2}, Lcom/loc/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lcom/loc/ba;->a(Lcom/loc/aj;Ljava/lang/String;Ljava/lang/String;Lcom/loc/v;)Z

    move-result v0

    return v0
.end method

.method static a(Lcom/loc/aj;Ljava/lang/String;Ljava/lang/String;Lcom/loc/v;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/loc/ba$a;->a(Lcom/loc/aj;Ljava/lang/String;)Lcom/loc/bf;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/loc/bf;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/loc/bf;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/loc/ba;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/loc/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/s;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Landroid/content/Context;Lcom/loc/aj;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/loc/ba;->c(Landroid/content/Context;Lcom/loc/aj;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/loc/ba;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/loc/ba;->c(Landroid/content/Context;Lcom/loc/aj;Ljava/lang/String;)V

    return-void
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/loc/ba$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/loc/ba$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/loc/ba$1;->start()V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/loc/aj;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0, p2}, Lcom/loc/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-static {p2}, Lcom/loc/be;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/loc/be;

    invoke-direct {v1}, Lcom/loc/be;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/loc/aj;->a(Ljava/lang/String;Lcom/loc/ak;)V

    return-void
.end method
