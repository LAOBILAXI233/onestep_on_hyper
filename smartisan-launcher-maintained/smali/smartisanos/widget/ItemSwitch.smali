.class public Lsmartisanos/widget/ItemSwitch;
.super Landroid/widget/LinearLayout;
.source "ItemSwitch.java"


.field private static final TAG:Ljava/lang/String; = "ItemSwitch"


.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field protected mSummary:Landroid/widget/TextView;

.field protected mSwitch:Lsmartisanos/widget/SwitchEx;

.field protected mTitle:Landroid/widget/TextView;


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsmartisanos/widget/ItemSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lsmartisanos/widget/R$layout;->item_switch_layout:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 41
    .local v1, "container":Landroid/view/View;
    sget v8, Lsmartisanos/widget/R$id;->item_switch_icon:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 42
    .local v4, "icon":Landroid/widget/ImageView;
    sget v8, Lsmartisanos/widget/R$id;->item_switch_title:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lsmartisanos/widget/ItemSwitch;->mTitle:Landroid/widget/TextView;

    .line 43
    sget v8, Lsmartisanos/widget/R$id;->item_switch_summary:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lsmartisanos/widget/ItemSwitch;->mSummary:Landroid/widget/TextView;

    .line 44
    sget v8, Lsmartisanos/widget/R$id;->item_switch:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lsmartisanos/widget/SwitchEx;

    iput-object v8, p0, Lsmartisanos/widget/ItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    .line 45
    sget-object v8, Lsmartisanos/widget/R$styleable;->ItemSwitch:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 48
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v8, Lsmartisanos/widget/R$styleable;->ItemSwitch_itemSwitchIcon:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 50
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_4

    .line 51
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :goto_0
    sget v8, Lsmartisanos/widget/R$styleable;->ItemSwitch_itemSwitchTitleSize:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 56
    .local v7, "titleSize":I
    if-lez v7, :cond_0

    .line 57
    iget-object v8, p0, Lsmartisanos/widget/ItemSwitch;->mTitle:Landroid/widget/TextView;

    const/4 v9, 0x0

    int-to-float v10, v7

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 59
    :cond_0
    sget v8, Lsmartisanos/widget/R$styleable;->ItemSwitch_itemSwitchSummarySize:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 60
    .local v6, "summarySize":I
    if-lez v6, :cond_1

    .line 61
    iget-object v8, p0, Lsmartisanos/widget/ItemSwitch;->mSummary:Landroid/widget/TextView;

    const/4 v9, 0x0

    int-to-float v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    :cond_1
    iget-object v8, p0, Lsmartisanos/widget/ItemSwitch;->mTitle:Landroid/widget/TextView;

    sget v9, Lsmartisanos/widget/R$styleable;->ItemSwitch_itemSwitchTitle:I

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    sget v8, Lsmartisanos/widget/R$styleable;->ItemSwitch_itemSwitchTitleColor:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 66
    .local v2, "csl":Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_2

    .line 67
    iget-object v8, p0, Lsmartisanos/widget/ItemSwitch;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 69
    :cond_2
    sget v8, Lsmartisanos/widget/R$styleable;->ItemSwitch_itemSwitchSummary:I

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 70
    .local v5, "strSummary":Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 71
    iget-object v8, p0, Lsmartisanos/widget/ItemSwitch;->mSummary:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v8, p0, Lsmartisanos/widget/ItemSwitch;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_3
    iget-object v8, p0, Lsmartisanos/widget/ItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    sget v9, Lsmartisanos/widget/R$styleable;->ItemSwitch_itemSwitchIsEnable:I

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {v8, v9}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 76
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    iget-object v8, p0, Lsmartisanos/widget/ItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    new-instance v9, Lsmartisanos/widget/ItemSwitch$1;

    invoke-direct {v9, p0}, Lsmartisanos/widget/ItemSwitch$1;-><init>(Lsmartisanos/widget/ItemSwitch;)V

    invoke-virtual {v8, v9}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    return-void

    .line 53
    .end local v2    # "csl":Landroid/content/res/ColorStateList;
    .end local v5    # "strSummary":Ljava/lang/CharSequence;
    .end local v6    # "summarySize":I
    .end local v7    # "titleSize":I
    :cond_4
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lsmartisanos/widget/ItemSwitch;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/ItemSwitch;

    .prologue
    .line 18
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method


.method public getSwitch()Lsmartisanos/widget/SwitchEx;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0}, Lsmartisanos/widget/SwitchEx;->isChecked()Z

    move-result v0

    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/SwitchEx;->setButtonDrawable(I)V

    .line 90
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/SwitchEx;->setChecked(Z)V

    .line 108
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mSummary:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 124
    :cond_0
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mSwitch:Lsmartisanos/widget/SwitchEx;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/SwitchEx;->setEnabled(Z)V

    .line 127
    :cond_1
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 130
    :cond_2
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 103
    iput-object p1, p0, Lsmartisanos/widget/ItemSwitch;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 104
    return-void
.end method

.method public setSummary(I)V
    .locals 2
    .param p1, "s"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mSummary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 93
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mSummary:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lsmartisanos/widget/ItemSwitch;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method
