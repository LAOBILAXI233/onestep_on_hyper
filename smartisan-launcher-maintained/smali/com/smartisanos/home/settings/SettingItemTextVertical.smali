.class public Lcom/smartisanos/home/settings/SettingItemTextVertical;
.super Landroid/widget/RelativeLayout;
.source "SettingItemTextVertical.java"


.field private framelayout:Landroid/widget/FrameLayout;

.field private mArrow:Landroid/widget/ImageView;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconFrame:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field private subTitle:Landroid/widget/TextView;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/home/settings/SettingItemTextVertical;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v11, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040039

    invoke-virtual {v7, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 44
    .local v2, "container":Landroid/view/View;
    const v7, 0x7f0f00df

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->framelayout:Landroid/widget/FrameLayout;

    .line 45
    const v7, 0x7f0f00e1

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mIcon:Landroid/widget/ImageView;

    .line 46
    const v7, 0x7f0f00e0

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mIconFrame:Landroid/widget/ImageView;

    .line 47
    const v7, 0x7f0f00e4

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mTitle:Landroid/widget/TextView;

    .line 48
    const v7, 0x7f0f00e5

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->subTitle:Landroid/widget/TextView;

    .line 49
    const v7, 0x7f0f00e2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mArrow:Landroid/widget/ImageView;

    .line 50
    sget-object v7, Lcom/smartisanos/home/R$styleable;->SettingItemTextVertical:[I

    invoke-virtual {p1, p2, v7, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 55
    .local v5, "drawableIcon":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_2

    .line 56
    iget-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->framelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 62
    :goto_0
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 63
    .local v6, "drawableIconFrame":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    .line 64
    iget-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mIconFrame:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    :cond_0
    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 69
    .local v4, "drawableArrow":Landroid/graphics/drawable/Drawable;
    if-nez v4, :cond_3

    .line 70
    iget-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    :goto_1
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/SettingItemTextVertical;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900df

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 76
    .local v3, "defValue":I
    const/4 v7, 0x7

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 77
    .local v1, "arrowRightMargin":I
    iget-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mArrow:Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    .line 78
    iget-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v7, v10, v10, v1, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 81
    :cond_1
    iget-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->subTitle:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->subTitle:Landroid/widget/TextView;

    const/4 v8, 0x4

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 84
    iget-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->subTitle:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/SettingItemTextVertical;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090133

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 84
    invoke-virtual {v7, v10, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    return-void

    .line 59
    .end local v1    # "arrowRightMargin":I
    .end local v3    # "defValue":I
    .end local v4    # "drawableArrow":Landroid/graphics/drawable/Drawable;
    .end local v6    # "drawableIconFrame":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 72
    .restart local v4    # "drawableArrow":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "drawableIconFrame":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v7, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


.method public getArrow()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSubTitle()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->subTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public setArrowVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 134
    iget-object v1, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mArrow:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    :cond_0
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    :cond_0
    return-void
.end method

.method public setIconScale(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, p1, p2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 97
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "aSubTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->subTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "aTitle"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemTextVertical;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method
