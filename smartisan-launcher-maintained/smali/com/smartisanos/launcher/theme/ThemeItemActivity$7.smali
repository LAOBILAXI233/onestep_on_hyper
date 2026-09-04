.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;
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
    .line 531
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showToastDialog(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 534
    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040025

    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    const v7, 0x7f0f00a3

    invoke-virtual {v4, v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 535
    .local v2, "view":Landroid/view/View;
    const v4, 0x7f0f00a4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    .line 537
    .local v3, "webview":Landroid/webkit/WebView;
    const-string v0, "<p>\u4e3a\u4e86\u9075\u5b88 Google Play \u7684\u76f8\u5173\u89c4\u5b9a\uff0c\u9524\u5b50\u684c\u9762 v1.5.1 \u6682\u65f6\u505c\u7528\u4e86\u5728\u7ebf\u4e0b\u8f7d\u684c\u9762\u4e3b\u9898\u5305\u7684\u529f\u80fd\uff0c\u5c06\u5728\u4e0b\u4e2a\u7248\u672c\u91cd\u65b0\u4e0a\u7ebf\uff0c\u656c\u8bf7\u8c05\u89e3\u3002<br/><br/>\u5728\u6b64\u671f\u95f4\uff0c\u5982\u679c\u4f60\u60f3\u4f53\u9a8c\u66f4\u591a\u4e3b\u9898\uff0c\u53ef\u4ee5<a href=\"http://www.smartisan.com/apps/launcher\"><font color=\"#5079d9\">\u524d\u5f80\u5b98\u7f51</font></a>\u4e0b\u8f7d\u5305\u542b\u5b8c\u6574\u529f\u80fd\u7684\u9524\u5b50\u684c\u9762 v1.5.1</p>"

    .line 542
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 543
    const-string v4, "text/html; charset=UTF-8"

    invoke-virtual {v3, v0, v4, v9}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v4, 0x103012b

    invoke-direct {v1, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 547
    .local v1, "themeWrapper":Landroid/view/ContextThemeWrapper;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0800e8

    .line 548
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 549
    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    const v6, 0x7f080044

    .line 550
    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 551
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 553
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 554
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 555
    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x65

    .line 559
    sget v5, Lcom/smartisanos/home/HomeConfig;->CHANNEL_ID:I

    if-ne v5, v8, :cond_1

    .line 560
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0, v5}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->showToastDialog(Landroid/content/Context;)V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v5}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 566
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v5}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/launcher/theme/Theme;->status:I

    if-eq v5, v8, :cond_2

    .line 567
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "downloadThemeOnClickListener return by status err ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v7

    iget v7, v7, Lcom/smartisanos/launcher/theme/Theme;->status:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :cond_2
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getInstance()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/smartisanos/launcher/data/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 571
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->getInstance()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v5

    new-instance v6, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$1;

    invoke-direct {v6, p0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$1;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;)V

    invoke-virtual {v5, v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 584
    :cond_3
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v5}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v5

    iget-object v4, v5, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    .line 585
    .local v4, "themeId":Ljava/lang/String;
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v5, v4}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1600(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/lang/String;)V

    .line 586
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v5}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v5

    iget-object v2, v5, Lcom/smartisanos/launcher/theme/Theme;->mPackage:Ljava/lang/String;

    .line 599
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 600
    .local v1, "params":Ljava/util/List;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    new-instance v3, Lcom/smartisanos/home/net/NetworkHandler$Task;

    invoke-direct {v3}, Lcom/smartisanos/home/net/NetworkHandler$Task;-><init>()V

    .line 604
    .local v3, "task":Lcom/smartisanos/home/net/NetworkHandler$Task;
    sget-object v5, Lcom/smartisanos/home/net/NetworkHandler$Action;->GET_THEME_DL_INFO:Lcom/smartisanos/home/net/NetworkHandler$Action;

    iput-object v5, v3, Lcom/smartisanos/home/net/NetworkHandler$Task;->act:Lcom/smartisanos/home/net/NetworkHandler$Action;

    .line 605
    iput-object v1, v3, Lcom/smartisanos/home/net/NetworkHandler$Task;->params:Ljava/util/List;

    .line 606
    invoke-static {v3}, Lcom/smartisanos/home/net/NetworkHandler;->postTask(Lcom/smartisanos/home/net/NetworkHandler$Task;)V

    .line 608
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v5}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    const/16 v6, 0x67

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v5}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$400(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;

    invoke-direct {v6, p0, v4}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;-><init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;Ljava/lang/String;)V

    const-wide/16 v10, 0x7530

    invoke-virtual {v5, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 609
    .end local v1    # "params":Ljava/util/List;
    .end local v3    # "task":Lcom/smartisanos/home/net/NetworkHandler$Task;
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 611
    iget-object v5, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v5}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$800(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v5

    iget-object v5, v5, Lcom/smartisanos/launcher/theme/Theme;->mId:Ljava/lang/String;

    invoke-static {v5, v8, v9}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    goto/16 :goto_0
.end method
