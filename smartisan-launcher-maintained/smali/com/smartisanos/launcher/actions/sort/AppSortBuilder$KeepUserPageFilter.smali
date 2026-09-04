.class Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$KeepUserPageFilter;
.super Ljava/lang/Object;
.source "AppSortBuilder.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/actions/sort/AppSortBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeepUserPageFilter"
.end annotation


.field private targetPageIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


.method public constructor <init>(ILjava/util/Map;Ljava/util/Map;)V
    .locals 15
    .param p1, "sortType"    # I
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .local p3, "pageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 252
    .local v11, "pageIndexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v8, "keepPages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 254
    .local v7, "itemCountInPage":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 255
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 256
    .local v2, "id":Ljava/lang/Long;
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 257
    .local v5, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v5, :cond_0

    .line 260
    iget v10, v5, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 261
    .local v10, "pageIndex":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 262
    .local v1, "count":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 263
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 265
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 266
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v7, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 268
    .end local v1    # "count":Ljava/lang/Integer;
    .end local v2    # "id":Ljava/lang/Long;
    .end local v5    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v10    # "pageIndex":I
    :cond_2
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 269
    const/4 v9, 0x1

    .line 270
    .local v9, "max":I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 271
    .local v4, "index":Ljava/lang/Integer;
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v14

    if-lt v14, v9, :cond_6

    .line 283
    .end local v4    # "index":Ljava/lang/Integer;
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 284
    .restart local v4    # "index":Ljava/lang/Integer;
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/data/PageInfo;

    .line 285
    .local v12, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    iget v14, v12, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    if-eqz v14, :cond_5

    .line 286
    iget v14, v12, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 274
    .end local v12    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_6
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 275
    .local v6, "itemCount":Ljava/lang/Integer;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_3

    .line 278
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/data/PageInfo;

    .line 279
    .restart local v12    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    iget v14, v12, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v8, v14, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 289
    .end local v4    # "index":Ljava/lang/Integer;
    .end local v6    # "itemCount":Ljava/lang/Integer;
    .end local v12    # "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_7
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v13, p0, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$KeepUserPageFilter;->targetPageIndexList:Ljava/util/List;

    .line 290
    return-void
.end method


.method public isHit(Lcom/smartisanos/launcher/data/ItemInfo;)Z
    .locals 2
    .param p1, "item"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 294
    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/sort/AppSortBuilder$KeepUserPageFilter;->targetPageIndexList:Ljava/util/List;

    iget v1, p1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
