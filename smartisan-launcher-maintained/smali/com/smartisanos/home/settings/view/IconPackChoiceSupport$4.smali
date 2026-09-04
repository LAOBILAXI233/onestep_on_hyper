.class Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$4;
.super Ljava/lang/Object;
.source "IconPackChoiceSupport.java"

.implements Landroid/widget/AdapterView$OnItemSelectedListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->showAllChooser(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic val$reload:[Ljava/lang/Runnable;


.method constructor <init>([Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$4;->val$reload:[Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 184
    iget-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$4;->val$reload:[Ljava/lang/Runnable;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 185
    return-void
.end method
