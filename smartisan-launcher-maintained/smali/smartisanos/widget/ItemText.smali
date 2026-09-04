.class public Lsmartisanos/widget/ItemText;
.super Landroid/widget/RelativeLayout;
.source "ItemText.java"


.field private static final BOTTOM_POSITION:I = 0x2

.field private static final MIDDLE_POSITION:I = 0x1

.field private static final SINGLE_POSITION:I = 0x3

.field private static final TOP_POSITION:I


.field private mArrowDrawable:Landroid/graphics/drawable/Drawable;

.field private mArrowIcon:Landroid/widget/ImageView;

.field private mBadgeBitmap:Landroid/graphics/Bitmap;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressed:Z

.field private mShowBadge:Z

.field private mSubTitle:Landroid/widget/TextView;

.field private mSummary:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleSummaryLayout:Landroid/view/View;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsmartisanos/widget/ItemText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsmartisanos/widget/ItemText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsmartisanos/widget/ItemText;->mShowBadge:Z

    .line 51
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    sget v18, Lsmartisanos/widget/R$layout;->item_text_layout:I

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 54
    .local v7, "container":Landroid/view/View;
    sget v17, Lsmartisanos/widget/R$id;->item_text_title_summary_layout:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ItemText;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lsmartisanos/widget/ItemText;->mTitleSummaryLayout:Landroid/view/View;

    .line 56
    sget v17, Lsmartisanos/widget/R$id;->item_text_title:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lsmartisanos/widget/ItemText;->mTitle:Landroid/widget/TextView;

    .line 57
    sget v17, Lsmartisanos/widget/R$id;->item_text_subtitle:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lsmartisanos/widget/ItemText;->mSubTitle:Landroid/widget/TextView;

    .line 58
    sget v17, Lsmartisanos/widget/R$id;->item_text_summary:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lsmartisanos/widget/ItemText;->mSummary:Landroid/widget/TextView;

    .line 59
    sget v17, Lsmartisanos/widget/R$id;->item_text_arrow:I

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lsmartisanos/widget/ItemText;->mArrowIcon:Landroid/widget/ImageView;

    .line 61
    sget-object v17, Lsmartisanos/widget/R$styleable;->ItemText:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 62
    .local v5, "a":Landroid/content/res/TypedArray;
    if-eqz v5, :cond_5

    .line 64
    sget v17, Lsmartisanos/widget/R$styleable;->ItemText_itemTextIcon:I

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 65
    .local v9, "iconId":I
    if-eqz v9, :cond_0

    .line 66
    invoke-virtual/range {p0 .. p0}, Lsmartisanos/widget/ItemText;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    invoke-virtual/range {v17 .. v21}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 70
    .local v11, "iconWidth":I
    invoke-virtual/range {p0 .. p0}, Lsmartisanos/widget/ItemText;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lsmartisanos/widget/R$dimen;->item_check_icon_left_margin:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    .line 72
    .local v10, "iconLeftMargin":I
    invoke-virtual/range {p0 .. p0}, Lsmartisanos/widget/ItemText;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lsmartisanos/widget/R$dimen;->item_check_icon_left_margin:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    .line 74
    .local v12, "itemLeftMargin":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mTitleSummaryLayout:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    .local v13, "params":Landroid/widget/RelativeLayout$LayoutParams;
    add-int v17, v11, v10

    add-int v17, v17, v12

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mTitleSummaryLayout:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .end local v10    # "iconLeftMargin":I
    .end local v11    # "iconWidth":I
    .end local v12    # "itemLeftMargin":I
    .end local v13    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mTitle:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget v18, Lsmartisanos/widget/R$styleable;->ItemText_itemTextTitle:I

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    sget v17, Lsmartisanos/widget/R$styleable;->ItemText_itemTextTitleMaxWidth:I

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v16

    .line 83
    .local v16, "titleMaxWidth":I
    if-lez v16, :cond_1

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mTitle:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 86
    :cond_1
    sget v17, Lsmartisanos/widget/R$styleable;->ItemText_itemTextSummary:I

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 87
    .local v15, "summary":Ljava/lang/CharSequence;
    if-eqz v15, :cond_2

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mSummary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mSummary:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mTitleSummaryLayout:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 91
    .restart local v13    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mTitleSummaryLayout:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .end local v13    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mSubTitle:Landroid/widget/TextView;

    move-object/from16 v17, v0

    sget v18, Lsmartisanos/widget/R$styleable;->ItemText_itemTextSubTitle:I

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    sget v17, Lsmartisanos/widget/R$styleable;->ItemText_itemTextShowArrow:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    .line 98
    .local v14, "showArrow":Z
    if-nez v14, :cond_3

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mArrowIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .restart local v13    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    const/16 v17, 0xf

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 104
    const/16 v17, 0x1

    sget v18, Lsmartisanos/widget/R$id;->item_text_title_summary_layout:I

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lsmartisanos/widget/ItemText;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lsmartisanos/widget/R$dimen;->item_check_icon_left_margin:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mSubTitle:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .end local v13    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    sget v17, Lsmartisanos/widget/R$styleable;->ItemText_itemTextClickable:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 112
    .local v6, "clickable":Z
    if-nez v6, :cond_4

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mTitle:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setClickable(Z)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mTitle:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mSubTitle:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setClickable(Z)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lsmartisanos/widget/ItemText;->mSubTitle:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 119
    :cond_4
    sget v17, Lsmartisanos/widget/R$styleable;->ItemText_itemTextGravity:I

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 120
    .local v8, "gravity":I
    packed-switch v8, :pswitch_data_0

    .line 135
    sget v17, Lsmartisanos/widget/R$drawable;->selector_item_check_bg_single:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ItemText;->setBackgroundResource(I)V

    .line 139
    :goto_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    .end local v6    # "clickable":Z
    .end local v8    # "gravity":I
    .end local v9    # "iconId":I
    .end local v14    # "showArrow":Z
    .end local v15    # "summary":Ljava/lang/CharSequence;
    .end local v16    # "titleMaxWidth":I
    :cond_5
    return-void

    .line 122
    .restart local v6    # "clickable":Z
    .restart local v8    # "gravity":I
    .restart local v9    # "iconId":I
    .restart local v14    # "showArrow":Z
    .restart local v15    # "summary":Ljava/lang/CharSequence;
    .restart local v16    # "titleMaxWidth":I
    :pswitch_0
    sget v17, Lsmartisanos/widget/R$drawable;->selector_item_check_bg_top:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ItemText;->setBackgroundResource(I)V

    goto :goto_0

    .line 126
    :pswitch_1
    sget v17, Lsmartisanos/widget/R$drawable;->selector_item_check_bg_middle:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ItemText;->setBackgroundResource(I)V

    goto :goto_0

    .line 130
    :pswitch_2
    sget v17, Lsmartisanos/widget/R$drawable;->selector_item_check_bg_bottom:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lsmartisanos/widget/ItemText;->setBackgroundResource(I)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private refreshState()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lsmartisanos/widget/ItemText;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 157
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 159
    :cond_0
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lsmartisanos/widget/ItemText;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 161
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mArrowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 163
    :cond_1
    return-void
