.class Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$9;
.super Ljava/lang/Object;
.source "AppIconsSettingsActivity.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->showIconFilterChooser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;


.method constructor <init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$9;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$9;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-virtual {v0, p2}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->setIconFilterMode(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
