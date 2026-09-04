.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$1;
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


.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$1;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    .line 574
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$1;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1500(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$1;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1500(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 576
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$1;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1502(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$1;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v1

    sget v2, Lcom/smartisanos/launcher/ResIds$string;->can_not_download_theme_by_net:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1502(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 579
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7$1;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$7;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$1500(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 580
    return-void
.end method
