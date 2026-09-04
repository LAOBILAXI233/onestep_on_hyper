.class Lcom/smartisanos/launcher/view/PageView$1;
.super Ljava/lang/Object;
.source "PageView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/PageView;->showToastNoSpaceForInstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/PageView;


.method constructor <init>(Lcom/smartisanos/launcher/view/PageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/PageView;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/smartisanos/launcher/view/PageView$1;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 519
    sget-object v0, Lcom/smartisanos/launcher/view/PageView;->overPageLimitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 520
    sget-object v0, Lcom/smartisanos/launcher/view/PageView;->overPageLimitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 522
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getLauncherActivity()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/ResIds$string;->over_page_limit:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/PageView;->overPageLimitToast:Landroid/widget/Toast;

    .line 524
    sget-object v0, Lcom/smartisanos/launcher/view/PageView;->overPageLimitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 525
    return-void
.end method
