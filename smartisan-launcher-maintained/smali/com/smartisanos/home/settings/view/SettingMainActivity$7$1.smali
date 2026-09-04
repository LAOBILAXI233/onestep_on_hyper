.class Lcom/smartisanos/home/settings/view/SettingMainActivity$7$1;
.super Ljava/lang/Object;
.source "SettingMainActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->run()V
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
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7$1;->this$1:Lcom/smartisanos/home/settings/view/SettingMainActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7$1;->this$1:Lcom/smartisanos/home/settings/view/SettingMainActivity$7;

    iget-object v0, v0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->access$600(Lcom/smartisanos/home/settings/view/SettingMainActivity;)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7$1;->this$1:Lcom/smartisanos/home/settings/view/SettingMainActivity$7;

    iget-object v0, v0, Lcom/smartisanos/home/settings/view/SettingMainActivity$7;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method
