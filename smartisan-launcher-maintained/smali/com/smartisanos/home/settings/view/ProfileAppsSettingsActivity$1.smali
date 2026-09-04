.class Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;
.super Ljava/lang/Object;
.source "ProfileAppsSettingsActivity.java"

.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->addProfileRow(Landroid/content/pm/LauncherActivityInfo;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;

.field final synthetic val$info:Landroid/content/pm/LauncherActivityInfo;

.field final synthetic val$launchIntent:Landroid/content/Intent;

.field final synthetic val$row:Lcom/smartisanos/home/settings/SettingItemSwitch;


.method constructor <init>(Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;Landroid/content/pm/LauncherActivityInfo;Landroid/content/Intent;Lcom/smartisanos/home/settings/SettingItemSwitch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;->this$0:Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;->val$info:Landroid/content/pm/LauncherActivityInfo;

    iput-object p3, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;->val$launchIntent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;->val$row:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 118
    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;->this$0:Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;->val$info:Landroid/content/pm/LauncherActivityInfo;

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;->val$launchIntent:Landroid/content/Intent;

    invoke-static {p1, v0, v1}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->access$000(Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;Landroid/content/pm/LauncherActivityInfo;Landroid/content/Intent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;->this$0:Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;->val$launchIntent:Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;->access$100(Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;Landroid/content/Intent;)Z

    move-result p1

    .line 119
    :goto_0
    if-nez p1, :cond_2

    .line 120
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;->val$row:Lcom/smartisanos/home/settings/SettingItemSwitch;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;->val$row:Lcom/smartisanos/home/settings/SettingItemSwitch;

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setChecked(Z)V

    .line 122
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;->val$row:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {p1, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 123
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity$1;->this$0:Lcom/smartisanos/home/settings/view/ProfileAppsSettingsActivity;

    if-eqz p2, :cond_1

    const-string p2, "\u6dfb\u52a0\u5931\u8d25"

    goto :goto_1

    :cond_1
    const-string p2, "\u79fb\u9664\u5931\u8d25"

    :goto_1
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 125
    :cond_2
    return-void
.end method
