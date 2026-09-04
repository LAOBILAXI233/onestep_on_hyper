.class public Lcom/smartisanos/home/settings/PreviewSettingItemView;
.super Landroid/widget/RelativeLayout;
.source "PreviewSettingItemView.java"


.field private mCheckedImage:Landroid/widget/ImageView;

.field private mFocusedDrawable:Landroid/graphics/drawable/Drawable;

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreviewImage:Landroid/widget/ImageView;

.field private mPreviewTitle:Landroid/widget/TextView;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/home/settings/PreviewSettingItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
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

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 38
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040051

    invoke-virtual {v1, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 39
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0f0108

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mPreviewImage:Landroid/widget/ImageView;

    .line 40
    const v4, 0x7f0f00bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mCheckedImage:Landroid/widget/ImageView;

    .line 41
    const v4, 0x7f0f0109

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mPreviewTitle:Landroid/widget/TextView;

    .line 43
    sget-object v4, Lcom/smartisanos/home/R$styleable;->PreviewSettingItemView:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 44
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    iget-object v4, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 47
    iget-object v4, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mPreviewImage:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 50
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz v2, :cond_1

    .line 51
    iget-object v4, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mPreviewTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    return-void

    .line 53
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mPreviewTitle:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mPreviewImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mFocusedDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mCheckedImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 62
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setPreview(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mPreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mPreviewTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/smartisanos/home/settings/PreviewSettingItemView;->mPreviewTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    return-void
.end method
