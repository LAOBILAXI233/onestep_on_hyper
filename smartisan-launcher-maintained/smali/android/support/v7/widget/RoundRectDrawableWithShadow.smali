.class Landroid/support/v7/widget/RoundRectDrawableWithShadow;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawableWithShadow.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;
    }
.end annotation


.field static final COS_45:D

.field static final SHADOW_MULTIPLIER:F = 1.5f

.field static sRoundRectHelper:Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;


.field private mAddPaddingForCorners:Z

.field final mCardBounds:Landroid/graphics/RectF;

.field mCornerRadius:F

.field mCornerShadowPaint:Landroid/graphics/Paint;

.field mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field mEdgeShadowPaint:Landroid/graphics/Paint;

.field final mInsetShadow:I

.field mMaxShadowSize:F

.field mPaint:Landroid/graphics/Paint;

.field private mPrintedShadowClipWarning:Z

.field mRawMaxShadowSize:F

.field mRawShadowSize:F

.field private final mShadowEndColor:I

.field mShadowSize:F

.field private final mShadowStartColor:I


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->COS_45:D

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;IFFF)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "backgroundColor"    # I
    .param p3, "radius"    # F
    .param p4, "shadowSize"    # F
    .param p5, "maxShadowSize"    # F

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 75
    iput-boolean v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 81
    iput-boolean v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 86
    iput-boolean v2, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 90
    sget v0, Landroid/support/v7/cardview/R$color;->cardview_shadow_start_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    .line 91
    sget v0, Landroid/support/v7/cardview/R$color;->cardview_shadow_end_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    .line 92
    sget v0, Landroid/support/v7/cardview/R$dimen;->cardview_compat_inset_shadow:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p3

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    invoke-virtual {p0, p4, p5}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    .line 102
    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 304
    iget v1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v0, v1, v2

    .line 305
    .local v0, "verticalOffset":F
    iget-object v1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 307
    invoke-direct {p0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->buildShadowCorners()V

    .line 308
    return-void
.end method

.method private buildShadowCorners()V
    .locals 12

    .prologue
    .line 267
    new-instance v8, Landroid/graphics/RectF;

    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v1, v1

    iget v2, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 268
    .local v8, "innerBounds":Landroid/graphics/RectF;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 269
    .local v9, "outerBounds":Landroid/graphics/RectF;
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v0, v0

    iget v1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 271
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    .line 276
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 277
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget v1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 278
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget v1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 280
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 282
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v1, 0x43870000    # 270.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 283
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 284
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v2, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v1, v2

    div-float v10, v0, v1

    .line 285
    .local v10, "startRatio":F
    iget-object v7, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v4, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v3, v4

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    aput v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    aput v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    aput v6, v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v11, 0x0

    aput v11, v5, v6

    const/4 v6, 0x1

    aput v10, v5, v6

    const/4 v6, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v5, v6

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 293
    iget-object v11, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v2, v2

    iget v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v4, v4

    iget v5, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    sub-float/2addr v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget v7, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    aput v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    aput v7, v5, v6

    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 297
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 298
    return-void

    .line 274
    .end local v10    # "startRatio":F
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    .line 293
    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static calculateHorizontalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .prologue
    .line 177
    if-eqz p2, :cond_0

    .line 178
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p0, v0

    .line 180
    .end local p0    # "maxShadowSize":F
    :cond_0
    return p0
.end method

.method static calculateVerticalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .prologue
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 168
    if-eqz p2, :cond_0

    .line 169
    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 171
    :goto_0
    return v0

    :cond_0
    mul-float/2addr v0, p0

    goto :goto_0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    .line 219
    iget v4, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v4, v4

    iget v5, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    sub-float v2, v4, v5

    .line 220
    .local v2, "edgeShadowTop":F
    iget v4, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v5, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    div-float/2addr v5, v10

    add-float v8, v4, v5

    .line 221
    .local v8, "inset":F
    iget-object v4, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v5, v10, v8

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-lez v4, :cond_4

    move v6, v0

    .line 222
    .local v6, "drawHorizontalEdges":Z
    :goto_0
    iget-object v4, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v10, v8

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-lez v4, :cond_5

    move v7, v0

    .line 224
    .local v7, "drawVerticalEdges":Z
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 225
    .local v9, "saved":I
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 227
    if-eqz v6, :cond_0

    .line 228
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 232
    :cond_0
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 234
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 235
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    iget-object v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 236
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 237
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 238
    if-eqz v6, :cond_1

    .line 239
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v0, v0

    iget v4, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 243
    :cond_1
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 245
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 246
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 247
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 249
    if-eqz v7, :cond_2

    .line 250
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 253
    :cond_2
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 256
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    iget-object v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 257
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 258
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 259
    if-eqz v7, :cond_3

    .line 260
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v4, v0

    iget-object v5, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 263
    :cond_3
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 264
    return-void

    .end local v6    # "drawHorizontalEdges":Z
    .end local v7    # "drawVerticalEdges":Z
    .end local v9    # "saved":I
    :cond_4
    move v6, v3

    .line 221
    goto/16 :goto_0

    .restart local v6    # "drawHorizontalEdges":Z
    :cond_5
    move v7, v3

    .line 222
    goto/16 :goto_1
.end method

.method private toEven(F)I
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 108
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, p1

    float-to-int v0, v1

    .line 109
    .local v0, "i":I
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 110
    add-int/lit8 v0, v0, -0x1

    .line 112
    .end local v0    # "i":I
    :cond_0
    return v0
.end method


.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 208
    iget-boolean v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mDirty:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->buildComponents(Landroid/graphics/Rect;)V

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 212
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 213
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->drawShadow(Landroid/graphics/Canvas;)V

    .line 214
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    neg-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 215
    sget-object v0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    iget-object v1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-object v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/support/v7/widget/RoundRectDrawableWithShadow$RoundRectHelper;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    .line 216
    return-void
.end method

.method getCornerRadius()F
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    return v0
.end method

.method getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "into"    # Landroid/graphics/Rect;

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->getPadding(Landroid/graphics/Rect;)Z

    .line 316
    return-void
.end method

.method getMaxShadowSize()F
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    return v0
.end method

.method getMinHeight()F
    .locals 6

    .prologue
    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v4, 0x40000000    # 2.0f

    .line 341
    iget v1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v2, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    mul-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v0, v4, v1

    .line 343
    .local v0, "content":F
    iget v1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    mul-float/2addr v1, v5

    iget v2, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v1, v0

    return v1
.end method

.method getMinWidth()F
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 335
    iget v1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v2, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float v0, v4, v1

    .line 337
    .local v0, "content":F
    iget v1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v2, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v1, v0

    return v1
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 158
    iget v2, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-boolean v4, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 160
    .local v1, "vOffset":I
    iget v2, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v3, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-boolean v4, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 162
    .local v0, "hOffset":I
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 163
    const/4 v2, 0x1

    return v2
.end method

.method getShadowSize()F
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 131
    return-void
.end method

.method public setAddPaddingForCorners(Z)V
    .locals 0
    .param p1, "addPaddingForCorners"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 117
    invoke-virtual {p0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 118
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 125
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 347
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    invoke-virtual {p0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 349
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 187
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 188
    iget-object v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 189
    return-void
.end method

.method setCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 197
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float p1, v0

    .line 198
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 203
    invoke-virtual {p0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    goto :goto_0
.end method

.method setMaxShadowSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 323
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    .line 324
    return-void
.end method

.method setShadowSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 319
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    .line 320
    return-void
.end method

.method setShadowSize(FF)V
    .locals 3
    .param p1, "shadowSize"    # F
    .param p2, "maxShadowSize"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid shadow size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->toEven(F)I

    move-result v0

    int-to-float p1, v0

    .line 138
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->toEven(F)I

    move-result v0

    int-to-float p2, v0

    .line 139
    cmpl-float v0, p1, p2

    if-lez v0, :cond_2

    .line 140
    move p1, p2

    .line 141
    iget-boolean v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    if-nez v0, :cond_2

    .line 142
    iput-boolean v2, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 145
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_3

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_3
    iput p1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 149
    iput p2, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 150
    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 151
    iget v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mMaxShadowSize:F

    .line 152
    iput-boolean v2, p0, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 153
    invoke-virtual {p0}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    goto :goto_0
.end method
