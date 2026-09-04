.class Lcom/smartisanos/launcher/ApplicationProxy$8;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationProxy.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/ApplicationProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/ApplicationProxy;


.method constructor <init>(Lcom/smartisanos/launcher/ApplicationProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/ApplicationProxy;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/smartisanos/launcher/ApplicationProxy$8;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 478
    invoke-static {}, Lcom/smartisanos/home/Launcher;->getInstance()Lcom/smartisanos/home/Launcher;

    move-result-object v3

    if-nez v3, :cond_1

    .line 479
    invoke-static {}, Lcom/smartisanos/launcher/ApplicationProxy;->access$200()Lcom/smartisanos/launcher/LOG;

    move-result-object v3

    const-string v4, "DEBUG"

    const-string v5, "mActivityBroadcastReceiver Launcher.getInstance() == null"

    invoke-virtual {v3, v4, v5}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.ACTIVITY_RESUMED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    const-string v3, "android.intent.extra.activiti_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, "componentName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/smartisanos/launcher/ApplicationProxy$8;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    .line 487
    invoke-static {v3}, Lcom/smartisanos/launcher/ApplicationProxy;->access$300(Lcom/smartisanos/launcher/ApplicationProxy;)Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 489
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v2, "params":Ljava/util/ArrayList;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    sget-object v3, Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;->EVENT_REMOVE_NEW_FLAG_BY_INTENT:Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/smartisanos/launcher/data/DatabaseUpdater;->updateDatabase(Lcom/smartisanos/launcher/data/DatabaseUpdater$Action;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
