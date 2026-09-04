.class public Lcom/smartisanos/home/settings/SettingItemSwitch;
.super Landroid/widget/RelativeLayout;
.source "SettingItemSwitch.java"


.field private mDialogController:Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mInfoBtn:Landroid/widget/ImageView;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mPressed:Z

.field private mSubTitle:Landroid/widget/TextView;

.field private mSwitch:Lsmartisanos/widget/SwitchEx;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleSummaryLayout:Landroid/widget/LinearLayout;

.field private summary:Landroid/widget/TextView;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040066

    invoke-virtual {v5, v6, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, "container":Landroid/view/View;
    const v5, 0x7f0f0145

    invoke-virtual {p0, v5}, Lcom/smartisanos/home/settings/SettingItemSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mTitleSummaryLayout:Landroid/widget/LinearLayout;

    .line 56
    const v5, 0x7f0f00e4

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mTitle:Landroid/widget/TextView;

    .line 57
    const v5, 0x7f0f0142

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->summary:Landroid/widget/TextView;

    .line 58
    const v5, 0x7f0f00c7

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lsmartisanos/widget/SwitchEx;

    iput-object v5, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    .line 59
    const v5, 0x7f0f0147

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mSubTitle:Landroid/widget/TextView;

    .line 60
    const v5, 0x7f0f0146

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mInfoBtn:Landroid/widget/ImageView;

    .line 62
    sget-object v5, Lcom/smartisanos/home/R$styleable;->SettingItemSwitch:[I

    invoke-virtual {p1, p2, v5, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 66
    .local v2, "iconId":I
    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    iget-object v5, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 68
    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 72
    :cond_0
    iget-object v5, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 74
    .local v4, "strSummary":Ljava/lang/CharSequence;
    if-eqz v4, :cond_1

    .line 75
    iget-object v5, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v5, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :cond_1
    iget-object v5, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    const/4 v6, 0x4

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v5, v6}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 80
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 81
    .local v3, "strDescription":Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 82
    iget-object v5, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setClickable(Z)V

    .line 88
    invoke-virtual {p0, v8}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setFocusable(Z)V

    .line 90
    iget-object v5, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    new-instance v6, Lcom/smartisanos/home/settings/SettingItemSwitch$1;

    invoke-direct {v6, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch$1;-><init>(Lcom/smartisanos/home/settings/SettingItemSwitch;)V

    invoke-virtual {v5, v6}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/home/settings/SettingItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/SettingItemSwitch;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/smartisanos/home/settings/SettingItemSwitch;)Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;
    .locals 1
    .param p0, "x0"    # Lcom/smartisanos/home/settings/SettingItemSwitch;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mDialogController:Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;

    return-object v0
.end method

.method private refreshState()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 142
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 144
    :cond_0
    return-void
.end method

.method private setSwitchVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/16 v1, 0x8

    .line 230
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/SwitchEx;->setVisibility(I)V

    .line 231
    if-ne p1, v1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mSubTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


.method public getSwitch()Lsmartisanos/widget/SwitchEx;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0}, Lsmartisanos/widget/SwitchEx;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    iget-object v2, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "iconTransX":I
    const/4 v1, 0x0

    .line 129
    .local v1, "iconTransY":I
    iget-object v2, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 131
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 132
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 133
    iget-object v2, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 137
    .end local v0    # "iconTransX":I
    .end local v1    # "iconTransY":I
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 104
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 105
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mTitleSummaryLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 107
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 109
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 178
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 179
    return-void
.end method

.method public setIconResource(I)V
    .locals 4
    .param p1, "iconRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 150
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 149
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->invalidate()V

    .line 153
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 175
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 116
    iget-boolean v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mPressed:Z

    if-eq v0, p1, :cond_0

    .line 117
    iput-boolean p1, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mPressed:Z

    .line 118
    invoke-direct {p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->refreshState()V

    .line 120
    :cond_0
    return-void
.end method

.method public setSummary(I)V
    .locals 2
    .param p1, "s"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->summary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 171
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->summary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public setSwitchEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setEnabled(Z)V

    .line 240
    if-eqz p1, :cond_0

    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setSwitchVisibility(I)V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->setSwitchVisibility(I)V

    goto :goto_0
.end method

.method public setSwitchSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 161
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method public setupInfoButton(ZLandroid/view/View;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "contentView"    # Landroid/view/View;

    .prologue
    .line 190
    if-eqz p1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mInfoBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mDialogController:Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mDialogController:Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;

    .line 194
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mDialogController:Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;

    invoke-virtual {v0, p2}, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->setupDialog(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mInfoBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/smartisanos/home/settings/SettingItemSwitch$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch$2;-><init>(Lcom/smartisanos/home/settings/SettingItemSwitch;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mInfoBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupInfoButton(ZLjava/lang/String;)V
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 208
    if-eqz p1, :cond_1

    .line 209
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mInfoBtn:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mDialogController:Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;

    invoke-virtual {p0}, Lcom/smartisanos/home/settings/SettingItemSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mDialogController:Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;

    .line 212
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mDialogController:Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;

    invoke-virtual {v0, p2}, Lcom/smartisan/feedbackhelper/utils/PopInfoDialogController;->setupDialog(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mInfoBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/smartisanos/home/settings/SettingItemSwitch$3;

    invoke-direct {v1, p0}, Lcom/smartisanos/home/settings/SettingItemSwitch$3;-><init>(Lcom/smartisanos/home/settings/SettingItemSwitch;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/home/settings/SettingItemSwitch;->mInfoBtn:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
