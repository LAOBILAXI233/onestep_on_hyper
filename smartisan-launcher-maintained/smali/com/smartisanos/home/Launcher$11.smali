.class Lcom/smartisanos/home/Launcher$11;
.super Lcom/smartisanos/smengine/Event;
.source "Launcher.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher;->languageChanged(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/Launcher;


.method constructor <init>(Lcom/smartisanos/home/Launcher;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/Launcher;
    .param p2, "type"    # I

    .prologue
    .line 999
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$11;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 26

    .prologue
    .line 1002
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v23

    if-eqz v23, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v23

    if-nez v23, :cond_1

    .line 1003
    :cond_0
    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v23

    const-string v24, "onConfigurationChanged, main view is null !"

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1090
    :goto_0
    return-void

    .line 1007
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/home/Launcher$11;->this$0:Lcom/smartisanos/home/Launcher;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/smartisanos/home/Launcher;->access$200(Lcom/smartisanos/home/Launcher;)Landroid/app/Activity;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/smartisanos/launcher/LauncherModel;->updateDataForLocaleChange(Landroid/content/Context;)V

    .line 1010
    invoke-static {}, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->listTasks()Ljava/util/List;

    move-result-object v20

    .line 1011
    .local v20, "taskList":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;>;"
    if-eqz v20, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_5

    .line 1013
    :try_start_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v17

    .line 1014
    .local v17, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v7, v0, :cond_5

    .line 1015
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v7, v0, :cond_8

    .line 1016
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;

    .line 1017
    .local v19, "task":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->actionType:I

    move/from16 v22, v0

    .line 1018
    .local v22, "type":I
    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 1020
    :cond_2
    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;->itemInfos:Ljava/util/List;

    .line 1021
    .local v12, "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    if-nez v12, :cond_3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v23

    if-lez v23, :cond_8

    .line 1022
    :cond_3
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_4
    :goto_2
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 1023
    .local v11, "item":Lcom/smartisanos/launcher/data/ItemInfo;
    iget-wide v8, v11, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 1024
    .local v8, "id":J
    invoke-static {v8, v9}, Lcom/smartisanos/launcher/LauncherModel;->getItemInfo(J)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v10

    .line 1025
    .local v10, "info":Lcom/smartisanos/launcher/data/ItemInfo;
    if-eqz v10, :cond_4

    .line 1026
    iget-object v0, v10, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iput-object v0, v11, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1033
    .end local v7    # "i":I
    .end local v8    # "id":J
    .end local v10    # "info":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v11    # "item":Lcom/smartisanos/launcher/data/ItemInfo;
    .end local v12    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v17    # "size":I
    .end local v19    # "task":Lcom/smartisanos/launcher/data/DatabaseHandler$PackageTask;
    .end local v22    # "type":I
    :catch_0
    move-exception v6

    .line 1034
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 1039
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v13

    .line 1042
    .local v13, "mv":Lcom/smartisanos/launcher/view/MainView;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/MainView;->isEditMode()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1043
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v23

    const/high16 v24, 0x80000

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 1044
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/smartisanos/launcher/view/StatusBar;->mSortType:I

    move/from16 v18, v0

    .line 1045
    .local v18, "sortType":I
    const/16 v16, -0x1

    .line 1046
    .local v16, "resId":I
    packed-switch v18, :pswitch_data_0

    .line 1064
    :goto_3
    const/16 v21, 0x0

    .line 1065
    .local v21, "text":Ljava/lang/String;
    if-lez v16, :cond_6

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/home/Launcher$11;->this$0:Lcom/smartisanos/home/Launcher;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1068
    :cond_6
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/MainView;->getStatusBar()Lcom/smartisanos/launcher/view/StatusBar;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/StatusBar;->showTextOnStatusBar(Lcom/smartisanos/smengine/AnimationTimeLine;FLjava/lang/String;)V

    .line 1080
    .end local v16    # "resId":I
    .end local v18    # "sortType":I
    .end local v21    # "text":Ljava/lang/String;
    :cond_7
    :goto_4
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/PageView;->getAllPages()Ljava/util/ArrayList;

    move-result-object v15

    .line 1081
    .local v15, "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smartisanos/launcher/view/Page;

    .line 1082
    .local v14, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {v14}, Lcom/smartisanos/launcher/view/Page;->refreshAppName()V

    goto :goto_5

    .line 1014
    .end local v13    # "mv":Lcom/smartisanos/launcher/view/MainView;
    .end local v14    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v15    # "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    .restart local v7    # "i":I
    .restart local v17    # "size":I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 1048
    .end local v7    # "i":I
    .end local v17    # "size":I
    .restart local v13    # "mv":Lcom/smartisanos/launcher/view/MainView;
    .restart local v16    # "resId":I
    .restart local v18    # "sortType":I
    :pswitch_0
    sget v16, Lcom/smartisanos/launcher/ResIds$string;->sort_by_color:I

    .line 1049
    goto :goto_3

    .line 1052
    :pswitch_1
    sget v16, Lcom/smartisanos/launcher/ResIds$string;->sort_by_install_time:I

    .line 1053
    goto :goto_3

    .line 1056
    :pswitch_2
    sget v16, Lcom/smartisanos/launcher/ResIds$string;->sort_by_usage_frequency:I

    .line 1057
    goto :goto_3

    .line 1060
    :pswitch_3
    sget v16, Lcom/smartisanos/launcher/ResIds$string;->sort_by_category:I

    goto :goto_3

    .line 1070
    .end local v16    # "resId":I
    .end local v18    # "sortType":I
    :cond_9
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/MultiSelectNode;->getCurrentSelectedCellCount()I

    move-result v4

    .line 1071
    .local v4, "count":I
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v23

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/smartisanos/launcher/view/PageView;->mMultiSelectNode:Lcom/smartisanos/launcher/view/MultiSelectNode;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/smartisanos/launcher/view/MultiSelectNode;->multiSelectedCellListWillBeClear()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 1073
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/smartisanos/launcher/view/MainView;->updateStatusBarText(I)V

    goto :goto_4

    .line 1075
    :cond_a
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/view/MainView;->updateStatusBarText(I)V

    goto :goto_4

    .line 1085
    .end local v4    # "count":I
    .restart local v15    # "pageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Page;>;"
    :cond_b
    invoke-virtual {v13}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v5

    .line 1086
    .local v5, "dock":Lcom/smartisanos/launcher/view/DockView;
    if-eqz v5, :cond_c

    .line 1087
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/DockView;->refreshAppName()V

    .line 1089
    :cond_c
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v23

    const/high16 v24, 0x800000

    const/16 v25, 0x1

    invoke-virtual/range {v23 .. v25}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    goto/16 :goto_0

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
