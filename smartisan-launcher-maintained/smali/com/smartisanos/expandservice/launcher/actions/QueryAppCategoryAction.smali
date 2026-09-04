.class public Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;
.super Ljava/lang/Object;
.source "QueryAppCategoryAction.java"

.implements Lcom/smartisanos/expandservice/launcher/actions/Action;


.field private static final CATEGORY_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ID_CATEGORY_SYSTEM:Ljava/lang/String; = "34"

.field private static final SUB_CATEGORY_FOR_GAME:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->log:Lcom/smartisanos/launcher/LOG;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->SUB_CATEGORY_FOR_GAME:Ljava/util/List;

    .line 25
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    const-string v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    const-string v1, "34"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    const-string v1, "35"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    const-string v1, "36"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    const-string v1, "37"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    const-string v1, "38"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    const-string v1, "39"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    const-string v1, "40"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    const-string v1, "41"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    const-string v1, "65"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    const-string v1, "43"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    const-string v1, "111"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    const-string v1, "44"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->SUB_CATEGORY_FOR_GAME:Ljava/util/List;

    const-string v1, "27"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->SUB_CATEGORY_FOR_GAME:Ljava/util/List;

    const-string v1, "28"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->SUB_CATEGORY_FOR_GAME:Ljava/util/List;

    const-string v1, "29"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->SUB_CATEGORY_FOR_GAME:Ljava/util/List;

    const-string v1, "30"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->SUB_CATEGORY_FOR_GAME:Ljava/util/List;

    const-string v1, "31"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->SUB_CATEGORY_FOR_GAME:Ljava/util/List;

    const-string v1, "32"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->SUB_CATEGORY_FOR_GAME:Ljava/util/List;

    const-string v1, "110"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->SUB_CATEGORY_FOR_GAME:Ljava/util/List;

    const-string v1, "112"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public call(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 29
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 52
    .local v4, "begin":J
    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v23, "result":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f080034

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 54
    .local v9, "categoryNameOther":Ljava/lang/String;
    const-string v24, "category_other"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v24, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "category_other ==> "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 57
    invoke-static/range {p1 .. p1}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->listCategoryName(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 58
    .local v11, "cnameList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 59
    .local v7, "categoryDisplayNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_0
    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;

    .line 60
    .local v20, "name":Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;
    if-eqz v20, :cond_0

    .line 63
    sget-object v25, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->categoryId:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "], ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 64
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->categoryId:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;->getName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    .end local v20    # "name":Lcom/smartisanos/expandservice/launcher/data/CategoryDB$CategoryInfo;
    :cond_1
    invoke-static {}, Lcom/smartisanos/expandservice/launcher/data/CategoryDB;->mapAllAppCategory()Ljava/util/Map;

    move-result-object v8

    .line 68
    .local v8, "categoryMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v15, "idMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 70
    .local v22, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_2
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 71
    .local v21, "pkg":Ljava/lang/String;
    sget-object v25, Lcom/smartisanos/expandservice/launcher/SystemPreInstallApps;->SYSTEM_APP_CATEGORY:Ljava/util/Map;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 72
    .local v6, "category":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 73
    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "category":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 75
    .restart local v6    # "category":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/smartisanos/home/Launcher;->isSystemAppByPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 76
    const-string v6, "34"

    .line 78
    :cond_4
    if-eqz v6, :cond_2

    .line 81
    sget-object v25, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 82
    sget-object v25, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->SUB_CATEGORY_FOR_GAME:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 83
    const-string v6, "1"

    .line 89
    :cond_5
    :goto_2
    if-eqz v6, :cond_2

    .line 92
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 93
    .local v13, "displayName":Ljava/lang/String;
    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 94
    .local v3, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_6

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .restart local v3    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    sget-object v25, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "pkg ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "], name ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 98
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {v15, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 86
    .end local v3    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "displayName":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 101
    .end local v6    # "category":Ljava/lang/String;
    .end local v21    # "pkg":Ljava/lang/String;
    :cond_8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v14, "displayNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v24, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->CATEGORY_ORDER:Ljava/util/List;

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_9
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 103
    .local v10, "cid":Ljava/lang/String;
    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 104
    .restart local v13    # "displayName":Ljava/lang/String;
    if-eqz v13, :cond_9

    .line 107
    invoke-interface {v15, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 110
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 112
    .end local v10    # "cid":Ljava/lang/String;
    .end local v13    # "displayName":Ljava/lang/String;
    :cond_a
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_4
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 113
    .local v12, "dName":Ljava/lang/String;
    sget-object v25, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "display_order ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 115
    .end local v12    # "dName":Ljava/lang/String;
    :cond_b
    const-string v24, "display_order"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 116
    new-instance v19, Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    .local v19, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_c
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 118
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 119
    .restart local v3    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 121
    sget-object v25, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "CATEGORY ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_5
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_c

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    .local v2, "app":Ljava/lang/String;
    sget-object v26, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PKG ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_5

    .line 126
    .end local v2    # "app":Ljava/lang/String;
    .end local v3    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "key":Ljava/lang/String;
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 127
    .local v16, "end":J
    sget-object v24, Lcom/smartisanos/expandservice/launcher/actions/QueryAppCategoryAction;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "QueryAppCategoryAction spend time ["

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sub-long v26, v16, v4

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "]"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 128
    return-object v23
.end method
