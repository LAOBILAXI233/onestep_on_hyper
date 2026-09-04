.class public Lcom/smartisanos/launcher/data/SearchProvider;
.super Landroid/content/ContentProvider;
.source "SearchProvider.java"


.field public static final AUTHORITY:Ljava/lang/String; = "com.smartisanos.launcher.data.SearchProvider"

.field private static final SEARCH_SUGGEST:I = 0x1

.field private static final SHORTCUT_REFRESH:I = 0x2

.field private static final SUGGESTION_COLUMNS:[Ljava/lang/String;

.field private static final log:Lcom/smartisanos/launcher/LOG;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


.field private languageChanged:Z


.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 36
    const-class v0, Lcom/smartisanos/launcher/data/SearchProvider;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/SearchProvider;->log:Lcom/smartisanos/launcher/LOG;

    .line 40
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/smartisanos/launcher/data/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 46
    sget-object v0, Lcom/smartisanos/launcher/data/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.data.SearchProvider"

    const-string v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcom/smartisanos/launcher/data/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.data.SearchProvider"

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    sget-object v0, Lcom/smartisanos/launcher/data/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.data.SearchProvider"

    const-string v2, "search_suggest_shortcut"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    sget-object v0, Lcom/smartisanos/launcher/data/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.smartisanos.launcher.data.SearchProvider"

    const-string v2, "search_suggest_shortcut/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/smartisanos/launcher/data/SearchProvider;->SUGGESTION_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/data/SearchProvider;->languageChanged:Z

    return-void
.end method

.method private appendProfileRows(Landroid/database/MatrixCursor;Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "cursor"    # Landroid/database/MatrixCursor;
    .param p2, "profileHelper"    # Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "cmp"    # Ljava/lang/String;
    .param p6, "iconUri"    # Ljava/lang/String;
    .param p7, "pageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v1, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    invoke-direct {v1, p3, p4, p5, v0}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)V

    invoke-virtual {p2, v1}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;->findProfileApps(Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;

    if-eqz v2, :goto_0

    invoke-virtual {v2}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getComponentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/smartisanos/launcher/data/SearchProvider;->getProfileUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :goto_0

    invoke-virtual {v2}, Lcom/smartisanos/quicksearchbox/repository/app/bean/ProfileAppSearchBean;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x1

    aput-object p6, v4, v5

    const/4 v5, 0x2

    aput-object p7, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v5, 0x4

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    invoke-virtual {p1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private createCursor(Ljava/util/Map;)Landroid/database/MatrixCursor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;)",
            "Landroid/database/MatrixCursor;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/launcher/data/SearchProvider;->createCursor(Ljava/util/Map;Z)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method private createCursor(Ljava/util/Map;Z)Landroid/database/MatrixCursor;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;>;Z)",
            "Landroid/database/MatrixCursor;"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    const/4 v4, 0x0

    .line 277
    .local v4, "cursor":Landroid/database/MatrixCursor;
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    move-object v5, v4

    .line 316
    .end local v4    # "cursor":Landroid/database/MatrixCursor;
    .local v5, "cursor":Landroid/database/MatrixCursor;
    :goto_0
    return-object v5

    .line 280
    .end local v5    # "cursor":Landroid/database/MatrixCursor;
    .restart local v4    # "cursor":Landroid/database/MatrixCursor;
    :cond_1
    new-instance v4, Landroid/database/MatrixCursor;

    .end local v4    # "cursor":Landroid/database/MatrixCursor;
    sget-object v17, Lcom/smartisanos/launcher/data/SearchProvider;->SUGGESTION_COLUMNS:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 281
    .restart local v4    # "cursor":Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/smartisanos/launcher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    new-instance v5, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;

    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;-><init>(Landroid/content/Context;)V

    .line 282
    .local v14, "pm":Landroid/content/pm/PackageManager;
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 283
    .local v12, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/data/PageInfo;

    .line 284
    .local v10, "page":Lcom/smartisanos/launcher/data/PageInfo;
    if-eqz v10, :cond_2

    .line 287
    iget v0, v10, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 290
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 291
    .local v8, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    if-eqz v18, :cond_2

    .line 294
    invoke-virtual {v10}, Lcom/smartisanos/launcher/data/PageInfo;->getPageName()Ljava/lang/String;

    move-result-object v11

    .line 295
    .local v11, "pageName":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 296
    .local v7, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-object v13, v7, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 297
    .local v13, "pkg":Ljava/lang/String;
    iget-object v3, v7, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 298
    .local v3, "cmp":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/smartisanos/launcher/data/SearchProvider;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 299
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v7, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 300
    .local v2, "appName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/launcher/data/SearchProvider;->languageChanged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    .line 301
    invoke-virtual {v15, v14}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/smartisanos/launcher/data/SearchProvider;->getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 304
    .local v16, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/smartisanos/launcher/data/SearchProvider;->getIconUri(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v6

    .line 305
    .local v6, "iconUri":Ljava/lang/String;
    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v9, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v2, v9, v19

    const/16 v19, 0x1

    aput-object v6, v9, v19

    const/16 v19, 0x2

    aput-object v11, v9, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v9, v19

    const/16 v19, 0x4

    aput-object v16, v9, v19

    const/16 v19, 0x5

    iget-wide v0, v7, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v20, v0

    .line 311
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v9, v19

    .line 313
    .local v9, "objs":[Ljava/lang/Object;
    invoke-virtual {v4, v9}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move/from16 v0, p2

    if-eqz v0, :goto_1

    move-object/from16 v22, p0

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move-object/from16 v25, v2

    move-object/from16 v26, v13

    move-object/from16 v27, v3

    move-object/from16 v28, v6

    move-object/from16 v29, v11

    invoke-direct/range {v22 .. v29}, Lcom/smartisanos/launcher/data/SearchProvider;->appendProfileRows(Landroid/database/MatrixCursor;Lcom/smartisanos/quicksearchbox/repository/app/helper/ProfileAppSearchHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "appName":Ljava/lang/String;
    .end local v3    # "cmp":Ljava/lang/String;
    .end local v6    # "iconUri":Ljava/lang/String;
    .end local v7    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v8    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v9    # "objs":[Ljava/lang/Object;
    .end local v10    # "page":Lcom/smartisanos/launcher/data/PageInfo;
    .end local v11    # "pageName":Ljava/lang/String;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_4
    move-object v5, v4

    .line 316
    .end local v4    # "cursor":Landroid/database/MatrixCursor;
    .restart local v5    # "cursor":Landroid/database/MatrixCursor;
    goto/16 :goto_0
.end method

.method private createSearchSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "columnName"    # Ljava/lang/String;
    .param p2, "searchText"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v1, 0x0

    .line 321
    .local v1, "hasSpecialChar":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 322
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 323
    .local v0, "c":C
    const/16 v5, 0x5f

    if-eq v0, v5, :cond_0

    const/16 v5, 0x25

    if-eq v0, v5, :cond_0

    const/16 v5, 0x5b

    if-eq v0, v5, :cond_0

    const/16 v5, 0x5d

    if-eq v0, v5, :cond_0

    const/16 v5, 0x5e

    if-eq v0, v5, :cond_0

    const/16 v5, 0x27

    if-eq v0, v5, :cond_0

    const/16 v5, 0x2f

    if-ne v0, v5, :cond_2

    .line 324
    :cond_0
    const/4 v1, 0x1

    .line 329
    .end local v0    # "c":C
    :cond_1
    if-eqz v1, :cond_3

    .line 331
    const-string v5, "/"

    const-string v6, "//"

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    const-string v7, "/_"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "%"

    const-string v7, "/%"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "["

    const-string v7, "/["

    .line 332
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "]"

    const-string v7, "/]"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "^"

    const-string v7, "/^"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\'"

    const-string v7, "\'\'"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 333
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " like \'%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\' ESCAPE \'/\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "s":Ljava/lang/String;
    move-object v4, v3

    .line 345
    .end local v3    # "s":Ljava/lang/String;
    .local v4, "s":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 321
    .end local v4    # "s":Ljava/lang/String;
    .restart local v0    # "c":C
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 340
    .end local v0    # "c":C
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " like \'%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%\' ESCAPE \'/\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "s":Ljava/lang/String;
    move-object v4, v3

    .line 345
    .end local v3    # "s":Ljava/lang/String;
    .restart local v4    # "s":Ljava/lang/String;
    goto :goto_1
.end method

.method private getActivityIconUri(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v2, 0x0

    .line 377
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v0

    .line 378
    .local v0, "icon":I
    if-nez v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-object v2

    .line 379
    :cond_1
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v3, v0}, Lcom/smartisanos/launcher/data/SearchProvider;->getResourceUri(Landroid/content/pm/ApplicationInfo;I)Landroid/net/Uri;

    move-result-object v1

    .line 380
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getIconUri(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 351
    .local v0, "uri":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 355
    .end local v0    # "uri":Ljava/lang/String;
    .local v1, "uri":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 354
    .end local v1    # "uri":Ljava/lang/String;
    .restart local v0    # "uri":Ljava/lang/String;
    :cond_0
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/data/SearchProvider;->getActivityIconUri(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 355
    .end local v0    # "uri":Ljava/lang/String;
    .restart local v1    # "uri":Ljava/lang/String;
    goto :goto_0
.end method

.method private getItemByPageIndex(Ljava/util/List;)Landroid/database/MatrixCursor;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;)",
            "Landroid/database/MatrixCursor;"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    const/4 v11, 0x0

    .line 236
    .local v11, "result":Landroid/database/MatrixCursor;
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_1

    :cond_0
    move-object v12, v11

    .line 272
    .end local v11    # "result":Landroid/database/MatrixCursor;
    .local v12, "result":Landroid/database/MatrixCursor;
    :goto_0
    return-object v12

    .line 239
    .end local v12    # "result":Landroid/database/MatrixCursor;
    .restart local v11    # "result":Landroid/database/MatrixCursor;
    :cond_1
    const/4 v13, 0x0

    .line 240
    .local v13, "selection":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    .line 241
    .local v14, "size":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 242
    .local v1, "buffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v14, :cond_3

    .line 243
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/data/PageInfo;

    .line 244
    .local v9, "page":Lcom/smartisanos/launcher/data/PageInfo;
    iget v4, v9, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 245
    .local v4, "index":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pageIndex="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    add-int/lit8 v15, v14, -0x1

    if-eq v3, v15, :cond_2

    .line 247
    const-string v15, " OR "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 250
    .end local v4    # "index":I
    .end local v9    # "page":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .line 251
    const-string v8, "pageIndex, cellIndex"

    .line 252
    .local v8, "order":Ljava/lang/String;
    invoke-static {v13, v8}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 253
    .local v6, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v10, "pageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/data/PageInfo;

    .line 255
    .restart local v9    # "page":Lcom/smartisanos/launcher/data/PageInfo;
    iget v0, v9, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 257
    .end local v9    # "page":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 258
    .local v2, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_5
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 259
    .local v5, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget v4, v5, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 260
    .restart local v4    # "index":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/smartisanos/launcher/data/PageInfo;

    .line 261
    .restart local v9    # "page":Lcom/smartisanos/launcher/data/PageInfo;
    if-eqz v9, :cond_5

    .line 264
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 265
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-nez v7, :cond_6

    .line 266
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .restart local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :cond_6
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v2, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 271
    .end local v4    # "index":I
    .end local v5    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v7    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v9    # "page":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/smartisanos/launcher/data/SearchProvider;->createCursor(Ljava/util/Map;)Landroid/database/MatrixCursor;

    move-result-object v11

    move-object v12, v11

    .line 272
    .end local v11    # "result":Landroid/database/MatrixCursor;
    .restart local v12    # "result":Landroid/database/MatrixCursor;
    goto/16 :goto_0
.end method

.method private getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmp"    # Ljava/lang/String;

    .prologue
    .line 359
    const/4 v1, 0x0

    .line 360
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/smartisanos/launcher/data/Utils;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 361
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 362
    :cond_0
    const/4 v3, 0x0

    .line 373
    :goto_0
    return-object v3

    .line 364
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 365
    .local v0, "reso":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2

    .line 368
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 369
    move-object v1, v0

    .end local v0    # "reso":Landroid/content/pm/ResolveInfo;
    :cond_3
    move-object v3, v1

    .line 373
    goto :goto_0
.end method

.method private getResourceUri(Landroid/content/pm/ApplicationInfo;I)Landroid/net/Uri;
    .locals 5
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "res"    # I

    .prologue
    const/4 v3, 0x0

    .line 385
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/launcher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 386
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 387
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, p2}, Lcom/smartisanos/launcher/data/SearchProvider;->getResourceUri(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 391
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-object v3

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 390
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 391
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method private static getResourceUri(Landroid/content/res/Resources;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "appPkg"    # Ljava/lang/String;
    .param p2, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "resPkg":Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1, v1, v2, v0}, Lcom/smartisanos/launcher/data/SearchProvider;->makeResourceUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method private getUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmp"    # Ljava/lang/String;

    .prologue
    .line 418
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 419
    .local v0, "uri":Landroid/net/Uri$Builder;
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 420
    const-string v1, "com.smartisanos.launcher.data.SearchProvider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 421
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 422
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 423
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private getProfileUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/net/Uri;
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmp"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v5, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/SearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-gez v4, :cond_1

    :cond_0
    return-object v5

    :cond_1
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "com.smartisanos.launcher.data.SearchProvider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method private localQuery(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 110
    const/4 v8, 0x0

    .line 111
    .local v8, "launcherIsOk":Z
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 112
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v11

    iget-boolean v11, v11, Lcom/smartisanos/home/Launcher;->ENABLE_RECEIVER:Z

    if-eqz v11, :cond_0

    .line 113
    const/4 v8, 0x1

    .line 116
    :cond_0
    if-nez v8, :cond_1

    .line 117
    sget-object v11, Lcom/smartisanos/launcher/data/SearchProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    const-string v15, "localQuery return null by launcherIsOk == false"

    invoke-virtual {v11, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v5, 0x0

    .line 173
    :goto_0
    return-object v5

    .line 121
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v3

    .line 122
    .local v3, "context":Lcom/smartisanos/launcher/LauncherApplication;
    invoke-static {v3}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "currentLanguage":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/smartisanos/launcher/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    .line 124
    .local v10, "systemLanguage":Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v10, :cond_2

    .line 125
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 126
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/smartisanos/launcher/data/SearchProvider;->languageChanged:Z

    .line 130
    :cond_2
    sget-object v11, Lcom/smartisanos/launcher/data/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 131
    .local v9, "match":I
    const/4 v5, 0x0

    .line 132
    .local v5, "cursor":Landroid/database/MatrixCursor;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 134
    .local v12, "token":J
    packed-switch v9, :pswitch_data_0

    .line 166
    :try_start_0
    sget-object v11, Lcom/smartisanos/launcher/data/SearchProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "query Unknown URI "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_1
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 136
    :pswitch_0
    :try_start_1
    sget-object v11, Lcom/smartisanos/launcher/data/SearchProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "localQuery uri => "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v11, Lcom/smartisanos/launcher/data/SearchProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "localQuery selection => "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    array-length v11, v0

    if-lez v11, :cond_3

    .line 139
    move-object/from16 v0, p3

    array-length v14, v0

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v14, :cond_3

    aget-object v2, p3, v11

    .line 140
    .local v2, "arg":Ljava/lang/String;
    sget-object v15, Lcom/smartisanos/launcher/data/SearchProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "localQuery arg => "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 143
    .end local v2    # "arg":Ljava/lang/String;
    :cond_3
    if-nez p1, :cond_4

    .line 144
    sget-object v11, Lcom/smartisanos/launcher/data/SearchProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    const-string v15, "localQuery return null by uri is null"

    invoke-virtual {v11, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_4
    const/4 v7, 0x0

    .line 147
    .local v7, "keywords":Ljava/lang/String;
    if-eqz p3, :cond_5

    .line 148
    move-object/from16 v0, p3

    array-length v11, v0

    if-lez v11, :cond_5

    .line 149
    const/4 v11, 0x0

    aget-object v7, p3, v11

    .line 152
    :cond_5
    if-nez v7, :cond_6

    .line 153
    sget-object v11, Lcom/smartisanos/launcher/data/SearchProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    const-string v15, "localQuery return null by keywords is null"

    invoke-virtual {v11, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    const/4 v5, 0x0

    .line 171
    .end local v5    # "cursor":Landroid/database/MatrixCursor;
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 156
    .restart local v5    # "cursor":Landroid/database/MatrixCursor;
    :cond_6
    :try_start_2
    sget-object v11, Lcom/smartisanos/launcher/data/SearchProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "localQuery keywords => "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    sget-object v11, Lcom/smartisanos/launcher/data/SearchProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v14, "DEBUG"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "localQuery match = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", keywords = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/smartisanos/launcher/data/SearchProvider;->searchSuggestion(Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v5

    .line 159
    goto/16 :goto_1

    .line 162
    .end local v7    # "keywords":Ljava/lang/String;
    :pswitch_1
    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1}, Lcom/smartisanos/launcher/data/SearchProvider;->shortcutRefresh(Ljava/lang/String;Landroid/net/Uri;)Landroid/database/MatrixCursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 163
    goto/16 :goto_1

    .line 168
    :catch_0
    move-exception v6

    .line 169
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static makeResourceUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p0, "appPkg"    # Ljava/lang/String;
    .param p1, "resPkg"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 405
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 406
    .local v0, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 407
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 408
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 409
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 414
    :goto_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 412
    :cond_0
    invoke-virtual {v0, p3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method private searchPageTile(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "keyWords"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/launcher/data/PageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    const-string v4, "pageTitle"

    invoke-direct {p0, v4, p1}, Lcom/smartisanos/launcher/data/SearchProvider;->createSearchSelection(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "selection":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    sget-object v4, Lcom/smartisanos/launcher/data/SearchProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "searchPageTile selection ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/data/handler/PageDB;->listPage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 226
    .local v1, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 227
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/PageInfo;

    .line 228
    .local v0, "page":Lcom/smartisanos/launcher/data/PageInfo;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    .end local v0    # "page":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_0
    return-object v2
.end method

.method private searchSuggestion(Ljava/lang/String;)Landroid/database/MatrixCursor;
    .locals 4
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "cursor":Landroid/database/MatrixCursor;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v0

    .line 187
    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    .local v1, "cursor":Landroid/database/MatrixCursor;
    :goto_0
    return-object v1

    .line 182
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .restart local v0    # "cursor":Landroid/database/MatrixCursor;
    :cond_1
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/data/SearchProvider;->searchPageTile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 183
    .local v2, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move-object v1, v0

    .line 184
    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    goto :goto_0

    .line 186
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    .restart local v0    # "cursor":Landroid/database/MatrixCursor;
    :cond_3
    invoke-direct {p0, v2}, Lcom/smartisanos/launcher/data/SearchProvider;->getItemByPageIndex(Ljava/util/List;)Landroid/database/MatrixCursor;

    move-result-object v0

    move-object v1, v0

    .line 187
    .end local v0    # "cursor":Landroid/database/MatrixCursor;
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    goto :goto_0
.end method

.method private shortcutRefresh(Ljava/lang/String;Landroid/net/Uri;)Landroid/database/MatrixCursor;
    .locals 14
    .param p1, "keywords"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    .line 193
    .local v4, "idStr":Ljava/lang/String;
    sget-object v10, Lcom/smartisanos/launcher/data/SearchProvider;->log:Lcom/smartisanos/launcher/LOG;

    const-string v11, "DEBUG"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "shortcutRefresh idStr "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v3, -0x1

    .line 196
    .local v3, "id":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 200
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 202
    .local v6, "itemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 203
    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 204
    .local v5, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v5, :cond_0

    .line 205
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pageIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/smartisanos/launcher/data/handler/PageDB;->listPage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 206
    .local v9, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 207
    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/smartisanos/launcher/data/PageInfo;

    .line 208
    .local v8, "page":Lcom/smartisanos/launcher/data/PageInfo;
    if-eqz v8, :cond_0

    .line 209
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v7, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .end local v5    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v7    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v8    # "page":Lcom/smartisanos/launcher/data/PageInfo;
    .end local v9    # "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    :cond_0
    invoke-direct {p0, v1}, Lcom/smartisanos/launcher/data/SearchProvider;->createCursor(Ljava/util/Map;)Landroid/database/MatrixCursor;

    move-result-object v0

    .line 217
    return-object v0

    .line 197
    .end local v1    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/smartisanos/launcher/data/PageInfo;Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;>;"
    .end local v6    # "itemInfos":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 82
    sget-object v1, Lcom/smartisanos/launcher/data/SearchProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 83
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown Uri"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    .line 87
    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "vnd.android.cursor.item/vnd.android.search.suggest"

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0, p1, p3, p4}, Lcom/smartisanos/launcher/data/SearchProvider;->localQuery(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 77
    invoke-direct {p0, p1, p3, p4}, Lcom/smartisanos/launcher/data/SearchProvider;->localQuery(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/MatrixCursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method
