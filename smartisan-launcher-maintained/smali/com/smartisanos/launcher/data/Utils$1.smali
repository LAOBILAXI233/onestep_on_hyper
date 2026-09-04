.class final Lcom/smartisanos/launcher/data/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/data/Utils;->setStatusBarColor(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$keySuffix:Ljava/lang/String;

.field final synthetic val$theme:Lcom/smartisanos/launcher/theme/Theme;


.method constructor <init>(Lcom/smartisanos/launcher/theme/Theme;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1496
    iput-object p1, p0, Lcom/smartisanos/launcher/data/Utils$1;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    iput-object p2, p0, Lcom/smartisanos/launcher/data/Utils$1;->val$keySuffix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 12

    .prologue
    .line 1499
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/home/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 1500
    .local v6, "launcher":Landroid/view/Window;
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1502
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :try_start_0
    iget-object v8, p0, Lcom/smartisanos/launcher/data/Utils$1;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v7, v8, Lcom/smartisanos/launcher/theme/Theme;->mResources:Landroid/content/res/Resources;

    .line 1503
    .local v7, "resources":Landroid/content/res/Resources;
    const/4 v5, -0x1

    .line 1504
    .local v5, "iconColor":I
    const/4 v2, -0x1

    .line 1505
    .local v2, "countColor":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status_bar_icon_color"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/data/Utils$1;->val$keySuffix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "color"

    iget-object v10, p0, Lcom/smartisanos/launcher/data/Utils$1;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v10, v10, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1506
    .local v1, "colorId":I
    if-eqz v1, :cond_2

    .line 1507
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 1519
    :cond_0
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "status_bar_number_color"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/smartisanos/launcher/data/Utils$1;->val$keySuffix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "color"

    iget-object v10, p0, Lcom/smartisanos/launcher/data/Utils$1;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v10, v10, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1520
    .local v3, "countId":I
    if-eqz v3, :cond_4

    .line 1521
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1537
    .end local v1    # "colorId":I
    .end local v2    # "countColor":I
    .end local v3    # "countId":I
    .end local v5    # "iconColor":I
    .end local v7    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    invoke-virtual {v6, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1538
    return-void

    .line 1509
    .restart local v1    # "colorId":I
    .restart local v2    # "countColor":I
    .restart local v5    # "iconColor":I
    .restart local v7    # "resources":Landroid/content/res/Resources;
    :cond_2
    :try_start_1
    const-string v8, "status_bar_icon_color"

    const-string v9, "color"

    iget-object v10, p0, Lcom/smartisanos/launcher/data/Utils$1;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v10, v10, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1510
    if-eqz v1, :cond_3

    .line 1511
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_0

    .line 1513
    :cond_3
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/home/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "status_bar_icon_color"

    const-string v10, "color"

    iget-object v11, p0, Lcom/smartisanos/launcher/data/Utils$1;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v11, v11, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1514
    if-eqz v1, :cond_0

    .line 1515
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/home/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_0

    .line 1523
    .restart local v3    # "countId":I
    :cond_4
    const-string v8, "status_bar_number_color"

    const-string v9, "color"

    iget-object v10, p0, Lcom/smartisanos/launcher/data/Utils$1;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v10, v10, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1524
    if-eqz v3, :cond_5

    .line 1525
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_1

    .line 1527
    :cond_5
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/home/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "status_bar_number_color"

    const-string v10, "color"

    iget-object v11, p0, Lcom/smartisanos/launcher/data/Utils$1;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    iget-object v11, v11, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1528
    if-eqz v3, :cond_1

    .line 1529
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/smartisanos/home/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1534
    .end local v1    # "colorId":I
    .end local v2    # "countColor":I
    .end local v3    # "countId":I
    .end local v5    # "iconColor":I
    .end local v7    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    .line 1535
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/smartisanos/launcher/data/Utils;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v8

    const-string v9, "Utils"

    const-string v10, "get color resource fail"

    invoke-virtual {v8, v9, v10}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
