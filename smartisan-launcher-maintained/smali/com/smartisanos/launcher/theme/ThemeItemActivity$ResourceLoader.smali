.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;
.super Landroid/os/AsyncTask;
.source "ThemeItemActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/theme/ThemeItemActivity;
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

.field private themeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;


.method public constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 675
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;->themeIds:Ljava/util/List;

    .line 676
    iput-object p2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;->mContext:Landroid/content/Context;

    .line 677
    iput-object p3, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;->themeIds:Ljava/util/List;

    .line 678
    return-void
.end method

.method private getImgInputStream(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 709
    const/4 v1, 0x0

    .line 710
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 712
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 714
    :goto_0
    if-nez v1, :cond_0

    .line 717
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 720
    :cond_0
    :goto_1
    return-object v1

    .line 718
    :catch_0
    move-exception v2

    goto :goto_1

    .line 713
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private readAssetsResource(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "assetsPath"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 697
    const/4 v0, 0x0

    .line 699
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 700
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-direct {p0, p1, v3}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;->getImgInputStream(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/io/InputStream;

    move-result-object v2

    .line 701
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2, p2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 705
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .line 702
    :catch_0
    move-exception v1

    .line 703
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


.method protected varargs doInBackground([Lcom/smartisanos/launcher/theme/DrawableCache;)Ljava/lang/Object;
    .locals 8
    .param p1, "params"    # [Lcom/smartisanos/launcher/theme/DrawableCache;

    .prologue
    .line 682
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;->themeIds:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 683
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 685
    :try_start_0
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;->themeIds:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 686
    .local v5, "themeId":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "theme_preview/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/dot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 687
    .local v3, "path":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_dot"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;->readAssetsResource(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 688
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v6, v5, v0}, Lcom/smartisanos/launcher/theme/DrawableCache;->putImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "themeId":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 689
    :catch_0
    move-exception v1

    .line 690
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 693
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v6, 0x0

    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 672
    check-cast p1, [Lcom/smartisanos/launcher/theme/DrawableCache;

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;->doInBackground([Lcom/smartisanos/launcher/theme/DrawableCache;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$ResourceLoader;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    .line 726
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 727
    return-void
.end method
