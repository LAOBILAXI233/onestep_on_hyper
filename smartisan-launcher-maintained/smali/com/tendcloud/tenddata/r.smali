.class public Lcom/tendcloud/tenddata/r;
.super Ljava/lang/Object;


.field static a:Landroid/content/pm/PackageManager;

.field static b:Landroid/content/pm/PackageInfo;


.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/r;->a:Landroid/content/pm/PackageManager;

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/r;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/r;->b:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/r;->b:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tendcloud/tenddata/r;->a(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/r;->b:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/r;->b:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tendcloud/tenddata/r;->a(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/r;->b:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "unknown"

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)J
    .locals 2

    const/16 v0, 0x9

    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/an;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/r;->b:Landroid/content/pm/PackageInfo;

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)J
    .locals 2

    const/16 v0, 0x9

    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/an;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tendcloud/tenddata/r;->b:Landroid/content/pm/PackageInfo;

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)J
    .locals 3

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/r;->a:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tendcloud/tenddata/r;->a(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/r;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/r;->b:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tendcloud/tenddata/r;->a(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/tendcloud/tenddata/r;->b:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
