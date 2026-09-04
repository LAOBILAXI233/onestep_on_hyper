.class Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$2;
.super Ljava/lang/Object;
.source "AppIconsSettingsActivity.java"

.implements Landroid/view/View$OnClickListener;


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
    .line 137
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$2;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$2;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    invoke-virtual {v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->finish()V

    .line 141
    return-void
.end method
