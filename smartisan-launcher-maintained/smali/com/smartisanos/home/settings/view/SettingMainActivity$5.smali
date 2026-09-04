.class Lcom/smartisanos/home/settings/view/SettingMainActivity$5;
.super Ljava/lang/Object;
.source "SettingMainActivity.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/SettingMainActivity;->showIconSizeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

.field final synthetic val$currentValue:I


.method constructor <init>(Lcom/smartisanos/home/settings/view/SettingMainActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/SettingMainActivity;
    .param p2, "val$currentValue"    # I

    .prologue
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$5;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    iput p2, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$5;->val$currentValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$5;->val$currentValue:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "launcher_icon_size"

    invoke-static {v0, p2}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateSetting(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$5;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->access$500(Lcom/smartisanos/home/settings/view/SettingMainActivity;)V

    return-void
.end method
