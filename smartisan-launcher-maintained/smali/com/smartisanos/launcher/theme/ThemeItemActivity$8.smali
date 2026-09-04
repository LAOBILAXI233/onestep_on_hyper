.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$8;
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
    .line 623
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$8;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 626
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v7

    const/high16 v8, 0x100000

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v1

    .line 627
    .local v1, "iconIsSorting":Z
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v7

    const/high16 v8, 0x80000

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v0

    .line 628
    .local v0, "iconIsPreview":Z
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v7

    const/high16 v8, 0x40000

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 629
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v7

    const/high16 v8, 0x20000

    invoke-virtual {v7, v8}, Lcom/smartisanos/launcher/StatusManager;->getLauncherStatus(I)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v4, v6

    .line 630
    .local v4, "unLock":Z
    :goto_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    if-eqz v4, :cond_3

    .line 631
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v5

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iconIsSorting="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", iconIsPreview="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", unLock="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v5

    invoke-static {v5}, Lcom/smartisanos/home/Launcher;->toHome(Landroid/content/Context;)V

    .line 656
    :goto_1
    return-void

    .end local v4    # "unLock":Z
    :cond_2
    move v4, v5

    .line 629
    goto :goto_0

    .line 635
    .restart local v4    # "unLock":Z
    :cond_3
    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$8;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1200(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 636
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v5

    const-string v6, "setupThemeOnClickListener return by mIsBackClicked"

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 639
    :cond_4
    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$8;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v7

    if-nez v7, :cond_5

    .line 640
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v5

    const-string v6, "setupThemeOnClickListener return by mDisplayedTheme is null"

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 643
    :cond_5
    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$8;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v7

    iget-object v3, v7, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    .line 644
    .local v3, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 646
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1100()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 648
    :goto_2
    if-nez v2, :cond_6

    .line 649
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v5

    const-string v6, "DEBUG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setup theme failed. can\'t find theme by pkg ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 652
    :cond_6
    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$8;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v7, v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1302(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Z)Z

    .line 653
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$8;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    move-result-object v6

    iget-object v6, v6, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->applyButton:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 654
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$8;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->updateBackButtonEnableState(Z)V

    .line 655
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$8;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v5}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1700(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V

    goto :goto_1

    .line 647
    :catch_0
    move-exception v7

    goto :goto_2
.end method
