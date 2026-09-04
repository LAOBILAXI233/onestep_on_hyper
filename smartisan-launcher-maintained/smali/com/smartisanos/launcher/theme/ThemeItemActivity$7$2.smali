.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

.field final synthetic val$themeId:Ljava/lang/String;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;
    .param p2, "themeId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    iput-object p2, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;->val$themeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 10

    .prologue
    :try_start_0
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;->val$themeId:Ljava/lang/String;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    .local v0, "theme":Lcom/smartisanos/launcher/theme/Theme;
    if-eqz v0, :cond_return

    iget v6, v0, Lcom/smartisanos/launcher/theme/Theme;->status:I

    const/16 v7, 0x67

    if-eq v6, v7, :cond_downloading

    goto :goto_return

    :cond_downloading
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;->val$themeId:Ljava/lang/String;

    invoke-static {v6}, Lcom/smartisanos/launcher/data/handler/DownloadRecordDB;->getRecordByTaskName(Ljava/lang/String;)Lcom/smartisanos/launcher/data/handler/DLRecord;

    move-result-object v1

    .local v1, "record":Lcom/smartisanos/launcher/data/handler/DLRecord;
    if-eqz v1, :cond_return

    iget-wide v2, v1, Lcom/smartisanos/launcher/data/handler/DLRecord;->dl_id:J

    .local v2, "downloadId":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_return

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1100()Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    move-result-object v4

    .local v4, "activity":Lcom/smartisanos/launcher/theme/ThemeItemActivity;
    if-eqz v4, :cond_return

    invoke-static {v4, v2, v3}, Lcom/smartisanos/home/net/DownloadSupervisor;->queryDownloadStatus(Landroid/content/Context;J)Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;

    move-result-object v5

    .local v5, "status":Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;
    if-eqz v5, :cond_return

    iget v6, v5, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->status:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_return

    iget-wide v8, v5, Lcom/smartisanos/home/net/DownloadSupervisor$DownloadStatus;->bytes_so_far:J

    const-wide/16 v6, 0x0

    cmp-long v6, v8, v6

    if-lez v6, :cond_timeout

    goto :goto_return

    :cond_timeout
    invoke-static {v2, v3}, Lcom/smartisanos/home/net/DownloadSupervisor;->cleanDownloadRecord(J)V

    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;->val$themeId:Ljava/lang/String;

    const/16 v7, 0x65

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatus(Ljava/lang/String;II)V

    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;->val$themeId:Ljava/lang/String;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v0

    if-eqz v0, :cond_toast

    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    iget-object v6, v6, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->switchButtonStatus(Lcom/smartisanos/launcher/theme/Theme;)V

    :cond_toast
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    iget-object v6, v6, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1500(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/Toast;

    move-result-object v6

    if-eqz v6, :cond_make_toast

    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    iget-object v6, v6, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1500(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    iget-object v6, v6, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1502(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_make_toast
    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    iget-object v6, v6, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v7

    sget v8, Lcom/smartisanos/launcher/ResIds$string;->can_not_download_theme_by_net:I

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1502(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v6, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$2;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    iget-object v6, v6, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v6}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1500(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_return

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_return

    :cond_return
    :goto_return
    return-void
.end method
