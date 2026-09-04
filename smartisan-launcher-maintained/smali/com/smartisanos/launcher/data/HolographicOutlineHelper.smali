.class public Lcom/smartisanos/launcher/data/HolographicOutlineHelper;
.super Ljava/lang/Object;
.source "HolographicOutlineHelper.java"


.field public static final MAX_OUTER_BLUR_RADIUS:I

.field public static final MIN_OUTER_BLUR_RADIUS:I

.field private static final SCALE:F = 1.5f

.field private static final TAG:Ljava/lang/String; = "HolographicOutlineHelper"


.field private final mAlphaClipPaint:Landroid/graphics/Paint;

.field private final mBlurPaint:Landroid/graphics/Paint;

.field private final mErasePaint:Landroid/graphics/Paint;

.field private final mHolographicPaint:Landroid/graphics/Paint;

.field private mTempOffset:[I


.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 29
    .local v0, "scale":F
    const/4 v1, 0x1

    sput v1, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->MIN_OUTER_BLUR_RADIUS:I

    .line 30
    const/16 v1, 0x12

    sput v1, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 31
    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mTempOffset:[I

    .line 36
    iget-object v0, p0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 37
    iget-object v0, p0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    iget-object v0, p0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 39
    iget-object v0, p0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object v0, p0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 41
    iget-object v0, p0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 42
    iget-object v0, p0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    return-void
.end method

.method public static createDragOutline(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "shadowIndex"    # I

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->createDragOutline(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static createDragOutline(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 24
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "shadowIndex"    # I
    .param p2, "justDrawShadow"    # Z

    .prologue
    .line 110
    const/high16 v20, -0x40800000    # -1.0f

    .line 111
    .local v20, "w":F
    const/16 v19, -0x1

    .line 112
    .local v19, "sh":I
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v17

    .line 113
    .local v17, "prop":Lcom/smartisanos/launcher/data/LayoutProperty;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    move/from16 v20, v0

    .line 114
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 115
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_origin:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v13, v0

    .line 116
    .local v13, "icon_size_origin":I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v14, v0

    .line 117
    .local v14, "icon_size_with_shadow":I
    sget-object v18, Lcom/smartisanos/launcher/data/Constants;->ICON_SHADOW_RADIUS:[I

    .line 118
    .local v18, "radius":[I
    sget-object v21, Lcom/smartisanos/launcher/data/Constants;->ICON_SHADOW_COLOR:[[I

    aget-object v7, v21, p1

    .line 119
    .local v7, "color":[I
    const/16 v21, 0x0

    cmpl-float v21, v21, v20

    if-ltz v21, :cond_0

    .line 120
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "createDragOutline, w ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] is error"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 131
    :cond_0
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v19

    move/from16 v1, v19

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 133
    .local v4, "b":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 134
    .local v15, "p":Landroid/graphics/Paint;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    .local v6, "c":Landroid/graphics/Canvas;
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v21, v20

    const/high16 v22, 0x40000000    # 2.0f

    div-float v8, v21, v22

    .line 137
    .local v8, "deltax":F
    const/high16 v21, 0x40000000    # 2.0f

    div-float v10, v8, v21

    .line 138
    .local v10, "deltay":F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_1

    .line 139
    new-instance v21, Landroid/graphics/Canvas;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Canvas;-><init>()V

    aget v22, v18, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    aget v23, v7, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->getOutlineFill(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FI)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 141
    .local v5, "bt":Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    sub-int v21, v19, v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v9, v0

    .line 142
    .local v9, "deltaxs":F
    aget v21, v18, v12

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v21, v0

    add-float v11, v10, v21

    .line 143
    .local v11, "deltays":F
    invoke-virtual {v6, v5, v9, v11, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 144
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 146
    .end local v5    # "bt":Landroid/graphics/Bitmap;
    .end local v9    # "deltaxs":F
    .end local v11    # "deltays":F
    :cond_1
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 147
    .local v16, "pa":Landroid/graphics/Paint;
    if-eqz p2, :cond_2

    .line 148
    new-instance v21, Landroid/graphics/PorterDuffXfermode;

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v21 .. v22}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 149
    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 150
    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v8, v10, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 153
    return-object v4
.end method

.method public static createDragOutlineJustShadow(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "shadowIndex"    # I

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->createDragOutline(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getOutline(Landroid/content/Context;Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "innerColor"    # I
    .param p3, "outerColor"    # I
    .param p4, "radius"    # I

    .prologue
    .line 170
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    .line 171
    .local v4, "canvas":Landroid/graphics/Canvas;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 171
    invoke-static {v12, v13, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 173
    .local v1, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 175
    .local v7, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/BlurMaskFilter;

    move/from16 v0, p4

    int-to-float v12, v0

    sget-object v13, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v12, v13}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 177
    .local v2, "blurFilter":Landroid/graphics/BlurMaskFilter;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 178
    .local v10, "shadowPaint":Landroid/graphics/Paint;
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 179
    const/4 v12, 0x2

    new-array v6, v12, [I

    .line 180
    .local v6, "outerPosition":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v6}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 181
    .local v8, "shadowBitmap":Landroid/graphics/Bitmap;
    move/from16 v0, p3

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    const/4 v12, 0x0

    aget v12, v6, v12

    int-to-float v12, v12

    const/4 v13, 0x1

    aget v13, v6, v13

    int-to-float v13, v13

    invoke-virtual {v4, v8, v12, v13, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 184
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    move/from16 v0, p4

    int-to-float v12, v0

    sget-object v13, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v12, v13}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 186
    .local v3, "blurFilter2":Landroid/graphics/BlurMaskFilter;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 187
    .local v11, "shadowPaint2":Landroid/graphics/Paint;
    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 188
    const/4 v12, 0x2

    new-array v5, v12, [I

    .line 189
    .local v5, "innerPosition":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v5}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 190
    .local v9, "shadowBitmap2":Landroid/graphics/Bitmap;
    move/from16 v0, p2

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    const/4 v12, 0x0

    aget v12, v5, v12

    neg-int v12, v12

    int-to-float v12, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v4, v9, v12, v13, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    return-object v1
.end method

.method public static getOutlineFill(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;FI)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "r"    # F
    .param p3, "alpha"    # I

    .prologue
    .line 157
    new-instance v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;-><init>()V

    .line 158
    .local v0, "mOutlineHelper":Lcom/smartisanos/launcher/data/HolographicOutlineHelper;
    move v3, p3

    .line 160
    .local v3, "outlineColor":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 159
    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 162
    .local v1, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 163
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, p0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v2, p1

    move v4, v3

    move v5, p2

    .line 164
    invoke-virtual/range {v0 .. v5}, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->applyCustomExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIF)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 165
    .local v6, "dest":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 166
    return-object v6
.end method


.method applyCustomExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIF)Landroid/graphics/Bitmap;
    .locals 19
    .param p1, "srcDst"    # Landroid/graphics/Bitmap;
    .param p2, "srcDstCanvas"    # Landroid/graphics/Canvas;
    .param p3, "color"    # I
    .param p4, "outlineColor"    # I
    .param p5, "radius"    # F

    .prologue
    .line 49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mAlphaClipPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mTempOffset:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 51
    .local v11, "glowShape":Landroid/graphics/Bitmap;
    new-instance v14, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v2, v2, p5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v14, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 52
    .local v14, "outerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 53
    const/4 v2, 0x2

    new-array v15, v2, [I

    .line 54
    .local v15, "outerBlurOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v2, v15}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 56
    .local v18, "thickOuterBlur":Landroid/graphics/Bitmap;
    const/4 v2, 0x2

    new-array v9, v2, [I

    .line 57
    .local v9, "brightOutlineOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v2, v9}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 60
    .local v8, "brightOutline":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 62
    new-instance v12, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v2, v2, p5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v12, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 63
    .local v12, "innerBlurMaskFilter":Landroid/graphics/BlurMaskFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 64
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 65
    .local v17, "thickInnerBlurOffset":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mBlurPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 68
    .local v16, "thickInnerBlur":Landroid/graphics/Bitmap;
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 69
    const/4 v2, 0x0

    aget v2, v17, v2

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v17, v3

    neg-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 71
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    aget v2, v17, v2

    neg-int v2, v2

    int-to-float v5, v2

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 73
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v5, v2

    const/4 v2, 0x1

    aget v2, v17, v2

    neg-int v2, v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mErasePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 77
    .local v10, "dest":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v13, v2, v3

    .line 79
    .local v13, "offsetx":F
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    const/4 v2, 0x0

    aget v2, v17, v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    const/4 v3, 0x1

    aget v3, v17, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 84
    const/4 v2, 0x0

    aget v2, v15, v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    const/4 v3, 0x1

    aget v3, v15, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    const/4 v3, 0x1

    aget v3, v9, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/smartisanos/launcher/data/HolographicOutlineHelper;->mHolographicPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 94
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 95
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 96
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->recycle()V

    .line 97
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    return-object v10
.end method