.end method


.method public getSubTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSubTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mSubTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSummaryView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mSummary:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 168
    iget-object v4, p0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 170
    const/4 v2, 0x0

    .line 171
    .local v2, "iconTransX":I
    const/4 v3, 0x0

    .line 172
    .local v3, "iconTransY":I
    iget-object v4, p0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 173
    invoke-virtual {p0}, Lsmartisanos/widget/ItemText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisanos/widget/R$dimen;->item_check_icon_left_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 175
    invoke-virtual {p0}, Lsmartisanos/widget/ItemText;->getHeight()I

    move-result v4

    iget-object v5, p0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 176
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    iget-object v4, p0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 182
    .end local v2    # "iconTransX":I
    .end local v3    # "iconTransY":I
    :cond_1
    iget-boolean v4, p0, Lsmartisanos/widget/ItemText;->mShowBadge:Z

    if-eqz v4, :cond_2

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 184
    invoke-virtual {p0}, Lsmartisanos/widget/ItemText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisanos/widget/R$dimen;->item_text_right_arrow_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 186
    .local v0, "arrowRightMargin":I
    invoke-virtual {p0}, Lsmartisanos/widget/ItemText;->getWidth()I

    move-result v4

    sub-int/2addr v4, v0

    iget-object v5, p0, Lsmartisanos/widget/ItemText;->mArrowIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lsmartisanos/widget/ItemText;->mBadgeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v1, v4, v5

    .line 188
    .local v1, "badgeTransX":I
    iget-object v4, p0, Lsmartisanos/widget/ItemText;->mBadgeBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v1

    invoke-virtual {p0}, Lsmartisanos/widget/ItemText;->getHeight()I

    move-result v6

    iget-object v7, p0, Lsmartisanos/widget/ItemText;->mBadgeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, -0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 191
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 193
    .end local v0    # "arrowRightMargin":I
    .end local v1    # "badgeTransX":I
    :cond_2
    return-void
