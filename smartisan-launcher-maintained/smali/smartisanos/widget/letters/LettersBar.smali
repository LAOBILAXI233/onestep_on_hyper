.class public Lsmartisanos/widget/letters/LettersBar;
.super Landroid/view/View;
.source "LettersBar.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisanos/widget/letters/LettersBar$LBListener;
    }
.end annotation


.field private mChosenLetterIndex:I

.field private mContext:Landroid/content/Context;

.field private mDotIcon:Landroid/graphics/Bitmap;

.field private mDotIconXOffset:I

.field private mDotIconYOffset:I

.field mHasChosenLetterFontColor:I

.field private mHighlightIcon:Landroid/graphics/Bitmap;

.field private mHighlightIconX:I

.field private mHighlightIconY:I

.field private mLetterFontSize:I

.field private mLetterFontXOffset:I

.field private mLetterPaint:Landroid/graphics/Paint;

.field private mLetters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsmartisanos/widget/letters/LBLetter;",
            ">;"
        }
    .end annotation
.end field

.field private mLettersBarWidth:I

.field private mListener:Lsmartisanos/widget/letters/LettersBar$LBListener;

.field private mMeasuredHeight:I

.field mNoChosenLetterFontColor:I

.field private mSettled:Z

.field private mShowBg:Z

.field private mSingleLetterMinHeight:I

.field private mSymbolIconXOffset:I

