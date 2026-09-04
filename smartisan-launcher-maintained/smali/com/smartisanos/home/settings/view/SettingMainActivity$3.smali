.class Lcom/smartisanos/home/settings/view/SettingMainActivity$3;
.super Ljava/lang/Object;
.source "SettingMainActivity.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/SettingMainActivity;->showGaussianWallpaperDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;


.method constructor <init>(Lcom/smartisanos/home/settings/view/SettingMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/SettingMainActivity;

    .prologue
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$3;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/SettingMainActivity$3;->this$0:Lcom/smartisanos/home/settings/view/SettingMainActivity;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/view/SettingMainActivity;->launchGaussianWallpaperPicker()V

    return-void
.end method
