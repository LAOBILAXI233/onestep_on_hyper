.class public Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;
.super Landroid/widget/LinearLayout;
.source "PreviewOptionItemView.java"


.field private mActiveColor:I

.field private mCurrentDisactiveColor:I

.field private mDisactiveColor:I

.field private mIconAreaLayout:Landroid/widget/FrameLayout;

.field private mIsActive:Z

.field private mItemIcon:Landroid/widget/ImageView;

.field private mSelectedIcon:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-virtual {p0, v7}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->setOrientation(I)V

    .line 43
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->setGravity(I)V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040050

    invoke-virtual {v4, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 46
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0f0105

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mIconAreaLayout:Landroid/widget/FrameLayout;

    .line 47
    const v4, 0x7f0f0106

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mItemIcon:Landroid/widget/ImageView;

    .line 48
    const v4, 0x7f0f0107

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mSelectedIcon:Landroid/widget/ImageView;

    .line 49
    const v4, 0x7f0f0030

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    .line 51
    sget-object v4, Lcom/smartisanos/home/R$styleable;->PreviewOptionItemView:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 59
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mActiveColor:I

    .line 67
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0072

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mDisactiveColor:I

    .line 68
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0073

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iput v4, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mCurrentDisactiveColor:I

    .line 70
    invoke-virtual {p0, v6}, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->setActive(Z)V

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    return-void
.end method


.method public getIconAreaFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mIconAreaLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mIsActive:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mIsActive:Z

    .line 97
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mSelectedIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mActiveColor:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    return-void

    .line 97
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 98
    :cond_1
    iget v0, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mDisactiveColor:I

    goto :goto_1
.end method

.method public setActive(ZZ)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "isCurrent"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mIsActive:Z

    .line 103
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mSelectedIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mActiveColor:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    return-void

    .line 103
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 104
    :cond_1
    if-eqz p2, :cond_2

    iget v0, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mCurrentDisactiveColor:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mDisactiveColor:I

    goto :goto_1
.end method

.method public setItemImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 89
    return-void
.end method

.method public setItemImageRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mItemIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 85
    return-void
.end method

.method public setSelectedImageRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mSelectedIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "strId"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/PreviewOptionItemView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
