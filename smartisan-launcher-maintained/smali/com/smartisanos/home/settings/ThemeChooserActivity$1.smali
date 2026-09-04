.class Lcom/smartisanos/home/settings/ThemeChooserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ThemeChooserActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/ThemeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;


.method constructor <init>(Lcom/smartisanos/home/settings/ThemeChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/ThemeChooserActivity;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$1;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 89
    const-string v4, "com.smartisanos.launcher.theme"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    const/4 v3, 0x0

    .line 93
    .local v3, "updateThemeList":Z
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 94
    const/4 v3, 0x1

    .line 101
    :cond_3
    :goto_1
    invoke-static {}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packageStatusReceiver pkg ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    if-eqz v3, :cond_0

    .line 103
    iget-object v4, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$1;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-static {v4}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->access$100(Lcom/smartisanos/home/settings/ThemeChooserActivity;)V

    .line 104
    iget-object v4, p0, Lcom/smartisanos/home/settings/ThemeChooserActivity$1;->this$0:Lcom/smartisanos/home/settings/ThemeChooserActivity;

    invoke-static {v4}, Lcom/smartisanos/home/settings/ThemeChooserActivity;->access$200(Lcom/smartisanos/home/settings/ThemeChooserActivity;)V

    goto :goto_0

    .line 95
    :cond_4
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 96
    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 97
    .local v2, "replacing":Z
    if-nez v2, :cond_3

    .line 98
    const/4 v3, 0x1

    goto :goto_1
.end method
