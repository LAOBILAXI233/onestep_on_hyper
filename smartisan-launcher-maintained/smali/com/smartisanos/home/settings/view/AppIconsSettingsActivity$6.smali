.class Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;
.super Ljava/lang/Object;
.source "AppIconsSettingsActivity.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;


.method constructor <init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    .prologue
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$1000(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$1600(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Z

    move-result v1

    if-eqz v1, :cond_activity_alive

    return-void

    :cond_activity_alive

    new-instance v1, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6$1;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
