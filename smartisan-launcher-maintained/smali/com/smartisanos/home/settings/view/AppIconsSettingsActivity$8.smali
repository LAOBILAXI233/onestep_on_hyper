.class Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$8;
.super Ljava/lang/Object;
.source "AppIconsSettingsActivity.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->showIconPackDrawableChooser(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

.field final synthetic val$items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


.method constructor <init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;Ljava/util/ArrayList;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;
    .param p2, "info"    # Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;
    .param p3, "items"    # Ljava/util/ArrayList;
    .param p4, "dialog"    # Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$8;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$8;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iput-object p3, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$8;->val$items:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$8;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$8;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$8;->this$0:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iget-object v2, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$8;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-virtual {v1, v2, v0}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->applyIconPackDrawableChoice(Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity$8;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
