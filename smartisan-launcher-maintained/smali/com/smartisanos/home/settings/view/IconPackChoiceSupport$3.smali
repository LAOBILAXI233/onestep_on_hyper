.class Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;
.super Ljava/lang/Object;
.source "IconPackChoiceSupport.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->showAllChooser(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/launcher/data/redirectIcon/RedirectIconInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

.field final synthetic val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

.field final synthetic val$loading:Landroid/view/View;

.field final synthetic val$packs:Ljava/util/ArrayList;

.field final synthetic val$search:Landroid/widget/EditText;

.field final synthetic val$spinner:Landroid/widget/Spinner;


.method constructor <init>(Landroid/widget/Spinner;Ljava/util/ArrayList;Landroid/widget/EditText;Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 169
    iput-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$spinner:Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$packs:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$search:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iput-object p5, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

    iput-object p6, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$loading:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 7

    .line 171
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 172
    if-ltz v0, :cond_5

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$packs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_1

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$packs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$search:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$search:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$loading:Landroid/view/View;

    if-eqz v2, :cond_loading_done

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    instance-of v3, v2, Landroid/widget/ProgressBar;

    if-eqz v3, :cond_loading_done

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_loading_done

    instance-of v3, v2, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_loading_done

    check-cast v2, Landroid/graphics/drawable/Animatable;

    invoke-interface {v2}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_loading_done
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

    invoke-virtual {v3, v2}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;->setItems(Ljava/util/ArrayList;)V

    move-object v5, v0

    move-object v6, v1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$9;

    iget-object v2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

    iget-object v4, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$3;->val$loading:Landroid/view/View;

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$9;-><init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 172
    :cond_5
    :goto_1
    return-void
.end method
