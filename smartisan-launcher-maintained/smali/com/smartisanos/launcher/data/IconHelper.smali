.class public Lcom/smartisanos/launcher/data/IconHelper;
.super Ljava/lang/Object;
.source "IconHelper.java"


.field private static final TAG:Ljava/lang/String; = "IconHelper"


.field private final mContext:Lcom/smartisanos/home/Launcher;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private mIconDpi:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;


.method public constructor <init>(Lcom/smartisanos/home/Launcher;)V
    .locals 1
    .param p1, "context"    # Lcom/smartisanos/home/Launcher;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/smartisanos/launcher/data/IconHelper;->mContext:Lcom/smartisanos/home/Launcher;

    .line 22
    invoke-virtual {p1}, Lcom/smartisanos/home/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/data/IconHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 23
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/IconHelper;->getIconDpi()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/launcher/data/IconHelper;->mIconDpi:I

    .line 25
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/IconHelper;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/data/IconHelper;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 26
    return-void
.end method

.method private getIconDpi()I
    .locals 3

    .prologue
    .line 30
    iget-object v1, p0, Lcom/smartisanos/launcher/data/IconHelper;->mContext:Lcom/smartisanos/home/Launcher;

    const-string v2, "activity"

    .line 31
    invoke-virtual {v1, v2}, Lcom/smartisanos/home/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 32
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    return v1
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/IconHelper;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 37
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Utils;->drawableToBitmapWithoutShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/data/Utils;->generateDefaultShadowIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method


.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/launcher/data/IconHelper;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 49
    :try_start_0
    iget v2, p0, Lcom/smartisanos/launcher/data/IconHelper;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 54
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/IconHelper;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method
