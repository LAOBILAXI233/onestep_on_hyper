.class public Lcom/smartisanos/home/settings/icons/IconPackManager;
.super Ljava/lang/Object;
.source "IconPackManager.java"


.field private static final PREF_KEY_SELECTED_ICON_PACK:Ljava/lang/String; = "prefs_key_selected_icon_pack"

.field private static final PREF_KEY_LAUNCHER_ICON_REFRESH_PENDING:Ljava/lang/String; = "prefs_key_launcher_icon_refresh_pending"

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static sIconPackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoadedPackage:Ljava/lang/String;

.field private static sPackageToDrawable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sComponentToDrawable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDrawableNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDrawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/smartisanos/home/settings/icons/IconPackManager;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sPackageToDrawable:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sComponentToDrawable:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sDrawableNames:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sDrawableCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sLoadedPackage:Ljava/lang/String;

    sput-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sIconPackList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clearCache()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sLoadedPackage:Ljava/lang/String;

    sput-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sIconPackList:Ljava/util/ArrayList;

    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sPackageToDrawable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sComponentToDrawable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sDrawableNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static ensureLoaded(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->getSelectedIconPackPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/smartisanos/home/settings/icons/IconPackManager;->clearCache()V

    return-void

    :cond_0
    sget-object v1, Lcom/smartisanos/home/settings/icons/IconPackManager;->sLoadedPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/smartisanos/home/settings/icons/IconPackManager;->clearCache()V

    sput-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sLoadedPackage:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->loadPackMap(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getIconPackPackages(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sIconPackList:Ljava/util/ArrayList;

    if-eqz v0, :cond_miss

    return-object v0

    :cond_miss
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "org.adw.launcher.THEMES"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.gau.go.launcherex.theme"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.novalauncher.THEME"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.anddoes.launcher.THEME"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ch.deletescape.lawnchair.ICONPACK"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "app.lawnchair.icons.THEMED_ICON"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.motorola.launcher.ACTION_ICON_PACK"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.motorola.launcher3.ICON_PACK_CHANGED"

    aput-object v2, v0, v1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_actions
    if-ge v2, v1, :cond_actions_done

    aget-object v7, v0, v2

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v8, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_resolve
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_resolve_done

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_resolve

    :cond_resolve_done
    add-int/lit8 v2, v2, 0x1

    goto :goto_actions

    :cond_actions_done
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/smartisanos/home/settings/icons/IconPackManager;->hasAppFilter(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    sput-object v4, Lcom/smartisanos/home/settings/icons/IconPackManager;->sIconPackList:Ljava/util/ArrayList;

    return-object v4
.end method

.method public static getPackedIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v6

    :cond_0
    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->ensureLoaded(Landroid/content/Context;)V

    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sPackageToDrawable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/smartisanos/home/settings/icons/IconPackManager;->resolveDrawableByName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableByName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableName"    # Ljava/lang/String;

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->ensureLoaded(Landroid/content/Context;)V

    invoke-static {p0, p1}, Lcom/smartisanos/home/settings/icons/IconPackManager;->resolveDrawableByName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getIconPackDrawableNames(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->ensureLoaded(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    sget-object p0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sDrawableNames:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static getPackedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->ensureLoaded(Landroid/content/Context;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Lcom/smartisanos/home/settings/icons/IconPackManager;->buildComponentKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sComponentToDrawable:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, v2}, Lcom/smartisanos/home/settings/icons/IconPackManager;->resolveDrawableByName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sPackageToDrawable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/smartisanos/home/settings/icons/IconPackManager;->resolveDrawableByName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_return_null
    const/4 v0, 0x0

    return-object v0
.end method

.method private static resolveDrawableByName(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableName"    # Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v6

    :cond_0
    sget-object v3, Lcom/smartisanos/home/settings/icons/IconPackManager;->sLoadedPackage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v6

    :cond_1
    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_cache_miss

    return-object v0

    :cond_cache_miss
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    const-string v0, "drawable"

    invoke-virtual {v4, p1, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    const-string v0, "mipmap"

    invoke-virtual {v4, p1, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :cond_2
    if-nez v5, :cond_3

    return-object v6

    :cond_3
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_drawable_cache_done

    sget-object v1, Lcom/smartisanos/home/settings/icons/IconPackManager;->sDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_drawable_cache_done
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v6
.end method

.method public static getSelectedIconPackPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-string v0, "prefs_key_selected_icon_pack"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLauncherRefreshPending(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "prefs_key_launcher_icon_refresh_pending"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static hasPackedIcon(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->ensureLoaded(Landroid/content/Context;)V

    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sPackageToDrawable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasPackedIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->ensureLoaded(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_empty

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_empty

    invoke-static {p1, p2}, Lcom/smartisanos/home/settings/icons/IconPackManager;->buildComponentKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sComponentToDrawable:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_return_true

    goto :cond_check_package

    :cond_return_true
    return v2

    :cond_check_package
    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sPackageToDrawable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_empty
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_empty_return

    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sPackageToDrawable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_empty_return
    const/4 v0, 0x0

    return v0
.end method

.method public static hasSelectedIconPack(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    invoke-static {p0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->getSelectedIconPackPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->hasAppFilter(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static hasAppFilter(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "appfilter"

    const-string v2, "xml"

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_check_assets

    const/4 v1, 0x1

    return v1

    :cond_check_assets
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "appfilter.xml"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    return v0
.end method

.method private static loadPackMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    const-string v0, "appfilter"

    const-string v1, "xml"

    invoke-virtual {v5, v0, v1, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_assets

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    goto :goto_parse_init

    :cond_assets
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v0, "appfilter.xml"

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const-string v0, "UTF-8"

    invoke-interface {v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_parse_init
    if-nez v3, :cond_0

    return-void

    :cond_0
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    const/4 v0, 0x1

    if-ne v7, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne v7, v0, :cond_3

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "item"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const-string v1, "component"

    invoke-interface {v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->parseComponentPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/smartisanos/home/settings/icons/IconPackManager;->parseComponentClass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    const-string v1, "drawable"

    invoke-interface {v3, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v10, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_drawable_name_added

    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sDrawableNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_drawable_name_added

    invoke-static {v2, v8}, Lcom/smartisanos/home/settings/icons/IconPackManager;->buildComponentKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sComponentToDrawable:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sPackageToDrawable:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/smartisanos/home/settings/icons/IconPackManager;->sPackageToDrawable:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    invoke-static {v3, v4}, Lcom/smartisanos/home/settings/icons/IconPackManager;->closeParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v3, v4}, Lcom/smartisanos/home/settings/icons/IconPackManager;->closeParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;)V

    return-void
.end method

.method private static closeParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/io/InputStream;)V
    .locals 1
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stream"    # Ljava/io/InputStream;

    if-eqz p0, :cond_stream

    instance-of v0, p0, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_stream

    :try_start_0
    check-cast p0, Landroid/content/res/XmlResourceParser;

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :cond_stream
    if-eqz p1, :cond_done

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :cond_done
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static parseComponentClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "component"    # Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v1, :cond_1

    if-gtz v2, :cond_2

    :cond_1
    return-object v3

    :cond_2
    if-lt v1, v2, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildComponentKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "cls"    # Ljava/lang/String;

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static parseComponentPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "component"    # Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v3

    :cond_0
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v1, :cond_1

    if-gtz v2, :cond_2

    :cond_1
    return-object v3

    :cond_2
    if-lt v1, v2, :cond_3

    return-object v3

    :cond_3
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resetCache()V
    .locals 0

    invoke-static {}, Lcom/smartisanos/home/settings/icons/IconPackManager;->clearCache()V

    return-void
.end method

.method public static clearLauncherRefreshPending(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefs_key_launcher_icon_refresh_pending"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static markLauncherRefreshPending(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    const-string v1, "com.smartisanos.launcher_prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "prefs_key_launcher_icon_refresh_pending"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setSelectedIconPackPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "prefs_key_selected_icon_pack"

    invoke-static {p0, v0, p1}, Lcom/smartisanos/launcher/data/LauncherPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/smartisanos/home/settings/icons/IconPackManager;->clearCache()V

    return-void
.end method

.method public static warmUpIconPackList(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    if-eqz p0, :cond_ret

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smartisanos/home/settings/icons/IconPackManager$WarmRunnable;

    invoke-direct {v1, p0}, Lcom/smartisanos/home/settings/icons/IconPackManager$WarmRunnable;-><init>(Landroid/content/Context;)V

    const-string v2, "icon-pack-list-scan"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_ret
    return-void
.end method
