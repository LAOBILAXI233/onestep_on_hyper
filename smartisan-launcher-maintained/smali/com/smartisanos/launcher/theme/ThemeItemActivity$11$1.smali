.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$11$1;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;

    .prologue
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$11$1;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$11$1;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/LauncherApplication;->getProxy()Lcom/smartisanos/launcher/ApplicationProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->setEnableStatusbarMessage(Z)V

    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$11$1;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$11;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
