.class public Lcom/smartisan/feedbackhelper/utils/Title;
.super Landroid/widget/RelativeLayout;
.source "Title.java"


.field private static final DEVIATION:I = 0x4

.field public static final EXTRA_BACK_BTN_RES_ID:Ljava/lang/String; = "back_text_id"

.field public static final EXTRA_BACK_BTN_TEXT:Ljava/lang/String; = "back_text"

.field public static final EXTRA_TITLE_TEXT:Ljava/lang/String; = "title"

.field private static MAX_BACK_BTN_WIDTH:I


.field private backBtnBgWidth:I

.field private mBackButton:Landroid/widget/TextView;

.field private mOkButton:Landroid/widget/TextView;

.field private mPlaceHolderView:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private okBtnBgWidth:I

.field private screenWidth:I


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisan/feedbackhelper/utils/Title;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 58
    invoke-direct/range {p0 .. p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v19

    sget v20, Lcom/smartisan/feedbackhelper/R$layout;->feedback_title_layout:I

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p0

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 63
    .local v9, "container":Landroid/view/View;
    sget v19, Lcom/smartisan/feedbackhelper/R$id;->feedback_tv_title:I

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisan/feedbackhelper/utils/Title;->mTitle:Landroid/widget/TextView;

    .line 64
    sget v19, Lcom/smartisan/feedbackhelper/R$id;->feedback_btn_back:I

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisan/feedbackhelper/utils/Title;->mBackButton:Landroid/widget/TextView;

    .line 65
    sget v19, Lcom/smartisan/feedbackhelper/R$id;->feedback_btn_ok:I

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisan/feedbackhelper/utils/Title;->mOkButton:Landroid/widget/TextView;

    .line 66
    sget v19, Lcom/smartisan/feedbackhelper/R$id;->feedback_place_holder:I

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/smartisan/feedbackhelper/utils/Title;->mPlaceHolderView:Landroid/view/View;

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/smartisan/feedbackhelper/utils/Title;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/smartisan/feedbackhelper/R$dimen;->title_back_btn_max_width:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    sput v19, Lcom/smartisan/feedbackhelper/utils/Title;->MAX_BACK_BTN_WIDTH:I

    .line 72
    sget-object v19, Lcom/smartisan/feedbackhelper/R$styleable;->Feedback_Title:[I

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    move/from16 v3, p3

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 75
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v19, Lcom/smartisan/feedbackhelper/R$styleable;->Feedback_Title_feedback_backText:I

    .line 76
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 78
    .local v14, "strBackButton":Ljava/lang/CharSequence;
    if-eqz v14, :cond_0

    .line 79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/utils/Title;->mBackButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    sget v19, Lcom/smartisan/feedbackhelper/R$styleable;->Feedback_Title_feedback_backTextColor:I

    .line 82
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 83
    .local v7, "backBtnTextColor":Landroid/content/res/ColorStateList;
    sget v19, Lcom/smartisan/feedbackhelper/R$styleable;->Feedback_Title_feedback_backTextSize:I

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 85
    .local v8, "backBtnTextSize":I
    if-eqz v7, :cond_1

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/utils/Title;->mBackButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 88
    :cond_1
    if-lez v8, :cond_2

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/utils/Title;->mBackButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    int-to-float v0, v8

    move/from16 v21, v0

    .line 90
    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    :cond_2
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

    iput v0, v1, Lcom/smartisan/feedbackhelper/utils/Title;->screenWidth:I

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/smartisan/feedbackhelper/utils/Title;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/smartisan/feedbackhelper/R$drawable;->feedback_title_btn_back:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 97
    .local v6, "backBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    add-int/lit8 v19, v19, -0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisan/feedbackhelper/utils/Title;->backBtnBgWidth:I

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/smartisan/feedbackhelper/utils/Title;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    sget v20, Lcom/smartisan/feedbackhelper/R$drawable;->feedback_title_btn_ok:I

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 100
    .local v11, "okBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/smartisan/feedbackhelper/utils/Title;->okBtnBgWidth:I

    .line 102
    sget v19, Lcom/smartisan/feedbackhelper/R$styleable;->Feedback_Title_feedback_okText:I

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 103
    .local v15, "strOkBtn":Ljava/lang/CharSequence;
    if-eqz v15, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/utils/Title;->mOkButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/utils/Title;->mOkButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_3
    sget v19, Lcom/smartisan/feedbackhelper/R$styleable;->Feedback_Title_feedback_okTextColor:I

    .line 108
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 109
    .local v12, "okBtnTextColor":Landroid/content/res/ColorStateList;
    sget v19, Lcom/smartisan/feedbackhelper/R$styleable;->Feedback_Title_feedback_okTextSize:I

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    .line 111
    .local v13, "okBtnTextSize":I
    if-eqz v12, :cond_4

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/utils/Title;->mOkButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 114
    :cond_4
    if-lez v13, :cond_5

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/utils/Title;->mOkButton:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    int-to-float v0, v13

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 118
    :cond_5
    sget v19, Lcom/smartisan/feedbackhelper/R$styleable;->Feedback_Title_feedback_itemtitle:I

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 119
    .local v16, "strTitle":Ljava/lang/CharSequence;
    if-eqz v16, :cond_6

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/utils/Title;->mTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_6
    sget v19, Lcom/smartisan/feedbackhelper/R$styleable;->Feedback_Title_feedback_titleColor:I

    .line 123
    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    .line 124
    .local v17, "titleColor":Landroid/content/res/ColorStateList;
    sget v19, Lcom/smartisan/feedbackhelper/R$styleable;->Feedback_Title_feedback_titleSize:I

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v18

    .line 126
    .local v18, "titleSize":I
    if-eqz v17, :cond_7

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/utils/Title;->mTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 129
    :cond_7
    if-lez v18, :cond_8

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisan/feedbackhelper/utils/Title;->mTitle:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 133
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/smartisan/feedbackhelper/utils/Title;->setTitleAlign()V

    .line 135
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 137
    sget v19, Lcom/smartisan/feedbackhelper/R$drawable;->title_bar_bg:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/smartisan/feedbackhelper/utils/Title;->setBackgroundResource(I)V

    .line 138
    return-void
.end method

.method private caculateTextWidth(Landroid/widget/TextView;)F
    .locals 3
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 174
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 175
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 176
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 177
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 178
    const/4 v2, 0x0

    .line 179
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
    .locals 8

    .prologue
    .line 141
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 142
    .local v0, "backBg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    iput v5, p0, Lcom/smartisan/feedbackhelper/utils/Title;->backBtnBgWidth:I

    .line 146
    :cond_0
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mBackButton:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/smartisan/feedbackhelper/utils/Title;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v5

    sget v6, Lcom/smartisan/feedbackhelper/utils/Title;->MAX_BACK_BTN_WIDTH:I

    iget v7, p0, Lcom/smartisan/feedbackhelper/utils/Title;->backBtnBgWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v6, p0, Lcom/smartisan/feedbackhelper/utils/Title;->backBtnBgWidth:I

    int-to-float v6, v6

    add-float v1, v5, v6

    .line 148
    .local v1, "backBtnWidth":F
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mOkButton:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/smartisan/feedbackhelper/utils/Title;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v5

    sget v6, Lcom/smartisan/feedbackhelper/utils/Title;->MAX_BACK_BTN_WIDTH:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 150
    .local v3, "okBtnWidth":F
    iget v5, p0, Lcom/smartisan/feedbackhelper/utils/Title;->screenWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v1

    sub-float v2, v5, v6

    .line 151
    .local v2, "midWidth":F
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v5}, Lcom/smartisan/feedbackhelper/utils/Title;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v4

    .line 153
    .local v4, "titleWidth":F
    const/high16 v5, 0x40a00000    # 5.0f

    add-float/2addr v5, v4

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    .line 155
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mPlaceHolderView:Landroid/view/View;

    float-to-int v6, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 157
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mTitle:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 171
    :goto_0
    return-void

    .line 159
    :cond_1
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-nez v5, :cond_2

    .line 160
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mOkButton:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mPlaceHolderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/utils/Title;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/smartisan/feedbackhelper/R$dimen;->title_place_holder_min_width:I

    .line 162
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 161
    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 169
    :goto_1
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mTitle:Landroid/widget/TextView;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mPlaceHolderView:Landroid/view/View;

    float-to-int v6, v3

    iget v7, p0, Lcom/smartisan/feedbackhelper/utils/Title;->okBtnBgWidth:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumWidth(I)V

    .line 167
    iget-object v5, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mOkButton:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


.method public getBackButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mBackButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOkButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mOkButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public setBackButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void
.end method

.method public setBackButtonText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/utils/Title;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisan/feedbackhelper/utils/Title;->setBackButtonText(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method

.method public setBackButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mBackButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/utils/Title;->setTitleAlign()V

    .line 230
    :cond_0
    return-void
.end method

.method public setBackButtonTextByIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 208
    const-string v2, "back_text"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "backText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 210
    invoke-virtual {p0, v1}, Lcom/smartisan/feedbackhelper/utils/Title;->setBackButtonText(Ljava/lang/CharSequence;)V

    .line 216
    .end local v1    # "backText":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 212
    .restart local v1    # "backText":Ljava/lang/String;
    :cond_1
    const-string v2, "back_text_id"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 213
    .local v0, "backId":I
    invoke-virtual {p0, v0}, Lcom/smartisan/feedbackhelper/utils/Title;->setBackButtonTextByRes(I)V

    goto :goto_0
.end method

.method public setBackButtonTextByRes(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mBackButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 221
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/utils/Title;->setTitleAlign()V

    .line 223
    :cond_0
    return-void
.end method

.method public setOkButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    return-void
.end method

.method public setOkButtonText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/smartisan/feedbackhelper/utils/Title;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisan/feedbackhelper/utils/Title;->setOkButtonText(Ljava/lang/CharSequence;)V

    .line 245
    return-void
.end method

.method public setOkButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mOkButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/utils/Title;->setTitleAlign()V

    .line 241
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-direct {p0}, Lcom/smartisan/feedbackhelper/utils/Title;->setTitleAlign()V

    .line 186
    return-void
.end method

.method public updateBackButtonEnableState(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 256
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 257
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 258
    return-void

    .line 257
    :cond_0
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method public updateOkButtonEnableState(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 261
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 262
    iget-object v0, p0, Lcom/smartisan/feedbackhelper/utils/Title;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 263
    return-void

    .line 262
    :cond_0
    const/16 v0, 0x7f

    goto :goto_0
.end method
