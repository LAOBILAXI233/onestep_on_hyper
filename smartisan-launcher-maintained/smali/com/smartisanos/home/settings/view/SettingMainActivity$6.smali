.class Lcom/smartisanos/home/settings/view/SettingMainActivity$6;
.super Ljava/lang/Object;
.source "SettingMainActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/SettingMainActivity;->clearCustomGaussianWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


.method constructor <init>(Lcom/smartisanos/home/settings/view/SettingMainActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/SettingMainActivity;
    .param p2, "val$dialog"    # Landroid/app/ProgressDialog;

    .prologue
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$6;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$6;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$6;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->access$500(Lcom/smartisanos/home/settings/view/SettingMainActivity;)V

    new-instance v0, Lcom/smartisanos/home/settings/view/SettingMainActivity$6$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/home/settings/view/SettingMainActivity$6$1;-><init>(Lcom/smartisanos/home/settings/view/SettingMainActivity$6;)V

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$6;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    invoke-virtual {v1, v0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
