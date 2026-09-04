.class public Lcom/smartisanos/launcher/data/DatabaseUpdater;
.super Ljava/lang/Object;
.source "DatabaseUpdater.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    }
.end annotation


.field private static final log:Lcom/smartisanos/launcher/LOG;


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/smartisanos/launcher/data/DatabaseUpdater;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectAllItemDataValues(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v18

    sget-object v19, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 129
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v16

    .line 130
    .local v16, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 131
    .local v15, "pageCount":I
    const/4 v13, 0x1

    .line 132
    .local v13, "needVerify":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v15, :cond_9

    .line 133
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/view/Page;

    .line 134
    .local v14, "page":Lcom/smartisanos/launcher/view/Page;
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Page;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_8

    .line 135
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v5

    .line 136
    .local v5, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v9, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_0
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    .line 138
    .local v4, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v4, :cond_0

    .line 139
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v11

    .line 140
    .local v11, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v11, :cond_0

    .line 141
    iget v0, v11, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-static {v11}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->getContentValueFromItem(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;

    move-result-object v17

    .line 143
    .local v17, "va":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 147
    .end local v4    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v17    # "va":Landroid/content/ContentValues;
    :cond_1
    if-eqz v13, :cond_8

    .line 148
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v2, v0, [I

    .line 149
    .local v2, "arr":[I
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_2
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_2

    .line 150
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    aput v18, v2, v10

    .line 149
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 152
    :cond_2
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 153
    const/4 v7, 0x0

    .line 154
    .local v7, "error":Z
    sget v18, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v12

    .line 155
    .local v12, "maxCellCount":I
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v0, v12, :cond_3

    .line 156
    const/4 v7, 0x1

    .line 158
    :cond_3
    const/4 v10, 0x0

    :goto_3
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_4

    .line 159
    aget v18, v2, v10

    move/from16 v0, v18

    if-eq v10, v0, :cond_6

    .line 160
    const/4 v7, 0x1

    .line 164
    :cond_4
    if-eqz v7, :cond_8

    .line 165
    sget-object v18, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v19, "A140"

    const-string v20, "dump error page begin !"

    invoke-virtual/range {v18 .. v20}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    .line 167
    .restart local v4    # "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v4, :cond_5

    .line 168
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v11

    .line 169
    .restart local v11    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v11, :cond_5

    .line 170
    sget-object v19, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v20, "A140"

    invoke-virtual {v11}, Lcom/smartisanos/launcher/data/ItemInfo;->toSimpleInfo()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 158
    .end local v4    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 174
    :cond_7
    sget-object v18, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v19, "A140"

    const-string v20, "dump error page end !"

    invoke-virtual/range {v18 .. v20}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "cell index error"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 132
    .end local v2    # "arr":[I
    .end local v5    # "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v7    # "error":Z
    .end local v9    # "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v10    # "index":I
    .end local v12    # "maxCellCount":I
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 182
    .end local v14    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_9
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v6

    .line 183
    .local v6, "dcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_a
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/smartisanos/launcher/view/Cell;

    .line 184
    .restart local v4    # "cell":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v11

    .line 185
    .restart local v11    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v11, :cond_a

    .line 186
    invoke-static {v11}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->getContentValueFromItem(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;

    move-result-object v17

    .line 187
    .restart local v17    # "va":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 191
    .end local v4    # "cell":Lcom/smartisanos/launcher/view/Cell;
    .end local v11    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v17    # "va":Landroid/content/ContentValues;
    :cond_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v2, v0, [I

    .line 192
    .restart local v2    # "arr":[I
    const/4 v8, 0x0

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_c

    .line 193
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    move/from16 v18, v0

    aput v18, v2, v8

    .line 192
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 195
    :cond_c
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    .line 196
    const/4 v7, 0x0

    .line 197
    .restart local v7    # "error":Z
    const/4 v8, 0x0

    :goto_7
    array-length v0, v2

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_d

    .line 198
    aget v18, v2, v8

    move/from16 v0, v18

    if-eq v8, v0, :cond_f

    .line 199
    const/4 v7, 0x1

    .line 203
    :cond_d
    array-length v0, v2

    move/from16 v18, v0

    sget v19, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static/range {v19 .. v19}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    .line 204
    sget-object v18, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "over max cell count in dock ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    array-length v0, v2

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "], max ["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    .line 205
    invoke-static/range {v20 .. v20}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->dock_app_count:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 204
    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 206
    const/4 v7, 0x1

    .line 208
    :cond_e
    if-eqz v7, :cond_11

    .line 209
    sget-object v18, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v19, "A140"

    const-string v20, "dock cell index error dump begin"

    invoke-virtual/range {v18 .. v20}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 211
    .local v3, "c":Lcom/smartisanos/launcher/view/Cell;
    sget-object v19, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v20, "A140"

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/smartisanos/launcher/data/ItemInfo;->toSimpleInfo()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 197
    .end local v3    # "c":Lcom/smartisanos/launcher/view/Cell;
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_7

    .line 213
    :cond_10
    sget-object v18, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v19, "A140"

    const-string v20, "dock cell index error dump end"

    invoke-virtual/range {v18 .. v20}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "dock cell index error !"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 216
    :cond_11
    return-void
.end method

.method private static collectAllPageDataValues(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "data":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v14

    sget-object v15, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v14, v15}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 223
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v1

    .line 224
    .local v1, "allPages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    const/4 v4, 0x0

    .line 225
    .local v4, "floatPage":Lcom/smartisanos/launcher/view/Page;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v9

    .line 226
    .local v9, "node":Lcom/smartisanos/launcher/view/FloatPageNode;
    if-eqz v9, :cond_0

    .line 227
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/FloatPageNode;->getCurrentFloatPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v4

    .line 230
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v7, "indexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/view/Page;

    .line 232
    .local v11, "page":Lcom/smartisanos/launcher/view/Page;
    iget-boolean v15, v11, Lcom/smartisanos/launcher/view/Page;->readOnlyPage:Z

    if-nez v15, :cond_1

    .line 236
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v13

    .line 237
    .local v13, "status":I
    if-eqz v4, :cond_2

    .line 238
    if-ne v11, v4, :cond_2

    .line 239
    invoke-virtual {v9}, Lcom/smartisanos/launcher/view/FloatPageNode;->getPageOriState()I

    move-result v13

    .line 242
    :cond_2
    iget v15, v11, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/Page;->getTitleForDB()Ljava/lang/String;

    move-result-object v12

    .line 244
    .local v12, "pageName":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 245
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v15, "pageIndex"

    iget v0, v11, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    const-string v15, "pageTitle"

    invoke-virtual {v2, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v15, "status"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v11    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v12    # "pageName":Ljava/lang/String;
    .end local v13    # "status":I
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_9

    .line 252
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    new-array v6, v14, [I

    .line 253
    .local v6, "indexArr":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v14, v6

    if-ge v5, v14, :cond_4

    .line 254
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v6, v5

    .line 253
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 256
    :cond_4
    invoke-static {v6}, Ljava/util/Arrays;->sort([I)V

    .line 257
    const/4 v3, 0x0

    .line 258
    .local v3, "err":Z
    const/4 v5, 0x0

    :goto_2
    array-length v14, v6

    if-ge v5, v14, :cond_5

    .line 259
    aget v14, v6, v5

    if-eq v14, v5, :cond_7

    .line 260
    const/4 v3, 0x1

    .line 264
    :cond_5
    if-eqz v3, :cond_9

    .line 265
    sget-object v14, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v15, "DEBUG"

    const-string v16, "### DUMP PAGE LIST FOR ERROR ###"

    invoke-virtual/range {v14 .. v16}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/smartisanos/launcher/view/Page;

    .line 267
    .local v10, "p":Lcom/smartisanos/launcher/view/Page;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "index ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v10, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], status ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getPageStatus()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "], title ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Lcom/smartisanos/launcher/view/Page;->getTitleForDB()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 268
    .local v8, "info":Ljava/lang/String;
    iget-boolean v15, v10, Lcom/smartisanos/launcher/view/Page;->readOnlyPage:Z

    if-eqz v15, :cond_6

    .line 269
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", readOnly ["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-boolean v0, v10, Lcom/smartisanos/launcher/view/Page;->readOnlyPage:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 271
    :cond_6
    sget-object v15, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v16, "DEBUG"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 258
    .end local v8    # "info":Ljava/lang/String;
    .end local v10    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 273
    :cond_8
    sget-object v14, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v15, "DEBUG"

    const-string v16, "################################"

    invoke-virtual/range {v14 .. v16}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "page index error by "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 277
    .end local v3    # "err":Z
    .end local v5    # "i":I
    .end local v6    # "indexArr":[I
    :cond_9
    return-void
.end method

.method public static getActionName(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .prologue
    .line 87
    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->name()Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getContentValueFromItem(Lcom/smartisanos/launcher/data/ItemInfo;)Landroid/content/ContentValues;
    .locals 4
    .param p0, "info"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 280
    if-eqz p0, :cond_0

    .line 281
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 282
    .local v0, "va":Landroid/content/ContentValues;
    const-string v1, "_id"

    iget-wide v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 283
    const-string v1, "pageIndex"

    iget v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    const-string v1, "cellIndex"

    iget v2, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    .end local v0    # "va":Landroid/content/ContentValues;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)V
    .locals 2
    .param p0, "action"    # Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    .prologue
    .line 94
    const-class v0, Lcom/smartisanos/launcher/data/DatabaseUpdater;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v0

    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;)V
    .locals 2
    .param p0, "action"    # Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "contentValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-class v0, Lcom/smartisanos/launcher/data/DatabaseUpdater;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit v0

    return-void

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 8
    .param p0, "action"    # Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;
    .param p2, "params"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "contentValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-class v4, Lcom/smartisanos/launcher/data/DatabaseUpdater;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDatabase ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->getActionName(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    sget-object v3, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REFRESH:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    if-ne p0, v3, :cond_1

    .line 104
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    sget-object v5, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->GL:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual {v3, v5}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 107
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/PageView;->updateCellInfo()V

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v2, "pageData":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->collectAllPageDataValues(Ljava/util/List;)V

    .line 110
    sget-object v3, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REFRESH_PAGE_TABLE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v5, 0x0

    invoke-static {v3, v2, v5}, Lcom/smartisanos/launcher/data/DatabaseHandler;->postData(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v1, "itemData":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-static {v1}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->collectAllItemDataValues(Ljava/util/List;)V

    .line 113
    sget-object v3, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_UPDATE_ITEM_TABLE:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    invoke-static {v3, v1, p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->postData(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 116
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->sendInvisiblePageIntent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v1    # "itemData":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v2    # "pageData":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_0
    monitor-exit v4

    return-void

    .line 118
    :cond_1
    const/4 v0, 0x0

    .line 119
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz p1, :cond_2

    .line 120
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .restart local v0    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    :cond_2
    invoke-static {p0, v0, p2}, Lcom/smartisanos/launcher/data/DatabaseHandler;->postData(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static updateDatabaseByMode(II)V
    .locals 52
    .param p0, "from"    # I
    .param p1, "to"    # I

    .prologue
    .line 292
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v46

    sget-object v47, Lcom/smartisanos/home/Launcher$RUNNING_ENV;->DB:Lcom/smartisanos/home/Launcher$RUNNING_ENV;

    invoke-virtual/range {v46 .. v47}, Lcom/smartisanos/home/Launcher;->verifyThread(Lcom/smartisanos/home/Launcher$RUNNING_ENV;)V

    .line 293
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_0

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "DEBUG"

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "updateDatabaseByMode From "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, ", To "

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-static/range {p1 .. p1}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v46 .. v48}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    const/16 v46, 0x2

    move/from16 v0, p0

    move/from16 v1, v46

    if-eq v0, v1, :cond_1

    const/16 v46, 0x3

    move/from16 v0, p0

    move/from16 v1, v46

    if-eq v0, v1, :cond_1

    const/16 v46, 0x5

    move/from16 v0, p0

    move/from16 v1, v46

    if-ne v0, v1, :cond_3

    .line 295
    :cond_1
    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "DEBUG"

    const-string v48, "mode from can\'t be multi mode !"

    invoke-virtual/range {v46 .. v48}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_2
    :goto_0
    return-void

    .line 298
    :cond_3
    const/16 v46, 0x2

    move/from16 v0, p1

    move/from16 v1, v46

    if-eq v0, v1, :cond_4

    const/16 v46, 0x3

    move/from16 v0, p1

    move/from16 v1, v46

    if-eq v0, v1, :cond_4

    const/16 v46, 0x5

    move/from16 v0, p1

    move/from16 v1, v46

    if-ne v0, v1, :cond_5

    .line 299
    :cond_4
    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "DEBUG"

    const-string v48, "mode to can\'t be multi mode !"

    invoke-virtual/range {v46 .. v48}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_5
    move/from16 v0, p0

    move/from16 v1, p1

    if-ne v0, v1, :cond_6

    .line 303
    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "DEBUG"

    const-string v48, "error updateDatabaseByMode from is same with to !!!"

    invoke-virtual/range {v46 .. v48}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_6
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_7

    .line 308
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler;->dumpDatabase()V

    .line 311
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 312
    .local v4, "beginTime":J
    const/16 v46, 0x1

    move/from16 v0, p1

    move/from16 v1, v46

    if-ne v0, v1, :cond_25

    .line 313
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_8

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "DEBUG"

    const-string v48, "to Constants.PAGE_1_3X3_MODE begin !"

    invoke-virtual/range {v46 .. v48}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_8
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 318
    .local v8, "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 319
    .local v19, "index_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const-string v49, "pageIndex ASC, cellIndex ASC"

    invoke-static/range {v46 .. v49}, Lcom/smartisanos/launcher/data/handler/ItemDB;->listItem(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 320
    .local v6, "cursorItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-eqz v6, :cond_b

    .line 321
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v43

    .line 322
    .local v43, "size":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, v43

    if-ge v13, v0, :cond_b

    .line 323
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 324
    .local v20, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v20, :cond_a

    .line 325
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    move/from16 v37, v0

    .line 327
    .local v37, "pageIndex":I
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 328
    .local v26, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v26, :cond_9

    .line 329
    new-instance v26, Ljava/util/ArrayList;

    .end local v26    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .restart local v26    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_9
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .end local v26    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v37    # "pageIndex":I
    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 336
    .end local v13    # "i":I
    .end local v20    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v43    # "size":I
    :cond_b
    const/16 v45, 0x1

    .line 337
    .local v45, "verify":Z
    if-eqz v45, :cond_d

    .line 338
    new-instance v33, Ljava/util/ArrayList;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v46

    move-object/from16 v0, v33

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 339
    .local v33, "pIndexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :cond_c
    :goto_2
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v47

    if-eqz v47, :cond_d

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 340
    .local v18, "index":Ljava/lang/Integer;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/List;

    .line 341
    .local v27, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v47

    const/16 v48, 0x10

    move/from16 v0, v47

    move/from16 v1, v48

    if-le v0, v1, :cond_c

    .line 342
    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "updateDatabaseByMode error by cell over limited. page index ["

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "], cell count ["

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "]"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 343
    .local v12, "error":Ljava/lang/String;
    sget-object v47, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v48, "DEBUG"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v12}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 348
    .end local v12    # "error":Ljava/lang/String;
    .end local v18    # "index":Ljava/lang/Integer;
    .end local v27    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v33    # "pIndexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_d
    const/16 v46, -0x2

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    if-nez v46, :cond_e

    .line 349
    const/16 v46, -0x2

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    :cond_e
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/PageDB;->listPage()Ljava/util/List;

    move-result-object v35

    .line 352
    .local v35, "pageData":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    .line 353
    .local v38, "pageInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :goto_3
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v47

    if-eqz v47, :cond_f

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/smartisanos/launcher/data/PageInfo;

    .line 354
    .local v20, "info":Lcom/smartisanos/launcher/data/PageInfo;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v38

    move-object/from16 v1, v47

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 357
    .end local v20    # "info":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_f
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v31, "newItemIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    new-instance v32, Ljava/util/HashMap;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashMap;-><init>()V

    .line 360
    .local v32, "newPageInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    const-wide/16 v28, -0x1

    .line 361
    .local v28, "moveToPageItemId":J
    const/16 v46, -0x2

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    if-eqz v46, :cond_14

    .line 362
    const/16 v46, -0x2

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    .line 363
    .local v17, "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_10

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "get dock cell list size ==> "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 364
    :cond_10
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v46

    const/16 v47, 0x4

    move/from16 v0, v46

    move/from16 v1, v47

    if-lt v0, v1, :cond_12

    .line 365
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_11

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "split dock cell"

    invoke-virtual/range {v46 .. v47}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 366
    :cond_11
    const/16 v46, 0x0

    const/16 v47, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v9

    .line 367
    .local v9, "dockIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v46, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Long;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 368
    const/16 v46, -0x2

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v31

    move-object/from16 v1, v46

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .end local v9    # "dockIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v46

    const/16 v47, 0x4

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_14

    .line 377
    new-instance v46, Ljava/lang/IllegalArgumentException;

    const-string v47, "dock cell count error"

    invoke-direct/range {v46 .. v47}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v46

    .line 370
    :cond_12
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_13

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "don\'t need split dock cell"

    invoke-virtual/range {v46 .. v47}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 371
    :cond_13
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .restart local v26    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 373
    const/16 v46, -0x2

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v31

    move-object/from16 v1, v46

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 382
    .end local v17    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v26    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_14
    const/16 v46, -0x1

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    if-eqz v46, :cond_18

    const/16 v46, -0x1

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/util/ArrayList;

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v46

    if-lez v46, :cond_18

    .line 383
    const/16 v46, -0x1

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/ArrayList;

    .line 384
    .restart local v26    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_15

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "DEBUG : pageIndex == -1 error ! ############################"

    invoke-virtual/range {v46 .. v47}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 385
    :cond_15
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v46

    :cond_16
    :goto_5
    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->hasNext()Z

    move-result v47

    if-eqz v47, :cond_17

    invoke-interface/range {v46 .. v46}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 386
    .local v14, "id":Ljava/lang/Long;
    invoke-virtual {v8, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 387
    .local v20, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v20, :cond_16

    .line 388
    sget-boolean v47, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v47, :cond_16

    sget-object v47, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/data/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_5

    .line 391
    .end local v14    # "id":Ljava/lang/Long;
    .end local v20    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_17
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_18

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "DEBUG : ####################################################"

    invoke-virtual/range {v46 .. v47}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 395
    .end local v26    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_18
    const/16 v18, 0x0

    .line 396
    .local v18, "index":I
    const/16 v34, -0x1

    .line 397
    .local v34, "pageCount":I
    const/16 v17, 0x0

    .line 398
    .restart local v17    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_6
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v19

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast v17, Ljava/util/ArrayList;

    .restart local v17    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v17, :cond_1c

    .line 400
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v38

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/smartisanos/launcher/data/PageInfo;

    .line 401
    .local v40, "pi":Lcom/smartisanos/launcher/data/PageInfo;
    if-nez v40, :cond_19

    .line 402
    new-instance v40, Lcom/smartisanos/launcher/data/PageInfo;

    .end local v40    # "pi":Lcom/smartisanos/launcher/data/PageInfo;
    invoke-direct/range {v40 .. v40}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 403
    .restart local v40    # "pi":Lcom/smartisanos/launcher/data/PageInfo;
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v40

    iput v0, v1, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    .line 404
    const-string v46, ""

    move-object/from16 v0, v40

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/data/PageInfo;->setPageName(Ljava/lang/String;)V

    .line 407
    :cond_19
    const-wide/16 v46, -0x1

    cmp-long v46, v28, v46

    if-eqz v46, :cond_1a

    .line 408
    move-object/from16 v0, v40

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    move/from16 v46, v0

    if-nez v46, :cond_1a

    .line 409
    move-wide/from16 v14, v28

    .line 410
    .local v14, "id":J
    const/16 v46, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    move-object/from16 v0, v17

    move/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 411
    const-wide/16 v28, -0x1

    .line 415
    .end local v14    # "id":J
    :cond_1a
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v46

    const/16 v47, 0x9

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_1b

    .line 417
    add-int/lit8 v34, v34, 0x1

    .line 418
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    new-instance v47, Ljava/util/ArrayList;

    const/16 v48, 0x0

    const/16 v49, 0x9

    move-object/from16 v0, v17

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-virtual/range {v40 .. v40}, Lcom/smartisanos/launcher/data/PageInfo;->clone()Lcom/smartisanos/launcher/data/PageInfo;

    move-result-object v21

    .line 420
    .local v21, "info1":Lcom/smartisanos/launcher/data/PageInfo;
    move/from16 v0, v34

    move-object/from16 v1, v21

    iput v0, v1, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 421
    move-object/from16 v0, v21

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    add-int/lit8 v34, v34, 0x1

    .line 424
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    new-instance v47, Ljava/util/ArrayList;

    const/16 v48, 0x9

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v49

    move-object/from16 v0, v17

    move/from16 v1, v48

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v48

    invoke-direct/range {v47 .. v48}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual/range {v40 .. v40}, Lcom/smartisanos/launcher/data/PageInfo;->clone()Lcom/smartisanos/launcher/data/PageInfo;

    move-result-object v22

    .line 426
    .local v22, "info2":Lcom/smartisanos/launcher/data/PageInfo;
    move/from16 v0, v34

    move-object/from16 v1, v22

    iput v0, v1, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 427
    move-object/from16 v0, v22

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .end local v21    # "info1":Lcom/smartisanos/launcher/data/PageInfo;
    .end local v22    # "info2":Lcom/smartisanos/launcher/data/PageInfo;
    :goto_7
    add-int/lit8 v18, v18, 0x1

    .line 435
    goto/16 :goto_6

    .line 429
    :cond_1b
    add-int/lit8 v34, v34, 0x1

    .line 430
    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v31

    move-object/from16 v1, v46

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    move/from16 v0, v34

    move-object/from16 v1, v40

    iput v0, v1, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 432
    move-object/from16 v0, v40

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 437
    .end local v40    # "pi":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_1c
    const-wide/16 v46, -0x1

    cmp-long v46, v28, v46

    if-eqz v46, :cond_1e

    .line 438
    move-wide/from16 v14, v28

    .line 439
    .restart local v14    # "id":J
    const-wide/16 v28, -0x1

    .line 440
    add-int/lit8 v34, v34, 0x1

    .line 441
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_1d

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "all page is invisible status !!! create new page for it, index ["

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "]"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-virtual/range {v46 .. v47}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 442
    :cond_1d
    new-instance v42, Lcom/smartisanos/launcher/data/PageInfo;

    invoke-direct/range {v42 .. v42}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 443
    .local v42, "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    move/from16 v0, v34

    move-object/from16 v1, v42

    iput v0, v1, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    .line 444
    const-string v46, ""

    move-object/from16 v0, v42

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/data/PageInfo;->setPageName(Ljava/lang/String;)V

    .line 445
    const/16 v46, 0x0

    move/from16 v0, v46

    move-object/from16 v1, v42

    iput v0, v1, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    .line 446
    move-object/from16 v0, v42

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    move-object/from16 v2, v42

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v30, "newIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    move-object/from16 v0, v30

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    move-object/from16 v0, v42

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v46, v0

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v31

    move-object/from16 v1, v46

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    .end local v14    # "id":J
    .end local v30    # "newIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v42    # "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_1e
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v24, "itemInfoValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-interface/range {v31 .. v31}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v46

    move-object/from16 v0, v36

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 456
    .local v36, "pageIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v47

    :cond_1f
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v46

    if-eqz v46, :cond_22

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    .line 457
    .local v41, "pid":Ljava/lang/Integer;
    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/List;

    .line 458
    .local v23, "itemIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_8
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v46

    move/from16 v0, v46

    if-ge v13, v0, :cond_1f

    .line 459
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Long;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 460
    .restart local v14    # "id":J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 461
    .restart local v20    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v20, :cond_21

    .line 462
    move-object/from16 v0, v20

    iput v13, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 463
    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v46

    move/from16 v0, v46

    move-object/from16 v1, v20

    iput v0, v1, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 464
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 465
    .local v7, "cv":Landroid/content/ContentValues;
    const-string v46, "_id"

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    move-wide/from16 v48, v0

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v48

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 466
    const-string v46, "cellIndex"

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    const-string v46, "pageIndex"

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    move/from16 v48, v0

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v48

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 468
    move-object/from16 v0, v24

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v7    # "cv":Landroid/content/ContentValues;
    :cond_20
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 470
    :cond_21
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_20

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v48, "DEBUG"

    const-string v49, "some error happened from updateDatabaseByMode, can\'t get itemInfo from LauncherModel.sItemInfoIdMap"

    move-object/from16 v0, v46

    move-object/from16 v1, v48

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 474
    .end local v13    # "i":I
    .end local v14    # "id":J
    .end local v20    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v23    # "itemIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v41    # "pid":Ljava/lang/Integer;
    :cond_22
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v39, "pageValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v46

    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 476
    .local v25, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v46

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 477
    .local v16, "idArr":[I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_a
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v46

    move/from16 v0, v46

    if-ge v13, v0, :cond_23

    .line 478
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/Integer;

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v46

    aput v46, v16, v13

    .line 477
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 480
    :cond_23
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([I)V

    .line 481
    const/4 v13, 0x0

    :goto_b
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    if-ge v13, v0, :cond_24

    .line 482
    aget v46, v16, v13

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    move-object/from16 v0, v32

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/smartisanos/launcher/data/PageInfo;

    .line 483
    .restart local v40    # "pi":Lcom/smartisanos/launcher/data/PageInfo;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 484
    .restart local v7    # "cv":Landroid/content/ContentValues;
    const-string v46, "pageIndex"

    move-object/from16 v0, v40

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 485
    const-string v46, "status"

    move-object/from16 v0, v40

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 486
    const-string v46, "pageTitle"

    invoke-virtual/range {v40 .. v40}, Lcom/smartisanos/launcher/data/PageInfo;->getPageName()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 491
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v40    # "pi":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_24
    invoke-static/range {v24 .. v24}, Lcom/smartisanos/launcher/data/handler/ItemDB;->updateById(Ljava/util/List;)Z

    .line 492
    const/16 v46, 0x1

    invoke-static/range {v46 .. v46}, Lcom/smartisanos/launcher/view/MainView;->getMaxPageCount(I)I

    move-result v46

    move-object/from16 v0, v39

    move/from16 v1, v46

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/handler/PageDB;->rewritePageTable(Ljava/util/List;I)V

    .line 494
    .end local v6    # "cursorItems":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v8    # "dataMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v13    # "i":I
    .end local v16    # "idArr":[I
    .end local v17    # "idList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v18    # "index":I
    .end local v19    # "index_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .end local v24    # "itemInfoValues":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v25    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v28    # "moveToPageItemId":J
    .end local v31    # "newItemIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Long;>;>;"
    .end local v32    # "newPageInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    .end local v34    # "pageCount":I
    .end local v35    # "pageData":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    .end local v36    # "pageIdList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v38    # "pageInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/smartisanos/launcher/data/PageInfo;>;"
    .end local v39    # "pageValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v45    # "verify":Z
    :cond_25
    const/16 v46, 0x4

    move/from16 v0, p1

    move/from16 v1, v46

    if-ne v0, v1, :cond_28

    .line 495
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_26

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "DEBUG"

    const-string v48, "change to PAGE_1_4X4_MODE, begin !"

    invoke-virtual/range {v46 .. v48}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_26
    invoke-static {}, Lcom/smartisanos/launcher/data/handler/PageDB;->listPage()Ljava/util/List;

    move-result-object v35

    .line 499
    .restart local v35    # "pageData":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v43

    .line 500
    .restart local v43    # "size":I
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 501
    .local v44, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_c
    move/from16 v0, v43

    if-ge v13, v0, :cond_27

    .line 502
    move-object/from16 v0, v35

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/smartisanos/launcher/data/PageInfo;

    .line 503
    .local v20, "info":Lcom/smartisanos/launcher/data/PageInfo;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 504
    .restart local v7    # "cv":Landroid/content/ContentValues;
    const-string v46, "pageIndex"

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->pageIndex:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 505
    const-string v46, "status"

    move-object/from16 v0, v20

    iget v0, v0, Lcom/smartisanos/launcher/data/PageInfo;->status:I

    move/from16 v47, v0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 506
    const-string v46, "pageTitle"

    invoke-virtual/range {v20 .. v20}, Lcom/smartisanos/launcher/data/PageInfo;->getPageName()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    move-object/from16 v0, v44

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    .line 509
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v20    # "info":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_27
    const/16 v46, 0x4

    invoke-static/range {v46 .. v46}, Lcom/smartisanos/launcher/view/MainView;->getMaxPageCount(I)I

    move-result v46

    move-object/from16 v0, v44

    move/from16 v1, v46

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/data/handler/PageDB;->rewritePageTable(Ljava/util/List;I)V

    .line 511
    .end local v13    # "i":I
    .end local v35    # "pageData":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/PageInfo;>;"
    .end local v43    # "size":I
    .end local v44    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 512
    .local v10, "endTime":J
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_29

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "DEBUG"

    const-string v48, "======================================================="

    invoke-virtual/range {v46 .. v48}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_29
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_2a

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "DEBUG"

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "| base mode change, from ["

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-static/range {p0 .. p0}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "]"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v46 .. v48}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_2a
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_2b

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "DEBUG"

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "|                   to   ["

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-static/range {p1 .. p1}, Lcom/smartisanos/launcher/data/Constants;->getModeName(I)Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, "]"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v46 .. v48}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_2b
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_2c

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "DEBUG"

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string v49, "| update database spend time ["

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    sub-long v50, v10, v4

    move-object/from16 v0, v48

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v48

    const-string v49, " ms]"

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v46 .. v48}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_2c
    sget-boolean v46, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v46, :cond_2

    sget-object v46, Lcom/smartisanos/launcher/data/DatabaseUpdater;->log:Lcom/smartisanos/launcher/LOG;

    const-string v47, "DEBUG"

    const-string v48, "======================================================="

    invoke-virtual/range {v46 .. v48}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
