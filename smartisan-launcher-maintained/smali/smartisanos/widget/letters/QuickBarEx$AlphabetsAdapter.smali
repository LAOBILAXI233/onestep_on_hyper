.class Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;
.super Landroid/widget/BaseAdapter;
.source "QuickBarEx.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisanos/widget/letters/QuickBarEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlphabetsAdapter"
.end annotation


.field private mAlphabets:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mNumRows:F

.field private mTotalVerticalSpacing:I

.field final synthetic this$0:Lsmartisanos/widget/letters/QuickBarEx;


.method public constructor <init>(Lsmartisanos/widget/letters/QuickBarEx;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1215
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1216
    iput-object p2, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mContext:Landroid/content/Context;

    .line 1217
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mCurrentLanguage:Ljava/lang/String;

    .line 1218
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mCurrentLanguage:Ljava/lang/String;

    invoke-static {v0}, Lsmartisanos/widget/letters/AlphabetsConfig;->numRowsByLanguage(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mNumRows:F

    .line 1219
    iget v0, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mNumRows:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Lsmartisanos/widget/letters/QuickBarEx;->access$1800(Lsmartisanos/widget/letters/QuickBarEx;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getVerticalSpacing()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mTotalVerticalSpacing:I

    .line 1220
    return-void
.end method

.method private getSignalCellHeight()I
    .locals 2

    .prologue
    .line 1251
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$1900(Lsmartisanos/widget/letters/QuickBarEx;)I

    move-result v0

    iget v1, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mTotalVerticalSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mNumRows:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isNeedIncreaseHeight()Z
    .locals 2

    .prologue
    .line 1247
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->this$0:Lsmartisanos/widget/letters/QuickBarEx;

    invoke-static {v0}, Lsmartisanos/widget/letters/QuickBarEx;->access$1900(Lsmartisanos/widget/letters/QuickBarEx;)I

    move-result v0

    iget v1, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mTotalVerticalSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mNumRows:F

    rem-float/2addr v0, v1

    float-to-int v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedInsreaseHeightPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1255
    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


.method public getCount()I
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mAlphabets:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mAlphabets:[Ljava/lang/String;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1208
    invoke-virtual {p0, p1}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1238
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mAlphabets:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1243
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1261
    iget-object v5, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mAlphabets:[Ljava/lang/String;

    aget-object v0, v5, p1

    .line 1263
    .local v0, "alphabet":Ljava/lang/String;
    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->getSignalCellHeight()I

    move-result v1

    .line 1264
    .local v1, "cellHeight":I
    iget v5, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mNumRows:F

    const/high16 v6, 0x41100000    # 9.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    invoke-direct {p0}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->isNeedIncreaseHeight()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1}, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->isNeedInsreaseHeightPosition(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1265
    add-int/lit8 v1, v1, 0x3

    .line 1268
    :cond_0
    invoke-static {v0}, Lsmartisanos/widget/letters/AlphabetsConfig;->isSymbol(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1269
    new-instance v2, Landroid/widget/ImageView;

    iget-object v5, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1270
    .local v2, "imageView":Landroid/widget/ImageView;
    sget v5, Lsmartisanos/widget/R$drawable;->letters_bar_arrow:I

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1271
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1272
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 1273
    move-object v3, v2

    .line 1292
    .end local v2    # "imageView":Landroid/widget/ImageView;
    .local v3, "itemView":Landroid/view/View;
    :goto_0
    rem-int/lit8 v5, p1, 0x2

    if-nez v5, :cond_5

    iget-object v5, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lsmartisanos/widget/R$drawable;->quickbar_ex_alphabet_text_light_colorlist:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1295
    return-object v3

    .line 1275
    .end local v3    # "itemView":Landroid/view/View;
    :cond_1
    new-instance v4, Lsmartisanos/widget/letters/AlphabetView;

    iget-object v5, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lsmartisanos/widget/letters/AlphabetView;-><init>(Landroid/content/Context;)V

    .line 1276
    .local v4, "textView":Landroid/widget/TextView;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 1277
    invoke-static {v0}, Lsmartisanos/widget/letters/AlphabetsConfig;->isDisabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1278
    const-string v5, "#1A000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1279
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1282
    :cond_2
    invoke-static {v0}, Lsmartisanos/widget/letters/AlphabetsConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1283
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    :cond_3
    invoke-static {v0}, Lsmartisanos/widget/letters/AlphabetsConfig;->isRussianAlphabet(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1286
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1289
    :cond_4
    move-object v3, v4

    .restart local v3    # "itemView":Landroid/view/View;
    goto :goto_0

    .line 1292
    .end local v4    # "textView":Landroid/widget/TextView;
    :cond_5
    iget-object v5, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lsmartisanos/widget/R$drawable;->quickbar_ex_alphabet_text_dark_colorlist:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1228
    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mAlphabets:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Lsmartisanos/widget/letters/AlphabetsConfig;->isPlaceholder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mAlphabets:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Lsmartisanos/widget/letters/AlphabetsConfig;->isDisabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlphabets([Ljava/lang/String;)V
    .locals 0
    .param p1, "alphabets"    # [Ljava/lang/String;

    .prologue
    .line 1223
    iput-object p1, p0, Lsmartisanos/widget/letters/QuickBarEx$AlphabetsAdapter;->mAlphabets:[Ljava/lang/String;

    .line 1224
    return-void
.end method
