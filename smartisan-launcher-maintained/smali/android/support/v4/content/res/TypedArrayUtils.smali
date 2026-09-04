.class public Landroid/support/v4/content/res/TypedArrayUtils;
.super Ljava/lang/Object;
.source "TypedArrayUtils.java"


.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttr(Landroid/content/Context;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
    .param p2, "fallbackAttr"    # I

    .prologue
    .line 77
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 78
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 79
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 82
    .end local p1    # "attr":I
    :goto_0
    return p1

    .restart local p1    # "attr":I
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/res/TypedArray;IIZ)Z
    .locals 2
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defaultValue"    # Z

    .prologue
    .line 33
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 34
    .local v0, "val":Z
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    return v1
.end method

.method public static getDrawable(Landroid/content/res/TypedArray;II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 40
    .local v0, "val":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 43
    :cond_0
    return-object v0
.end method

.method public static getInt(Landroid/content/res/TypedArray;III)I
    .locals 2
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defaultValue"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 49
    .local v0, "val":I
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    return v1
.end method

.method public static getResourceId(Landroid/content/res/TypedArray;III)I
    .locals 2
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p3, "defaultValue"    # I
        .annotation build Landroid/support/annotation/AnyRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyRes;
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 55
    .local v0, "val":I
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    return v1
.end method

.method public static getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    return-object v0
.end method

.method public static getTextArray(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param
    .param p2, "fallbackIndex"    # I
        .annotation build Landroid/support/annotation/StyleableRes;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 70
    .local v0, "val":[Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 73
    :cond_0
    return-object v0
.end method