.end method

.method public setArrowVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 266
    iget-object v1, p0, Lsmartisanos/widget/ItemText;->mArrowIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setBadgeVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 274
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mBadgeBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lsmartisanos/widget/ItemText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisanos/widget/R$drawable;->badge_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lsmartisanos/widget/ItemText;->mBadgeBitmap:Landroid/graphics/Bitmap;

    .line 278
    :cond_0
    iput-boolean p1, p0, Lsmartisanos/widget/ItemText;->mShowBadge:Z

    .line 279
    invoke-virtual {p0}, Lsmartisanos/widget/ItemText;->invalidate()V

    .line 280
    return-void
.end method

.method public setIconResource(I)V
    .locals 8
    .param p1, "iconRes"    # I

    .prologue
    const/4 v7, 0x0

    .line 196
    invoke-virtual {p0}, Lsmartisanos/widget/ItemText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    iget-object v4, p0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 198
    iget-object v4, p0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iget-object v6, p0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    iget-object v4, p0, Lsmartisanos/widget/ItemText;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 201
    .local v1, "iconWidth":I
    invoke-virtual {p0}, Lsmartisanos/widget/ItemText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisanos/widget/R$dimen;->item_check_icon_left_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 203
    .local v0, "iconLeftMargin":I
    invoke-virtual {p0}, Lsmartisanos/widget/ItemText;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisanos/widget/R$dimen;->item_check_icon_left_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 205
    .local v2, "itemLeftMargin":I
    iget-object v4, p0, Lsmartisanos/widget/ItemText;->mTitleSummaryLayout:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 206
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    add-int v4, v1, v0

    add-int/2addr v4, v2

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 207
    iget-object v4, p0, Lsmartisanos/widget/ItemText;->mTitleSummaryLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .end local v0    # "iconLeftMargin":I
    .end local v1    # "iconWidth":I
    .end local v2    # "itemLeftMargin":I
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0}, Lsmartisanos/widget/ItemText;->invalidate()V

    .line 210
    return-void
.end method

.method public setItemEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lsmartisanos/widget/ItemText;->setEnabled(Z)V

    .line 271
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 147
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 148
    iget-boolean v0, p0, Lsmartisanos/widget/ItemText;->mPressed:Z

    if-eq v0, p1, :cond_0

    .line 149
    iput-boolean p1, p0, Lsmartisanos/widget/ItemText;->mPressed:Z

    .line 150
    invoke-direct {p0}, Lsmartisanos/widget/ItemText;->refreshState()V

    .line 152
    :cond_0
    return-void
.end method

.method public setSubTitle(I)V
    .locals 1
    .param p1, "subTitleRes"    # I

    .prologue
    .line 246
    invoke-virtual {p0}, Lsmartisanos/widget/ItemText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/ItemText;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 247
    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "aSubTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 241
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mSubTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    iget-object v1, p0, Lsmartisanos/widget/ItemText;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v1, p0, Lsmartisanos/widget/ItemText;->mTitleSummaryLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 257
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 258
    iget-object v1, p0, Lsmartisanos/widget/ItemText;->mTitleSummaryLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    iget-object v1, p0, Lsmartisanos/widget/ItemText;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lsmartisanos/widget/ItemText;->mSummary:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 222
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "aTitle"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lsmartisanos/widget/ItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    return-void
.end method
