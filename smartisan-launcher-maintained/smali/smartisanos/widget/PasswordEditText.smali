.class public Lsmartisanos/widget/PasswordEditText;
.super Landroid/widget/EditText;
.source "PasswordEditText.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisanos/widget/PasswordEditText$EyeAnimator;
    }
.end annotation


.field private static final EYE_DRAWABLE_PADDING:I = 0x30

.field private static final INPUT_TYPE_CLEAR_VARIATION_MASK:I = -0x1000

.field private static final INPUT_TYPE_VARIATION_MASK:I = 0xfff


.field private mEyeAnimator:Lsmartisanos/widget/PasswordEditText$EyeAnimator;

.field private mEyePaddingRight:I

.field private mEyePaddingTop:I

.field private mInvisibleVariation:I

.field private mPendingSetInputType:Ljava/lang/Runnable;

.field private mVisible:Z

.field private mVisibleVariation:I


.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsmartisanos/widget/PasswordEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Lsmartisanos/widget/PasswordEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v1, 0x0

    iput v1, p0, Lsmartisanos/widget/PasswordEditText;->mEyePaddingTop:I

    .line 47
    invoke-virtual {p0}, Lsmartisanos/widget/PasswordEditText;->getInputType()I

    move-result v0

    .line 48
    .local v0, "inputType":I
    invoke-direct {p0, v0}, Lsmartisanos/widget/PasswordEditText;->updateVisibleStatus(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PasswordEditText doesn\'t have password InputType"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_0
    const/16 v1, 0x30

    iput v1, p0, Lsmartisanos/widget/PasswordEditText;->mEyePaddingRight:I

    .line 53
    new-instance v1, Lsmartisanos/widget/PasswordEditText$EyeAnimator;

    invoke-direct {v1, p0, p1}, Lsmartisanos/widget/PasswordEditText$EyeAnimator;-><init>(Lsmartisanos/widget/PasswordEditText;Landroid/content/Context;)V

    iput-object v1, p0, Lsmartisanos/widget/PasswordEditText;->mEyeAnimator:Lsmartisanos/widget/PasswordEditText$EyeAnimator;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lsmartisanos/widget/PasswordEditText;)Z
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/PasswordEditText;

    .prologue
    .line 23
    iget-boolean v0, p0, Lsmartisanos/widget/PasswordEditText;->mVisible:Z

    return v0
.end method

.method static synthetic access$100(Lsmartisanos/widget/PasswordEditText;)I
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/PasswordEditText;

    .prologue
    .line 23
    iget v0, p0, Lsmartisanos/widget/PasswordEditText;->mInvisibleVariation:I

    return v0
.end method

.method static synthetic access$200(Lsmartisanos/widget/PasswordEditText;IZ)V
    .locals 0
    .param p0, "x0"    # Lsmartisanos/widget/PasswordEditText;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lsmartisanos/widget/PasswordEditText;->setInputType(IZ)V

    return-void
.end method

.method static synthetic access$300(Lsmartisanos/widget/PasswordEditText;)I
    .locals 1
    .param p0, "x0"    # Lsmartisanos/widget/PasswordEditText;

    .prologue
    .line 23
    iget v0, p0, Lsmartisanos/widget/PasswordEditText;->mVisibleVariation:I

    return v0
.end method

