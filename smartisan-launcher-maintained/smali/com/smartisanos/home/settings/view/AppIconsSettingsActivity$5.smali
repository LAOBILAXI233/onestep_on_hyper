.class Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$5;
.super Ljava/lang/Object;
.source "AppIconsSettingsActivity.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->showIconSizeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

.field final synthetic val$currentValue:I

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


.method constructor <init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Landroid/widget/SeekBar;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;
    .param p2, "val$seekBar"    # Landroid/widget/SeekBar;
    .param p3, "val$currentValue"    # I

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$5;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$5;->val$seekBar:Landroid/widget/SeekBar;

    iput p3, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$5;->val$currentValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$5;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x32

    iget v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$5;->val$currentValue:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v1, "launcher_icon_size"

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/data/LauncherSettings;->updateSetting(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$5;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$1200(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V

    return-void
.end method
