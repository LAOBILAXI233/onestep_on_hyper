.class public Lcom/smartisanos/home/settings/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


.field public static final FROM_ACTIVITY:Ljava/lang/String; = "from_activity"

.field public static final START_ACTIVITY_ANIM_ENTER:I = 0x1

.field public static final START_ACTIVITY_ANIM_EXIT:I = 0x2


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


.method public finish()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 56
    return-void
.end method

.method protected getTitleView()Lcom/smartisanos/home/widget/sys/Title;
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f0f0057

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/widget/sys/Title;

    return-object v0
.end method

.method protected setTitleByIntent(Lcom/smartisanos/home/widget/sys/Title;)V
    .locals 3
    .param p1, "title"    # Lcom/smartisanos/home/widget/sys/Title;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "titleStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    invoke-virtual {p1, v0}, Lcom/smartisanos/home/widget/sys/Title;->setTitle(Ljava/lang/CharSequence;)V

    .line 33
    .end local v0    # "titleStr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected setupBackBtnOnTitle(I)V
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/smartisanos/home/settings/BaseActivity;->setupBackBtnOnTitle(ZI)V

    .line 24
    return-void
.end method

.method protected setupBackBtnOnTitle(ZI)V
    .locals 4
    .param p1, "removeWinBackground"    # Z
    .param p2, "viewId"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p2}, Lcom/smartisanos/home/settings/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/home/widget/sys/Title;

    .line 37
    .local v0, "title":Lcom/smartisanos/home/widget/sys/Title;
    new-instance v1, Lcom/smartisanos/home/settings/BaseActivity$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/home/settings/BaseActivity$1;-><init>(Lcom/smartisanos/home/settings/BaseActivity;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonTextByIntent(Landroid/content/Intent;)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/BaseActivity;->setTitleByIntent(Lcom/smartisanos/home/widget/sys/Title;)V

    .line 48
    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    :cond_0
    return-void
.end method

.method public startActivityWithAnim(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "animType"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 62
    if-nez p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/4 v0, 0x0

    .line 66
    .local v0, "anim":[I
    if-ne p2, v4, :cond_3

    .line 67
    new-array v0, v3, [I

    .end local v0    # "anim":[I
    fill-array-data v0, :array_0

    .line 77
    .restart local v0    # "anim":[I
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 80
    const/4 v3, 0x0

    aget v3, v0, v3

    aget v4, v0, v4

    invoke-static {p0, v3, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 81
    .local v1, "ao":Landroid/app/ActivityOptions;
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 82
    .local v2, "bd":Landroid/os/Bundle;
    invoke-virtual {p0, p1, v2}, Lcom/smartisanos/home/settings/BaseActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 71
    .end local v1    # "ao":Landroid/app/ActivityOptions;
    .end local v2    # "bd":Landroid/os/Bundle;
    :cond_3
    if-ne p2, v3, :cond_2

    .line 72
    new-array v0, v3, [I

    .end local v0    # "anim":[I
    fill-array-data v0, :array_1

    .restart local v0    # "anim":[I
    goto :goto_1

    .line 67
    :array_0
    .array-data 4
        0x7f050022
        0x7f050023
    .end array-data

    .line 72
    :array_1
    .array-data 4
        0x7f050021
        0x7f050024
    .end array-data
.end method
