.class final Lcom/smartisanos/launcher/view/TitleView$2;
.super Ljava/lang/Object;
.source "TitleView.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/TitleView;->showLockPageToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.method constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 159
    invoke-static {}, Lcom/smartisanos/launcher/view/TitleView;->access$100()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/smartisanos/launcher/view/TitleView;->access$100()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 162
    :cond_0
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v0

    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v1

    const v2, 0x7f080087

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/view/TitleView;->access$102(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 163
    invoke-static {}, Lcom/smartisanos/launcher/view/TitleView;->access$100()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    return-void
.end method
