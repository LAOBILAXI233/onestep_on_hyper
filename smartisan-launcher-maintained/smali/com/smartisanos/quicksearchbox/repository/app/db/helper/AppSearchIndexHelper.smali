.class public Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;
.super Ljava/lang/Object;
.source "AppSearchIndexHelper.java"


.field private static sAppSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;


.field private mAppSearchBeen:[Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

.field private mContext:Landroid/content/Context;


.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sget-object v0, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->sAppSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;

    invoke-direct {v0, p0}, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->sAppSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->sAppSearchIndexHelper:Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;

    goto :goto_0
.end method


.method public loadAppInfos()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->mAppSearchBeen:[Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->loadAppSearchBeans()[Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    .line 42
    :cond_0
    return-void
.end method

.method public loadAppSearchBeans()[Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 45
    invoke-static {}, Lcom/smartisanos/launcher/LauncherModel;->getItemMap()Ljava/util/HashMap;

    move-result-object v4

    .line 46
    .local v4, "mAppMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 49
    .local v3, "itemInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-array v2, v12, [Lcom/smartisanos/launcher/data/ItemInfo;

    .line 50
    .local v2, "itemInfoOriginArray":[Lcom/smartisanos/launcher/data/ItemInfo;
    invoke-interface {v3, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "itemInfoOriginArray":[Lcom/smartisanos/launcher/data/ItemInfo;
    check-cast v2, [Lcom/smartisanos/launcher/data/ItemInfo;

    .line 51
    .restart local v2    # "itemInfoOriginArray":[Lcom/smartisanos/launcher/data/ItemInfo;
    array-length v6, v2

    new-array v6, v6, [Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    iput-object v6, p0, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->mAppSearchBeen:[Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_0

    .line 53
    aget-object v1, v2, v0

    .line 54
    .local v1, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v1, :cond_skip_item

    iget-object v6, v1, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    if-eqz v6, :cond_not_profile_shortcut

    const-string v7, "#profileSerial="

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_not_profile_shortcut

    goto :cond_skip_item

    :cond_not_profile_shortcut
    instance-of v6, v1, Lcom/smartisanos/launcher/data/ShortcutInfo;

    if-eqz v6, :cond_not_profile_intent

    move-object v6, v1

    check-cast v6, Lcom/smartisanos/launcher/data/ShortcutInfo;

    iget-object v6, v6, Lcom/smartisanos/launcher/data/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_not_profile_intent

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_not_profile_intent

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_not_profile_intent

    const-string v7, "com.smartisanos.launcher.StartActivityForSearch"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_not_profile_intent

    goto :cond_skip_item

    :cond_not_profile_intent
    const/4 v6, 0x3

    new-array v5, v6, [Ljava/lang/String;

    .line 55
    .local v5, "searchIndex":[Ljava/lang/String;
    const/4 v6, 0x0

    iget-object v7, v1, Lcom/smartisanos/launcher/data/ItemInfo;->originIndex:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 56
    iget-object v6, v1, Lcom/smartisanos/launcher/data/ItemInfo;->qwertyIndex:Ljava/lang/String;

    aput-object v6, v5, v12

    .line 57
    const/4 v6, 0x2

    iget-object v7, v1, Lcom/smartisanos/launcher/data/ItemInfo;->t9Index:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 58
    const/4 v6, 0x0

    aget-object v7, v5, v6

    if-eqz v7, :cond_generate_index

    aget-object v7, v5, v12

    if-eqz v7, :cond_generate_index

    const/4 v6, 0x2

    aget-object v7, v5, v6

    if-nez v7, :cond_index_ready

    :cond_generate_index
    iget-object v6, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    if-eqz v6, :cond_skip_item

    new-instance v7, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    invoke-direct {v7, v6}, Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->parsePinYinUnit(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v8, v6, v7

    const/4 v7, 0x0

    aput-object v8, v5, v7

    iput-object v8, v1, Lcom/smartisanos/launcher/data/ItemInfo;->originIndex:Ljava/lang/String;

    aget-object v8, v6, v7

    aput-object v8, v5, v12

    iput-object v8, v1, Lcom/smartisanos/launcher/data/ItemInfo;->qwertyIndex:Ljava/lang/String;

    aget-object v8, v6, v12

    const/4 v7, 0x2

    aput-object v8, v5, v7

    iput-object v8, v1, Lcom/smartisanos/launcher/data/ItemInfo;->t9Index:Ljava/lang/String;

    :cond_index_ready
    iget-object v6, p0, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->mAppSearchBeen:[Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    new-instance v7, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    iget-object v8, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    iget-object v9, v1, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, v1, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    iget-object v11, v1, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 62
    invoke-static {v11, v5}, Lcom/smartisanos/quicksearchbox/util/IndexUtil;->unParsePinyinUnit(Ljava/lang/String;[Ljava/lang/String;)Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;)V

    aput-object v7, v6, v0

    .line 63
    iget-object v6, p0, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->mAppSearchBeen:[Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    aget-object v6, v6, v0

    iget-object v7, v1, Lcom/smartisanos/launcher/data/ItemInfo;->iconData:[B

    invoke-virtual {v6, v7}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->iconInit([B)V

    .line 52
    :cond_skip_item
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v5    # "searchIndex":[Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->mAppSearchBeen:[Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    return-object v6
.end method

.method public qwertySearch(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "keyWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "keyWord is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->loadAppInfos()V

    .line 84
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->mAppSearchBeen:[Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    array-length v2, v4

    .line 85
    .local v2, "mAppSearchBeeanLength":I
    if-gtz v2, :cond_2

    .line 86
    const/4 v3, 0x0

    .line 101
    :cond_1
    return-object v3

    .line 88
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 91
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->mAppSearchBeen:[Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    aget-object v0, v4, v1

    .line 92
    .local v0, "appSearchBean":Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;
    if-nez v0, :cond_4

    .line 90
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_4
    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getPinyinSearchUnit()Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/QwertyUtil;->match(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 97
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public t9Search(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "keyWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "keyWord is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->loadAppInfos()V

    .line 116
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->mAppSearchBeen:[Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    array-length v2, v4

    .line 117
    .local v2, "mAppSearchBeeanLength":I
    if-gtz v2, :cond_2

    .line 118
    const/4 v3, 0x0

    .line 133
    :cond_1
    return-object v3

    .line 120
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 123
    iget-object v4, p0, Lcom/smartisanos/quicksearchbox/repository/app/db/helper/AppSearchIndexHelper;->mAppSearchBeen:[Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;

    aget-object v0, v4, v1

    .line 124
    .local v0, "appSearchBean":Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;
    if-nez v0, :cond_4

    .line 122
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_4
    :try_start_0
    invoke-virtual {v0}, Lcom/smartisanos/quicksearchbox/repository/app/bean/AppSearchBean;->getPinyinSearchUnit()Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/smartisanos/quicksearchbox/pinyinsearch/util/T9Util;->match(Lcom/smartisanos/quicksearchbox/pinyinsearch/model/PinyinSearchUnit;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 129
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v4

    goto/16 :cond_3
.end method
