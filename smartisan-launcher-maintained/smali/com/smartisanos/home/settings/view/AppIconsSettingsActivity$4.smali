.class Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$4;
.super Ljava/lang/Object;
.source "AppIconsSettingsActivity.java"

.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->showIconSizeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

.field final synthetic val$percentText:Landroid/widget/TextView;

.method constructor <init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;
    .param p2, "val$percentText"    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$4;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$4;->val$percentText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    mul-int/lit8 v0, p2, 0xa

    add-int/lit8 v0, v0, 0x32

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$4;->val$percentText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$4;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-static {v2, v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->access$1300(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    return-void
.end method
