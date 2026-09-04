.class public final Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;
.super Ljava/lang/Object;
.source "IconPackChoiceSupport.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;,
        Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;,
        Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;
    }
.end annotation


.field public static final DEFAULT_MARKER:Ljava/lang/String; = "__smartisan_default_icon__"

.field public static final ICON_PACK_PREFIX:Ljava/lang/String; = "__iconpack__|"

.field public static final IMPROVED_MARKER:Ljava/lang/String; = "__smartisan_improved_icon__"

.field private static sAllChoicesCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sInstalledAppLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->sAllChoicesCache:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->buildAllChoicesForPack(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/Context;I)I
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->dp(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static applyChoice(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;Ljava/lang/String;)V
    .locals 1

    .line 208
    const-string v0, "__smartisan_improved_icon__"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyIconPackDrawableChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;Ljava/lang/String;)V

    .line 210
    return-void

    .line 212
    :cond_0
    const-string v0, "__smartisan_default_icon__"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyDefaultIconChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    .line 214
    return-void

    .line 216
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyIconPackDrawableChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method private static buildAllChoicesForPack(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->sAllChoicesCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_all_cache_miss

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    :cond_all_cache_miss
    .line 245
    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v9, p0

    invoke-static {p0, p1, v0, v0, v1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->parsePack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;

    move-result-object v10

    invoke-static {v9, p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getResourcesForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    iget-object p0, v10, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;->drawableNames:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    invoke-static {v8, p1, v6}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->hasDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :goto_0

    .line 248
    new-instance v1, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;

    invoke-static {p1, v6}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->buildIconPackChoice(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v6

    iget-object v2, v10, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;->drawablePackages:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v9, v2, v5}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getAppLabelOrDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    goto :goto_0

    .line 250
    :cond_0
    sget-object p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->sAllChoicesCache:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public static buildIconPackChoice(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__iconpack__|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 51
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getAppLabelOrDefault(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_fallback

    sget-object v0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->sInstalledAppLabelCache:Ljava/util/HashMap;

    if-eqz v0, :cond_new_cache

    goto :goto_cache_ready

    :cond_new_cache
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->sInstalledAppLabelCache:Ljava/util/HashMap;

    :goto_cache_ready
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_return_cached

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fallback

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fallback

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_return_cached
    return-object v1

    :catchall_0
    move-exception p0

    :cond_fallback
    return-object p2
.end method

.method private static getInstalledAppLabelCache(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->sInstalledAppLabelCache:Ljava/util/HashMap;

    if-eqz v0, :cond_new_cache

    return-object v0

    :cond_new_cache
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->sInstalledAppLabelCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private static buildMatchedChoices(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;",
            "Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;",
            ">;"
        }
    .end annotation

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    nop

    .line 222
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->loadUnOfficialIcon(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v7, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0

    .line 223
    :goto_1
    if-eqz v7, :cond_0

    new-instance v1, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;

    const/4 v5, 0x0

    const-string v6, "\u6539\u8fdb\u7248\u56fe\u6807"

    const-string v3, "__smartisan_improved_icon__"

    const/4 v4, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->getIconPackPackages(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 225
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 226
    if-eqz v1, :cond_2

    .line 227
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 228
    iget-object v4, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;->componentName:Ljava/lang/String;

    invoke-static {p0, v3, v4, v5}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getMatchedChoice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;

    move-result-object v3

    .line 229
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->value:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_1
    goto :goto_2

    .line 232
    :cond_2
    return-object v0
.end method

.method private static dp(Landroid/content/Context;I)I
    .locals 0

    .line 330
    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getChoiceDrawableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 64
    invoke-static {p0}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->isIconPackChoice(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 65
    :cond_0
    const-string v0, "__iconpack__|"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 66
    const/16 v1, 0x7c

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 67
    if-ltz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 67
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getChoiceIconPackPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 56
    invoke-static {p0}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->isIconPackChoice(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 57
    :cond_0
    const-string v0, "__iconpack__|"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 58
    const/16 v2, 0x7c

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 59
    if-gt v2, v0, :cond_1

    return-object v1

    .line 60
    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "__smartisan_default_icon__"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "__smartisan_improved_icon__"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-static {p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->isIconPackChoice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    invoke-static {p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getChoiceIconPackPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getChoiceDrawableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getDrawableByNameFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 76
    :cond_1
    invoke-static {p0, p1}, Lcom/smartisanos/home/settings/icons/IconPackManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 72
    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDrawableByNameFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 80
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 83
    const-string v1, "drawable"

    invoke-virtual {p0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 84
    if-nez v1, :cond_1

    const-string v1, "mipmap"

    invoke-virtual {p0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 85
    :cond_1
    if-nez v1, :cond_2

    return-object v0

    .line 86
    :cond_2
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    return-object v0

    .line 80
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static hasDrawableByNameFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getResourcesForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->hasDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static getResourcesForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static hasDrawableByName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "drawable"

    invoke-virtual {p0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "mipmap"

    invoke-virtual {p0, p2, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :cond_1
    if-nez v2, :cond_2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method private static getMatchedChoice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;
    .locals 6

    .line 236
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->parsePack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;

    move-result-object p2

    .line 237
    iget-object p3, p2, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;->componentDrawable:Ljava/lang/String;

    if-eqz p3, :cond_0

    iget-object p2, p2, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;->componentDrawable:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;->packageDrawable:Ljava/lang/String;

    :goto_0
    move-object v3, p2

    .line 238
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    return-object p3

    .line 239
    :cond_1
    invoke-static {p0, p1, v3}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getDrawableByNameFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 240
    if-nez v5, :cond_2

    return-object p3

    .line 241
    :cond_2
    new-instance p2, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;

    invoke-static {p1, v3}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->buildIconPackChoice(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getPackLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method

.method private static getPackLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 322
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 323
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 324
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 325
    :catchall_0
    move-exception p0

    :cond_0
    nop

    .line 326
    return-object p1
.end method

.method public static isIconPackChoice(Ljava/lang/String;)Z
    .locals 1

    .line 47
    if-eqz p0, :cond_0

    const-string v0, "__iconpack__|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static parseComponentClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 309
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 310
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 311
    const/16 v2, 0x7d

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 312
    if-gez v0, :cond_1

    return-object v1

    .line 313
    :cond_1
    if-ltz v2, :cond_2

    if-gt v2, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 314
    :cond_3
    invoke-static {p0}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->parseComponentPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 316
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 317
    :cond_4
    return-object p0
.end method

.method private static parseComponentPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 300
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 301
    :cond_0
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 302
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 303
    if-gez v0, :cond_1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 304
    :cond_1
    if-gt v2, v0, :cond_2

    return-object v1

    .line 305
    :cond_2
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parsePack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;
    .locals 8

    .line 254
    new-instance v0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;-><init>(Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$1;)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 255
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 256
    :cond_0
    nop

    .line 257
    nop

    .line 259
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 260
    const-string v2, "appfilter"

    const-string v3, "xml"

    invoke-virtual {p0, v2, v3, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 261
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 262
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    move-object p1, v1

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string p1, "appfilter.xml"

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 265
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    .line 266
    invoke-virtual {p1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 267
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 268
    :try_start_2
    const-string v3, "UTF-8"

    invoke-interface {p1, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    .line 270
    :goto_0
    :try_start_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 271
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const-string v3, "item"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 272
    const-string v3, "component"

    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 273
    const-string v4, "drawable"

    invoke-interface {p0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 274
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 275
    if-eqz p4, :cond_2

    invoke-virtual {v7, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;->drawableNames:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->parseComponentPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;->drawablePackages:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 276
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 277
    invoke-static {v3}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->parseComponentPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 278
    invoke-static {v3}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->parseComponentClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 280
    iget-object v5, v0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;->packageDrawable:Ljava/lang/String;

    if-nez v5, :cond_3

    iput-object v4, v0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;->packageDrawable:Ljava/lang/String;

    .line 281
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 282
    iput-object v4, v0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$PackParseResult;->componentDrawable:Ljava/lang/String;

    .line 283
    if-nez p4, :cond_4

    goto :goto_1

    .line 289
    :cond_4
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 293
    :cond_5
    :goto_1
    :try_start_4
    instance-of p2, p0, Landroid/content/res/XmlResourceParser;

    if-eqz p2, :cond_6

    check-cast p0, Landroid/content/res/XmlResourceParser;

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 294
    :cond_6
    :goto_2
    if-eqz p1, :cond_8

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    goto :goto_6

    .line 291
    :catchall_1
    move-exception p2

    move-object v1, p0

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object v1, p1

    goto :goto_3

    :catchall_3
    move-exception p1

    :goto_3
    move-object p1, p0

    goto :goto_4

    :catchall_4
    move-exception p0

    move-object p1, v1

    .line 293
    :goto_4
    :try_start_6
    instance-of p0, v1, Landroid/content/res/XmlResourceParser;

    if-eqz p0, :cond_7

    check-cast v1, Landroid/content/res/XmlResourceParser;

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p0

    .line 294
    :cond_7
    :goto_5
    if-eqz p1, :cond_8

    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception p0

    .line 295
    nop

    .line 296
    :cond_8
    :goto_6
    return-object v0

    .line 255
    :cond_9
    :goto_7
    return-object v0
.end method

.method public static showAllChooser(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
    .locals 18

    .line 140
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    if-eqz v6, :cond_4

    if-nez v7, :cond_0

    goto/16 :goto_2

    .line 141
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->getIconPackPackages(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 142
    const/4 v8, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 146
    :cond_1
    new-instance v9, Landroid/view/ContextThemeWrapper;

    const v0, 0x103012b

    invoke-direct {v9, v6, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 147
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 149
    const/16 v1, 0xc

    invoke-static {v6, v1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v10, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 151
    new-instance v11, Landroid/widget/Spinner;

    invoke-direct {v11, v9}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->getPackLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_2
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090009

    invoke-direct {v3, v9, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v11, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-static {v6}, Lcom/smartisanos/home/settings/icons/IconPackManager;->getSelectedIconPackPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_selected_pack_done

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_selected_pack_done

    invoke-virtual {v11, v4}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_selected_pack_done

    .line 155
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance v12, Landroid/widget/EditText;

    invoke-direct {v12, v9}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 157
    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 158
    const-string v1, "\u641c\u7d22\u56fe\u6807"

    invoke-virtual {v12, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 159
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v12, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v17, Landroid/widget/ProgressBar;

    move-object/from16 v0, v17

    const/4 v1, 0x0

    const v4, 0x1010079

    invoke-direct {v0, v9, v1, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/16 v1, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x30

    invoke-static {v6, v4}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v13, Landroid/widget/GridView;

    invoke-direct {v13, v9}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 161
    const/4 v1, 0x3

    invoke-virtual {v13, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 162
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 163
    const/16 v1, 0x8

    invoke-static {v6, v1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->dp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v13, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 164
    invoke-static {v6, v1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->dp(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 165
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v10, v13, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    new-instance v14, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    invoke-direct {v14, v6, v9, v1, v0}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 167
    invoke-virtual {v13, v14}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    new-array v15, v0, [Ljava/lang/Runnable;

    .line 169
    new-instance v16, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;

    move-object/from16 v0, v16

    move-object v1, v11

    move-object v3, v12

    move-object/from16 v4, p0

    move-object v5, v14

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;-><init>(Landroid/widget/Spinner;Ljava/util/ArrayList;Landroid/widget/EditText;Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;Landroid/view/View;)V

    move-object/from16 v6, p0

    aput-object v16, v15, v8

    .line 183
    new-instance v0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$4;

    invoke-direct {v0, v15}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$4;-><init>([Ljava/lang/Runnable;)V

    invoke-virtual {v11, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 187
    new-instance v0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$5;

    invoke-direct {v0, v15}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$5;-><init>([Ljava/lang/Runnable;)V

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 192
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 193
    const-string v1, "\u5168\u90e8\u56fe\u6807"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 194
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_all_window_done

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    :cond_all_window_done
    .line 197
    new-instance v1, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$6;

    invoke-direct {v1, v14, v6, v7, v0}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$6;-><init>(Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;Landroid/app/Dialog;)V

    invoke-virtual {v13, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    aget-object v0, v15, v8

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 205
    return-void

    .line 143
    :cond_3
    :goto_1
    const-string v0, "\u6ca1\u6709\u53ef\u7528\u56fe\u6807\u5305"

    invoke-static {v6, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    return-void

    .line 140
    :cond_4
    :goto_2
    return-void
.end method

.method public static showRecommendedChooser(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
    .locals 8

    .line 93
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 94
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x103012b

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 95
    invoke-static {p0, p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->buildMatchedChoices(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)Ljava/util/ArrayList;

    move-result-object v1

    .line 96
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 97
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    const/16 v4, 0x10

    invoke-static {p0, v4}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->dp(Landroid/content/Context;I)I

    move-result v4

    .line 99
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    .line 101
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 102
    const-string v4, "\u6ca1\u6709\u5339\u914d\u56fe\u6807\uff0c\u53ef\u67e5\u770b\u5168\u90e8\u56fe\u6807"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 105
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x60

    invoke-static {p0, v6}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    new-instance v4, Landroid/widget/GridView;

    invoke-direct {v4, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 108
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 109
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 110
    const/16 v6, 0x8

    invoke-static {p0, v6}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->dp(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 111
    invoke-static {p0, v6}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 112
    new-instance v6, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

    invoke-direct {v6, p0, v0, v1, v3}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Landroid/content/Context;Ljava/util/ArrayList;Z)V

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    const/4 v7, 0x1

    if-ge v6, v7, :cond_recommended_rows_min_ready

    const/4 v6, 0x1

    :cond_recommended_rows_min_ready
    const/4 v7, 0x3

    if-gt v6, v7, :cond_recommended_rows_cap

    goto :goto_recommended_rows_ready

    :cond_recommended_rows_cap
    const/4 v6, 0x3

    :goto_recommended_rows_ready
    mul-int/lit16 v6, v6, 0x84

    invoke-static {p0, v6}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->dp(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    new-instance v3, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$1;

    invoke-direct {v3, v1, p0, p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$1;-><init>(Ljava/util/ArrayList;Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    invoke-virtual {v4, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    const-string v0, "\u63a8\u8350\u56fe\u6807"

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 126
    const-string v3, "\u53d6\u6d88"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$7;

    invoke-direct {v3, p0, p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$7;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    const-string v4, "\u6062\u590d\u81ea\u52a8"

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$2;

    invoke-direct {v3, p0, p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$2;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    .line 127
    const-string p0, "\u663e\u793a\u5168\u90e8\u56fe\u6807"

    invoke-virtual {v0, p0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p0

    .line 133
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 134
    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    .line 135
    invoke-virtual {p1, p0}, Landroid/widget/GridView;->setTag(Ljava/lang/Object;)V

    .line 137
    :cond_2
    return-void

    .line 93
    :cond_3
    :goto_1
    return-void
.end method
