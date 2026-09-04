.class Lcom/smartisanos/home/Launcher$12$2;
.super Ljava/lang/Object;
.source "Launcher.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/Launcher$12;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/home/Launcher$12;


.method constructor <init>(Lcom/smartisanos/home/Launcher$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/home/Launcher$12;

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/smartisanos/home/Launcher$12$2;->this$1:Lcom/smartisanos/home/Launcher$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    .line 1157
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1158
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps;->WIZARD:Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;

    iget-object v3, v3, Lcom/smartisanos/launcher/data/SystemPreInstallApps$APP;->pkg:Ljava/lang/String;

    const-string v4, "com.smartisanos.setupwizard.SetupWizardActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1160
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1163
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    sget-boolean v2, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHasStartSetupWizard set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/home/Launcher$12$2;->this$1:Lcom/smartisanos/home/Launcher$12;

    iget-object v4, v4, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    iget-boolean v4, v4, Lcom/smartisanos/home/Launcher;->mHasStartSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 1165
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/home/Launcher$12$2;->this$1:Lcom/smartisanos/home/Launcher$12;

    iget-object v2, v2, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/smartisanos/home/Launcher;->mHasStartSetupWizard:Z

    .line 1166
    iget-object v2, p0, Lcom/smartisanos/home/Launcher$12$2;->this$1:Lcom/smartisanos/home/Launcher$12;

    iget-object v2, v2, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    invoke-virtual {v2, v1}, Lcom/smartisanos/home/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1167
    :catch_0
    move-exception v0

    .line 1168
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHasStartSetupWizard set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/smartisanos/home/Launcher$12$2;->this$1:Lcom/smartisanos/home/Launcher$12;

    iget-object v4, v4, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    iget-boolean v4, v4, Lcom/smartisanos/home/Launcher;->mHasStartSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    .line 1169
    iget-object v2, p0, Lcom/smartisanos/home/Launcher$12$2;->this$1:Lcom/smartisanos/home/Launcher$12;

    iget-object v2, v2, Lcom/smartisanos/home/Launcher$12;->this$0:Lcom/smartisanos/home/Launcher;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/smartisanos/home/Launcher;->mHasStartSetupWizard:Z

    .line 1170
    invoke-static {}, Lcom/smartisanos/home/Launcher;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch SetupWizard app."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
