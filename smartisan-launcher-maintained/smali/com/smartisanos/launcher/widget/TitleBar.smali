.class public Lcom/smartisanos/launcher/widget/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "TitleBar.java"


.field private static final DEVIATION:I = 0x4

.field public static final EXTRA_BACK_BTN_TEXT:Ljava/lang/String; = "back_text"

.field public static final EXTRA_TITLE_TEXT:Ljava/lang/String; = "title"

.field private static MAX_BACK_BTN_WIDTH:I


.field private backBtnBgWidth:I

.field private mBackButton:Landroid/widget/TextView;

.field public mDownloadProgressLayout:Landroid/widget/FrameLayout;

.field public mOkButton:Landroid/widget/TextView;

.field private mPlaceHolderView:Landroid/view/View;

.field private mTitle:Landroid/widget/TextView;

.field private screenWidth:I


.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/launcher/widget/TitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040078

    const/4 v5, 0x1

    .line 49
    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    .local v1, "container":Landroid/view/View;
    const v3, 0x7f0f017e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mTitle:Landroid/widget/TextView;

    .line 52
    const v3, 0x7f0f005f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mBackButton:Landroid/widget/TextView;

    .line 53
    const v3, 0x7f0f0060

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mOkButton:Landroid/widget/TextView;

    .line 54
    const v3, 0x7f0f017c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mDownloadProgressLayout:Landroid/widget/FrameLayout;

    .line 55
    const v3, 0x7f0f017b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mPlaceHolderView:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090159

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Lcom/smartisanos/launcher/widget/TitleBar;->MAX_BACK_BTN_WIDTH:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 70
    .local v2, "dm":Landroid/util/DisplayMetrics;
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/smartisanos/launcher/widget/TitleBar;->screenWidth:I

    .line 71
    invoke-virtual {p0}, Lcom/smartisanos/launcher/widget/TitleBar;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02029d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    .local v0, "backBg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    iput v3, p0, Lcom/smartisanos/launcher/widget/TitleBar;->backBtnBgWidth:I

    .line 89
    return-void
.end method

.method private caculateTextWidth(Landroid/widget/TextView;)F
    .locals 3
    .param p1, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 124
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 125
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 126
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 127
    const/4 v2, 0x0

    .line 143
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
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/16 v7, 0x8

    .line 92
    iget-object v4, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mBackButton:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/smartisanos/launcher/widget/TitleBar;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v4

    sget v5, Lcom/smartisanos/launcher/widget/TitleBar;->MAX_BACK_BTN_WIDTH:I

    iget v6, p0, Lcom/smartisanos/launcher/widget/TitleBar;->backBtnBgWidth:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v5, p0, Lcom/smartisanos/launcher/widget/TitleBar;->backBtnBgWidth:I

    int-to-float v5, v5

    add-float v0, v4, v5

    .line 94
    .local v0, "backBtnWidth":F
    iget-object v4, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mOkButton:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/smartisanos/launcher/widget/TitleBar;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v2

    .line 95
    .local v2, "okBtnWidth":F
    iget v4, p0, Lcom/smartisanos/launcher/widget/TitleBar;->screenWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v0

    sub-float v1, v4, v5

    .line 96
    .local v1, "midWidth":F
    iget-object v4, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/smartisanos/launcher/widget/TitleBar;->caculateTextWidth(Landroid/widget/TextView;)F

    move-result v3

    .line 98
    .local v3, "titleWidth":F
    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-lez v4, :cond_1

    .line 100
    iget-object v4, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mPlaceHolderView:Landroid/view/View;

    float-to-int v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 106
    iget-object v4, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mPlaceHolderView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 107
    iget-object v4, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mPlaceHolderView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_0
    iget-object v4, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mTitle:Landroid/widget/TextView;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 120
    :goto_0
    return-void

    .line 111
    :cond_1
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-nez v4, :cond_2

    .line 112
    iget-object v4, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v4, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mPlaceHolderView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :goto_1
    iget-object v4, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mTitle:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object v4, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mPlaceHolderView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 116
    iget-object v4, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mPlaceHolderView:Landroid/view/View;

    float-to-int v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    goto :goto_1
.end method


.method public getCancelButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mBackButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getOkButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mOkButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public setBackButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    return-void
.end method

.method public setBackButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mBackButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mBackButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    invoke-direct {p0}, Lcom/smartisanos/launcher/widget/TitleBar;->setTitleAlign()V

    .line 174
    :cond_0
    return-void
.end method

.method public setBackButtonTextByIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    const-string v1, "back_text"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "backText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/widget/TitleBar;->setBackButtonText(Ljava/lang/CharSequence;)V

    .line 167
    .end local v0    # "backText":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setOkButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method public setOkButtonText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mOkButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    invoke-direct {p0}, Lcom/smartisanos/launcher/widget/TitleBar;->setTitleAlign()V

    .line 181
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/smartisanos/launcher/widget/TitleBar;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-direct {p0}, Lcom/smartisanos/launcher/widget/TitleBar;->setTitleAlign()V

    .line 150
    return-void
.end method
