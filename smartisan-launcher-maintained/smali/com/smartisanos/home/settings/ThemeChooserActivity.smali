.class public Lcom/smartisanos/home/settings/ThemeChooserActivity;
.super Landroid/app/Activity;
.source "ThemeChooserActivity.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;,
        Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;
    }
.end annotation


.field private static final FROM_SEARCH:Ljava/lang/String; = "from_search"

.field private static final FROM_SETTINGS:Ljava/lang/String; = "from_settings"

.field public static final REQUEST_CODE_THEME_ITEM:I = 0x1

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static volatile self:Lcom/smartisanos/home/settings/ThemeChooserActivity;


.field private imgResourceLoader:Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;

.field private launchFromSearch:Z

.field private mAlreadyClicked:Z

.field private mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

.field private mInstalledAdapter:Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;

.field private mInstalledListView:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

.field private mInstalledThemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/theme/Theme;",
            ">;"
        }
    .end annotation
.end field

.field private mNotInstalledAdapter:Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;

.field private mNotInstalledListView:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

.field private mNotInstalledThemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/theme/Theme;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mThemeNotInstalledText:Landroid/widget/TextView;

.field private mTitle:Lcom/smartisanos/home/widget/sys/Title;

.field private packageStatusReceiver:Landroid/content/BroadcastReceiver;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    iput-boolean v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->launchFromSearch:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->imgResourceLoader:Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;

    .line 74
    new-instance v0, Lcom/smartisanos/home/settings/ThemeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity$1;-><init>(Lcom/smartisanos/home/settings/ThemeChooserActivity;)V

    iput-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->packageStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 240
    iput-boolean v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mAlreadyClicked:Z

    .line 275
    new-instance v0, Lcom/smartisanos/home/settings/ThemeChooserActivity$3;

    invoke-direct {v0, p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity$3;-><init>(Lcom/smartisanos/home/settings/ThemeChooserActivity;)V

    iput-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/LOG;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->log:Lcom/smartisanos/launcher/LOG;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/home/settings/ThemeChooserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/settings/ThemeChooserActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->updateThemeList()V

    return-void
.end method

.method static synthetic access$200(Lcom/smartisanos/home/settings/ThemeChooserActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/settings/ThemeChooserActivity;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->updateAdapter()V

    return-void
.end method

.method static synthetic access$300(Lcom/smartisanos/home/settings/ThemeChooserActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/ThemeChooserActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mAlreadyClicked:Z

    return v0
.end method

.method static synthetic access$302(Lcom/smartisanos/home/settings/ThemeChooserActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/smartisanos/home/settings/ThemeChooserActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mAlreadyClicked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/smartisanos/home/settings/ThemeChooserActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/ThemeChooserActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mInstalledThemes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisanos/home/settings/ThemeChooserActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/ThemeChooserActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mNotInstalledThemes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/smartisanos/home/settings/ThemeChooserActivity;)Lcom/smartisanos/launcher/theme/DrawableCache;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/ThemeChooserActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    return-object v0
.end method

.method private doSwitchThemeFinishSelf()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->setResult(I)V

    .line 259
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->finish()V

    .line 260
    return-void
.end method

.method public static getInstance()Lcom/smartisanos/home/settings/ThemeChooserActivity;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->self:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    return-object v0
.end method

.method private initThemeViews()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 215
    sget v3, Lcom/smartisanos/launcher/ResIds$id;->theme_not_installed_text:I

    invoke-virtual {p0, v3}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mThemeNotInstalledText:Landroid/widget/TextView;

    .line 217
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 218
    .local v2, "selectorBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 219
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    sget v3, Lcom/smartisanos/launcher/ResIds$id;->theme_list_scrollview:I

    invoke-virtual {p0, v3}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 220
    .local v1, "scrollView":Landroid/widget/ScrollView;
    sget v3, Lcom/smartisanos/launcher/ResIds$id;->installed_list:I

    invoke-virtual {p0, v3}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    iput-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mInstalledListView:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    .line 221
    iget-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mInstalledListView:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/theme/ThemePreviewGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 222
    sget v3, Lcom/smartisanos/launcher/ResIds$id;->not_installed_list:I

    invoke-virtual {p0, v3}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    iput-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mNotInstalledListView:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    .line 223
    iget-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mNotInstalledListView:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    invoke-virtual {v3, v0}, Lcom/smartisanos/launcher/theme/ThemePreviewGridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 225
    new-instance v3, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;

    invoke-direct {v3, p0, p0, v6}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;-><init>(Lcom/smartisanos/home/settings/ThemeChooserActivity;Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mInstalledAdapter:Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;

    .line 226
    new-instance v3, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;

    const/4 v4, 0x2

    invoke-direct {v3, p0, p0, v4}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;-><init>(Lcom/smartisanos/home/settings/ThemeChooserActivity;Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mNotInstalledAdapter:Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;

    .line 228
    iget-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mInstalledListView:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    iget-object v4, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mInstalledAdapter:Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/theme/ThemePreviewGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 229
    iget-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mNotInstalledListView:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    iget-object v4, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mNotInstalledAdapter:Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/theme/ThemePreviewGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 231
    iget-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mInstalledListView:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    iget-object v4, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/theme/ThemePreviewGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 232
    iget-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mNotInstalledListView:Lcom/smartisanos/launcher/theme/ThemePreviewGridView;

    iget-object v4, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/theme/ThemePreviewGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 234
    new-instance v3, Lcom/smartisanos/launcher/theme/DrawableCache;

    invoke-direct {v3}, Lcom/smartisanos/launcher/theme/DrawableCache;-><init>()V

    iput-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    .line 235
    new-instance v3, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;

    iget-object v4, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mInstalledThemes:Ljava/util/List;

    iget-object v5, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mNotInstalledThemes:Ljava/util/List;

    invoke-direct {v3, p0, p0, v4, v5}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;-><init>(Lcom/smartisanos/home/settings/ThemeChooserActivity;Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->imgResourceLoader:Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;

    .line 236
    iget-object v3, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->imgResourceLoader:Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;

    new-array v4, v6, [Lcom/smartisanos/launcher/theme/DrawableCache;

    iget-object v5, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    invoke-virtual {v1, v7, v7}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 238
    return-void
.end method

.method private updateAdapter()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 312
    iget-object v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mThemeNotInstalledText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    .line 313
    .local v0, "textVisibility":I
    iget-object v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mNotInstalledThemes:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mNotInstalledThemes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 314
    :cond_0
    if-nez v0, :cond_1

    .line 315
    iget-object v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mThemeNotInstalledText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mInstalledAdapter:Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;

    invoke-virtual {v1}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->notifyDataSetChanged()V

    .line 323
    iget-object v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mNotInstalledAdapter:Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;

    invoke-virtual {v1}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ThemeListAdapter;->notifyDataSetChanged()V

    .line 324
    return-void

    .line 318
    :cond_2
    if-ne v0, v2, :cond_1

    .line 319
    iget-object v1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mThemeNotInstalledText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateThemeDisplayName(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 180
    .local v4, "resources":Landroid/content/res/Resources;
    sget-object v8, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 181
    .local v5, "size":I
    if-nez v5, :cond_1

    .line 198
    :cond_0
    return-void

    .line 184
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 185
    sget-object v8, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_ORDER:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    .local v2, "id":Ljava/lang/String;
    sget-object v8, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/theme/Theme;

    .line 187
    .local v6, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v6, :cond_2

    .line 184
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_2
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "string"

    const-string v10, "com.smartisanos.home"

    invoke-virtual {v4, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 192
    .local v7, "themeNameResId":I
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "name":Ljava/lang/String;
    iput-object v3, v6, Lcom/smartisanos/launcher/theme/Theme;->mName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 194
    .end local v3    # "name":Ljava/lang/String;
    .end local v7    # "themeNameResId":I
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private updateThemeList()V
    .locals 1

    .prologue
    .line 174
    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getInstalledThemes(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mInstalledThemes:Ljava/util/List;

    .line 175
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mInstalledThemes:Ljava/util/List;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeManager;->getNotInstalledThemeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mNotInstalledThemes:Ljava/util/List;

    .line 176
    return-void
.end method


.method public finish()V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 329
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->imgResourceLoader:Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->imgResourceLoader:Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->cancel(Z)Z

    .line 332
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->launchFromSearch:Z

    if-eqz v0, :cond_1

    .line 333
    const/4 v0, 0x0

    sget v1, Lcom/smartisanos/launcher/ResIds$anim;->slide_down_out:I

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->overridePendingTransition(II)V

    .line 337
    :goto_0
    return-void

    .line 335
    :cond_1
    sget v0, Lcom/smartisanos/launcher/ResIds$anim;->slide_in_from_left:I

    sget v1, Lcom/smartisanos/launcher/ResIds$anim;->slide_out_to_right:I

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 264
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 265
    packed-switch p2, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 267
    :pswitch_0
    invoke-direct {p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->doSwitchThemeFinishSelf()V

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/smartisanos/launcher/data/Utils;->applyTransparentStatusBar(Landroid/content/Context;Landroid/view/Window;)V

    .line 112
    const/4 v7, 0x1

    invoke-static {p0, v7}, Lcom/smartisanos/launcher/data/Utils;->setMiuiStatusBarDarkMode(Landroid/app/Activity;Z)Z

    .line 113
    sget v7, Lcom/smartisanos/launcher/ResIds$layout;->theme_preview_gridview:I

    invoke-virtual {p0, v7}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->setContentView(I)V

    .line 114
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v7, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    if-eqz v7, :cond_0

    .line 116
    iget-object v7, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    invoke-virtual {v7}, Lcom/smartisanos/launcher/theme/DrawableCache;->clear()V

    .line 118
    :cond_0
    new-instance v7, Lcom/smartisanos/launcher/theme/DrawableCache;

    invoke-direct {v7}, Lcom/smartisanos/launcher/theme/DrawableCache;-><init>()V

    iput-object v7, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    .line 119
    invoke-direct {p0, p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->updateThemeDisplayName(Landroid/content/Context;)V

    .line 120
    invoke-direct {p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->updateThemeList()V

    .line 121
    invoke-direct {p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->initThemeViews()V

    .line 124
    const v7, 0x7f0f0057

    invoke-virtual {p0, v7}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/home/widget/sys/Title;

    .line 125
    .local v6, "title":Lcom/smartisanos/home/widget/sys/Title;
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080082

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/home/widget/sys/Title;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    const v7, 0x7f0800f3

    invoke-virtual {v6, v7}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonText(I)V

    .line 127
    new-instance v7, Lcom/smartisanos/home/settings/ThemeChooserActivity$2;

    invoke-direct {v7, p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity$2;-><init>(Lcom/smartisanos/home/settings/ThemeChooserActivity;)V

    invoke-virtual {v6, v7}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 134
    .local v5, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 135
    .local v0, "FROM_SEARCH_FLAG_LOST":Z
    const/4 v1, 0x0

    .line 137
    .local v1, "FROM_SETTINGS_FLAG_LOST":Z
    :try_start_0
    const-string v7, "from_search"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->launchFromSearch:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    const/4 v4, 0x0

    .line 144
    .local v4, "fromSetting":Z
    :try_start_1
    const-string v7, "from_settings"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 149
    :goto_1
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 150
    sget-object v7, Lcom/smartisanos/home/settings/ThemeChooserActivity;->log:Lcom/smartisanos/launcher/LOG;

    const-string v8, "FROM_SETTINGS_FLAG_LOST & FROM_SEARCH_FLAG_LOST"

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->finish()V

    .line 171
    :goto_2
    return-void

    .line 138
    .end local v4    # "fromSetting":Z
    :catch_0
    move-exception v2

    .line 139
    .local v2, "e":Ljava/lang/RuntimeException;
    const/4 v0, 0x1

    .line 140
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "fromSetting":Z
    :catch_1
    move-exception v2

    .line 146
    .restart local v2    # "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    .line 147
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 165
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v7, "package"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 169
    iget-object v7, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->packageStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    sput-object p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->self:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 203
    sput-object v2, Lcom/smartisanos/home/settings/ThemeChooserActivity;->self:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    .line 204
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->imgResourceLoader:Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->imgResourceLoader:Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/ThemeChooserActivity$ResourceLoader;->cancel(Z)Z

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/theme/DrawableCache;->clear()V

    .line 209
    iput-object v2, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mDrawableCache:Lcom/smartisanos/launcher/theme/DrawableCache;

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->packageStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->updateAdapter()V

    .line 246
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->restoreAnimationScale(I)V

    .line 249
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mAlreadyClicked:Z

    .line 250
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mNotInstalledThemes:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity;->mNotInstalledThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 254
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 255
    return-void
.end method

.method public updateThemeStatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "themeId"    # Ljava/lang/String;

    .prologue
    .line 572
    if-nez p1, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    sget-object v1, Lcom/smartisanos/launcher/theme/ThemeManager;->SUPPORTED_THEME_MAP:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/theme/Theme;

    .line 576
    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-nez v0, :cond_0

    goto :goto_0
.end method
