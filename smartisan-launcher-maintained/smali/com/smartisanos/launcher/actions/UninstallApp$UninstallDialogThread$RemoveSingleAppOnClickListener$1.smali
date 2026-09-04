.class Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener$1;
.super Ljava/lang/Object;
.source "UninstallApp.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$2:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;

.field final synthetic val$cmpName:Ljava/lang/String;

.field final synthetic val$pkgName:Ljava/lang/String;


.method constructor <init>(Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$2"    # Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener$1;->this$2:Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener;

    iput-object p2, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener$1;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener$1;->val$cmpName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 7

    .prologue
    .line 605
    invoke-static {}, Lcom/smartisanos/launcher/actions/UninstallApp;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v3

    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove DevicePolicy app pkg ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener$1;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] cmp ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener$1;->val$cmpName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v2, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener$1;->val$pkgName:Ljava/lang/String;

    .line 607
    .local v2, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/smartisanos/launcher/actions/UninstallApp$UninstallDialogThread$RemoveSingleAppOnClickListener$1;->val$cmpName:Ljava/lang/String;

    .line 608
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    const-string v4, "package"

    invoke-static {v4, v2, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 609
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 610
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/smartisanos/home/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 611
    return-void
.end method
