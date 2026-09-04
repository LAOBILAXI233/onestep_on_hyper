.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$9$1;
.super Ljava/lang/Object;
.source "ThemeItemActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;

    .prologue
    .line 825
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$9$1;->this$1:Lcom/smartisanos/launcher/theme/ThemeItemActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 828
    invoke-static {}, Lcom/smartisanos/launcher/LauncherApplication;->getInstance()Lcom/smartisanos/launcher/LauncherApplication;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/ResIds$string;->can_not_download_theme_by_net:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 829
    return-void
.end method
