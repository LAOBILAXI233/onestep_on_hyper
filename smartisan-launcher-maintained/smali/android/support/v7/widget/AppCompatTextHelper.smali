.class Landroid/support/v7/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


.field private mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

.field final mView:Landroid/widget/TextView;


.method constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 47
    return-void
.end method

.method static create(Landroid/widget/TextView;)Landroid/support/v7/widget/AppCompatTextHelper;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 33
    new-instance v0, Landroid/support/v7/widget/AppCompatTextHelperV17;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatTextHelperV17;-><init>(Landroid/widget/TextView;)V

    .line 35
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method protected static createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableManager"    # Landroid/support/v7/widget/AppCompatDrawableManager;
    .param p2, "drawableId"    # I

    .prologue
    .line 173
    invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 174
    .local v1, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_0

    .line 175
    new-instance v0, Landroid/support/v7/widget/TintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V

    .line 176
    .local v0, "tintInfo":Landroid/support/v7/widget/TintInfo;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 177
    iput-object v1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 180
    .end local v0    # "tintInfo":Landroid/support/v7/widget/TintInfo;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


.method final applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "info"    # Landroid/support/v7/widget/TintInfo;

    .prologue
    .line 166
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 169
    :cond_0
    return-void
.end method

.method applyCompoundDrawablesTints()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 159
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 160
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 161
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 163
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I

    .prologue
    const/16 v11, 0x17

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 50
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 51
    .local v4, "context":Landroid/content/Context;
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v5

    .line 54
    .local v5, "drawableManager":Landroid/support/v7/widget/AppCompatDrawableManager;
    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper:[I

    invoke-static {v4, p1, v8, p2, v9}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    invoke-virtual {v0, v8, v10}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v3

    .line 58
    .local v3, "ap":I
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 59
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 60
    invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    .line 59
    invoke-static {v4, v5, v8}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;

    .line 62
    :cond_0
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 63
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 64
    invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    .line 63
    invoke-static {v4, v5, v8}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;

    .line 66
    :cond_1
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 67
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 68
    invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    .line 67
    invoke-static {v4, v5, v8}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;

    .line 70
    :cond_2
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 71
    sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 72
    invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v8

    .line 71
    invoke-static {v4, v5, v8}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;

    .line 74
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 79
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 80
    invoke-virtual {v8}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v8

    instance-of v6, v8, Landroid/text/method/PasswordTransformationMethod;

    .line 81
    .local v6, "hasPwdTm":Z
    const/4 v1, 0x0

    .line 82
    .local v1, "allCaps":Z
    const/4 v2, 0x0

    .line 83
    .local v2, "allCapsSet":Z
    const/4 v7, 0x0

    .line 86
    .local v7, "textColor":Landroid/content/res/ColorStateList;
    if-eq v3, v10, :cond_6

    .line 87
    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v4, v3, v8}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 88
    if-nez v6, :cond_4

    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 89
    const/4 v2, 0x1

    .line 90
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 92
    :cond_4
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v11, :cond_5

    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 93
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 96
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 98
    :cond_5
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 102
    :cond_6
    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v4, p1, v8, p2, v9}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 104
    if-nez v6, :cond_7

    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 105
    const/4 v2, 0x1

    .line 106
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 108
    :cond_7
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v8, v11, :cond_8

    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 109
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 112
    sget v8, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 114
    :cond_8
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 116
    if-eqz v7, :cond_9

    .line 117
    iget-object v8, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 120
    :cond_9
    if-nez v6, :cond_a

    if-eqz v2, :cond_a

    .line 121
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 123
    :cond_a
    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 126
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    .line 128
    .local v0, "a":Landroid/support/v7/widget/TintTypedArray;
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 135
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 136
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I

    .line 140
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 141
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    .line 142
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    .end local v1    # "textColor":Landroid/content/res/ColorStateList;
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 146
    return-void
.end method

.method setAllCaps(Z)V
    .locals 3
    .param p1, "allCaps"    # Z

    .prologue
    .line 149
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    new-instance v0, Landroid/support/v7/text/AllCapsTransformationMethod;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 150
    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    .line 149
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 152
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
