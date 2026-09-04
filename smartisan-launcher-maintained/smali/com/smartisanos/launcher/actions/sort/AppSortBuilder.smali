.class public Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;
.super Ljava/lang/Object;
.source "AppSortBuilder.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;,
        Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$KeepUserPageFilter;
    }
.end annotation


.field private static final COLOR_MERGE_FLAG:I = 0x4

.field public static final FREQUENCY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERVAL_BEST:I = 0x4

.field public static final INTERVAL_DAILY:I = 0x0

.field public static final INTERVAL_MONTHLY:I = 0x2

.field public static final INTERVAL_WEEKLY:I = 0x1

.field public static final INTERVAL_YEARLY:I = 0x3

.field private static final IUsageStatsClassName:Ljava/lang/String; = "com.android.internal.app.IUsageStats"

.field private static final IUsageStatsStubClassName:Ljava/lang/String; = "com.android.internal.app.IUsageStats$Stub"

.field private static final PkgUsageStatsClassName:Ljava/lang/String; = "com.android.internal.os.PkgUsageStats"

.field public static final SORT_BY_CATEGORY:I = 0x4

.field public static final SORT_BY_COLOR:I = 0x1

.field public static final SORT_BY_CONFIRM:I = 0x65

.field public static final SORT_BY_INSTALL_TIME:I = 0x2

.field public static final SORT_BY_REVERT:I = 0x64

.field public static final SORT_BY_USAGE_FREQUENCY:I = 0x3

.field private static final UsageStatsClassName:Ljava/lang/String; = "android.app.usage.UsageStats"

.field private static final UsageStatsManagerClassName:Ljava/lang/String; = "android.app.usage.UsageStatsManager"

