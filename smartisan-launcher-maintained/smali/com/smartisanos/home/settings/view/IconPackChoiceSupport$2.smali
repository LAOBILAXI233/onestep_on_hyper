.class Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$2;
.super Ljava/lang/Object;
.source "IconPackChoiceSupport.java"

.implements Landroid/content/DialogInterface$OnClickListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->showRecommendedChooser(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

.field final synthetic val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;


.method constructor <init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$2;->val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$2;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$2;->val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iget-object p2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$2;->val$info:Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;

    invoke-static {p1, p2}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->showAllChooser(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V

    .line 130
    return-void
.end method
