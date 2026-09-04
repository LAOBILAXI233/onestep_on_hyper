.class final Lcom/smartisanos/launcher/theme/ThemeManager$1;
.super Ljava/lang/Object;
.source "ThemeManager.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ThemeManager;->storeNewThemeToCurrent(Landroid/content/Context;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 443
    const-string v2, ""

    .line 444
    .local v2, "suffix":Ljava/lang/String;
    const-string v3, "smartisan_theme_aero"

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeManager;->access$000()Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/theme/Theme;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v3

    sget-object v4, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/data/Utils;->getLockscreenWallpaperByUri(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 446
    .local v1, "ori":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 447
    .local v0, "isDarkImage":Z
    if-eqz v1, :cond_0

    .line 448
    invoke-static {v1}, Lcom/smartisanos/launcher/data/Utils;->isDarkImage(Landroid/graphics/Bitmap;)Z

    move-result v0

    .line 449
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 451
    :cond_0
    if-nez v0, :cond_1

    .line 452
    const-string v2, "_light"

    .line 455
    .end local v0    # "isDarkImage":Z
    .end local v1    # "ori":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeManager;->access$000()Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/smartisanos/launcher/data/Utils;->setStatusBarColor(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V

    .line 456
    return-void
.end method