.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->log:Lcom/smartisanos/launcher/LOG;

    .line 400
    new-instance v0, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$1;

    invoke-direct {v0}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$1;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    .line 411
    new-instance v0, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$2;

    invoke-direct {v0}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$2;-><init>()V

    sput-object v0, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->FREQUENCY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addToDataMap(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .param p0, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "pageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    .local p2, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    iget v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/PageInfo;

    .line 239
    .local v1, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 240
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .restart local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    return-void
.end method

.method private static buildSystemAppsOrder(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 24
    .param p0, "maxItemCountInPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, "systemItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .local p2, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    .local p3, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_a

    .line 343
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v3, "appOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v19, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_DOCK:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v2, v19, v18

    .line 345
    .local v2, "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->getAppId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 347
    .end local v2    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    :cond_0
    sget-object v20, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->PREDEFINED_PAGES:[[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    const/16 v18, 0x0

    move/from16 v19, v18

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    aget-object v4, v20, v19

    .line 348
    .local v4, "apps":[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    array-length v0, v4

    move/from16 v22, v0

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    aget-object v2, v4, v18

    .line 349
    .restart local v2    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    invoke-virtual {v2}, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->getAppId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 347
    .end local v2    # "app":Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    :cond_1
    add-int/lit8 v18, v19, 0x1

    move/from16 v19, v18

    goto :goto_1

    .line 352
    .end local v4    # "apps":[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;
    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v11, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 354
    .local v10, "itemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 355
    .local v9, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-virtual {v9}, Lcom/smartisanos/launcher/data/ItemInfo;->id()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 357
    .end local v9    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_4
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 358
    .local v2, "app":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 359
    .local v8, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v8, :cond_4

    iget-boolean v0, v8, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    invoke-virtual {v8}, Lcom/smartisanos/launcher/data/ItemInfo;->isDockItem()Z

    move-result v19

    if-nez v19, :cond_4

    .line 360
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 363
    .end local v2    # "app":Ljava/lang/String;
    .end local v8    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_5
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v18

    if-lez v18, :cond_6

    .line 364
    new-instance v14, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 365
    .local v14, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 366
    .local v13, "key":Ljava/lang/String;
    invoke-virtual {v10, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 369
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 371
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    .line 372
    .local v5, "count":I
    div-int v16, v5, p0

    .line 373
    .local v16, "p":I
    rem-int v18, v5, p0

    if-eqz v18, :cond_7

    .line 374
    add-int/lit8 v16, v16, 0x1

    .line 376
    :cond_7
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6
    move/from16 v0, v16

    if-ge v6, v0, :cond_a

    .line 377
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_7
    move/from16 v0, p0

    if-ge v12, v0, :cond_8

    .line 379
    mul-int v18, v6, p0

    add-int v7, v18, v12

    .line 380
    .local v7, "index":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v7, v0, :cond_9

    .line 386
    .end local v7    # "index":I
    :cond_8
    invoke-static {v6}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->getDefaultPageInfo(I)Lcom/smartisanos/launcher/data/PageInfo;

    move-result-object v17

    .line 387
    .local v17, "pi":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 383
    .end local v17    # "pi":Lcom/smartisanos/launcher/data/PageInfo;
    .restart local v7    # "index":I
    :cond_9
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 384
    .restart local v8    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 391
    .end local v3    # "appOrder":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "count":I
    .end local v6    # "i":I
    .end local v7    # "index":I
    .end local v8    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v10    # "itemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v12    # "j":I
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v16    # "p":I
    :cond_a
    return-void
.end method

.method private static buildThirdPartyAppsByCategory(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 43
    .param p0, "maxItemCountInPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 701
    .local p1, "pageItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .local p2, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    .local p3, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    const/4 v13, 0x0

    .line 702
    .local v13, "categoryOther":Ljava/lang/String;
    const/4 v12, 0x0

    .line 703
    .local v12, "categoryOrderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 704
    .local v6, "appCategoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v38, "content://com.smartisanos.launcher.call_method"

    invoke-static/range {v38 .. v38}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v37

    .line 705
    .local v37, "uri":Landroid/net/Uri;
    const-string v27, "query_app_category"

    .line 707
    .local v27, "method":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v25

    .line 708
    .local v25, "launcher":Lcom/smartisanos/home/Launcher;
    invoke-virtual/range {v25 .. v25}, Lcom/smartisanos/home/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    .line 709
    .local v34, "resolver":Landroid/content/ContentResolver;
    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move-object/from16 v2, v27

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    .line 710
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v38, "category_other"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 711
    const-string v38, "display_order"

    move-object/from16 v0, v38

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 712
    if-eqz v12, :cond_0

    .line 713
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :goto_0
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_0

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 714
    .local v10, "category":Ljava/lang/String;
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 715
    .local v7, "apps":Ljava/util/ArrayList;
    invoke-interface {v6, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 718
    .end local v7    # "apps":Ljava/util/ArrayList;
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v10    # "category":Ljava/lang/String;
    .end local v25    # "launcher":Lcom/smartisanos/home/Launcher;
    .end local v34    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v15

    .line 719
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 721
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_0
    if-nez v12, :cond_1

    .line 722
    new-instance v38, Ljava/lang/IllegalArgumentException;

    const-string v39, "categoryOrderList is null"

    invoke-direct/range {v38 .. v39}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v38

    .line 724
    :cond_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_2
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_3

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 725
    .restart local v10    # "category":Ljava/lang/String;
    sget-object v39, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "category ["

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "]"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 726
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 727
    .local v8, "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_2

    .line 730
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :goto_1
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_2

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 731
    .local v5, "app":Ljava/lang/String;
    sget-object v40, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "pkg ["

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, "]"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 734
    .end local v5    # "app":Ljava/lang/String;
    .end local v8    # "apps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "category":Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 735
    .local v11, "categoryItemInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 736
    .local v32, "pkgCategoryMatchMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 737
    .local v24, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_4
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v39

    if-eqz v39, :cond_6

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 738
    .local v23, "key":Ljava/lang/String;
    if-eqz v23, :cond_4

    .line 741
    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/List;

    .line 742
    .local v33, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_5
    :goto_2
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-eqz v40, :cond_4

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 743
    .local v31, "pkg":Ljava/lang/String;
    if-eqz v31, :cond_5

    .line 746
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 749
    .end local v23    # "key":Ljava/lang/String;
    .end local v31    # "pkg":Ljava/lang/String;
    .end local v33    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v35

    .line 751
    .local v35, "size":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v35

    if-ge v0, v1, :cond_9

    .line 752
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 753
    .local v19, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 754
    .restart local v31    # "pkg":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 755
    .restart local v10    # "category":Ljava/lang/String;
    if-nez v10, :cond_7

    .line 756
    move-object v10, v13

    .line 758
    :cond_7
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    .line 759
    .local v21, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-nez v21, :cond_8

    .line 760
    new-instance v21, Ljava/util/ArrayList;

    .end local v21    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 762
    .restart local v21    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_8
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    move-object/from16 v0, v21

    invoke-interface {v11, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 766
    .end local v10    # "category":Ljava/lang/String;
    .end local v19    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v21    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v31    # "pkg":Ljava/lang/String;
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v36

    .line 767
    .local v36, "start":I
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_a

    .line 768
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    :cond_a
    const/16 v29, 0x0

    .line 771
    .local v29, "pageIndexIncrease":I
    const/16 v16, 0x0

    :goto_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v16

    move/from16 v1, v38

    if-ge v0, v1, :cond_10

    .line 772
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 773
    .restart local v10    # "category":Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/List;

    .line 774
    .restart local v21    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v21, :cond_b

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v38

    if-nez v38, :cond_c

    .line 771
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 777
    :cond_c
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v20

    .line 778
    .local v20, "itemCount":I
    div-int v28, v20, p0

    .line 779
    .local v28, "pageCount":I
    rem-int v38, v20, p0

    if-eqz v38, :cond_d

    .line 780
    add-int/lit8 v28, v28, 0x1

    .line 782
    :cond_d
    const/4 v14, 0x0

    .local v14, "count":I
    :goto_5
    move/from16 v0, v28

    if-ge v14, v0, :cond_b

    .line 783
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v26, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, p0

    if-ge v0, v1, :cond_e

    .line 785
    mul-int v38, v14, p0

    add-int v17, v38, v22

    .line 786
    .local v17, "index":I
    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_f

    .line 792
    .end local v17    # "index":I
    :cond_e
    add-int v38, v36, v29

    invoke-static/range {v38 .. v38}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->getDefaultPageInfo(I)Lcom/smartisanos/launcher/data/PageInfo;

    move-result-object v30

    .line 793
    .local v30, "pi":Lcom/smartisanos/launcher/data/PageInfo;
    add-int/lit8 v29, v29, 0x1

    .line 794
    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Lcom/smartisanos/launcher/data/PageInfo;->setPageName(Ljava/lang/String;)V

    .line 795
    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    move-object/from16 v0, p3

    move-object/from16 v1, v30

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 789
    .end local v30    # "pi":Lcom/smartisanos/launcher/data/PageInfo;
    .restart local v17    # "index":I
    :cond_f
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 790
    .local v18, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 799
    .end local v10    # "category":Ljava/lang/String;
    .end local v14    # "count":I
    .end local v17    # "index":I
    .end local v18    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v20    # "itemCount":I
    .end local v21    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v22    # "j":I
    .end local v26    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v28    # "pageCount":I
    :cond_10
    return-void
.end method

.method private static buildThirdPartyAppsByInstallTime(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 26
    .param p0, "maxItemCountInPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p1, "pageItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .local p2, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    .local p3, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 505
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v15

    .line 507
    .local v15, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 508
    .local v7, "installTimeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 509
    .local v6, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 510
    .local v19, "pkg":Ljava/lang/String;
    iget-wide v2, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 511
    .local v2, "firstInstallTime":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 513
    .end local v2    # "firstInstallTime":J
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    .end local v19    # "pkg":Ljava/lang/String;
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    .line 514
    .local v8, "itemCount":I
    div-int v17, v8, p0

    .line 515
    .local v17, "pageCount":I
    rem-int v22, v8, p0

    if-eqz v22, :cond_1

    .line 516
    add-int/lit8 v17, v17, 0x1

    .line 519
    :cond_1
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v21, "systemApps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v22, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SYSTEM_APPS:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    if-eqz v22, :cond_3

    .line 521
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    sget-object v22, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SYSTEM_APPS:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v4, v0, :cond_3

    .line 522
    sget-object v22, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SYSTEM_APPS:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aget-object v22, v22, v4

    if-eqz v22, :cond_2

    .line 523
    sget-object v22, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->SYSTEM_APPS:[Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    aget-object v22, v22, v4

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 524
    .restart local v19    # "pkg":Ljava/lang/String;
    if-eqz v19, :cond_2

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 525
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    .end local v19    # "pkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 531
    .end local v4    # "i":I
    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v14, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 533
    .local v9, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v0, v9, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 534
    .restart local v19    # "pkg":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 535
    .local v11, "lastInstallTime":Ljava/lang/Long;
    if-nez v11, :cond_4

    .line 536
    const-wide/16 v24, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 538
    :cond_4
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 539
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 540
    .local v5, "index":I
    int-to-long v0, v5

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 542
    .end local v5    # "index":I
    :cond_5
    new-instance v13, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;

    invoke-direct {v13}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;-><init>()V

    .line 543
    .local v13, "obj":Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;
    iput-object v9, v13, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 544
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    iput-wide v0, v13, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;->lastModifyTime:J

    .line 545
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 548
    .end local v9    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v11    # "lastInstallTime":Ljava/lang/Long;
    .end local v13    # "obj":Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;
    .end local v19    # "pkg":Ljava/lang/String;
    :cond_6
    sget-object v22, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v22

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 549
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v20

    .line 550
    .local v20, "start":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v4, v0, :cond_9

    .line 551
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    move/from16 v0, p0

    if-ge v10, v0, :cond_7

    .line 553
    mul-int v22, v4, p0

    add-int v5, v22, v10

    .line 554
    .restart local v5    # "index":I
    if-lt v5, v8, :cond_8

    .line 560
    .end local v5    # "index":I
    :cond_7
    add-int v22, v20, v4

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->getDefaultPageInfo(I)Lcom/smartisanos/launcher/data/PageInfo;

    move-result-object v18

    .line 561
    .local v18, "pi":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 557
    .end local v18    # "pi":Lcom/smartisanos/launcher/data/PageInfo;
    .restart local v5    # "index":I
    :cond_8
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 558
    .local v6, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 564
    .end local v5    # "index":I
    .end local v6    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v10    # "j":I
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_9
    return-void
.end method

.method private static buildThirdPartyAppsByUsageFrequency(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 22
    .param p0, "maxItemCountInPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, "pageItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .local p2, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    .local p3, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 646
    .local v10, "mAppLaunchCountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 647
    .local v11, "mAppUsageTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v18, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->log:Lcom/smartisanos/launcher/LOG;

    const-string v19, "A140"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Build.VERSION.SDK_INT ==> "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x15

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 650
    invoke-static {v10, v11}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->getUsageStatusWithLowerApiLevel(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 654
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    .line 655
    .local v5, "itemCount":I
    div-int v14, v5, p0

    .line 656
    .local v14, "pageCount":I
    rem-int v18, v5, p0

    if-eqz v18, :cond_0

    .line 657
    add-int/lit8 v14, v14, 0x1

    .line 659
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v13, "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 661
    .local v6, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v0, v6, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 662
    .local v16, "pkg":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 663
    .local v8, "launchCount":Ljava/lang/Integer;
    if-nez v8, :cond_1

    .line 664
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 670
    :cond_1
    new-instance v12, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;

    invoke-direct {v12}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;-><init>()V

    .line 671
    .local v12, "obj":Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;
    iput-object v6, v12, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 672
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    iput v0, v12, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;->launchCount:I

    .line 674
    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 652
    .end local v5    # "itemCount":I
    .end local v6    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v8    # "launchCount":Ljava/lang/Integer;
    .end local v12    # "obj":Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;
    .end local v13    # "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;>;"
    .end local v14    # "pageCount":I
    .end local v16    # "pkg":Ljava/lang/String;
    :cond_2
    invoke-static {v10, v11}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->getUsageStatusWithHigherApiLevel(Ljava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_0

    .line 676
    .restart local v5    # "itemCount":I
    .restart local v13    # "objectList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;>;"
    .restart local v14    # "pageCount":I
    :cond_3
    sget-object v18, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->FREQUENCY_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 677
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v17

    .line 678
    .local v17, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v14, :cond_6

    .line 679
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    move/from16 v0, p0

    if-ge v7, v0, :cond_4

    .line 681
    mul-int v18, v2, p0

    add-int v3, v18, v7

    .line 682
    .local v3, "index":I
    if-lt v3, v5, :cond_5

    .line 688
    .end local v3    # "index":I
    :cond_4
    add-int v18, v17, v2

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->getDefaultPageInfo(I)Lcom/smartisanos/launcher/data/PageInfo;

    move-result-object v15

    .line 689
    .local v15, "pi":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    move-object/from16 v0, p3

    invoke-virtual {v0, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 685
    .end local v15    # "pi":Lcom/smartisanos/launcher/data/PageInfo;
    .restart local v3    # "index":I
    :cond_5
    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$ComparatorObj;->itemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    .line 686
    .local v4, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 692
    .end local v3    # "index":I
    .end local v4    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v7    # "j":I
    .end local v9    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_6
    return-void
.end method

.method private static buildThirdPartyAppsOrderByColor(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V
    .locals 27
    .param p0, "maxItemCountInPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, "pageItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .local p2, "pageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    .local p3, "resultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->splitByColor(Ljava/util/List;)Ljava/util/Map;

    move-result-object v11

    .line 426
    .local v11, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v19, "pages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    sget-object v23, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->COLOR_GROUP:[[Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    const/16 v22, 0x0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    aget-object v4, v23, v22

    .line 428
    .local v4, "group":[Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    if-nez v4, :cond_1

    .line 427
    :cond_0
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 431
    :cond_1
    const/4 v5, 0x0

    .line 432
    .local v5, "groupBegin":Z
    const/4 v3, 0x0

    .local v3, "colorIndex":I
    :goto_1
    array-length v0, v4

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v3, v0, :cond_0

    .line 433
    aget-object v6, v4, v3

    .line 434
    .local v6, "hue":Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    if-nez v6, :cond_3

    .line 432
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 437
    :cond_3
    invoke-interface {v11, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 438
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v25

    if-eqz v25, :cond_2

    .line 441
    sget-object v25, Lcom/smartisanos/launcher/actions/sort/color/IconColor;->colorComparator:Ljava/util/Comparator;

    move-object/from16 v0, v25

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 443
    const/16 v16, 0x0

    .line 444
    .local v16, "needMerge":Z
    if-eqz v3, :cond_4

    .line 445
    if-eqz v5, :cond_4

    .line 446
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_4

    .line 449
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 450
    .local v13, "lastPageItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v25

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_4

    .line 451
    const/16 v16, 0x1

    .line 456
    .end local v13    # "lastPageItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_4
    if-eqz v16, :cond_6

    .line 458
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 459
    .restart local v13    # "lastPageItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v25

    sub-int v15, p0, v25

    .line 460
    .local v15, "mergeCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v15, :cond_6

    .line 461
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_5

    .line 462
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v14, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 463
    .local v9, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v9    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 467
    .end local v7    # "i":I
    .end local v13    # "lastPageItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v15    # "mergeCount":I
    :cond_6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    .line 469
    .local v10, "itemCount":I
    div-int v18, v10, p0

    .line 470
    .local v18, "pageCount":I
    rem-int v25, v10, p0

    if-eqz v25, :cond_7

    .line 471
    add-int/lit8 v18, v18, 0x1

    .line 473
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    move/from16 v0, v18

    if-ge v7, v0, :cond_2

    .line 474
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v17, "page":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    move/from16 v0, p0

    if-ge v12, v0, :cond_8

    .line 476
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_a

    .line 482
    :cond_8
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_9

    .line 483
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    const/4 v5, 0x1

    .line 473
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 479
    :cond_a
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v14, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 480
    .local v8, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 490
    .end local v3    # "colorIndex":I
    .end local v4    # "group":[Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    .end local v5    # "groupBegin":Z
    .end local v6    # "hue":Lcom/smartisanos/launcher/actions/sort/color/IconColor$HUE;
    .end local v7    # "i":I
    .end local v8    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v10    # "itemCount":I
    .end local v12    # "j":I
    .end local v14    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v16    # "needMerge":Z
    .end local v17    # "page":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v18    # "pageCount":I
    :cond_b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v21

    .line 491
    .local v21, "start":I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v18

    .line 492
    .restart local v18    # "pageCount":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    move/from16 v0, v18

    if-ge v7, v0, :cond_c

    .line 493
    move-object/from16 v0, v19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    .line 494
    .restart local v17    # "page":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    add-int v22, v21, v7

    invoke-static/range {v22 .. v22}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->getDefaultPageInfo(I)Lcom/smartisanos/launcher/data/PageInfo;

    move-result-object v20

    .line 495
    .local v20, "pi":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 498
    .end local v17    # "page":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v20    # "pi":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_c
    return-void
.end method

.method private static getDefaultPageInfo(I)Lcom/smartisanos/launcher/data/PageInfo;
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 313
    new-instance v0, Lcom/smartisanos/launcher/data/PageInfo;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 314
    .local v0, "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    iput p0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 315
    const/4 v1, 0x0

    iput v1, v0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    .line 316
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/data/PageInfo;->setPageName(Ljava/lang/String;)V

    .line 317
    return-object v0
.end method

.method private static getSingleMode(I)I
    .locals 2
    .param p0, "multiMode"    # I

    .prologue
    .line 802
    const/4 v0, 0x1

    .line 803
    .local v0, "mode":I
    const/4 v1, 0x5

    if-ne p0, v1, :cond_0

    .line 804
    const/4 v0, 0x4

    .line 806
    :cond_0
    return v0
.end method

.method private static getUsageStatusWithHigherApiLevel(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 611
    .local p0, "launchCountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "usageTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v15

    const-string v16, "usagestats"

    invoke-virtual/range {v15 .. v16}, Lcom/smartisanos/launcher/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 612
    .local v14, "usageStatusManagerObj":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 613
    .local v13, "usageStatusManagerClass":Ljava/lang/Class;
    const-string v15, "queryUsageStats"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget-object v18, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    const/16 v17, 0x2

    sget-object v18, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 614
    .local v9, "queryUsageStatsM":Ljava/lang/reflect/Method;
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/Long;

    const-wide/16 v18, 0x0

    invoke-direct/range {v17 .. v19}, Ljava/lang/Long;-><init>(J)V

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v9, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 615
    .local v8, "queryResult":Ljava/lang/Object;
    if-eqz v8, :cond_1

    .line 616
    move-object v0, v8

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    .line 617
    .local v5, "list":Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 618
    .local v10, "result":Ljava/lang/Object;
    if-eqz v10, :cond_0

    .line 621
    move-object v12, v10

    .line 622
    .local v12, "usageStatsObj":Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 623
    .local v11, "usageStatsClass":Ljava/lang/Class;
    const-string v16, "getPackageName"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 624
    .local v3, "getPackageNameM":Ljava/lang/reflect/Method;
    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v12, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 625
    .local v7, "pkg":Ljava/lang/String;
    const-string v16, "mLaunchCount"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 626
    .local v6, "mLaunchCountF":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 627
    .local v4, "launchCount":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 630
    .end local v3    # "getPackageNameM":Ljava/lang/reflect/Method;
    .end local v4    # "launchCount":I
    .end local v5    # "list":Ljava/util/List;
    .end local v6    # "mLaunchCountF":Ljava/lang/reflect/Field;
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "queryResult":Ljava/lang/Object;
    .end local v9    # "queryUsageStatsM":Ljava/lang/reflect/Method;
    .end local v10    # "result":Ljava/lang/Object;
    .end local v11    # "usageStatsClass":Ljava/lang/Class;
    .end local v12    # "usageStatsObj":Ljava/lang/Object;
    .end local v13    # "usageStatusManagerClass":Ljava/lang/Class;
    .end local v14    # "usageStatusManagerObj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 631
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 639
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_1
    return-void

    .line 632
    :catch_1
    move-exception v2

    .line 633
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 634
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 635
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 636
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    .line 637
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getUsageStatusWithLowerApiLevel(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, "launchCountMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "usageTimeMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    const-string v15, "android.os.ServiceManager"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 578
    .local v10, "serviceManager":Ljava/lang/Class;
    const-string v15, "getService"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-class v20, Ljava/lang/String;

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v10, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 581
    .local v8, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v15

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "usagestats"

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v15, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 582
    .local v14, "usageStatsObj":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string v18, "getAllPkgUsageStats"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 583
    .local v6, "getAllPkgUsageStatsM":Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v6, v14, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/Object;

    move-object v0, v15

    check-cast v0, [Ljava/lang/Object;

    move-object v12, v0

    .line 584
    .local v12, "usageStatsArr":[Ljava/lang/Object;
    sget-object v15, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->log:Lcom/smartisanos/launcher/LOG;

    const-string v18, "DEBUG"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "usageStatsArr length ==> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    array-length v0, v12

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    if-eqz v12, :cond_0

    array-length v15, v12

    if-lez v15, :cond_0

    .line 586
    array-length v0, v12

    move/from16 v19, v0

    const/4 v15, 0x0

    move/from16 v18, v15

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v11, v12, v18

    .line 587
    .local v11, "usageStats":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 588
    .local v13, "usageStatsClass":Ljava/lang/Class;
    const-string v15, "packageName"

    invoke-virtual {v13, v15}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 589
    .local v4, "fieldPkg":Ljava/lang/reflect/Field;
    const-string v15, "usageTime"

    invoke-virtual {v13, v15}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 590
    .local v5, "fieldUsageTime":Ljava/lang/reflect/Field;
    const-string v15, "launchCount"

    invoke-virtual {v13, v15}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 591
    .local v3, "fieldLaunchCount":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 592
    .local v9, "pkg":Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 593
    .local v16, "usageTime":J
    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 594
    .local v7, "launchCount":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    add-int/lit8 v15, v18, 0x1

    move/from16 v18, v15

    goto :goto_0

    .line 598
    .end local v3    # "fieldLaunchCount":Ljava/lang/reflect/Field;
    .end local v4    # "fieldPkg":Ljava/lang/reflect/Field;
    .end local v5    # "fieldUsageTime":Ljava/lang/reflect/Field;
    .end local v6    # "getAllPkgUsageStatsM":Ljava/lang/reflect/Method;
    .end local v7    # "launchCount":I
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v10    # "serviceManager":Ljava/lang/Class;
    .end local v11    # "usageStats":Ljava/lang/Object;
    .end local v12    # "usageStatsArr":[Ljava/lang/Object;
    .end local v13    # "usageStatsClass":Ljava/lang/Class;
    .end local v14    # "usageStatsObj":Ljava/lang/Object;
    .end local v16    # "usageTime":J
    :catch_0
    move-exception v2

    .line 599
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 601
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private static keepUserDataMap(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 26
    .param p0, "sortType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .local p2, "pageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    .local p3, "needSortItemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v13, "keepUserDataMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    new-instance v4, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$KeepUserPageFilter;

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v4, v0, v1, v2}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$KeepUserPageFilter;-><init>(ILjava/util/Map;Ljava/util/Map;)V

    .line 182
    .local v4, "filter":Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$KeepUserPageFilter;
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 183
    .local v7, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_0
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 184
    .local v6, "id":Ljava/lang/Long;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 185
    .local v10, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v10, :cond_0

    .line 186
    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$KeepUserPageFilter;->isHit(Lcom/smartisanos/launcher/data/ItemInfo;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 187
    move-object/from16 v0, p2

    invoke-static {v10, v0, v13}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->addToDataMap(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-wide v0, v10, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 193
    .end local v6    # "id":Ljava/lang/Long;
    .end local v10    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_2
    new-instance v19, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 194
    .local v19, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 195
    .local v17, "pageIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/smartisanos/launcher/data/PageInfo;

    .line 196
    .local v15, "page":Lcom/smartisanos/launcher/data/PageInfo;
    iget v0, v15, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 198
    .end local v15    # "page":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_3
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 199
    new-instance v18, Lcom/smartisanos/launcher/data/PageInfo;

    invoke-direct/range {v18 .. v18}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 200
    .local v18, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 201
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .end local v18    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/smartisanos/launcher/data/PageInfo;

    .line 204
    .local v20, "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 206
    .end local v20    # "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    .local v14, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v21

    .line 209
    .local v21, "size":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    move/from16 v0, v21

    if-ge v5, v0, :cond_b

    .line 210
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 211
    .local v16, "pageIndex":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/smartisanos/launcher/data/PageInfo;

    .line 213
    .restart local v18    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 214
    .local v11, "itemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v22

    if-nez v22, :cond_7

    .line 209
    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 217
    :cond_7
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 218
    .local v12, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_8
    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 219
    .restart local v10    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget v8, v10, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 220
    .local v8, "index":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 221
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v12, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 224
    .end local v8    # "index":I
    .end local v10    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_9
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 225
    .local v9, "indexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 226
    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 227
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 228
    .local v8, "index":Ljava/lang/Integer;
    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 229
    .restart local v10    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 231
    .end local v8    # "index":Ljava/lang/Integer;
    .end local v10    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_a
    move-object/from16 v0, v18

    invoke-interface {v13, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 233
    .end local v9    # "indexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "itemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v12    # "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v16    # "pageIndex":I
    .end local v18    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_b
    sget-object v22, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->log:Lcom/smartisanos/launcher/LOG;

    const-string v23, "DEBUG"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "keepUserDataMap size => "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-object v13
.end method

.method private static loadPageDataFromDB()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 302
    .local v2, "pageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/PageDB;->listPage()Ljava/util/List;

    move-result-object v3

    .line 303
    .local v3, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/PageInfo;

    .line 304
    .local v1, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    iget v0, v1, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 305
    .local v0, "index":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 306
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 309
    .end local v0    # "index":I
    .end local v1    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_1
    return-object v2
.end method

.method public static sort(ILjava/util/Map;I)Lcom/smartisanos/launcher/actions/sort/SortResult;
    .locals 39
    .param p0, "type"    # I
    .param p2, "multiMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;I)",
            "Lcom/smartisanos/launcher/actions/sort/SortResult;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/16 v27, 0x0

    .line 48
    .local v27, "result":Lcom/smartisanos/launcher/actions/sort/SortResult;
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v33

    if-nez v33, :cond_1

    .line 172
    .end local v27    # "result":Lcom/smartisanos/launcher/actions/sort/SortResult;
    :cond_0
    :goto_0
    return-object v27

    .line 52
    .restart local v27    # "result":Lcom/smartisanos/launcher/actions/sort/SortResult;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v6, "dockItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v23, "pageItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v32, "systemItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->loadPageDataFromDB()Ljava/util/Map;

    move-result-object v24

    .line 57
    .local v24, "pageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v17, "needSortItemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v17

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->keepUserDataMap(ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    .line 59
    .local v12, "keepUserDataMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    move-object/from16 v2, v17

    invoke-static {v0, v1, v6, v2}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->spliteData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    .line 60
    sget-object v33, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->log:Lcom/smartisanos/launcher/LOG;

    const-string v34, "DEBUG"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "dockItems ["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "], pageItems ["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "], systemItems ["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "]"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v33 .. v35}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static/range {p2 .. p2}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->getSingleMode(I)I

    move-result v28

    .line 62
    .local v28, "singleMode":I
    invoke-static/range {v28 .. v28}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v16

    .line 64
    .local v16, "maxItemCountInPage":I
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v31, "sortResultPageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v30, "sortResultMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    move/from16 v0, v16

    move-object/from16 v1, v32

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->buildSystemAppsOrder(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    .line 68
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_2

    .line 69
    packed-switch p0, :pswitch_data_0

    .line 86
    :cond_2
    :goto_1
    const/16 v19, 0x4

    .line 87
    .local v19, "pageCount":I
    const/16 v33, 0x3

    move/from16 v0, v33

    move/from16 v1, p2

    if-ne v0, v1, :cond_3

    .line 88
    const/16 v19, 0x9

    .line 90
    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .local v13, "keepUserDataPageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 92
    .local v14, "keepUserDataPageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_2
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_4

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/smartisanos/launcher/data/PageInfo;

    .line 93
    .local v22, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 71
    .end local v13    # "keepUserDataPageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    .end local v14    # "keepUserDataPageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    .end local v19    # "pageCount":I
    .end local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :pswitch_0
    move/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->buildThirdPartyAppsOrderByColor(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_1

    .line 74
    :pswitch_1
    move/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->buildThirdPartyAppsByInstallTime(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_1

    .line 77
    :pswitch_2
    move/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->buildThirdPartyAppsByUsageFrequency(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_1

    .line 80
    :pswitch_3
    move/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->buildThirdPartyAppsByCategory(ILjava/util/List;Ljava/util/List;Ljava/util/HashMap;)V

    goto :goto_1

    .line 95
    .restart local v13    # "keepUserDataPageList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    .restart local v14    # "keepUserDataPageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    .restart local v19    # "pageCount":I
    :cond_4
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v25, "pageOrder":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 98
    .local v15, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    move/from16 v0, v19

    if-ge v8, v0, :cond_7

    .line 99
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/smartisanos/launcher/data/PageInfo;

    .line 100
    .restart local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    if-eqz v22, :cond_5

    .line 101
    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 102
    .local v11, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .end local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 105
    :cond_5
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_6

    .line 106
    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    check-cast v22, Lcom/smartisanos/launcher/data/PageInfo;

    .line 107
    .restart local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 108
    .restart local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 112
    .end local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_6
    new-instance v7, Lcom/smartisanos/launcher/data/PageInfo;

    invoke-direct {v7}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 113
    .local v7, "emptyPageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v25

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v15, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 120
    .end local v7    # "emptyPageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    .end local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_7
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v33

    if-lez v33, :cond_9

    .line 121
    new-instance v26, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 122
    .local v26, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v21, "pageIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_5
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_8

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/smartisanos/launcher/data/PageInfo;

    .line 124
    .restart local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 126
    .end local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_8
    new-instance v18, Ljava/util/ArrayList;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    .local v18, "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 128
    const/4 v8, 0x0

    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v33

    if-ge v8, v0, :cond_9

    .line 129
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Integer;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 130
    .local v9, "index":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/smartisanos/launcher/data/PageInfo;

    .line 131
    .restart local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v22

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 132
    .restart local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 137
    .end local v9    # "index":I
    .end local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v18    # "order":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "pageIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    .end local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    .end local v26    # "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    :cond_9
    :goto_7
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_a

    .line 138
    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/smartisanos/launcher/data/PageInfo;

    .line 139
    .restart local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 140
    .restart local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 145
    .end local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_a
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v29

    .line 146
    .local v29, "size":I
    const/16 v20, 0x0

    .local v20, "pageIndex":I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 147
    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/smartisanos/launcher/data/PageInfo;

    .line 148
    .restart local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    move/from16 v0, v20

    move-object/from16 v1, v22

    iput v0, v1, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 149
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 150
    .restart local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    .line 151
    .local v5, "count":I
    const/4 v4, 0x0

    .local v4, "cellIndex":I
    :goto_9
    if-ge v4, v5, :cond_b

    .line 152
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 153
    .local v10, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    move/from16 v0, v20

    iput v0, v10, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 154
    iput v4, v10, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 146
    .end local v10    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_b
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 158
    .end local v4    # "cellIndex":I
    .end local v5    # "count":I
    .end local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_c
    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 159
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->clear()V

    .line 161
    sget-object v33, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->log:Lcom/smartisanos/launcher/LOG;

    const-string v34, "DEBUG"

    const-string v35, "###### dump sort ######"

    invoke-virtual/range {v33 .. v35}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_a
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_e

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/smartisanos/launcher/data/PageInfo;

    .line 163
    .restart local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    sget-object v34, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->log:Lcom/smartisanos/launcher/LOG;

    const-string v35, "DEBUG"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "page index "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", status "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", name ["

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v22 .. v22}, Lcom/smartisanos/launcher/data/PageInfo;->getPageName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "]"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 165
    .restart local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    sget-object v34, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->log:Lcom/smartisanos/launcher/LOG;

    const-string v35, "DEBUG"

    const-string v36, "item dump __________________"

    invoke-virtual/range {v34 .. v36}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_b
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_d

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 167
    .restart local v10    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    sget-object v35, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->log:Lcom/smartisanos/launcher/LOG;

    const-string v36, "DEBUG"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget v0, v10, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "], ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget v0, v10, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "], title ["

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget-object v0, v10, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v35 .. v37}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 169
    .end local v10    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_d
    sget-object v34, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->log:Lcom/smartisanos/launcher/LOG;

    const-string v35, "DEBUG"

    const-string v36, "____________________________"

    invoke-virtual/range {v34 .. v36}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 171
    .end local v11    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v22    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_e
    sget-object v33, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;->log:Lcom/smartisanos/launcher/LOG;

    const-string v34, "DEBUG"

    const-string v35, "#######################"

    invoke-virtual/range {v33 .. v35}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v27, Lcom/smartisanos/launcher/actions/sort/SortResult;

    .end local v27    # "result":Lcom/smartisanos/launcher/actions/sort/SortResult;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v15}, Lcom/smartisanos/launcher/actions/sort/SortResult;-><init>(Ljava/util/List;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static spliteData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "systemItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .local p1, "pageItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .local p2, "dockItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .local p3, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 325
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v0, 0x1

    .line 326
    .local v0, "includeSysApp":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 327
    .local v2, "key":Ljava/lang/Long;
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 328
    .local v1, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->isDockItem()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 330
    :cond_0
    iget-boolean v5, v1, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    if-eqz v5, :cond_1

    if-nez v0, :cond_1

    .line 331
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 336
    .end local v1    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v2    # "key":Ljava/lang/Long;
    :cond_2
    return-void
.end method
