.class public Lsmartisanos/widget/ItemCheck;
.super Landroid/widget/LinearLayout;
.source "ItemCheck.java"


.field private static final BOTTOM_POSITION:I = 0x2

.field private static final MIDDLE_POSITION:I = 0x1

.field private static final SINGLE_POSITION:I = 0x3

.field private static final TOP_POSITION:I


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
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsmartisanos/widget/ItemCheck;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lsmartisanos/widget/ItemCheck;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lsmartisanos/widget/R$layout;->item_check_layout:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "container":Landroid/view/View;
    sget v4, Lsmartisanos/widget/R$id;->item_check_text_layout:I

    invoke-virtual {p0, v4}, Lsmartisanos/widget/ItemCheck;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lsmartisanos/widget/ItemCheck;->mTextLayout:Landroid/view/View;

    .line 44
    sget v4, Lsmartisanos/widget/R$id;->item_check_title:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lsmartisanos/widget/ItemCheck;->mTitle:Landroid/widget/TextView;

    .line 45
    sget v4, Lsmartisanos/widget/R$id;->item_check_summary:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lsmartisanos/widget/ItemCheck;->mSummary:Landroid/widget/TextView;

    .line 46
    sget v4, Lsmartisanos/widget/R$id;->item_check_icon:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lsmartisanos/widget/ItemCheck;->mCheckImage:Landroid/widget/ImageView;

    .line 47
    sget v4, Lsmartisanos/widget/R$id;->item_check_left_icon:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lsmartisanos/widget/ItemCheck;->mIcon:Landroid/widget/ImageView;

    .line 49
    sget-object v4, Lsmartisanos/widget/R$styleable;->ItemCheck:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 53
    sget v4, Lsmartisanos/widget/R$styleable;->ItemCheck_itemCheckTitleSize:I

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 54
    .local v3, "titleSize":I
    if-lez v3, :cond_0

    .line 55
    iget-object v4, p0, Lsmartisanos/widget/ItemCheck;->mTitle:Landroid/widget/TextView;

    int-to-float v5, v3

    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 58
    :cond_0
    iget-object v4, p0, Lsmartisanos/widget/ItemCheck;->mTitle:Landroid/widget/TextView;

    sget v5, Lsmartisanos/widget/R$styleable;->ItemCheck_itemCheckTitle:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget v4, Lsmartisanos/widget/R$styleable;->ItemCheck_itemCheckGravity:I

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 61
    .local v2, "gravity":I
    packed-switch v2, :pswitch_data_0

    .line 76
    sget v4, Lsmartisanos/widget/R$drawable;->selector_item_check_bg_single:I

    invoke-virtual {p0, v4}, Lsmartisanos/widget/ItemCheck;->setBackgroundResource(I)V

    .line 80
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    .end local v2    # "gravity":I
    .end local v3    # "titleSize":I
    :cond_1
    return-void

    .line 63
    .restart local v2    # "gravity":I
    .restart local v3    # "titleSize":I
    :pswitch_0
    sget v4, Lsmartisanos/widget/R$drawable;->selector_item_check_bg_top:I

    invoke-virtual {p0, v4}, Lsmartisanos/widget/ItemCheck;->setBackgroundResource(I)V

    goto :goto_0

    .line 67
    :pswitch_1
    sget v4, Lsmartisanos/widget/R$drawable;->selector_item_check_bg_middle:I

    invoke-virtual {p0, v4}, Lsmartisanos/widget/ItemCheck;->setBackgroundResource(I)V

    goto :goto_0

    .line 71
    :pswitch_2
    sget v4, Lsmartisanos/widget/R$drawable;->selector_item_check_bg_bottom:I

    invoke-virtual {p0, v4}, Lsmartisanos/widget/ItemCheck;->setBackgroundResource(I)V

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lsmartisanos/widget/ItemCheck;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSummaryView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lsmartisanos/widget/ItemCheck;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lsmartisanos/widget/ItemCheck;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lsmartisanos/widget/ItemCheck;->mCheckImage:Landroid/widget/ImageView;

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
    .line 86
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 87
    iget-object v2, p0, Lsmartisanos/widget/ItemCheck;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lsmartisanos/widget/ItemCheck;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 89
    .local v1, "iconWidth":I
    invoke-virtual {p0}, Lsmartisanos/widget/ItemCheck;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lsmartisanos/widget/R$dimen;->item_check_icon_left_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 91
    .local v0, "iconLeftMargin":I
    iget-object v2, p0, Lsmartisanos/widget/ItemCheck;->mTextLayout:Landroid/view/View;

    add-int v3, v1, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 93
    .end local v0    # "iconLeftMargin":I
    .end local v1    # "iconWidth":I
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 121
    iget-object v1, p0, Lsmartisanos/widget/ItemCheck;->mCheckImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setCheckedIconLight(Z)V
    .locals 2
    .param p1, "light"    # Z

    .prologue
    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lsmartisanos/widget/ItemCheck;->mCheckImage:Landroid/widget/ImageView;

    sget v1, Lsmartisanos/widget/R$drawable;->selector_item_check_icon_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lsmartisanos/widget/ItemCheck;->mCheckImage:Landroid/widget/ImageView;

    sget v1, Lsmartisanos/widget/R$drawable;->selector_item_check_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lsmartisanos/widget/ItemCheck;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 116
    iget-object v0, p0, Lsmartisanos/widget/ItemCheck;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lsmartisanos/widget/ItemCheck;->mSummary:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    iget-object v0, p0, Lsmartisanos/widget/ItemCheck;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method