.field private mSymbolIconYOffset:I


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsmartisanos/widget/letters/LettersBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lsmartisanos/widget/letters/LettersBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lsmartisanos/widget/letters/LettersBar;->mChosenLetterIndex:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsmartisanos/widget/letters/LettersBar;->mSettled:Z

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lsmartisanos/widget/letters/LettersBar;->mMeasuredHeight:I

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    .line 74
    invoke-direct {p0, p1}, Lsmartisanos/widget/letters/LettersBar;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method private calculateDotPaddingHeight(Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "visibleLetters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 320
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v3

    .line 323
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v4, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eq v2, v4, :cond_0

    .line 327
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, -0x1

    .line 328
    .local v1, "itemsCount":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ne v2, v4, :cond_2

    .line 330
    add-int/lit8 v1, v1, -0x1

    .line 333
    :cond_2
    iget v2, p0, Lsmartisanos/widget/letters/LettersBar;->mMeasuredHeight:I

    iget v4, p0, Lsmartisanos/widget/letters/LettersBar;->mSingleLetterMinHeight:I

    mul-int/2addr v4, v1

    sub-int/2addr v2, v4

    div-int v0, v2, v1

    .line 334
    .local v0, "height":I
    if-lez v0, :cond_3

    .end local v0    # "height":I
    :goto_1
    move v3, v0

    goto :goto_0

    .restart local v0    # "height":I
    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method private calculateVisibleLettersIndexes()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v2, "visibleLetters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .line 302
    .local v0, "hidenLetters":I
    iget v3, p0, Lsmartisanos/widget/letters/LettersBar;->mMeasuredHeight:I

    iget-object v4, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    div-int/2addr v3, v4

    iget v4, p0, Lsmartisanos/widget/letters/LettersBar;->mSingleLetterMinHeight:I

    if-ge v3, v4, :cond_0

    .line 303
    const/4 v3, 0x2

    iget-object v4, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lsmartisanos/widget/letters/LettersBar;->mMeasuredHeight:I

    iget v6, p0, Lsmartisanos/widget/letters/LettersBar;->mSingleLetterMinHeight:I

    div-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 306
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v3, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_1

    .line 308
    move v1, v0

    .local v1, "index":I
    :goto_0
    iget-object v3, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    .line 309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/2addr v1, v0

    goto :goto_0

    .line 312
    .end local v1    # "index":I
    :cond_1
    iget-object v3, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 313
    iget-object v3, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_2
    return-object v2
.end method

.method private drawDot(ILandroid/graphics/Canvas;FFIFI)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "xPos"    # F
    .param p4, "yPos"    # F
    .param p5, "i"    # I
    .param p6, "singleLetterHeight"    # F
    .param p7, "dotPaddingHeight"    # I

    .prologue
    .line 273
    int-to-float v2, p7

    add-float/2addr v2, p6

    int-to-float v3, p5

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p6, v3

    add-float p4, v2, v3

    .line 275
    iget v2, p0, Lsmartisanos/widget/letters/LettersBar;->mLettersBarWidth:I

    iget v3, p0, Lsmartisanos/widget/letters/LettersBar;->mDotIconXOffset:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lsmartisanos/widget/letters/LettersBar;->mDotIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 276
    .local v0, "left":F
    iget v2, p0, Lsmartisanos/widget/letters/LettersBar;->mDotIconYOffset:I

    int-to-float v2, v2

    sub-float v1, p4, v2

    .line 277
    .local v1, "top":F
    iget-object v2, p0, Lsmartisanos/widget/letters/LettersBar;->mDotIcon:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 278
    return-void
.end method

.method private drawHighlightIcon(ILandroid/graphics/Canvas;FF)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "xPos"    # F
    .param p4, "yPos"    # F

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lsmartisanos/widget/letters/LettersBar;->isTouchedLetter(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsmartisanos/widget/letters/LettersBar;->mSettled:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lsmartisanos/widget/letters/LettersBar;->mHighlightIcon:Landroid/graphics/Bitmap;

    iget v1, p0, Lsmartisanos/widget/letters/LettersBar;->mHighlightIconX:I

    int-to-float v1, v1

    iget v2, p0, Lsmartisanos/widget/letters/LettersBar;->mHighlightIconY:I

    int-to-float v2, v2

    sub-float v2, p4, v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 229
    :cond_0
    return-void
.end method

.method private drawLetter(ILandroid/graphics/Canvas;FFIFI)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "xPos"    # F
    .param p4, "yPos"    # F
    .param p5, "i"    # I
    .param p6, "singleLetterHeight"    # F
    .param p7, "dotPaddingHeight"    # I

    .prologue
    const/4 v3, 0x1

    .line 249
    invoke-direct {p0, p1}, Lsmartisanos/widget/letters/LettersBar;->isTouchedLetter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lsmartisanos/widget/letters/LettersBar;->mSettled:Z

    if-eqz v1, :cond_0

    .line 250
    iget-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 257
    :goto_0
    iget-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisanos/widget/letters/LBLetter;

    invoke-virtual {v1}, Lsmartisanos/widget/letters/LBLetter;->getLetter()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "letter":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    invoke-direct/range {p0 .. p7}, Lsmartisanos/widget/letters/LettersBar;->drawDot(ILandroid/graphics/Canvas;FFIFI)V

    .line 269
    :goto_1
    return-void

    .line 253
    .end local v0    # "letter":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lsmartisanos/widget/letters/LettersBar;->isHolderState()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lsmartisanos/widget/letters/LettersBar;->mSettled:Z

    if-nez v1, :cond_2

    :cond_1
    iget v1, p0, Lsmartisanos/widget/letters/LettersBar;->mHasChosenLetterFontColor:I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 253
    :cond_2
    iget v1, p0, Lsmartisanos/widget/letters/LettersBar;->mNoChosenLetterFontColor:I

    goto :goto_2

    .line 261
    .restart local v0    # "letter":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisanos/widget/letters/LBLetter;

    invoke-virtual {v1}, Lsmartisanos/widget/letters/LBLetter;->getType()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 262
    iget-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x42080000    # 34.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 263
    iget-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 267
    :goto_3
    const/high16 v1, 0x41c00000    # 24.0f

    add-float/2addr v1, p4

    iget-object v2, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, p3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 265
    :cond_4
    iget-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    iget v2, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_3
.end method

.method private drawSymbol(ILandroid/graphics/Canvas;FF)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "xPos"    # F
    .param p4, "yPos"    # F

    .prologue
    const/4 v2, 0x0

    .line 233
    iget v1, p0, Lsmartisanos/widget/letters/LettersBar;->mSymbolIconXOffset:I

    int-to-float v1, v1

    sub-float/2addr p3, v1

    .line 234
    iget v1, p0, Lsmartisanos/widget/letters/LettersBar;->mSymbolIconYOffset:I

    int-to-float v1, v1

    sub-float/2addr p4, v1

    .line 235
    iget-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisanos/widget/letters/LBLetter;

    invoke-virtual {v1}, Lsmartisanos/widget/letters/LBLetter;->getLetterBitmaps()[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 236
    .local v0, "letterBitmaps":[Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lsmartisanos/widget/letters/LettersBar;->isTouchedLetter(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lsmartisanos/widget/letters/LettersBar;->mSettled:Z

    if-eqz v1, :cond_0

    .line 237
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-virtual {p2, v1, p3, p4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 245
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-direct {p0}, Lsmartisanos/widget/letters/LettersBar;->isHolderState()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lsmartisanos/widget/letters/LettersBar;->mSettled:Z

    if-nez v1, :cond_2

    .line 239
    :cond_1
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {p2, v1, p3, p4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 241
    :cond_2
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p2, v1, p3, p4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getSingleLetterHeight(I)F
    .locals 4
    .param p1, "totalHeight"    # I

    .prologue
    .line 293
    int-to-float v1, p1

    iget-object v2, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    div-float v0, v1, v2

    .line 294
    .local v0, "itemHeight":F
    iget v1, p0, Lsmartisanos/widget/letters/LettersBar;->mSingleLetterMinHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    iput-object p1, p0, Lsmartisanos/widget/letters/LettersBar;->mContext:Landroid/content/Context;

    .line 102
    iget-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lsmartisanos/widget/R$dimen;->letters_bar_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLettersBarWidth:I

    .line 105
    sget v1, Lsmartisanos/widget/R$dimen;->letters_bar_single_letter_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mSingleLetterMinHeight:I

    .line 107
    sget v1, Lsmartisanos/widget/R$dimen;->letters_bar_letter_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterFontSize:I

    .line 108
    sget v1, Lsmartisanos/widget/R$dimen;->letters_bar_letter_font_x_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterFontXOffset:I

    .line 110
    sget v1, Lsmartisanos/widget/R$drawable;->letters_bar_highlight_icon:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mHighlightIcon:Landroid/graphics/Bitmap;

    .line 111
    sget v1, Lsmartisanos/widget/R$dimen;->letters_bar_highlight_icon_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mHighlightIconX:I

    .line 112
    sget v1, Lsmartisanos/widget/R$dimen;->letters_bar_highlight_icon_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mHighlightIconY:I

    .line 114
    sget v1, Lsmartisanos/widget/R$dimen;->letters_bar_symbol_x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mSymbolIconXOffset:I

    .line 115
    sget v1, Lsmartisanos/widget/R$dimen;->letters_bar_symbol_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mSymbolIconYOffset:I

    .line 117
    sget v1, Lsmartisanos/widget/R$color;->has_chosen_letter_font_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mHasChosenLetterFontColor:I

    .line 118
    sget v1, Lsmartisanos/widget/R$color;->no_chosen_letter_font_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mNoChosenLetterFontColor:I

    .line 120
    sget v1, Lsmartisanos/widget/R$drawable;->letters_bar_dot:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mDotIcon:Landroid/graphics/Bitmap;

    .line 121
    sget v1, Lsmartisanos/widget/R$dimen;->letters_bar_dot_y_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mDotIconYOffset:I

    .line 122
    sget v1, Lsmartisanos/widget/R$dimen;->letters_bar_dot_x_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mDotIconXOffset:I

    .line 124
    iget-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 125
    iget-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    iget v2, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 126
    iget-object v1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    return-void
.end method

.method private isHolderState()Z
    .locals 2

    .prologue
    .line 338
    iget v0, p0, Lsmartisanos/widget/letters/LettersBar;->mChosenLetterIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTouchedLetter(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 342
    iget v0, p0, Lsmartisanos/widget/letters/LettersBar;->mChosenLetterIndex:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureHeight(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 281
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 282
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 283
    .local v2, "specSize":I
    const/4 v0, 0x0

    .line 284
    .local v0, "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 285
    move v0, v2

    .line 289
    :cond_0
    :goto_0
    return v0

    .line 286
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 287
    move v0, v2

    goto :goto_0
.end method


.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 137
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 140
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 141
    .local v3, "y":F
    iget v2, p0, Lsmartisanos/widget/letters/LettersBar;->mChosenLetterIndex:I

    .line 142
    .local v2, "oldChosen":I
    invoke-virtual {p0}, Lsmartisanos/widget/letters/LettersBar;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v3, v4

    iget-object v5, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .line 144
    .local v1, "c":I
    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_0
    return v6

    .line 146
    :pswitch_0
    if-eq v2, v1, :cond_0

    .line 147
    if-ltz v1, :cond_0

    iget-object v4, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 148
    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mChosenLetterIndex:I

    .line 151
    :cond_0
    iput-boolean v6, p0, Lsmartisanos/widget/letters/LettersBar;->mShowBg:Z

    .line 152
    invoke-virtual {p0}, Lsmartisanos/widget/letters/LettersBar;->invalidate()V

    goto :goto_0

    .line 155
    :pswitch_1
    iget-boolean v4, p0, Lsmartisanos/widget/letters/LettersBar;->mSettled:Z

    if-eqz v4, :cond_1

    if-eq v2, v1, :cond_1

    iget-object v4, p0, Lsmartisanos/widget/letters/LettersBar;->mListener:Lsmartisanos/widget/letters/LettersBar$LBListener;

    if-eqz v4, :cond_1

    .line 156
    if-ltz v1, :cond_1

    iget-object v4, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 157
    iget-object v5, p0, Lsmartisanos/widget/letters/LettersBar;->mListener:Lsmartisanos/widget/letters/LettersBar$LBListener;

    iget-object v4, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsmartisanos/widget/letters/LBLetter;

    invoke-virtual {v4}, Lsmartisanos/widget/letters/LBLetter;->getLetter()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lsmartisanos/widget/letters/LettersBar$LBListener;->onLetterChanged(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mChosenLetterIndex:I

    .line 162
    :cond_1
    iput-boolean v6, p0, Lsmartisanos/widget/letters/LettersBar;->mShowBg:Z

    .line 163
    invoke-virtual {p0}, Lsmartisanos/widget/letters/LettersBar;->invalidate()V

    goto :goto_0

    .line 167
    :pswitch_2
    iget-boolean v4, p0, Lsmartisanos/widget/letters/LettersBar;->mSettled:Z

    if-eqz v4, :cond_3

    .line 168
    iget-object v4, p0, Lsmartisanos/widget/letters/LettersBar;->mListener:Lsmartisanos/widget/letters/LettersBar$LBListener;

    if-eqz v4, :cond_2

    .line 169
    if-ltz v1, :cond_2

    iget-object v4, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 170
    iget-object v5, p0, Lsmartisanos/widget/letters/LettersBar;->mListener:Lsmartisanos/widget/letters/LettersBar$LBListener;

    iget-object v4, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsmartisanos/widget/letters/LBLetter;

    invoke-virtual {v4}, Lsmartisanos/widget/letters/LBLetter;->getLetter()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lsmartisanos/widget/letters/LettersBar$LBListener;->onLetterChanged(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    iput v1, p0, Lsmartisanos/widget/letters/LettersBar;->mChosenLetterIndex:I

    .line 176
    :cond_2
    const/4 v4, -0x1

    iput v4, p0, Lsmartisanos/widget/letters/LettersBar;->mChosenLetterIndex:I

    .line 178
    const/4 v4, 0x0

    iput-boolean v4, p0, Lsmartisanos/widget/letters/LettersBar;->mShowBg:Z

    .line 180
    :cond_3
    invoke-virtual {p0}, Lsmartisanos/widget/letters/LettersBar;->invalidate()V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 188
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 190
    iget-boolean v0, p0, Lsmartisanos/widget/letters/LettersBar;->mShowBg:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lsmartisanos/widget/letters/LettersBar;->mSettled:Z

    if-nez v0, :cond_2

    .line 191
    :cond_0
    invoke-virtual {p0}, Lsmartisanos/widget/letters/LettersBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lsmartisanos/widget/R$drawable;->letters_bar_background:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/letters/LettersBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :goto_0
    invoke-direct {p0}, Lsmartisanos/widget/letters/LettersBar;->calculateVisibleLettersIndexes()Ljava/util/ArrayList;

    move-result-object v10

    .line 197
    .local v10, "visibleLetters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v10}, Lsmartisanos/widget/letters/LettersBar;->calculateDotPaddingHeight(Ljava/util/ArrayList;)I

    move-result v7

    .line 198
    .local v7, "dotPaddingHeight":I
    if-lez v7, :cond_3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    const/4 v9, 0x1

    .line 200
    .local v9, "showDots":Z
    :goto_1
    invoke-virtual {p0}, Lsmartisanos/widget/letters/LettersBar;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lsmartisanos/widget/letters/LettersBar;->getSingleLetterHeight(I)F

    move-result v6

    .line 202
    .local v6, "singleLetterHeight":F
    const/4 v5, 0x0

    .line 203
    .local v5, "i":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 204
    .local v1, "index":I
    iget v0, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterFontXOffset:I

    int-to-float v2, v0

    iget-object v11, p0, Lsmartisanos/widget/letters/LettersBar;->mLetterPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/letters/LBLetter;

    invoke-virtual {v0}, Lsmartisanos/widget/letters/LBLetter;->getLetter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    div-float/2addr v0, v12

    sub-float v3, v2, v0

    .line 205
    .local v3, "xPos":F
    int-to-float v0, v7

    add-float/2addr v0, v6

    int-to-float v2, v5

    mul-float/2addr v0, v2

    div-float v2, v6, v12

    add-float v4, v0, v2

    .line 207
    .local v4, "yPos":F
    invoke-direct {p0, v1, p1, v3, v4}, Lsmartisanos/widget/letters/LettersBar;->drawHighlightIcon(ILandroid/graphics/Canvas;FF)V

    .line 209
    iget-object v0, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsmartisanos/widget/letters/LBLetter;

    invoke-virtual {v0}, Lsmartisanos/widget/letters/LBLetter;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 210
    invoke-direct {p0, v1, p1, v3, v4}, Lsmartisanos/widget/letters/LettersBar;->drawSymbol(ILandroid/graphics/Canvas;FF)V

    .line 215
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 217
    if-eqz v9, :cond_1

    iget-object v0, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-eq v1, v0, :cond_1

    move-object v0, p0

    move-object v2, p1

    .line 218
    invoke-direct/range {v0 .. v7}, Lsmartisanos/widget/letters/LettersBar;->drawLetter(ILandroid/graphics/Canvas;FFIFI)V

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 193
    .end local v1    # "index":I
    .end local v3    # "xPos":F
    .end local v4    # "yPos":F
    .end local v5    # "i":I
    .end local v6    # "singleLetterHeight":F
    .end local v7    # "dotPaddingHeight":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "showDots":Z
    .end local v10    # "visibleLetters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsmartisanos/widget/letters/LettersBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 198
    .restart local v7    # "dotPaddingHeight":I
    .restart local v10    # "visibleLetters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    const/4 v9, 0x0

    goto :goto_1

    .restart local v1    # "index":I
    .restart local v3    # "xPos":F
    .restart local v4    # "yPos":F
    .restart local v5    # "i":I
    .restart local v6    # "singleLetterHeight":F
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "showDots":Z
    :cond_4
    move-object v0, p0

    move-object v2, p1

    .line 212
    invoke-direct/range {v0 .. v7}, Lsmartisanos/widget/letters/LettersBar;->drawLetter(ILandroid/graphics/Canvas;FFIFI)V

    goto :goto_3

    .line 223
    .end local v1    # "index":I
    .end local v3    # "xPos":F
    .end local v4    # "yPos":F
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 224
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 132
    invoke-direct {p0, p2}, Lsmartisanos/widget/letters/LettersBar;->measureHeight(I)I

    move-result v0

    iput v0, p0, Lsmartisanos/widget/letters/LettersBar;->mMeasuredHeight:I

    .line 133
    return-void
.end method

.method public setLetters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsmartisanos/widget/letters/LBLetter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "letters":Ljava/util/List;, "Ljava/util/List<Lsmartisanos/widget/letters/LBLetter;>;"
    iput-object p1, p0, Lsmartisanos/widget/letters/LettersBar;->mLetters:Ljava/util/List;

    .line 79
    return-void
.end method

.method public setListener(Lsmartisanos/widget/letters/LettersBar$LBListener;)V
    .locals 0
    .param p1, "listener"    # Lsmartisanos/widget/letters/LettersBar$LBListener;

    .prologue
    .line 82
    iput-object p1, p0, Lsmartisanos/widget/letters/LettersBar;->mListener:Lsmartisanos/widget/letters/LettersBar$LBListener;

    .line 83
    return-void
.end method

.method public setSettled(Z)V
    .locals 1
    .param p1, "settled"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lsmartisanos/widget/letters/LettersBar;->mSettled:Z

    .line 87
    iget-boolean v0, p0, Lsmartisanos/widget/letters/LettersBar;->mSettled:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lsmartisanos/widget/letters/LettersBar;->mChosenLetterIndex:I

    .line 90
    :cond_0
    invoke-virtual {p0}, Lsmartisanos/widget/letters/LettersBar;->invalidate()V

    .line 91
    return-void
.end method

.method public setShowBg(Z)V
    .locals 0
    .param p1, "showBg"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lsmartisanos/widget/letters/LettersBar;->mShowBg:Z

    .line 95
    return-void
.end method
