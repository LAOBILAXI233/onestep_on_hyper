.class Lcom/smartisanos/home/settings/view/SettingMainActivity$2;
.super Landroid/os/AsyncTask;
.source "SettingMainActivity.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/SettingMainActivity;->buildEvent(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

.field final synthetic val$context:Landroid/content/Context;


.method constructor <init>(Lcom/smartisanos/home/settings/view/SettingMainActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/SettingMainActivity;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$2;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 573
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$2;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->access$400(Lcom/smartisanos/home/settings/view/SettingMainActivity;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "settingInfo":Ljava/lang/String;
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "SETTING_MAIN_ACTIVITY_INFO"

    invoke-static {v2, v3, v6}, Lcom/smartisanos/launcher/data/LauncherPreferences;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "preInfo":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 577
    const-string v2, "A260002"

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$2;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    iget-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$2;->val$context:Landroid/content/Context;

    .line 578
    invoke-virtual {v3, v4}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->buildSettingConfig(Landroid/content/Context;)Lcom/smartisanos/home/tracker/TrackerConstants$EventData;

    move-result-object v3

    .line 577
    invoke-static {v2, v3}, Lcom/smartisanos/home/tracker/LauncherAgent;->event(Ljava/lang/String;Lcom/smartisanos/home/tracker/TrackerConstants$EventData;)V

    .line 580
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "SETTING_MAIN_ACTIVITY_INFO"

    iget-object v4, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$2;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    iget-object v5, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$2;->val$context:Landroid/content/Context;

    .line 582
    invoke-static {v4, v5}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->access$400(Lcom/smartisanos/home/settings/view/SettingMainActivity;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 580
    invoke-static {v2, v3, v4}, Lcom/smartisanos/launcher/data/LauncherPreferences;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :cond_0
    return-object v6
.end method
