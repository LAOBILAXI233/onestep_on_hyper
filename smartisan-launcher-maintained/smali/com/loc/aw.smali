.class public Lcom/loc/aw;
.super Ljava/lang/Thread;
.source "DexDownLoad.java"

.implements Lcom/loc/bp$a;


.field private a:Lcom/loc/ax;

.field private b:Lcom/loc/bp;

.field private c:Lcom/loc/v;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/RandomAccessFile;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:I


.method public constructor <init>(Landroid/content/Context;Lcom/loc/ax;Lcom/loc/v;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    iput-object p3, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/loc/aw;->a:Lcom/loc/ax;

    new-instance v0, Lcom/loc/bp;

    new-instance v1, Lcom/loc/az;

    iget-object v2, p0, Lcom/loc/aw;->a:Lcom/loc/ax;

    invoke-direct {v1, v2}, Lcom/loc/az;-><init>(Lcom/loc/ax;)V

    invoke-direct {v0, v1}, Lcom/loc/bp;-><init>(Lcom/loc/bs;)V

    iput-object v0, p0, Lcom/loc/aw;->b:Lcom/loc/bp;

    iget-object v0, p0, Lcom/loc/aw;->a:Lcom/loc/ax;

    invoke-virtual {v0}, Lcom/loc/ax;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/loc/aw;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/aw;->f:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/loc/aw;->h:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/loc/aw;->i:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/loc/aw;->j:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/loc/aw;->l:I

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/loc/aw;->m:I

    invoke-virtual {p2}, Lcom/loc/ax;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aw;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/aw;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/loc/ba;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aw;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "DexDownLoad"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/loc/aj;

    iget-object v1, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    invoke-static {}, Lcom/loc/bd;->c()Lcom/loc/bd;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/loc/aj;-><init>(Landroid/content/Context;Lcom/loc/ai;)V

    const-string v1, "copy"

    invoke-static {p1, v1}, Lcom/loc/be;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/loc/be;

    invoke-direct {v3}, Lcom/loc/be;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/loc/aj;->c(Ljava/lang/String;Lcom/loc/ak;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/loc/ba;->a(Ljava/util/List;)V

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bf;

    iget-object v5, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/loc/bf;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/loc/ba;->a(Landroid/content/Context;Lcom/loc/aj;Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/loc/q;->m(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/loc/aj;Lcom/loc/bf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-string v0, "errorstatus"

    invoke-virtual {p2}, Lcom/loc/bf;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    invoke-virtual {v2}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    invoke-virtual {v3}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/loc/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    invoke-static {v0, p1, v1}, Lcom/loc/ba;->a(Landroid/content/Context;Lcom/loc/aj;Lcom/loc/v;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    iget-object v2, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/aw;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    invoke-virtual {v5}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v5}, Lcom/loc/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/ba;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/loc/bb;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    :cond_0
    move v0, v7

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/aw;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {p3, p4}, Lcom/loc/ba;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3, p4, p5}, Lcom/loc/be;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/loc/be;

    invoke-direct {v1}, Lcom/loc/be;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/loc/aj;->c(Ljava/lang/String;Lcom/loc/ak;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/loc/ba;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/loc/bf$a;

    move-object v2, p6

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/loc/bf$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "usedex"

    invoke-virtual {v0, v1}, Lcom/loc/bf$a;->a(Ljava/lang/String;)Lcom/loc/bf$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bf$a;->a()Lcom/loc/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    iget-object v3, p0, Lcom/loc/aw;->d:Ljava/lang/String;

    invoke-static {v1, p1, v2, v0, v3}, Lcom/loc/ba;->a(Landroid/content/Context;Lcom/loc/aj;Lcom/loc/v;Lcom/loc/bf;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    iget-object v2, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/aw;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    invoke-virtual {v4}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/loc/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/ba;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/loc/bb;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    move v0, v7

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "processDownloadedFile()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "processDownloadedFile()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "processDownloadedFile()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    invoke-virtual {v1}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    invoke-virtual {v1}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    new-instance v1, Lcom/loc/aj;

    iget-object v0, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    invoke-static {}, Lcom/loc/bd;->c()Lcom/loc/bd;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/loc/aj;-><init>(Landroid/content/Context;Lcom/loc/ai;)V

    :try_start_0
    const-string v0, "usedex"

    invoke-static {p3, v0}, Lcom/loc/be;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/loc/be;

    invoke-direct {v2}, Lcom/loc/be;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/loc/aj;->c(Ljava/lang/String;Lcom/loc/ak;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bf;

    invoke-virtual {v0}, Lcom/loc/bf;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/aw;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/bh;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v2, "DexDownLoad"

    const-string v4, "isDownloaded()"

    invoke-static {v0, v2, v4}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v1, p1}, Lcom/loc/ba$a;->a(Lcom/loc/aj;Ljava/lang/String;)Lcom/loc/bf;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/loc/aw;->a(Lcom/loc/aj;Lcom/loc/bf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private d()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/loc/aw;->m:I

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Lcom/loc/aw;->l:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/loc/aw;->i:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/loc/aw;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/loc/aw;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/aw;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/aw;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/aw;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/aw;->k:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/loc/aw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/loc/aw;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/loc/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    invoke-virtual {v0}, Lcom/loc/v;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/aw;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "isNeedDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto :goto_0
.end method


.method public a()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/loc/aw;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "startDownload"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->e:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/aw;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "DexDownLoad"

    const-string v2, "onException()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "onException()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a([BJ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/aw;->d:Ljava/lang/String;

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

    iput-object v1, p0, Lcom/loc/aw;->e:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/loc/aw;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/loc/aw;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "DexDownLoad"

    const-string v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_4
    const-string v1, "DexDownLoad"

    const-string v2, "onDownload()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/aw;->e:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/aw;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/aw;->a:Lcom/loc/ax;

    invoke-virtual {v0}, Lcom/loc/ax;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/loc/aw;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/loc/ba;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/aw;->a:Lcom/loc/ax;

    invoke-virtual {v0}, Lcom/loc/ax;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/loc/aj;

    iget-object v0, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    invoke-static {}, Lcom/loc/bd;->c()Lcom/loc/bd;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/loc/aj;-><init>(Landroid/content/Context;Lcom/loc/ai;)V

    new-instance v0, Lcom/loc/bf$a;

    iget-object v1, p0, Lcom/loc/aw;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/aw;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/aw;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/loc/bf$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "copy"

    invoke-virtual {v0, v1}, Lcom/loc/bf$a;->a(Ljava/lang/String;)Lcom/loc/bf$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bf$a;->a()Lcom/loc/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/aw;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/aw;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/aw;->j:Ljava/lang/String;

    invoke-static {v1, v3, v4, v5}, Lcom/loc/be;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/loc/ba$a;->a(Lcom/loc/aj;Lcom/loc/bf;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    new-instance v0, Lcom/loc/bf$a;

    iget-object v1, p0, Lcom/loc/aw;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    invoke-virtual {v3}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/loc/ba;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/loc/aw;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/aw;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/loc/bf$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "usedex"

    invoke-virtual {v0, v1}, Lcom/loc/bf$a;->a(Ljava/lang/String;)Lcom/loc/bf$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/bf$a;->a()Lcom/loc/bf;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    iget-object v3, p0, Lcom/loc/aw;->d:Ljava/lang/String;

    invoke-static {v1, v6, v2, v0, v3}, Lcom/loc/ba;->a(Landroid/content/Context;Lcom/loc/aj;Lcom/loc/v;Lcom/loc/bf;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    iget-object v2, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/aw;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/aw;->c:Lcom/loc/v;

    invoke-virtual {v4}, Lcom/loc/v;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/loc/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/ba;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/loc/aw;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/loc/aw;->j:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/loc/bb;->a(Landroid/content/Context;Lcom/loc/v;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "DexDownLoad"

    const-string v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    const-string v1, "DexDownLoad"

    const-string v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :cond_1
    :try_start_6
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/loc/aw;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    :try_start_7
    const-string v1, "DexDownLoad"

    const-string v2, "onFinish()"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method

.method public run()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/loc/aw;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/aw;->b:Lcom/loc/bp;

    invoke-virtual {v0, p0}, Lcom/loc/bp;->a(Lcom/loc/bp$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "DexDownLoad"

    const-string v2, "run"

    invoke-static {v0, v1, v2}, Lcom/loc/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
