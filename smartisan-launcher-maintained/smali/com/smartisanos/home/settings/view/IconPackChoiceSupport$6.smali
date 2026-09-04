.class Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$6;
.super Ljava/lang/Object;
.source "IconPackChoiceSupport.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->showAllChooser(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

.field final synthetic val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;


.method constructor <init>(Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;Landroid/app/Dialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$6;->val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$6;->val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iput-object p3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$6;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iput-object p4, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$6;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 199
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$6;->val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

    invoke-virtual {p1, p3}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;

    .line 200
    iget-object p2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$6;->val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iget-object p3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$6;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget-object p1, p1, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->value:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->applyChoice(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$6;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 202
    return-void
.end method
