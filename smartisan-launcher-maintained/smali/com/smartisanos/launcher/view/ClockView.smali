.class public Lcom/smartisanos/launcher/view/ClockView;
.super Lcom/smartisanos/launcher/view/ActiveIconView;
.source "ClockView.java"

.implements Lcom/smartisanos/smengine/NotificationManager$Observer;


.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.smartisanos.clock"

.field private static final TAG:Ljava/lang/String; = "ClockView"


.field private mHour:I

.field private mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

.field private mMinute:I

.field private mSecondLayer:I

.field private mSecondNode:Lcom/smartisanos/smengine/SceneNode;

.field private mSecondShadowLayer:I

.field private mSecondShadowNode:Lcom/smartisanos/smengine/SceneNode;


.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "boundingCell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/launcher/view/ActiveIconView;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/Cell;)V

    .line 47
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/smartisanos/launcher/view/Cell;->getLayStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/LayerManager;->getCellLayer(I)Lcom/smartisanos/launcher/view/LayerManager$CellLayer;

    move-result-object v0

    .line 48
    .local v0, "cellLayer":Lcom/smartisanos/launcher/view/LayerManager$CellLayer;
    iget v1, v0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->ACTIVE_ICON_BASE_LAYER:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondShadowLayer:I

    .line 49
    iget v1, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondShadowLayer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondLayer:I

    .line 50
    invoke-static {}, Lcom/smartisanos/smengine/NotificationManager;->getCurrentNotificationManager()Lcom/smartisanos/smengine/NotificationManager;

    move-result-object v1

    const-string v2, "timeChangeNotify"

    invoke-virtual {v1, v2, p0}, Lcom/smartisanos/smengine/NotificationManager;->addObserver(Ljava/lang/String;Lcom/smartisanos/smengine/NotificationManager$Observer;)V

    .line 51
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 52
    return-void
.end method

