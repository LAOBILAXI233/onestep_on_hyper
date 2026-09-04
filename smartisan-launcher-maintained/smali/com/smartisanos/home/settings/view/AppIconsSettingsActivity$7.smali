.class Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$7;
.super Ljava/lang/Object;
.source "AppIconsSettingsActivity.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->showIconSourceChooser(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

.field final synthetic val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;


.method constructor <init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;
    .param p2, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$7;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$7;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_apply_source

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$7;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iget-object v2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$7;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-virtual {v1, v2}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->showIconPackDrawableChooser(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    return-void

    :cond_apply_source
    if-eqz p2, :cond_base

    const/4 v0, 0x1

    goto :goto_apply

    :cond_base
    const/4 v0, 0x0

    :goto_apply
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$7;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iget-object v2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$7;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyIconSourceChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
