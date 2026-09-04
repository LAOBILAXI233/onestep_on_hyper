.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;
.super Landroid/os/Handler;
.source "ThemeItemActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/theme/ThemeItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 21
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 763
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 838
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 766
    :pswitch_1
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v18

    if-nez v18, :cond_1

    .line 767
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->forceCompleteChangeTheme()V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->finish()V

    goto :goto_0

    .line 772
    :cond_1
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 773
    .local v4, "dm":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 774
    const/high16 v18, -0x1000000

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1900(III)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 775
    .local v13, "screen":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v18

    if-nez v18, :cond_2

    .line 776
    invoke-static {}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->getInstance()Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->prepareChangeThemeCover(Landroid/graphics/Bitmap;)V

    .line 778
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->finish()V

    .line 779
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 780
    .local v8, "intent":Landroid/content/Intent;
    const-string v18, "com.smartisanos.home"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    const/high16 v18, 0x3200000

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 784
    const-string v18, "android.intent.category.HOME"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 790
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v13    # "screen":Landroid/graphics/Bitmap;
    :pswitch_2
    :try_start_0
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .line 791
    .local v11, "params":Ljava/util/List;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/smartisanos/launcher/theme/Theme;

    .line 792
    .local v15, "theme":Lcom/smartisanos/launcher/theme/Theme;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    .line 793
    .local v17, "used":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v15, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->switchButtonStatus(Lcom/smartisanos/launcher/theme/Theme;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 794
    .end local v11    # "params":Ljava/util/List;
    .end local v15    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    .end local v17    # "used":Z
    :catch_0
    move-exception v5

    .line 795
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 801
    .end local v5    # "e":Ljava/lang/Exception;
    :pswitch_3
    :try_start_1
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/util/List;

    .line 802
    .restart local v11    # "params":Ljava/util/List;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 803
    .local v9, "isConnected":Z
    if-nez v9, :cond_0

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 807
    .local v16, "themeId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v18

    move-object/from16 v0, v18

    iget v10, v0, Lcom/smartisanos/launcher/theme/Theme;->status:I

    .line 808
    .local v10, "oldStatus":I
    const/16 v18, 0x67

    move/from16 v0, v18

    if-ne v10, v0, :cond_0

    .line 809
    const-wide/16 v6, -0x1

    .line 810
    .local v6, "downloadId":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    .line 811
    .local v2, "displayedThemeId":Ljava/lang/String;
    invoke-static {v2}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v3

    .line 812
    .local v3, "dlRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    if-eqz v3, :cond_3

    .line 813
    iget-wide v6, v3, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .line 815
    :cond_3
    const/4 v12, 0x0

    .line 816
    .local v12, "progress":I
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_4

    .line 817
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1100()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(Landroid/content/Context;J)Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;

    move-result-object v14

    .line 818
    .local v14, "status":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    if-eqz v14, :cond_4

    .line 819
    invoke-virtual {v14}, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->downloadProgress()I

    move-result v12

    .line 822
    .end local v14    # "status":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v18

    const-string v19, "MSG_NETWORK_STATUS_CHANGED set to DOWNLOAD_PAUSED"

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 823
    const/16 v18, 0x68

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1, v12}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    .line 824
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1100()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 825
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1100()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v18

    new-instance v19, Lcom/smartisanos/launcher/theme/ThemeItemActivity$9$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$9$1;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;)V

    invoke-virtual/range {v18 .. v19}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 834
    .end local v2    # "displayedThemeId":Ljava/lang/String;
    .end local v3    # "dlRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    .end local v6    # "downloadId":J
    .end local v9    # "isConnected":Z
    .end local v10    # "oldStatus":I
    .end local v11    # "params":Ljava/util/List;
    .end local v12    # "progress":I
    .end local v16    # "themeId":Ljava/lang/String;
    :catch_1
    move-exception v18

    goto/16 :goto_0

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