.method private createRectNode(Ljava/lang/String;FFI)Lcom/smartisanos/smengine/SceneNode;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "layer"    # I

    .prologue
    const/4 v5, 0x1

    .line 63
    const/4 v2, 0x0

    invoke-static {p1, p2, p3, v2, v5}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    .line 64
    .local v0, "rect":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 66
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 67
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 68
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {v2, v3, v4}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 69
    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 70
    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 72
    new-instance v1, Lcom/smartisanos/smengine/SceneNode;

    invoke-direct {v1, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "sn":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/SceneNode;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 74
    return-object v1
.end method

.method private setNodePosition(Lcom/smartisanos/smengine/SceneNode;FFFFFF)V
    .locals 8
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;
    .param p2, "width"    # F
    .param p3, "height"    # F
    .param p4, "left"    # F
    .param p5, "bottom"    # F
    .param p6, "centerx"    # F
    .param p7, "centery"    # F

    .prologue
    const/4 v7, 0x0

    .line 107
    sub-float v0, p6, p4

    .line 108
    .local v0, "endx":F
    sub-float v1, p5, p7

    .line 109
    .local v1, "endy":F
    move v2, v0

    .line 110
    .local v2, "startx":F
    sub-float v3, p3, v1

    .line 111
    .local v3, "starty":F
    new-instance v4, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v4}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 112
    .local v4, "v":Lcom/smartisanos/smengine/math/Vector2f;
    invoke-static {v2, v3, p2, p3, v4}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 113
    iget v5, v4, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v6, v4, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {p1, v5, v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setScaleRotatePivot(FFF)V

    .line 114
    iget v5, v4, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v6, v4, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {p1, v5, v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setTranslatePivot(FFF)V

    .line 115
    iget-object v5, p0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v5, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_size:F

    iget-object v6, p0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_size:F

    invoke-static {p6, p7, v5, v6, v4}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 117
    iget v5, v4, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    iget v6, v4, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {p1, v5, v6, v7}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 118
    return-void
.end method


.method public create()V
    .locals 5

    .prologue
    .line 78
    const-string v2, "clock/clock_second.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "mSecondImageName":Ljava/lang/String;
    const-string v2, "clock/clock_second_shadow.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "mSecondShadowImageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_s_w:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_s_h:F

    iget v4, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondLayer:I

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/smartisanos/launcher/view/ClockView;->createRectNode(Ljava/lang/String;FFI)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondNode:Lcom/smartisanos/smengine/SceneNode;

    .line 82
    iget-object v2, p0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_s_shadow_w:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_s_shadow_h:F

    iget v4, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondShadowLayer:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/ClockView;->createRectNode(Ljava/lang/String;FFI)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondShadowNode:Lcom/smartisanos/smengine/SceneNode;

    .line 84
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ClockView;->doLayout()V

    .line 85
    const/4 v2, 0x2

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sPageStyle:I

    if-ne v2, v3, :cond_0

    .line 86
    sget v2, Lcom/smartisanos/launcher/data/Constants;->icon_scale:F

    sget v3, Lcom/smartisanos/launcher/data/Constants;->icon_scale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v3, v4}, Lcom/smartisanos/launcher/view/ClockView;->setScale(FFF)V

    .line 88
    :cond_0
    return-void
.end method

.method public createComposedBitmap()Landroid/graphics/Bitmap;
    .locals 17

    .prologue
    .line 184
    const-string v14, "clock/clock_bg.png"

    invoke-static {v14}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 185
    .local v3, "bgBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 186
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v16

    .line 185
    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 187
    .local v12, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 189
    .local v13, "paint":Landroid/graphics/Paint;
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 190
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 193
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v4, v3, v14, v15, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 194
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 196
    .local v9, "m":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/launcher/view/ClockView;->mHour:I

    rem-int/lit8 v7, v14, 0xc

    .line 197
    .local v7, "hour12":I
    int-to-float v14, v7

    const/high16 v15, 0x43b40000    # 360.0f

    mul-float/2addr v14, v15

    const/high16 v15, 0x41400000    # 12.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mMinute:I

    int-to-float v15, v15

    const/high16 v16, 0x43b40000    # 360.0f

    mul-float v15, v15, v16

    const/high16 v16, 0x44340000    # 720.0f

    div-float v15, v15, v16

    add-float v1, v14, v15

    .line 200
    .local v1, "angleHour":F
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 201
    const-string v14, "clock/clock_hour_shadow.png"

    invoke-static {v14}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 202
    .local v8, "hsBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_h_shadow_w:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_h_shadow_h:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v9, v1, v14, v15}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 204
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_size:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_h_shadow_w:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_size:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_h_shadow_h:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v9, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 206
    invoke-virtual {v4, v8, v9, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 209
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 210
    const-string v14, "clock/clock_hour.png"

    invoke-static {v14}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 211
    .local v6, "hBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_h_w:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_h_h:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v9, v1, v14, v15}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 212
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_size:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_h_w:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_size:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_h_h:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v9, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 214
    invoke-virtual {v4, v6, v9, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 216
    move-object/from16 v0, p0

    iget v14, v0, Lcom/smartisanos/launcher/view/ClockView;->mMinute:I

    int-to-float v14, v14

    const/high16 v15, 0x43b40000    # 360.0f

    mul-float/2addr v14, v15

    const/high16 v15, 0x42700000    # 60.0f

    div-float v2, v14, v15

    .line 218
    .local v2, "angleMinute":F
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 219
    const-string v14, "clock/clock_minute_shadow.png"

    invoke-static {v14}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 220
    .local v11, "msBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_m_shadow_w:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_m_shadow_h:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v9, v2, v14, v15}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_size:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_m_shadow_w:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_size:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_m_shadow_h:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v9, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 224
    invoke-virtual {v4, v11, v9, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 227
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 228
    const-string v14, "clock/clock_minute.png"

    invoke-static {v14}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 229
    .local v10, "mBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_m_w:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_m_h:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v9, v2, v14, v15}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 230
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_size:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_m_w:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_size:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_m_h:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v9, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 232
    invoke-virtual {v4, v10, v9, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 235
    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 236
    const-string v14, "clock/clock_dot.png"

    invoke-static {v14}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/smartisanos/smengine/Image;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 237
    .local v5, "dotBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v14, v14, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_size:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_dot_w:F

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v15, v15, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_size:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_dot_h:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    invoke-virtual {v9, v14, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 239
    invoke-virtual {v4, v5, v9, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 241
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 242
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 243
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 244
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 245
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 246
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 248
    return-object v12
.end method

.method public doLayout()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/ClockView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 128
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondShadowNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/ClockView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 129
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ClockView;->updateGeometricState()V

    .line 131
    return-void
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_size:F

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    const-string v0, "com.smartisanos.clock"

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ClockView;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->clock_size:F

    return v0
.end method

.method public handleNotification(Ljava/lang/String;Lcom/smartisanos/smengine/Notification;)V
    .locals 5
    .param p1, "notificationName"    # Ljava/lang/String;
    .param p2, "notification"    # Lcom/smartisanos/smengine/Notification;

    .prologue
    .line 92
    const-string v4, "timeChangeNotify"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {p2}, Lcom/smartisanos/smengine/Notification;->getData()Ljava/util/ArrayList;

    move-result-object v0

    .line 94
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 95
    .local v1, "hour":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    .local v2, "minute":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 97
    .local v3, "seconds":I
    invoke-virtual {p0, v1, v2, v3}, Lcom/smartisanos/launcher/view/ClockView;->update(III)V

    .line 99
    .end local v0    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1    # "hour":I
    .end local v2    # "minute":I
    .end local v3    # "seconds":I
    :cond_0
    return-void
.end method

.method public onRemove(Ljava/lang/String;)V
    .locals 0
    .param p1, "notificationName"    # Ljava/lang/String;

    .prologue
    .line 104
    return-void
.end method

.method public setLayer(I)V
    .locals 3
    .param p1, "layer"    # I

    .prologue
    const/4 v2, 0x0

    .line 175
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/ActiveIconView;->setLayer(I)V

    .line 176
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondShadowLayer:I

    .line 177
    iget v0, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondShadowLayer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondLayer:I

    .line 179
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondShadowNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/RectNode;

    iget v1, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondShadowLayer:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 180
    iget-object v0, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondNode:Lcom/smartisanos/smengine/SceneNode;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/smengine/RectNode;

    iget v1, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondLayer:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 181
    return-void
.end method

.method public setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V
    .locals 3
    .param p1, "rt"    # Lcom/smartisanos/smengine/RenderTarget;

    .prologue
    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ClockView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 144
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/ClockView;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 145
    .local v1, "sn":Lcom/smartisanos/smengine/SceneNode;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    return-void
.end method

.method public setScissor(IIII)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ClockView;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 152
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/ClockView;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    .line 153
    .local v2, "sn":Lcom/smartisanos/smengine/SceneNode;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/RectNode;

    .line 154
    .local v1, "rn":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/smartisanos/smengine/RenderState;->setScissor(IIII)V

    .line 155
    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/RenderState;->setIsScissor(Z)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "rn":Lcom/smartisanos/smengine/RectNode;
    .end local v2    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    return-void
.end method

.method public setViewPort(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ClockView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/ClockView;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v1

    .line 137
    .local v1, "sn":Lcom/smartisanos/smengine/SceneNode;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/smartisanos/smengine/SceneNode;->setViewPort(IIII)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v1    # "sn":Lcom/smartisanos/smengine/SceneNode;
    :cond_0
    return-void
.end method

.method public update(III)V
    .locals 7
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3c8efa35

    const/4 v4, 0x0

    .line 160
    iget v1, p0, Lcom/smartisanos/launcher/view/ClockView;->mHour:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/smartisanos/launcher/view/ClockView;->mMinute:I

    if-eq p2, v1, :cond_1

    .line 161
    :cond_0
    iput p1, p0, Lcom/smartisanos/launcher/view/ClockView;->mHour:I

    .line 162
    iput p2, p0, Lcom/smartisanos/launcher/view/ClockView;->mMinute:I

    .line 163
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ClockView;->updatePageCell()V

    .line 165
    :cond_1
    int-to-float v1, p3

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x42700000    # 60.0f

    div-float v0, v1, v2

    .line 166
    .local v0, "angleSecond":F
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondNode:Lcom/smartisanos/smengine/SceneNode;

    neg-float v2, v0

    mul-float/2addr v2, v5

    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3, v4, v4, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 167
    iget-object v1, p0, Lcom/smartisanos/launcher/view/ClockView;->mSecondShadowNode:Lcom/smartisanos/smengine/SceneNode;

    neg-float v2, v0

    mul-float/2addr v2, v5

    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3, v4, v4, v6}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/SceneNode;->setRotation(FLcom/smartisanos/smengine/math/Vector3f;)V

    .line 169
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ClockView;->updateGeometricState()V

    .line 170
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/World;->updateGLView()V

    .line 171
    return-void
.end method
