.class Lcom/smartisanos/home/settings/view/SettingMainActivity$1;
.super Ljava/lang/Object;
.source "SettingMainActivity.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/SettingMainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;


.method constructor <init>(Lcom/smartisanos/home/settings/view/SettingMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/SettingMainActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$1;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 235
    invoke-static {}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "A140"

    const-string v4, "save new base mode value !!!"

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$1;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    invoke-static {v2}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->access$100(Lcom/smartisanos/home/settings/view/SettingMainActivity;)I

    move-result v1

    .line 238
    .local v1, "singleMode":I
    const/4 v0, -0x1

    .line 239
    .local v0, "multiMode":I
    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 240
    const/16 v0, 0x24

    .line 244
    :goto_0
    invoke-static {}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->access$200()Lcom/smartisanos/home/settings/view/SettingMainActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$1;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    invoke-static {v3}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->access$300(Lcom/smartisanos/home/settings/view/SettingMainActivity;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/data/LauncherPreferences;->setBaseModeToSharedPreferences(Landroid/content/Context;I)V

    .line 245
    const-string v2, "launcher_mode"

    invoke-static {v2, v1}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateSetting(Ljava/lang/String;I)V

    .line 246
    const-string v2, "multi_block_mode"

    invoke-static {v2, v0}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateSetting(Ljava/lang/String;I)V

    .line 247
    invoke-static {}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->access$000()Lcom/smartisanos/launcher/LOG;

    move-result-object v2

    const-string v3, "A140"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current pid ==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getInstance()Lcom/smartisanos/home/settings/view/SettingMainActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 249
    invoke-static {}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getInstance()Lcom/smartisanos/home/settings/view/SettingMainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->finish()V

    .line 251
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$1;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    invoke-virtual {v2}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->finish()V

    .line 252
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 253
    return-void

    .line 242
    :cond_1
    const/16 v0, 0x40

    goto :goto_0
.end method
