.class Lcom/smartisanos/home/settings/SettingItemSwitch$1;
.super Ljava/lang/Object;
.source "SettingItemSwitch.java"

.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/SettingItemSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/SettingItemSwitch;


.method constructor <init>(Lcom/smartisanos/home/settings/SettingItemSwitch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/SettingItemSwitch;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/smartisanos/home/settings/SettingItemSwitch$1;->this$0:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "b"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch$1;->this$0:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-static {v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->access$000(Lcom/smartisanos/home/settings/SettingItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch$1;->this$0:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch$1;->this$0:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-static {v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->access$000(Lcom/smartisanos/home/settings/SettingItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 97
    :cond_0
    return-void
.end method
