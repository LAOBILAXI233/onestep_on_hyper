.class Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$1;
.super Ljava/lang/Object;
.source "IconPackChoiceSupport.java"

.implements Landroid/widget/AdapterView$OnItemClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->showRecommendedChooser(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

.field final synthetic val$choices:Ljava/util/ArrayList;

.field final synthetic val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;


.method constructor <init>(Ljava/util/ArrayList;Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$1;->val$choices:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$1;->val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iput-object p3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$1;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

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

    .line 116
    iget-object p2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$1;->val$choices:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;

    .line 117
    iget-object p3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$1;->val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iget-object p4, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$1;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    iget-object p2, p2, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->value:Ljava/lang/String;

    invoke-static {p3, p4, p2}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->applyChoice(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 119
    instance-of p2, p1, Landroid/app/AlertDialog;

    if-eqz p2, :cond_0

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 120
    :cond_0
    return-void
.end method
