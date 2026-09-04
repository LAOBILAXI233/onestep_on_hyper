.class public Lcom/smartisanos/home/widget/sys/Title;
.super Landroid/widget/RelativeLayout;
.source "Title.java"


.field private static final DEVIATION:I = 0x4

.field public static final EXTRA_BACK_BTN_RES_ID:Ljava/lang/String; = "back_text_id"

.field public static final EXTRA_BACK_BTN_TEXT:Ljava/lang/String; = "back_text"

.field public static final EXTRA_TITLE_TEXT:Ljava/lang/String; = "title"

.field private static MAX_BACK_BTN_WIDTH:I


.field private backBtnBgWidth:I

.field private mBackButton:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDisableBackButton:Z

.field private mOkButton:Landroid/widget/TextView;

.field private mPlaceHolderView:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private okBtnBgWidth:I

.field private screenWidth:I


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mDisableBackButton:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/home/widget/sys/Title;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/home/widget/sys/Title;->mDisableBackButton:Z

    .line 60
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/home/widget/sys/Title;->mContext:Landroid/content/Context;

    .line 61
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f040078

    const/16 v21, 0x1

    .line 62
    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 64
    .local v9, "container":Landroid/view/View;
    const v19, 0x7f0f017e

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/home/widget/sys/Title;->mTitle:Landroid/widget/TextView;

    .line 65
    const v19, 0x7f0f005f

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    .line 66
    const v19, 0x7f0f0060

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    .line 67
    const v19, 0x7f0f017b

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisanos/home/widget/sys/Title;->mPlaceHolderView:Landroid/view/View;

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/home/widget/sys/Title;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f090159

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    sput v19, Lcom/smartisanos/home/widget/sys/Title;->MAX_BACK_BTN_WIDTH:I

    .line 72
    sget-object v19, Lcom/smartisanos/home/R$styleable;->Title:[I

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 74
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v19, 0xc

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/smartisanos/home/widget/sys/Title;->mDisableBackButton:Z

    .line 75
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/smartisanos/home/widget/sys/Title;->mDisableBackButton:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :cond_0
    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 81
    .local v14, "strBackButton":Ljava/lang/CharSequence;
    if-eqz v14, :cond_1

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_1
    const/16 v19, 0xe

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 85
    .local v7, "backBtnTextColor":Landroid/content/res/ColorStateList;
    const/16 v19, 0xf

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 86
    .local v8, "backBtnTextSize":I
    if-eqz v7, :cond_2

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 89
    :cond_2
    if-lez v8, :cond_3

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    int-to-float v0, v8

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    .line 94
    .local v10, "dm":Landroid/util/DisplayMetrics;
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/home/widget/sys/Title;->screenWidth:I

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/home/widget/sys/Title;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f02029d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 96
    .local v6, "backBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    add-int/lit8 v19, v19, -0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/home/widget/sys/Title;->backBtnBgWidth:I

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/home/widget/sys/Title;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0202a1

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 98
    .local v11, "okBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisanos/home/widget/sys/Title;->okBtnBgWidth:I

    .line 100
    const/16 v19, 0x10

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 101
    .local v15, "strOkBtn":Ljava/lang/CharSequence;
    if-eqz v15, :cond_4

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_4
    const/16 v19, 0x11

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 106
    .local v12, "okBtnTextColor":Landroid/content/res/ColorStateList;
    const/16 v19, 0x12

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 107
    .local v13, "okBtnTextSize":I
    if-eqz v12, :cond_5

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 110
    :cond_5
    if-lez v13, :cond_6

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    int-to-float v0, v13

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 114
    :cond_6
    const/16 v19, 0x9

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 115
    .local v16, "strTitle":Ljava/lang/CharSequence;
    if-eqz v16, :cond_7

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/home/widget/sys/Title;->mTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :cond_7
    const/16 v19, 0xa

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    .line 119
    .local v17, "titleColor":Landroid/content/res/ColorStateList;
    const/16 v19, 0xb

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 120
    .local v18, "titleSize":I
    if-eqz v17, :cond_8

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/home/widget/sys/Title;->mTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 123
    :cond_8
    if-lez v18, :cond_9

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/home/widget/sys/Title;->mTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 127
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/smartisanos/home/widget/sys/Title;->setTitleAlign()V

    .line 129
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    const v19, 0x7f02029b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/smartisanos/home/widget/sys/Title;->setBackgroundResource(I)V

    .line 132
    return-void
.end method

.method private caculateTextWidth(Landroid/widget/TextView;)F
    .locals 3
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 160
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 162
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 163
    const/4 v2, 0x0

    .line 164
    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    goto :goto_0
.end method

.method private setTitleAlign()V
    .locals 7

    .prologue
    .line 135
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/smartisanos/home/widget/sys/Title;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v4

    sget v5, Lcom/smartisanos/home/widget/sys/Title;->MAX_BACK_BTN_WIDTH:I

    iget v6, p0, Lcom/smartisanos/home/widget/sys/Title;->backBtnBgWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p0, Lcom/smartisanos/home/widget/sys/Title;->backBtnBgWidth:I

    int-to-float v5, v5

    add-float v0, v4, v5

    .line 137
    .local v0, "backBtnWidth":F
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/smartisanos/home/widget/sys/Title;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v4

    sget v5, Lcom/smartisanos/home/widget/sys/Title;->MAX_BACK_BTN_WIDTH:I

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 138
    .local v2, "okBtnWidth":F
    iget v4, p0, Lcom/smartisanos/home/widget/sys/Title;->screenWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v0

    sub-float v1, v4, v5

    .line 139
    .local v1, "midWidth":F
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/Title;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/smartisanos/home/widget/sys/Title;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v3

    .line 141
    .local v3, "titleWidth":F
    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/Title;->mPlaceHolderView:Landroid/view/View;

    float-to-int v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 144
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/Title;->mTitle:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 156
    :goto_0
    return-void

    .line 146
    :cond_0
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-nez v4, :cond_1

    .line 147
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/Title;->mPlaceHolderView:Landroid/view/View;

    .line 149
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/Title;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090161

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 148
    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 154
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/Title;->mTitle:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/Title;->mPlaceHolderView:Landroid/view/View;

    float-to-int v5, v2

    iget v6, p0, Lcom/smartisanos/home/widget/sys/Title;->okBtnBgWidth:I

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 152
    iget-object v4, p0, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


.method public getBackButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOkButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBackButtonArrow(Z)V
    .locals 3
    .param p1, "showArrow"    # Z

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/Title;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/Title;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void
.end method

.method public setBackButtonText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/Title;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonText(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method public setBackButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/Title;->setTitleAlign()V

    .line 223
    :cond_0
    return-void
.end method

.method public setBackButtonTextByIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    const-string v2, "back_text"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "backText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    invoke-virtual {p0, v1}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonText(Ljava/lang/CharSequence;)V

    .line 209
    .end local v1    # "backText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 205
    .restart local v1    # "backText":Ljava/lang/String;
    :cond_1
    const-string v2, "back_text_id"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 206
    .local v0, "backId":I
    invoke-virtual {p0, v0}, Lcom/smartisanos/home/widget/sys/Title;->setBackButtonTextByRes(I)V

    goto :goto_0
.end method

.method public setBackButtonTextByRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 212
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 214
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/Title;->setTitleAlign()V

    .line 216
    :cond_0
    return-void
.end method

.method public setOkButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    return-void
.end method

.method public setOkButtonText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/smartisanos/home/widget/sys/Title;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/home/widget/sys/Title;->setOkButtonText(Ljava/lang/CharSequence;)V

    .line 238
    return-void
.end method

.method public setOkButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/Title;->setTitleAlign()V

    .line 234
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    invoke-direct {p0}, Lcom/smartisanos/home/widget/sys/Title;->setTitleAlign()V

    .line 171
    return-void
.end method

.method public updateBackButtonEnableState(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 249
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 251
    return-void

    .line 250
    :cond_0
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method public updateOkButtonEnableState(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 254
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 255
    iget-object v1, p0, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/smartisanos/home/widget/sys/Title;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_1

    const/16 v0, 0xff

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 257
    return-void

    .line 255
    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    .line 256
    :cond_1
    const/16 v0, 0x7f

    goto :goto_1
.end method
