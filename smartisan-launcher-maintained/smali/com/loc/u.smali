.class public Lcom/loc/u;
.super Ljava/lang/Thread;
.source "SDKCoordinatorDownload.java"

.implements Lcom/loc/bp$a;


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/u$a;
    }
.end annotation


.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;


.field private a:Lcom/loc/bp;

.field private b:Lcom/loc/u$a;

.field private c:Ljava/io/RandomAccessFile;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;


.method static constructor <clinit>()V
    .locals 1

    const-string v0, "sodownload"

    sput-object v0, Lcom/loc/u;->h:Ljava/lang/String;

    const-string v0, "sofail"

    sput-object v0, Lcom/loc/u;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/loc/u;->g:Landroid/content/Context;

    iput-object p4, p0, Lcom/loc/u;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/loc/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/u;->d:Ljava/lang/String;

    const-string v0, "libwgs2gcj.so"

    invoke-static {p1, v0}, Lcom/loc/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/u;->e:Ljava/lang/String;

    new-instance v0, Lcom/loc/u$a;

    invoke-direct {v0, p3}, Lcom/loc/u$a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/loc/u;->b:Lcom/loc/u$a;

    new-instance v0, Lcom/loc/bp;

    iget-object v1, p0, Lcom/loc/u;->b:Lcom/loc/u$a;

    invoke-direct {v0, v1}, Lcom/loc/bp;-><init>(Lcom/loc/bs;)V

    iput-object v0, p0, Lcom/loc/u;->a:Lcom/loc/bp;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
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

    const-string v1, "libso"

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

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/loc/u;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/u;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method


.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/loc/u;->b:Lcom/loc/u$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/u;->b:Lcom/loc/u$a;

    invoke-virtual {v0}, Lcom/loc/u$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/u;->b:Lcom/loc/u$a;

    invoke-virtual {v0}, Lcom/loc/u$a;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "libJni_wgs2gcj.so"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/u;->b:Lcom/loc/u$a;

    invoke-virtual {v0}, Lcom/loc/u$a;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/u;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/loc/u;->start()V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/u;->c:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/u;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    invoke-direct {p0}, Lcom/loc/u;->d()V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/u;->g:Landroid/content/Context;

    const-string v2, "tempfile"

    invoke-static {v1, v2}, Lcom/loc/u;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "SDKCoordinatorDownload"

    const-string v2, "onException"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "SDKCoordinatorDownload"

    const-string v2, "onException"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a([BJ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/u;->c:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/u;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/loc/u;->c:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/u;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/loc/u;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "SDKCoordinatorDownload"

    const-string v2, "onDownload"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/loc/u;->d()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/loc/u;->d()V

    const-string v1, "SDKCoordinatorDownload"

    const-string v2, "onDownload"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    invoke-direct {p0}, Lcom/loc/u;->d()V

    const-string v1, "SDKCoordinatorDownload"

    const-string v2, "onDownload"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/loc/u;->d()V

    return-void
.end method

.method public c()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/u;->c:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/u;->c:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    iget-object v0, p0, Lcom/loc/u;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/u;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/u;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/loc/u;->d()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/u;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/loc/u;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Lcom/loc/v$a;

    sget-object v1, Lcom/loc/u;->h:Ljava/lang/String;

    const-string v2, "1.0.0"

    const-string v3, "sodownload_1.0.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/loc/v$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/loc/v$a;->a([Ljava/lang/String;)Lcom/loc/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/v$a;->a()Lcom/loc/v;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/u;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/n;->a(Landroid/content/Context;Lcom/loc/v;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/loc/u;->d()V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/loc/u;->e:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    :try_start_1
    new-instance v1, Lcom/loc/v$a;

    sget-object v2, Lcom/loc/u;->i:Ljava/lang/String;

    const-string v3, "1.0.0"

    const-string v4, "sodownload_1.0.0"

    invoke-direct {v1, v2, v3, v4}, Lcom/loc/v$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/loc/v$a;->a([Ljava/lang/String;)Lcom/loc/v$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loc/v$a;->a()Lcom/loc/v;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/u;->g:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/loc/n;->a(Landroid/content/Context;Lcom/loc/v;)Z
    :try_end_1
    .catch Lcom/loc/l; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const-string v1, "SDKCoordinatorDownload"

    const-string v2, "onDownload"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/loc/u;->d()V

    new-instance v0, Lcom/loc/v$a;

    sget-object v1, Lcom/loc/u;->i:Ljava/lang/String;

    const-string v2, "1.0.0"

    const-string v3, "sodownload_1.0.0"

    invoke-direct {v0, v1, v2, v3}, Lcom/loc/v$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/loc/v$a;->a([Ljava/lang/String;)Lcom/loc/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/v$a;->a()Lcom/loc/v;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/u;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/loc/n;->a(Landroid/content/Context;Lcom/loc/v;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/loc/l;->printStackTrace()V

    goto :goto_1
.end method

.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/u;->g:Landroid/content/Context;

    const-string v2, "tempfile"

    invoke-static {v1, v2}, Lcom/loc/u;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/loc/v$a;

    sget-object v2, Lcom/loc/u;->i:Ljava/lang/String;

    const-string v3, "1.0.0"

    const-string v4, "sodownload_1.0.0"

    invoke-direct {v1, v2, v3, v4}, Lcom/loc/v$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/loc/v$a;->a([Ljava/lang/String;)Lcom/loc/v$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loc/v$a;->a()Lcom/loc/v;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/u;->g:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/loc/n;->a(Landroid/content/Context;Lcom/loc/v;)Z

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/loc/u;->a:Lcom/loc/bp;

    invoke-virtual {v0, p0}, Lcom/loc/bp;->a(Lcom/loc/bp$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SDKCoordinatorDownload"

    const-string v2, "run"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/loc/u;->d()V

    goto :goto_0
.end method
