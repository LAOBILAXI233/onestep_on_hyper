.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$5;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

.implements Landroid/view/View$OnClickListener;


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
    .line 475
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$5;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x0

    .line 478
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$5;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v9}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1000(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 511
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$5;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1002(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z

    .line 483
    :try_start_0
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$5;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v9}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v9

    iget-object v8, v9, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    .line 484
    .local v8, "themeId":Ljava/lang/String;
    invoke-static {v8}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v0

    .line 485
    .local v0, "dlRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    if-eqz v0, :cond_1

    .line 486
    iget-wide v2, v0, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .line 487
    .local v2, "downloadId":J
    const-wide/16 v10, 0x0

    cmp-long v9, v2, v10

    if-lez v9, :cond_1

    .line 488
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1100()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v9

    invoke-static {v9, v2, v3}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(Landroid/content/Context;J)Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;

    move-result-object v6

    .line 489
    .local v6, "status":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    if-eqz v6, :cond_1

    .line 490
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1100()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v9

    const-string v10, "download"

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 491
    .local v1, "dm":Landroid/app/DownloadManager;
    invoke-virtual {v6}, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->downloadProgress()I

    move-result v5

    .line 492
    .local v5, "progress":I
    invoke-static {v8}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v7

    .line 493
    .local v7, "theme":Lcom/smartisanos/launcher/theme/Theme;
    iget v9, v6, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->status:I

    if-ne v9, v13, :cond_2

    .line 494
    const/16 v9, 0x67

    invoke-static {v8, v9, v5}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    .line 496
    invoke-static {v2, v3}, Lcom/smartisanos/home/net/DownloadSupervisor;->resumeDownload(J)Z

    .line 497
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$5;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v9}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->switchButtonStatus(Lcom/smartisanos/launcher/theme/Theme;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 509
    .end local v1    # "dm":Landroid/app/DownloadManager;
    .end local v2    # "downloadId":J
    .end local v5    # "progress":I
    .end local v6    # "status":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    .end local v7    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$5;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v9, v12}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1002(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z

    goto :goto_0

    .line 498
    .restart local v1    # "dm":Landroid/app/DownloadManager;
    .restart local v2    # "downloadId":J
    .restart local v5    # "progress":I
    .restart local v6    # "status":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    .restart local v7    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_2
    :try_start_1
    iget v9, v6, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->status:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    iget v9, v6, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->status:I

    if-ne v9, v13, :cond_1

    .line 500
    :cond_3
    const/16 v9, 0x68

    invoke-static {v8, v9, v5}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    .line 501
    invoke-static {v1, v2, v3}, Lcom/smartisanos/launcher/InvisibleApi;->pauseDownload(Landroid/app/DownloadManager;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 506
    .end local v0    # "dlRecord":Lcom/smartisanos/launcher/data/handler/DLRecord;
    .end local v1    # "dm":Landroid/app/DownloadManager;
    .end local v2    # "downloadId":J
    .end local v5    # "progress":I
    .end local v6    # "status":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    .end local v7    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    .end local v8    # "themeId":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 507
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 509
    iget-object v9, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$5;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v9, v12}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1002(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z

    goto :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    iget-object v10, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$5;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v10, v12}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1002(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z

    throw v9
.end method
