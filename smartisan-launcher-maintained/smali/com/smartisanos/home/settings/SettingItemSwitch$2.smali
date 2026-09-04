.class Lcom/smartisanos/home/settings/SettingItemSwitch$2;
.super Ljava/lang/Object;
.source "SettingItemSwitch.java"

.implements Landroid/view/View$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/SettingItemSwitch;->setupInfoButton(ZLandroid/view/View;)V
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
    .line 195
    iput-object p1, p0, Lcom/smartisanos/home/settings/SettingItemSwitch$2;->this$0:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch$2;->this$0:Lcom/smartisanos/home/settings/SettingItemSwitch;

    invoke-static {v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->access$100(Lcom/smartisanos/home/settings/SettingItemSwitch;)Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->showDialog()V

    .line 199
    return-void
.end method
