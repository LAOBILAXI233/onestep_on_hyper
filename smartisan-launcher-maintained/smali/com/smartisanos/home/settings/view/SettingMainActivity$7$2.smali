.class Lcom/smartisanos/home/settings/view/SettingMainActivity$7$2;
.super Ljava/lang/Object;
.source "SettingMainActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->onFail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/home/settings/view/SettingMainActivity$7;


.method constructor <init>(Lcom/smartisanos/home/settings/view/SettingMainActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/home/settings/view/SettingMainActivity$7;

    .prologue
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7$2;->this$1:Lcom/smartisanos/home/settings/view/SettingMainActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7$2;->this$1:Lcom/smartisanos/home/settings/view/SettingMainActivity$7;

    iget-object v0, v0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7$2;->this$1:Lcom/smartisanos/home/settings/view/SettingMainActivity$7;

    iget-object v0, v0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    const v1, 0x7f08026c

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7$2;->this$1:Lcom/smartisanos/home/settings/view/SettingMainActivity$7;

    iget-object v1, v1, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
