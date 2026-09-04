.class public Lcom/smartisanos/home/settings/SettingItemCheck;
.super Landroid/widget/LinearLayout;
.source "SettingItemCheck.java"


.field private mCheckImage:Landroid/widget/ImageView;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSummary:Landroid/widget/TextView;

.field private mTextLayout:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/home/settings/SettingItemCheck;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/home/settings/SettingItemCheck;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040064

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, "container":Landroid/view/View;
    const v3, 0x7f0f0140

    invoke-virtual {p0, v3}, Lcom/smartisanos/home/settings/SettingItemCheck;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mTextLayout:Landroid/view/View;

    .line 39
    const v3, 0x7f0f00c4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mTitle:Landroid/widget/TextView;

    .line 40
    const v3, 0x7f0f0142

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mSummary:Landroid/widget/TextView;

    .line 41
    const v3, 0x7f0f0141

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mCheckImage:Landroid/widget/ImageView;

    .line 42
    const v3, 0x7f0f002f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mIcon:Landroid/widget/ImageView;

    .line 44
    sget-object v3, Lcom/smartisanos/home/R$styleable;->SettingItemCheck:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 47
    .local v2, "titleSize":I
    if-lez v2, :cond_0

    .line 48
    iget-object v3, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mTitle:Landroid/widget/TextView;

    int-to-float v4, v2

    invoke-virtual {v3, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 51
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method


.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSummaryView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mCheckImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 57
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 58
    iget-object v2, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 60
    .local v1, "iconWidth":I
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/SettingItemCheck;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 61
    .local v0, "iconLeftMargin":I
    iget-object v2, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mTextLayout:Landroid/view/View;

    add-int v3, v1, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 63
    .end local v0    # "iconLeftMargin":I
    .end local v1    # "iconWidth":I
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 99
    iget-object v1, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mCheckImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setCheckedIconLight(Z)V
    .locals 2
    .param p1, "light"    # Z

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mCheckImage:Landroid/widget/ImageView;

    const v1, 0x7f0201ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mCheckImage:Landroid/widget/ImageView;

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    .line 116
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 117
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/smartisanos/home/settings/SettingItemCheck;->setCheckedIconLight(Z)V

    .line 118
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mCheckImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 119
    iget-object v3, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 120
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 121
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 119
    goto :goto_1

    :cond_2
    move v1, v2

    .line 120
    goto :goto_2
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    return-void
.end method

.method public setIconVisibility(I)V
    .locals 2
    .param p1, "visiableId"    # I

    .prologue
    .line 74
    if-eqz p1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    return-void

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the params for setIconVisibility method is illegal!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mSummary:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemCheck;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method
