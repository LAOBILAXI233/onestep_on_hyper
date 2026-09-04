.class Lcom/smartisanos/launcher/theme/ThemeItemActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ThemeItemActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/theme/ThemeItemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$1;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 214
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "packageName":Ljava/lang/String;
    const-string v4, "extra_component_id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "themeId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 227
    const-string v4, "com.smartisanos.launcher.theme"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$1;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v4, v3, v1}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$100(Lcom/smartisanos/launcher/theme/ThemeItemActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    const-string v4, "com.smartisanos.home.THEME_DOWNLOAD_FINISH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    invoke-static {v3}, Lcom/smartisanos/launcher/theme/ThemeManager;->getThemeById(Ljava/lang/String;)Lcom/smartisanos/launcher/theme/Theme;

    move-result-object v2

    .line 235
    .local v2, "theme":Lcom/smartisanos/launcher/theme/Theme;
    iget-object v4, p0, Lcom/smartisanos/launcher/theme/ThemeItemActivity$1;->this$0:Lcom/smartisanos/launcher/theme/ThemeItemActivity;

    invoke-static {v4}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$200(Lcom/smartisanos/launcher/theme/ThemeItemActivity;)Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/smartisanos/launcher/theme/ThemeItemActivity$BottomTitle;->switchButtonStatus(Lcom/smartisanos/launcher/theme/Theme;)V

    .line 241
    .end local v2    # "theme":Lcom/smartisanos/launcher/theme/Theme;
    :cond_2
    sget-boolean v4, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeItemActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v4

    const-string v5, "DEBUG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ThemeItemActivity onReceive ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_3
    invoke-static {p2, v1}, Lcom/smartisanos/launcher/theme/ThemeManager;->updateThemeStatusByAction(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
