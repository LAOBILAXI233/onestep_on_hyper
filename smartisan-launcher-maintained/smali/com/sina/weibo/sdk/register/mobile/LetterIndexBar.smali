.class public Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;
.super Landroid/view/View;
.source "LetterIndexBar.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;
    }
.end annotation


.field public static final INDEX_COUNT_DEFAULT:I = 0x1b

.field public static final SEARCH_ICON_LETTER:Ljava/lang/String; = ""


.field private count:I

.field private mIndex:I

.field private mIndexLetter:[Ljava/lang/String;

.field private mItemHeight:I

.field private mItemPadding:I

.field private mListener:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;

.field private mNeedIndex:[Z

.field private mOrgTextSzie:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/RectF;

.field private mSeatchIcon:Landroid/graphics/drawable/Drawable;

.field private mTouching:Z


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    .line 41
    const/16 v0, 0x1b

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    .line 61
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    .line 41
    const/16 v0, 0x1b

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    .line 71
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    .line 41
    const/16 v0, 0x1b

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    .line 66
    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->init()V

    .line 67
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    const v1, -0xa2a2a3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/ResourceManager;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mOrgTextSzie:I

    .line 79
    return-void
.end method


.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 112
    iget-boolean v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mTouching:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 114
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    const v3, -0x77888878

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 116
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    :cond_0
    iget v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mOrgTextSzie:I

    .line 120
    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemHeight:I

    if-le v0, v2, :cond_1

    .line 121
    iget v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemHeight:I

    .line 125
    :goto_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 129
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndexLetter:[Ljava/lang/String;

    if-nez v2, :cond_9

    .line 130
    const/16 v2, 0x41

    .line 131
    :goto_1
    iget v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    if-lt v1, v3, :cond_2

    .line 165
    :goto_2
    return-void

    .line 123
    :cond_1
    iget v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mOrgTextSzie:I

    goto :goto_0

    .line 132
    :cond_2
    iget v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemHeight:I

    mul-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    iget v4, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemPadding:I

    add-int/2addr v4, v3

    .line 133
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mNeedIndex:[Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mNeedIndex:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_4

    .line 134
    :cond_3
    iget v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_5

    .line 135
    const-string v3, "#"

    .line 139
    :goto_3
    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    .line 140
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v6

    sub-int v5, v6, v5

    div-int/lit8 v5, v5, 0x2

    .line 141
    int-to-float v5, v5

    int-to-float v4, v4

    iget-object v6, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 131
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    :cond_5
    add-int/lit8 v3, v2, 0x1

    int-to-char v3, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    move v8, v3

    move-object v3, v2

    move v2, v8

    goto :goto_3

    .line 146
    :cond_6
    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemHeight:I

    mul-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemPadding:I

    add-int/2addr v2, v3

    .line 147
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mNeedIndex:[Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mNeedIndex:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_8

    .line 148
    :cond_7
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndexLetter:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 149
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 150
    iget-object v3, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    const-string v4, "M"

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    .line 151
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    .line 155
    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mSeatchIcon:Landroid/graphics/drawable/Drawable;

    sub-int v6, v2, v4

    add-int v7, v3, v4

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    invoke-virtual {v5, v4, v6, v7, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mSeatchIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    :cond_9
    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    if-lt v1, v2, :cond_6

    goto/16 :goto_2

    .line 158
    :cond_a
    iget-object v4, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v4, v4

    .line 159
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v5

    sub-int v4, v5, v4

    div-int/lit8 v4, v4, 0x2

    .line 160
    int-to-float v4, v4

    int-to-float v2, v2

    iget-object v5, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 169
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 170
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 171
    iget v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    div-int/2addr v1, v2

    .line 170
    iput v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemHeight:I

    .line 172
    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemPadding:I

    .line 173
    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mOrgTextSzie:I

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 174
    invoke-virtual {p0, v1, p2}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->setMeasuredDimension(II)V

    .line 175
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    .line 177
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v5

    .line 176
    sub-int/2addr v0, v5

    .line 177
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingBottom()I

    move-result v5

    .line 176
    sub-int/2addr v0, v5

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 175
    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mRect:Landroid/graphics/RectF;

    .line 178
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 183
    packed-switch v0, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->invalidate()V

    .line 207
    return v2

    .line 186
    :pswitch_0
    iput-boolean v2, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mTouching:Z

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 188
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mItemHeight:I

    div-int/2addr v0, v1

    .line 189
    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndex:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mNeedIndex:[Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mNeedIndex:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 190
    :cond_1
    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    if-ge v0, v1, :cond_0

    if-ltz v0, :cond_0

    .line 191
    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndex:I

    .line 192
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mListener:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mListener:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;

    iget v1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndex:I

    invoke-interface {v0, v1}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;->onIndexChange(I)V

    goto :goto_0

    .line 200
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mTouching:Z

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setIndexChangeListener(Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mListener:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$OnIndexChangeListener;

    .line 107
    return-void
.end method

.method public setIndexLetter([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 103
    :goto_0
    return-void

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndexLetter:[Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndexLetter:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->count:I

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mIndex:I

    .line 102
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->invalidate()V

    goto :goto_0
.end method

.method public setIndexMark([Z)V
    .locals 0

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->mNeedIndex:[Z

    .line 91
    invoke-virtual {p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->invalidate()V

    goto :goto_0
.end method
