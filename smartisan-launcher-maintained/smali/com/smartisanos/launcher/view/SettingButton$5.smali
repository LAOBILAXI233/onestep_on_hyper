.class Lcom/smartisanos/launcher/view/SettingButton$5;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "SettingButton.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/SettingButton;->handleAnimation(Lcom/smartisanos/launcher/view/SettingButton$SETTING_ANIMATION;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/SettingButton;


.method constructor <init>(Lcom/smartisanos/launcher/view/SettingButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/SettingButton;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SettingButton$5;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 453
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 454
    iget-object v0, p0, Lcom/smartisanos/launcher/view/SettingButton$5;->this$0:Lcom/smartisanos/launcher/view/SettingButton;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/SettingButton;->access$500(Lcom/smartisanos/launcher/view/SettingButton;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 455
    return-void
.end method