.method private getEyeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lsmartisanos/widget/PasswordEditText;->mEyeAnimator:Lsmartisanos/widget/PasswordEditText$EyeAnimator;

    invoke-virtual {v0}, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private setInputType(IZ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "reset"    # Z

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 108
    invoke-direct {p0, p1}, Lsmartisanos/widget/PasswordEditText;->updateVisibleStatus(I)Z

    .line 109
    if-eqz p2, :cond_0

    .line 110
    iget-object v0, p0, Lsmartisanos/widget/PasswordEditText;->mEyeAnimator:Lsmartisanos/widget/PasswordEditText$EyeAnimator;

    invoke-virtual {v0}, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->resetCurrent()V

    .line 112
    :cond_0
    return-void
.end method

.method private updateVisibleStatus(I)Z
    .locals 4
    .param p1, "inputType"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 79
    and-int/lit16 v0, p1, 0xfff

    .line 80
    .local v0, "variation":I
    const/16 v3, 0x81

    if-eq v0, v3, :cond_0

    const/16 v3, 0xe1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x12

    if-ne v0, v3, :cond_1

    .line 83
    :cond_0
    iput v0, p0, Lsmartisanos/widget/PasswordEditText;->mInvisibleVariation:I

    .line 84
    or-int/lit16 v3, v0, 0x90

    iput v3, p0, Lsmartisanos/widget/PasswordEditText;->mVisibleVariation:I

    .line 85
    iput-boolean v2, p0, Lsmartisanos/widget/PasswordEditText;->mVisible:Z

    .line 98
    :goto_0
    return v1

    .line 87
    :cond_1
    and-int/lit16 v3, v0, 0x90

    if-eqz v3, :cond_4

    .line 88
    add-int/lit16 v2, v0, -0x90

    iput v2, p0, Lsmartisanos/widget/PasswordEditText;->mInvisibleVariation:I

    .line 89
    iget v2, p0, Lsmartisanos/widget/PasswordEditText;->mInvisibleVariation:I

    if-ne v2, v1, :cond_3

    .line 90
    iget v2, p0, Lsmartisanos/widget/PasswordEditText;->mInvisibleVariation:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lsmartisanos/widget/PasswordEditText;->mInvisibleVariation:I

    .line 94
    :cond_2
    :goto_1
    iput v0, p0, Lsmartisanos/widget/PasswordEditText;->mVisibleVariation:I

    .line 95
    iput-boolean v1, p0, Lsmartisanos/widget/PasswordEditText;->mVisible:Z

    goto :goto_0

    .line 91
    :cond_3
    iget v2, p0, Lsmartisanos/widget/PasswordEditText;->mInvisibleVariation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 92
    iget v2, p0, Lsmartisanos/widget/PasswordEditText;->mInvisibleVariation:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lsmartisanos/widget/PasswordEditText;->mInvisibleVariation:I

    goto :goto_1

    :cond_4
    move v1, v2

    .line 98
    goto :goto_0
.end method


.method public getCompoundPaddingRight()I
    .locals 4

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v1

    .line 117
    .local v1, "padding":I
    invoke-direct {p0}, Lsmartisanos/widget/PasswordEditText;->getEyeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    .local v0, "eyeDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lsmartisanos/widget/PasswordEditText;->mEyePaddingRight:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int v1, v2, v3

    .line 121
    :cond_0
    return v1
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Lsmartisanos/widget/PasswordEditText;->getEyeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    .local v0, "eyeDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    invoke-direct {p0}, Lsmartisanos/widget/PasswordEditText;->getEyeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 138
    .local v3, "eyeDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v6, 0x0

    .line 139
    .local v6, "marginRight":I
    invoke-virtual {p0}, Lsmartisanos/widget/PasswordEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lsmartisanos/widget/PasswordEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 143
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v5, :cond_0

    .line 144
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v5    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 150
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 151
    .local v1, "drawableHeight":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 153
    .local v2, "drawableWidth":I
    invoke-virtual {p0}, Lsmartisanos/widget/PasswordEditText;->getHeight()I

    move-result v9

    sub-int/2addr v9, v1

    div-int/lit8 v9, v9, 0x2

    iget v10, p0, Lsmartisanos/widget/PasswordEditText;->mEyePaddingTop:I

    add-int v8, v9, v10

    .line 154
    .local v8, "top":I
    add-int v0, v8, v1

    .line 155
    .local v0, "bottom":I
    invoke-virtual {p0}, Lsmartisanos/widget/PasswordEditText;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lsmartisanos/widget/PasswordEditText;->getWidth()I

    move-result v10

    sub-int/2addr v10, v2

    iget v11, p0, Lsmartisanos/widget/PasswordEditText;->mEyePaddingRight:I

    sub-int/2addr v11, v6

    sub-int/2addr v10, v11

    add-int v4, v9, v10

    .line 156
    .local v4, "left":I
    add-int v7, v4, v2

    .line 158
    .local v7, "right":I
    invoke-virtual {v3, v4, v8, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    .end local v0    # "bottom":I
    .end local v1    # "drawableHeight":I
    .end local v2    # "drawableWidth":I
    .end local v4    # "left":I
    .end local v7    # "right":I
    .end local v8    # "top":I
    :cond_1
    return-void

    .line 145
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 165
    invoke-direct {p0}, Lsmartisanos/widget/PasswordEditText;->getEyeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 166
    .local v1, "eyeDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 167
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 168
    .local v0, "bound":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lsmartisanos/widget/PasswordEditText;->getScrollX()I

    move-result v5

    add-int v2, v4, v5

    .line 169
    .local v2, "posX":I
    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-lt v2, v4, :cond_2

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 171
    iget-object v4, p0, Lsmartisanos/widget/PasswordEditText;->mEyeAnimator:Lsmartisanos/widget/PasswordEditText$EyeAnimator;

    invoke-virtual {v4}, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->setDirection()V

    .line 172
    iget-object v4, p0, Lsmartisanos/widget/PasswordEditText;->mEyeAnimator:Lsmartisanos/widget/PasswordEditText$EyeAnimator;

    invoke-virtual {v4}, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->start()V

    .line 173
    iget-object v4, p0, Lsmartisanos/widget/PasswordEditText;->mPendingSetInputType:Ljava/lang/Runnable;

    if-nez v4, :cond_0

    .line 174
    new-instance v4, Lsmartisanos/widget/PasswordEditText$1;

    invoke-direct {v4, p0}, Lsmartisanos/widget/PasswordEditText$1;-><init>(Lsmartisanos/widget/PasswordEditText;)V

    iput-object v4, p0, Lsmartisanos/widget/PasswordEditText;->mPendingSetInputType:Ljava/lang/Runnable;

    .line 188
    :cond_0
    iget-object v4, p0, Lsmartisanos/widget/PasswordEditText;->mPendingSetInputType:Ljava/lang/Runnable;

    iget-object v5, p0, Lsmartisanos/widget/PasswordEditText;->mEyeAnimator:Lsmartisanos/widget/PasswordEditText$EyeAnimator;

    invoke-virtual {v5}, Lsmartisanos/widget/PasswordEditText$EyeAnimator;->getAnimationDuration()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-long v6, v5

    invoke-virtual {p0, v4, v6, v7}, Lsmartisanos/widget/PasswordEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    .end local v0    # "bound":Landroid/graphics/Rect;
    .end local v2    # "posX":I
    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public setEyePaddingRight(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 64
    iput p1, p0, Lsmartisanos/widget/PasswordEditText;->mEyePaddingRight:I

    .line 65
    return-void
.end method

.method public setEyePaddingTop(I)V
    .locals 0
    .param p1, "padding"    # I

    .prologue
    .line 71
    iput p1, p0, Lsmartisanos/widget/PasswordEditText;->mEyePaddingTop:I

    .line 72
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsmartisanos/widget/PasswordEditText;->setInputType(IZ)V

    .line 104
    return-void
.end method
