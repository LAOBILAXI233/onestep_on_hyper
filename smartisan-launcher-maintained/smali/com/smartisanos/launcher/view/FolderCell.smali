.class public Lcom/smartisanos/launcher/view/FolderCell;
.super Lcom/smartisanos/launcher/view/Cell;
.source "FolderCell.java"


.field public static final FOLDER_ICON_CAMERA_NAME:Ljava/lang/String; = "folderIconCamera"

.field private static final FOLDER_ICON_COL:I = 0x2

.field private static final FOLDER_ICON_ROW:I = 0x2

.field private static final log:Lcom/smartisanos/launcher/LOG;


.field private mFolderIconCamera:Lcom/smartisanos/smengine/Camera;

.field private mIconRects:[Lcom/smartisanos/smengine/RectNode;

.field private mIconsRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

.field private mIsIconsNeedDisplay:Z


.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/smartisanos/launcher/view/FolderCell;

    invoke-static {v0}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/FolderCell;->log:Lcom/smartisanos/launcher/LOG;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p3, "prop"    # Lcom/smartisanos/launcher/data/LayoutProperty;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smartisanos/launcher/view/Cell;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;Landroid/graphics/Paint;)V

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartisanos/smengine/RectNode;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconRects:[Lcom/smartisanos/smengine/RectNode;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIsIconsNeedDisplay:Z

    .line 53
    const/4 v0, 0x2

    iget-byte v1, p2, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eq v0, v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Iteminfo type is not FOLDER!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZIIFLcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "useCellRenderTarget"    # Z
    .param p3, "rowIndex"    # I
    .param p4, "colIndex"    # I
    .param p5, "z"    # F
    .param p6, "cc"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p7, "prop"    # Lcom/smartisanos/launcher/data/LayoutProperty;

    .prologue
    .line 42
    invoke-direct/range {p0 .. p7}, Lcom/smartisanos/launcher/view/Cell;-><init>(Ljava/lang/String;ZIIFLcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smartisanos/smengine/RectNode;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconRects:[Lcom/smartisanos/smengine/RectNode;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIsIconsNeedDisplay:Z

    .line 43
    const/4 v0, 0x2

    iget-byte v1, p6, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eq v0, v1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Iteminfo type is not FOLDER!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_0
    return-void
.end method

.method private createFolderIconRects()V
    .locals 5

    .prologue
    .line 222
    const/4 v2, 0x4

    .line 223
    .local v2, "size":I
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderCell;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v1, Lcom/smartisanos/launcher/data/FolderInfo;

    .line 224
    .local v1, "info":Lcom/smartisanos/launcher/data/FolderInfo;
    iget-object v3, v1, Lcom/smartisanos/launcher/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v3, v2, :cond_0

    .line 225
    iget-object v3, v1, Lcom/smartisanos/launcher/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 227
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 228
    iget-object v4, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconRects:[Lcom/smartisanos/smengine/RectNode;

    iget-object v3, v1, Lcom/smartisanos/launcher/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-direct {p0, v3, v0}, Lcom/smartisanos/launcher/view/FolderCell;->createIconRect(Lcom/smartisanos/launcher/data/ItemInfo;I)Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    aput-object v3, v4, v0

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    return-void
.end method

.method private createForegroundRenderTarget()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 198
    iget-object v4, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconsRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v4, :cond_0

    .line 216
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->uid()J

    move-result-wide v2

    .line 202
    .local v2, "uid":J
    iget-object v4, p0, Lcom/smartisanos/launcher/view/FolderCell;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/data/ItemInfo;->generateIconTextureName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/smartisanos/launcher/view/FolderCell;->mForegroundImageName:Ljava/lang/String;

    .line 203
    new-instance v4, Lcom/smartisanos/smengine/RenderTarget;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FolderCell;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_renderTargetFore"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/smartisanos/launcher/view/FolderCell;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v6, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/smartisanos/launcher/view/FolderCell;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v7, v7

    invoke-direct {v4, v5, v6, v7}, Lcom/smartisanos/smengine/RenderTarget;-><init>(Ljava/lang/String;II)V

    iput-object v4, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconsRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    .line 205
    iget-object v4, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconsRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4, v10, v9, v9, v10}, Lcom/smartisanos/smengine/RenderTarget;->setClearColor(FFFF)V

    .line 206
    new-instance v0, Lcom/smartisanos/smengine/Texture;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconsRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-direct {v0, v4}, Lcom/smartisanos/smengine/Texture;-><init>(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 210
    .local v0, "tex":Lcom/smartisanos/smengine/Texture;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconsRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v4, v8}, Lcom/smartisanos/smengine/RenderTarget;->setUseMipmap(Z)V

    .line 211
    iget-object v4, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconsRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/smartisanos/smengine/RenderTarget;->setGenMipmap(Z)V

    .line 212
    new-instance v4, Lcom/smartisanos/smengine/Texture$State;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v8, v8, v8}, Lcom/smartisanos/smengine/Texture$State;-><init>(IIII)V

    invoke-static {v4}, Lcom/smartisanos/smengine/Texture;->setTextureState(Lcom/smartisanos/smengine/Texture$State;)V

    .line 213
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v4

    invoke-virtual {v4}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v1

    .line 215
    .local v1, "tm":Lcom/smartisanos/smengine/TextureManager;
    iget-object v4, p0, Lcom/smartisanos/launcher/view/FolderCell;->mForegroundImageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lcom/smartisanos/smengine/TextureManager;->setTexture(Ljava/lang/String;Lcom/smartisanos/smengine/Texture;)V

    goto :goto_0
.end method

.method private createIconRect(Lcom/smartisanos/launcher/data/ItemInfo;I)Lcom/smartisanos/smengine/RectNode;
    .locals 14
    .param p1, "info"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p2, "index"    # I

    .prologue
    .line 238
    iget-byte v9, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eqz v9, :cond_0

    iget-byte v9, p1, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    .line 240
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Icon in folder should be ITEM_TYPE_APPLICATION or ITEM_TYPE_SHORTCUT"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 243
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FolderCell;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_foreIcon"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/smartisanos/launcher/view/FolderCell;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v10, v10, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    iget-object v11, p0, Lcom/smartisanos/launcher/view/FolderCell;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v11, v11, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v9, v10, v11, v12, v13}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    .line 246
    .local v2, "icon":Lcom/smartisanos/smengine/RectNode;
    invoke-virtual {v2}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v5

    .line 247
    .local v5, "rs":Lcom/smartisanos/smengine/RenderState;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/RenderState;->setIsClear(Z)V

    .line 248
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 249
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 250
    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, -0x40000000    # -2.0f

    invoke-virtual {v5, v9, v10}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 251
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Lcom/smartisanos/smengine/RenderState;->setIsUseVBO(Z)V

    .line 252
    iget-object v9, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconsRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    if-eqz v9, :cond_1

    .line 253
    iget-object v9, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconsRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/RenderTarget;->getWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v6, v9

    .line 254
    .local v6, "rw":I
    iget-object v9, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconsRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v9}, Lcom/smartisanos/smengine/RenderTarget;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v3, v9

    .line 255
    .local v3, "rh":I
    div-int/lit8 v4, p2, 0x2

    .line 256
    .local v4, "row":I
    rem-int/lit8 v1, p2, 0x2

    .line 257
    .local v1, "col":I
    mul-int v7, v1, v6

    .line 258
    .local v7, "x1":I
    mul-int v8, v4, v3

    .line 259
    .local v8, "y1":I
    invoke-virtual {v2, v7, v8, v6, v3}, Lcom/smartisanos/smengine/RectNode;->setViewPort(IIII)V

    .line 261
    .end local v1    # "col":I
    .end local v3    # "rh":I
    .end local v4    # "row":I
    .end local v6    # "rw":I
    .end local v7    # "x1":I
    .end local v8    # "y1":I
    :cond_1
    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 262
    iget-object v9, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconsRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v2, v9}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 263
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v9

    iget v10, p0, Lcom/smartisanos/launcher/view/FolderCell;->mLayerStatus:I

    invoke-virtual {v9, v10}, Lcom/smartisanos/launcher/view/LayerManager;->getCellLayer(I)Lcom/smartisanos/launcher/view/LayerManager$CellLayer;

    move-result-object v0

    .line 264
    .local v0, "cellLayer":Lcom/smartisanos/launcher/view/LayerManager$CellLayer;
    iget v9, v0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_FOREGROUND_LAYER:I

    add-int/lit8 v9, v9, 0xa

    invoke-virtual {v2, v9}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 265
    invoke-virtual {p0, v2, p1}, Lcom/smartisanos/launcher/view/FolderCell;->loadIconTexture(Lcom/smartisanos/smengine/RectNode;Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 266
    return-object v2
.end method


.method public create()V
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIsCellContentInited:Z

    if-eqz v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FolderCell;->createIconCamera()V

    .line 350
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/FolderCell;->createForegroundRenderTarget()V

    .line 351
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/FolderCell;->createFolderIconRects()V

    .line 352
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FolderCell;->needUpdateIconsDisplay()V

    .line 353
    invoke-super {p0}, Lcom/smartisanos/launcher/view/Cell;->create()V

    goto :goto_0
.end method

.method protected createForegroundRect()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FolderCell;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_fore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/launcher/view/FolderCell;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    iget-object v4, p0, Lcom/smartisanos/launcher/view/FolderCell;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v7}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/view/FolderCell;->mForegroundRect:Lcom/smartisanos/smengine/RectNode;

    .line 362
    const-string v2, "TextureBlendModularColorMaterial"

    invoke-static {v2}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;

    .line 363
    .local v1, "m":Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;
    sget v2, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    sget v3, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    sget v4, Lcom/smartisanos/launcher/data/Constants;->sIconBlendColor:F

    invoke-virtual {v1, v2, v3, v4, v6}, Lcom/smartisanos/smengine/mymaterial/TextureBlendModularColorMaterial;->setBlendColor(FFFF)V

    .line 364
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FolderCell;->mForegroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v1}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 365
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FolderCell;->mForegroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v2, v6, v6, v6, v6}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 367
    invoke-virtual {p0, v7}, Lcom/smartisanos/launcher/view/FolderCell;->setForegroundProperty(Z)V

    .line 368
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v2

    iget v3, p0, Lcom/smartisanos/launcher/view/FolderCell;->mLayerStatus:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/view/LayerManager;->getCellLayer(I)Lcom/smartisanos/launcher/view/LayerManager$CellLayer;

    move-result-object v0

    .line 369
    .local v0, "cellLayer":Lcom/smartisanos/launcher/view/LayerManager$CellLayer;
    iget-object v2, p0, Lcom/smartisanos/launcher/view/FolderCell;->mForegroundRect:Lcom/smartisanos/smengine/RectNode;

    iget v3, v0, Lcom/smartisanos/launcher/view/LayerManager$CellLayer;->CELL_FOREGROUND_LAYER:I

    invoke-virtual {v2, v3}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 370
    return-void
