.class Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$1;
.super Landroid/os/Handler;
.source "AppIconsSettingsActivity.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;
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
    .line 75
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$1;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$1;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$1600(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Z

    move-result v1

    if-eqz v1, :cond_handle_message_alive

    return-void

    :cond_handle_message_alive
    .line 78
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_invalid_asset"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    .line 80
    .local v0, "info":Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$1;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v1}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$000(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
