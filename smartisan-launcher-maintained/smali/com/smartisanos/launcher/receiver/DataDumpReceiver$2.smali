.class Lcom/smartisanos/launcher/receiver/DataDumpReceiver$2;
.super Lcom/smartisanos/smengine/Event;
.source "DataDumpReceiver.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;


.method constructor <init>(Lcom/smartisanos/launcher/receiver/DataDumpReceiver;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/receiver/DataDumpReceiver;
    .param p2, "type"    # I

    .prologue
    .line 308
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/DataDumpReceiver$2;->this$0:Lcom/smartisanos/launcher/receiver/DataDumpReceiver;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 22

    .prologue
    .line 311
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v11

    .line 312
    .local v11, "mv":Lcom/smartisanos/launcher/view/MainView;
    if-nez v11, :cond_1

    .line 313
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v18

    const-string v19, "MainView is null !"

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v16

    .line 317
    .local v16, "pv":Lcom/smartisanos/launcher/view/PageView;
    invoke-virtual {v11}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v7

    .line 318
    .local v7, "dv":Lcom/smartisanos/launcher/view/DockView;
    if-eqz v16, :cond_2

    if-nez v7, :cond_3

    .line 319
    :cond_2
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v18

    const-string v19, "page view is null or dock view is null"

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v14

    .line 323
    .local v14, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    .line 324
    .local v17, "size":I
    move/from16 v0, v17

    new-array v13, v0, [Lcom/smartisanos/launcher/data/PageInfo;

    .line 325
    .local v13, "pArr":[Lcom/smartisanos/launcher/data/PageInfo;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v8, v0, :cond_4

    .line 326
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/smartisanos/launcher/view/Page;

    .line 327
    .local v12, "p":Lcom/smartisanos/launcher/view/Page;
    new-instance v9, Lcom/smartisanos/launcher/data/PageInfo;

    invoke-direct {v9}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 328
    .local v9, "info":Lcom/smartisanos/launcher/data/PageInfo;
    invoke-virtual {v9, v12}, Lcom/smartisanos/launcher/data/PageInfo;->generateInfo(Lcom/smartisanos/launcher/view/Page;)V

    .line 329
    aput-object v9, v13, v8

    .line 325
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 331
    .end local v9    # "info":Lcom/smartisanos/launcher/data/PageInfo;
    .end local v12    # "p":Lcom/smartisanos/launcher/view/Page;
    :cond_4
    invoke-static {v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 332
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_5

    invoke-static {}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v18

    const-string v19, "UI dump begin !\n"

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 333
    :cond_5
    const/4 v6, 0x1

    .line 334
    .local v6, "dumpDock":Z
    if-eqz v6, :cond_8

    .line 335
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 336
    .local v2, "buffer":Ljava/lang/StringBuffer;
    const-string v18, "Dock : \n"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    invoke-virtual {v7}, Lcom/smartisanos/launcher/view/DockView;->getAllCellsOnDock()Ljava/util/ArrayList;

    move-result-object v5

    .line 338
    .local v5, "dockCells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_6
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 339
    .local v3, "c":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v3, :cond_6

    .line 342
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v10

    .line 343
    .local v10, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v10, :cond_6

    .line 346
    const-string v19, "  "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    invoke-virtual {v10}, Lcom/smartisanos/launcher/data/ItemInfo;->toSimpleInfo()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 348
    const-string v19, "\n"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 350
    .end local v3    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_7
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_8

    invoke-static {}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v18

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 353
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "dockCells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    :cond_8
    array-length v0, v13

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    aget-object v15, v13, v18

    .line 354
    .local v15, "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 355
    .restart local v2    # "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v15}, Lcom/smartisanos/launcher/data/PageInfo;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    invoke-virtual {v15}, Lcom/smartisanos/launcher/data/PageInfo;->getPage()Lcom/smartisanos/launcher/view/Page;

    move-result-object v12

    .line 358
    .restart local v12    # "p":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v12}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v4

    .line 359
    .local v4, "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_9
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/view/Cell;

    .line 360
    .restart local v3    # "c":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v3, :cond_9

    .line 363
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v10

    .line 364
    .restart local v10    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v10, :cond_9

    .line 367
    const-string v21, "  "

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    invoke-virtual {v10}, Lcom/smartisanos/launcher/data/ItemInfo;->toSimpleInfo()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const-string v21, "\n"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 371
    .end local v3    # "c":Lcom/smartisanos/launcher/view/Cell;
    .end local v10    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_a
    sget-boolean v20, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v20, :cond_b

    invoke-static {}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v20

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 353
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 373
    .end local v2    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "cells":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/view/Cell;>;"
    .end local v12    # "p":Lcom/smartisanos/launcher/view/Page;
    .end local v15    # "pinfo":Lcom/smartisanos/launcher/data/PageInfo;
    :cond_c
    sget-boolean v18, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v18, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/receiver/DataDumpReceiver;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v18

    const-string v19, "UI dump done !"

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
