.class Lcom/smartisanos/launcher/receiver/LauncherReceiver$2$2;
.super Ljava/lang/Object;
.source "LauncherReceiver.java"

.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 177
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver$2$2;->this$1:Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 180
    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeManager;->switchToDefaultTheme()V

    .line 181
    iget-object v0, p0, Lcom/smartisanos/launcher/receiver/LauncherReceiver$2$2;->this$1:Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;

    iget-object v0, v0, Lcom/smartisanos/launcher/receiver/LauncherReceiver$2;->this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->access$102(Lcom/smartisanos/launcher/receiver/LauncherReceiver;Z)Z

    .line 182
    return-void
.end method
