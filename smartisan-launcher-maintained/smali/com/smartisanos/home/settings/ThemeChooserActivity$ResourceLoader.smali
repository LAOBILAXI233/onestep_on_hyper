.class Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;
.super Landroid/os/AsyncTask;
.source "ThemeChooserActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/ThemeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/smartisanos/launcher/theme/DrawableCache;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


.field private mContext:Landroid/content/Context;

.field private mLaunchMode:I

.field private mThemeOrderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;


.method public constructor <init>(Lcom/smartisanos/home/settings/ThemeChooserActivity;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/theme/Theme;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/theme/Theme;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p3, "installedList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    .local p4, "notInstalledList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/theme/Theme;>;"
    iput-object p1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 526
    const/4 v1, -0x1

    iput v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->mLaunchMode:I

    .line 527
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->mThemeOrderList:Ljava/util/List;

    .line 529
    iput-object p2, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->mContext:Landroid/content/Context;

    .line 530
    const-string v1, "launcher_mode"

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/data/LauncherSettings;->readSetting(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->mLaunchMode:I

    .line 533
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 534
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/theme/Theme;

    .line 535
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    iget-object v2, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->mThemeOrderList:Ljava/util/List;

    iget-object v3, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 538
    .end local v0    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_0
    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 539
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/theme/Theme;

    .line 540
    .restart local v0    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    iget-object v2, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->mThemeOrderList:Ljava/util/List;

    iget-object v3, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 543
    .end local v0    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_1
    return-void
.end method


.method protected varargs doInBackground([Lcom/smartisanos/launcher/theme/DrawableCache;)Ljava/lang/Object;
    .locals 9
    .param p1, "params"    # [Lcom/smartisanos/launcher/theme/DrawableCache;

    .prologue
    .line 547
    iget-object v5, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->mThemeOrderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 548
    .local v4, "themeId":Ljava/lang/String;
    invoke-static {v4}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v3

    .line 549
    .local v3, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v3, :cond_0

    .line 550
    invoke-static {}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t find theme by id ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 554
    :cond_0
    :try_start_0
    iget v6, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->mLaunchMode:I

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/theme/Theme;->smallPreviewAssetsPath(I)Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, "path":Ljava/lang/String;
    iget-object v6, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/smartisanos/launcher/theme/Theme;->readAssetsResource(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 556
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    aget-object v6, p1, v6

    iget-object v7, v3, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Lcom/smartisanos/launcher/theme/DrawableCache;->putImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 557
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 558
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 561
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    .end local v4    # "themeId":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 524
    check-cast p1, [Lcom/smartisanos/launcher/theme/DrawableCache;

    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->doInBackground([Lcom/smartisanos/launcher/theme/DrawableCache;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->access$200(Lcom/smartisanos/home/settings/ThemeChooserActivity;)V

    .line 567
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 568
    return-void
.end method
