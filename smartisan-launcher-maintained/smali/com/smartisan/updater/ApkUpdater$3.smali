.class Lcom/smartisan/updater/ApkUpdater$3;
.super Ljava/lang/Object;
.source "ApkUpdater.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisan/updater/ApkUpdater;->showDownloadDialog(Landroid/content/Context;Lcom/smartisan/updater/Version;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisan/updater/ApkUpdater;

.field final synthetic val$version:Lcom/smartisan/updater/Version;


.method constructor <init>(Lcom/smartisan/updater/ApkUpdater;Lcom/smartisan/updater/Version;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisan/updater/ApkUpdater;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    iput-object p2, p0, Lcom/smartisan/updater/ApkUpdater$3;->val$version:Lcom/smartisan/updater/Version;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    .line 466
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v2}, Lcom/smartisan/updater/ApkUpdater;->access$000(Lcom/smartisan/updater/ApkUpdater;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisan/updater/UpdateUtils;->isNetworkAllowed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 467
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v2}, Lcom/smartisan/updater/ApkUpdater;->access$000(Lcom/smartisan/updater/ApkUpdater;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/smartisan/updater/R$string;->no_network:I

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 488
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v3}, Lcom/smartisan/updater/ApkUpdater;->access$000(Lcom/smartisan/updater/ApkUpdater;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisan/updater/ApkUpdater$3;->val$version:Lcom/smartisan/updater/Version;

    invoke-virtual {v4}, Lcom/smartisan/updater/Version;->getUpdateUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/smartisan/updater/ApkUpdater$3;->val$version:Lcom/smartisan/updater/Version;

    invoke-virtual {v5}, Lcom/smartisan/updater/Version;->getMd5Str()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/smartisan/updater/ApkUpdater;->checkInstallApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 471
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v3}, Lcom/smartisan/updater/ApkUpdater;->access$000(Lcom/smartisan/updater/ApkUpdater;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisan/updater/ApkUpdater$3;->val$version:Lcom/smartisan/updater/Version;

    invoke-virtual {v4}, Lcom/smartisan/updater/Version;->getUpdateUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisan/updater/ApkUpdater;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 474
    :cond_1
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v2}, Lcom/smartisan/updater/ApkUpdater;->access$000(Lcom/smartisan/updater/ApkUpdater;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisan/updater/UpdateUtils;->isGooglePlayChannel(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 475
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v2}, Lcom/smartisan/updater/ApkUpdater;->access$000(Lcom/smartisan/updater/ApkUpdater;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    .line 476
    invoke-static {v3}, Lcom/smartisan/updater/ApkUpdater;->access$000(Lcom/smartisan/updater/ApkUpdater;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 475
    invoke-static {v2, v3}, Lcom/smartisan/updater/UpdateUtils;->launchDetailsForPackage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_2
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v2}, Lcom/smartisan/updater/ApkUpdater;->access$000(Lcom/smartisan/updater/ApkUpdater;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisan/updater/ApkUpdater$3;->val$version:Lcom/smartisan/updater/Version;

    invoke-virtual {v3}, Lcom/smartisan/updater/Version;->getUpdateUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartisan/updater/UpdateUtils;->download(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    .line 481
    .local v0, "downloadId":J
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v2}, Lcom/smartisan/updater/ApkUpdater;->access$000(Lcom/smartisan/updater/ApkUpdater;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisan/updater/UpdateSharedPreference;->getInstance(Landroid/content/Context;)Lcom/smartisan/updater/UpdateSharedPreference;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/smartisan/updater/UpdateSharedPreference;->setDownloadId(J)V

    .line 482
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v2}, Lcom/smartisan/updater/ApkUpdater;->access$200(Lcom/smartisan/updater/ApkUpdater;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 483
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v2}, Lcom/smartisan/updater/ApkUpdater;->access$000(Lcom/smartisan/updater/ApkUpdater;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisan/updater/UpdateSharedPreference;->getInstance(Landroid/content/Context;)Lcom/smartisan/updater/UpdateSharedPreference;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/smartisan/updater/UpdateSharedPreference;->showDialog(Z)V

    .line 486
    :cond_3
    iget-object v2, p0, Lcom/smartisan/updater/ApkUpdater$3;->this$0:Lcom/smartisan/updater/ApkUpdater;

    invoke-static {v2}, Lcom/smartisan/updater/ApkUpdater;->access$300(Lcom/smartisan/updater/ApkUpdater;)V

    goto/16 :goto_0
.end method