.end method

.method public createIconCamera()V
    .locals 8

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 294
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FolderCell;->mFolderIconCamera:Lcom/smartisanos/smengine/Camera;

    if-nez v3, :cond_1

    .line 295
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v3

    const-string v4, "folderIconCamera"

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/CameraManager;->getCamera(Ljava/lang/String;)Lcom/smartisanos/smengine/Camera;

    move-result-object v0

    .line 296
    .local v0, "c":Lcom/smartisanos/smengine/Camera;
    if-nez v0, :cond_0

    .line 297
    new-instance v0, Lcom/smartisanos/smengine/Camera;

    .end local v0    # "c":Lcom/smartisanos/smengine/Camera;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FolderCell;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/smartisanos/launcher/view/FolderCell;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    float-to-int v4, v4

    invoke-direct {v0, v3, v4}, Lcom/smartisanos/smengine/Camera;-><init>(II)V

    .line 298
    .restart local v0    # "c":Lcom/smartisanos/smengine/Camera;
    const/high16 v1, 0x41a00000    # 20.0f

    .line 299
    .local v1, "distance":F
    const v3, 0x42652ee0

    iget-object v4, p0, Lcom/smartisanos/launcher/view/FolderCell;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v4, Lcom/smartisanos/launcher/data/LayoutProperty;->icon_size_with_shadow:F

    div-float/2addr v4, v5

    invoke-static {v4, v1}, Lcom/smartisanos/smengine/math/FastMath;->atan2(FF)F

    move-result v4

    mul-float v2, v3, v4

    .line 301
    .local v2, "theta":F
    mul-float v3, v2, v5

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Camera;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42480000    # 50.0f

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/smartisanos/smengine/Camera;->setFrustumPerspective(FFFF)V

    .line 302
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3, v7, v7, v1}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/Camera;->setLocation(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 303
    new-instance v3, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v3, v7, v7, v7}, Lcom/smartisanos/smengine/math/Vector3f;-><init>(FFF)V

    sget-object v4, Lcom/smartisanos/smengine/math/Vector3f;->UNIT_Y:Lcom/smartisanos/smengine/math/Vector3f;

    invoke-virtual {v0, v3, v4}, Lcom/smartisanos/smengine/Camera;->lookAt(Lcom/smartisanos/smengine/math/Vector3f;Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 304
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getCameraManager()Lcom/smartisanos/smengine/CameraManager;

    move-result-object v3

    const-string v4, "folderIconCamera"

    invoke-virtual {v3, v4, v0}, Lcom/smartisanos/smengine/CameraManager;->setCamera(Ljava/lang/String;Lcom/smartisanos/smengine/Camera;)V

    .line 306
    .end local v1    # "distance":F
    .end local v2    # "theta":F
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/launcher/view/FolderCell;->mFolderIconCamera:Lcom/smartisanos/smengine/Camera;

    .line 308
    .end local v0    # "c":Lcom/smartisanos/smengine/Camera;
    :cond_1
    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 0
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/Cell;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 192
    return-void
.end method

.method protected drawSpecialsForCell(Z)V
    .locals 6
    .param p1, "renderBackgroundToRenderTarget"    # Z

    .prologue
    const/4 v2, 0x0

    .line 311
    if-eqz p1, :cond_3

    .line 312
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIsIconsNeedDisplay:Z

    if-eqz v1, :cond_2

    .line 313
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconRects:[Lcom/smartisanos/smengine/RectNode;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 314
    .local v0, "icon":Lcom/smartisanos/smengine/RectNode;
    if-eqz v0, :cond_0

    .line 315
    iget-object v5, p0, Lcom/smartisanos/launcher/view/FolderCell;->mFolderIconCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 313
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v0    # "icon":Lcom/smartisanos/smengine/RectNode;
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconsRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderTarget;->setGenMipmap(Z)V

    .line 319
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIsIconsNeedDisplay:Z

    .line 332
    :cond_2
    :goto_1
    return-void

    .line 322
    :cond_3
    iget-boolean v1, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIsIconsNeedDisplay:Z

    if-eqz v1, :cond_2

    .line 323
    iget-object v3, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconRects:[Lcom/smartisanos/smengine/RectNode;

    array-length v4, v3

    move v1, v2

    :goto_2
    if-ge v1, v4, :cond_5

    aget-object v0, v3, v1

    .line 324
    .restart local v0    # "icon":Lcom/smartisanos/smengine/RectNode;
    if-eqz v0, :cond_4

    .line 325
    iget-object v5, p0, Lcom/smartisanos/launcher/view/FolderCell;->mFolderIconCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v5}, Lcom/smartisanos/smengine/RectNode;->draw(Lcom/smartisanos/smengine/Camera;)V

    .line 323
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 328
    .end local v0    # "icon":Lcom/smartisanos/smengine/RectNode;
    :cond_5
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIconsRenderTarget:Lcom/smartisanos/smengine/RenderTarget;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderTarget;->setGenMipmap(Z)V

    .line 329
    iput-boolean v2, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIsIconsNeedDisplay:Z

    goto :goto_1
.end method

.method public loadIconTexture(Lcom/smartisanos/smengine/RectNode;Lcom/smartisanos/launcher/data/ItemInfo;)V
    .locals 5
    .param p1, "rect"    # Lcom/smartisanos/smengine/RectNode;
    .param p2, "info"    # Lcom/smartisanos/launcher/data/ItemInfo;

    .prologue
    .line 276
    iget-byte v3, p2, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    if-eqz v3, :cond_0

    iget-byte v3, p2, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 278
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Icon in folder should be ITEM_TYPE_APPLICATION or ITEM_TYPE_SHORTCUT"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 281
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v2

    .line 282
    .local v2, "tm":Lcom/smartisanos/smengine/TextureManager;
    invoke-virtual {p2}, Lcom/smartisanos/launcher/data/ItemInfo;->generateIconTextureName()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "iconTexName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lcom/smartisanos/smengine/TextureManager;->getTexture(Ljava/lang/String;)Lcom/smartisanos/smengine/Texture;

    move-result-object v1

    .line 284
    .local v1, "t":Lcom/smartisanos/smengine/Texture;
    if-nez v1, :cond_1

    .line 285
    const/4 v3, 0x0

    invoke-static {p2, v0, v3}, Lcom/smartisanos/launcher/data/Utils;->loadIconToTexture(Lcom/smartisanos/launcher/data/ItemInfo;Ljava/lang/String;Z)Lcom/smartisanos/smengine/Texture;

    .line 287
    :cond_1
    invoke-virtual {p1, v0}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public needUpdateIconsDisplay()V
    .locals 1

    .prologue
    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smartisanos/launcher/view/FolderCell;->mIsIconsNeedDisplay:Z

    .line 339
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FolderCell;->setNeedDisplay()V

    .line 340
    return-void
.end method

.method public onOpen()V
    .locals 4

    .prologue
    .line 373
    new-instance v0, Lcom/smartisanos/launcher/view/FolderPageView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folder_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/FolderCell;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_pageview"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderCell;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    check-cast v1, Lcom/smartisanos/launcher/data/FolderInfo;

    invoke-direct {v0, v2, v1}, Lcom/smartisanos/launcher/view/FolderPageView;-><init>(Ljava/lang/String;Lcom/smartisanos/launcher/data/FolderInfo;)V

    .line 374
    .local v0, "pageView":Lcom/smartisanos/launcher/view/FolderPageView;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/view/MainView;->onOpenFolder(Lcom/smartisanos/launcher/view/FolderPageView;)V

    .line 375
    return-void
.end method
