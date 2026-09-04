.class final Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$9;
.super Ljava/lang/Object;
.source "IconPackChoiceSupport.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


.field final synthetic val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

.field final synthetic val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

.field final synthetic val$iconPackPackage:Ljava/lang/String;

.field final synthetic val$loading:Landroid/view/View;

.field final synthetic val$query:Ljava/lang/String;


.method constructor <init>(Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$9;->val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iput-object p2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$9;->val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

    iput-object p3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$9;->val$loading:Landroid/view/View;

    iput-object p4, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$9;->val$iconPackPackage:Ljava/lang/String;

    iput-object p5, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$9;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$9;->val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    iget-object v1, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$9;->val$iconPackPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport;->access$000(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$9;->val$query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_loop
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_done

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_add

    iget-object v4, v3, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->drawableName:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_add

    iget-object v4, v3, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$Choice;->label:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :goto_loop

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :goto_loop

    :cond_add
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_loop

    :cond_done
    iget-object v0, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$9;->val$activity:Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;

    new-instance v2, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$10;

    iget-object v3, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$9;->val$loading:Landroid/view/View;

    iget-object p0, p0, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$9;->val$adapter:Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;

    invoke-direct {v2, p0, v1, v3}, Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$10;-><init>(Lcom/smartisanos/home/settings/view/IconPackChoiceSupport$ChoiceAdapter;Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Lcom/smartisanos/home/settings/view/AppIconsSettingsActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_return

    :catchall_0
    move-exception v0

    :goto_return
    return-void
.end method
