.class Lcom/smartisanos/launcher/receiver/LauncherReceiver$2$1;
.super Ljava/lang/Object;
.source "LauncherReceiver.java"

.implements Landroid/content/DialogInterface$OnDismissListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;


.method constructor <init>(Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver$2$1;->this$1:Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver$2$1;->this$1:Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;

    iget-object v0, v0, Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;->this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-static {v0}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->access$100(Lcom/smartisanos/launcher/receiver/LauncherReceiver;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeManager;->switchToDefaultTheme()V

    .line 191
    :cond_0
    return-void
.end method
