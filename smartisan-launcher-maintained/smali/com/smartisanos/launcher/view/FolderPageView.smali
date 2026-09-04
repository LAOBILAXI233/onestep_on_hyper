.class public Lcom/smartisanos/launcher/view/FolderPageView;
.super Lcom/smartisanos/launcher/view/PageView;
.source "FolderPageView.java"


.field log:Lcom/smartisanos/launcher/LOG;

.field private mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

.field private mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;


.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/data/FolderInfo;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/smartisanos/launcher/data/FolderInfo;

    .prologue
    const v2, 0x3f4ccccd    # 0.8f

    .line 31
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/PageView;-><init>(Ljava/lang/String;)V

    .line 25
    const-class v1, Lcom/smartisanos/launcher/view/FolderPageView;

    invoke-static {v1}, Lcom/smartisanos/launcher/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/launcher/LOG;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/FolderPageView;->log:Lcom/smartisanos/launcher/LOG;

    .line 32
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    .line 33
    invoke-virtual {p0, p2}, Lcom/smartisanos/launcher/view/FolderPageView;->buildPagesFromFolderInfo(Lcom/smartisanos/launcher/data/FolderInfo;)V

    .line 34
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FolderPageView;->create()V

    .line 35
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2, v2, v1}, Lcom/smartisanos/launcher/view/FolderPageView;->setScale(FFF)V

    .line 36
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Page;

    .line 37
    .local v0, "page":Lcom/smartisanos/launcher/view/Page;
    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/view/FolderPageView;->setScissor(Lcom/smartisanos/launcher/view/Page;)V

    goto :goto_0

    .line 39
    .end local v0    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FolderPageView;->updateGeometricState()V

    .line 40
    return-void
.end method

.method private createBondingVolume()V
    .locals 10

    .prologue
    .line 159
    iget-object v7, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v4, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    .line 160
    .local v4, "pageViewWidth":F
    iget-object v7, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    .line 161
    .local v3, "pageViewHeight":F
    new-instance v2, Lcom/smartisanos/smengine/math/Vector2f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector2f;-><init>()V

    .line 162
    .local v2, "p":Lcom/smartisanos/smengine/math/Vector2f;
    iget-object v7, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    .line 163
    .local v0, "leftBottomX":F
    sget v7, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    add-float/2addr v7, v8

    add-float v1, v7, v3

    .line 164
    .local v1, "leftBottomY":F
    iget-object v7, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v7, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_left:F

    add-float v5, v7, v4

    .line 165
    .local v5, "rightTopX":F
    sget v7, Lcom/smartisanos/launcher/data/Constants;->status_bar_height:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mLayoutProperty:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v8, v8, Lcom/smartisanos/launcher/data/LayoutProperty;->page_view_margin_top:F

    add-float v6, v7, v8

    .line 166
    .local v6, "rightTopY":F
    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v7, v7

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v8, v8

    invoke-static {v0, v1, v7, v8, v2}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 167
    iget v0, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 168
    iget v1, v2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 169
    sget v7, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    int-to-float v7, v7

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_height:I

    int-to-float v8, v8

    invoke-static {v5, v6, v7, v8, v2}, Lcom/smartisanos/smengine/util/GeomUtil;->convertLeftTopPointToMidPointCoordinate(FFFFLcom/smartisanos/smengine/math/Vector2f;)Lcom/smartisanos/smengine/math/Vector2f;

    .line 170
    iget v5, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    .line 171
    iget v6, v2, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    .line 172
    new-instance v7, Lcom/smartisanos/smengine/math/Vector2f;

    sget v8, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-direct {v7, v8, v1}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    new-instance v8, Lcom/smartisanos/smengine/math/Vector2f;

    sget v9, Lcom/smartisanos/launcher/data/Constants;->window_width:I

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-direct {v8, v9, v6}, Lcom/smartisanos/smengine/math/Vector2f;-><init>(FF)V

    invoke-virtual {p0, v7, v8}, Lcom/smartisanos/launcher/view/FolderPageView;->setBoundingRect(Lcom/smartisanos/smengine/math/Vector2f;Lcom/smartisanos/smengine/math/Vector2f;)V

    .line 173
    return-void
.end method


.method public buildPagesFromFolderInfo(Lcom/smartisanos/launcher/data/FolderInfo;)V
    .locals 13
    .param p1, "info"    # Lcom/smartisanos/launcher/data/FolderInfo;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 43
    iget-object v9, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 44
    iget-object v3, p1, Lcom/smartisanos/launcher/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 46
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 47
    const/4 v5, 0x0

    .line 48
    .local v5, "pageIndex":I
    const/4 v0, 0x0

    .line 49
    .local v0, "count":I
    const/4 v7, 0x0

    .line 50
    .local v7, "x":F
    const/4 v8, 0x0

    .line 51
    .local v8, "y":F
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v6, "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 53
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/data/ItemInfo;

    .line 54
    .local v2, "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    iget v9, v2, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    if-le v9, v5, :cond_1

    .line 56
    invoke-virtual {p0, v5, v6}, Lcom/smartisanos/launcher/view/FolderPageView;->createPage(ILjava/util/ArrayList;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v4

    .line 57
    .local v4, "page":Lcom/smartisanos/launcher/view/Page;
    if-le v10, v0, :cond_0

    .line 58
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 59
    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 64
    :goto_1
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/FolderPageView;->addPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 65
    invoke-virtual {v4, v7, v8, v11}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 66
    const/high16 v9, 0x44870000    # 1080.0f

    add-float/2addr v7, v9

    .line 67
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->forceUpdateWorldTransforms()V

    .line 68
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->updateWorldBoundingVolume()V

    .line 70
    iget v5, v2, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 71
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .restart local v6    # "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .restart local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_0
    invoke-virtual {v4, v12}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    goto :goto_1

    .line 74
    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    :cond_1
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 78
    .end local v2    # "itemInfo":Lcom/smartisanos/launcher/data/ItemInfo;
    :cond_2
    invoke-virtual {p0, v5, v6}, Lcom/smartisanos/launcher/view/FolderPageView;->createPage(ILjava/util/ArrayList;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v4

    .line 79
    .restart local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    if-le v10, v0, :cond_5

    .line 80
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 81
    invoke-virtual {v4, v10}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    .line 85
    :goto_3
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/FolderPageView;->addPage(Lcom/smartisanos/launcher/view/Page;)V

    .line 86
    invoke-virtual {v4, v7, v8, v11}, Lcom/smartisanos/launcher/view/Page;->setTranslate(FFF)V

    .line 87
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->forceUpdateWorldTransforms()V

    .line 88
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Page;->updateWorldBoundingVolume()V

    .line 90
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    .end local v5    # "pageIndex":I
    .end local v6    # "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .end local v7    # "x":F
    .end local v8    # "y":F
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FolderPageView;->updateGeometricState()V

    .line 91
    iget-object v9, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v10, v9, :cond_4

    .line 92
    new-instance v9, Lcom/smartisanos/launcher/view/FolderPageView$1;

    const/16 v10, 0x64

    invoke-direct {v9, p0, v10}, Lcom/smartisanos/launcher/view/FolderPageView$1;-><init>(Lcom/smartisanos/launcher/view/FolderPageView;I)V

    .line 97
    invoke-virtual {v9, v11}, Lcom/smartisanos/launcher/view/FolderPageView$1;->send(F)V

    .line 99
    :cond_4
    return-void

    .line 83
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v4    # "page":Lcom/smartisanos/launcher/view/Page;
    .restart local v5    # "pageIndex":I
    .restart local v6    # "pageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    :cond_5
    invoke-virtual {v4, v12}, Lcom/smartisanos/launcher/view/Page;->setVisibility(Z)V

    goto :goto_3
.end method

.method public create()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/FolderPageView;->createBondingVolume()V

    .line 141
    return-void
.end method

.method public createBackgroundRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/FolderPageView;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_bg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x44480000    # 800.0f

    const v3, 0x44a28000    # 1300.0f

    invoke-static {v1, v2, v3, v5, v4}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    .line 145
    const-string v1, "TextureModularColorMaterial"

    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 146
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 147
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    const-string v2, "background.png"

    invoke-static {v2}, Lcom/smartisanos/launcher/ResourceValue;->path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 149
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 150
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 151
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 152
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 153
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 154
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/FolderPageView;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 155
    iget-object v1, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v6, v5, v5, v6}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 156
    return-void
.end method

.method public createPage(ILjava/util/ArrayList;)Lcom/smartisanos/launcher/view/Page;
    .locals 9
    .param p1, "pageIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;)",
            "Lcom/smartisanos/launcher/view/Page;"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    sget-boolean v6, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/smartisanos/launcher/view/FolderPageView;->log:Lcom/smartisanos/launcher/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createPage by page index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 103
    :cond_0
    const/4 v5, 0x1

    .line 104
    .local v5, "verify":Z
    if-eqz v5, :cond_1

    .line 105
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 106
    sget v6, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v6}, Lcom/smartisanos/launcher/data/Constants;->getCellNumByMode(I)I

    move-result v2

    .line 107
    .local v2, "max":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v2, :cond_1

    .line 108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPage error, page index ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], max cell count ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], cell list size ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "error":Ljava/lang/String;
    iget-object v6, p0, Lcom/smartisanos/launcher/view/FolderPageView;->log:Lcom/smartisanos/launcher/LOG;

    const-string v7, "DEBUG"

    invoke-virtual {v6, v7, v1}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v1    # "error":Ljava/lang/String;
    .end local v2    # "max":I
    :cond_1
    new-instance v4, Lcom/smartisanos/launcher/data/PageInfo;

    invoke-direct {v4}, Lcom/smartisanos/launcher/data/PageInfo;-><init>()V

    .line 116
    .local v4, "pageInfo":Lcom/smartisanos/launcher/data/PageInfo;
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, p2, p1, v7, v4}, Lcom/smartisanos/launcher/view/PageView;->createPage(Ljava/util/ArrayList;ILjava/lang/String;Lcom/smartisanos/launcher/data/PageInfo;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v3

    .line 117
    .local v3, "page":Lcom/smartisanos/launcher/view/Page;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/view/Page;->setPageStatus(I)V

    .line 118
    iput p1, v3, Lcom/smartisanos/launcher/view/Page;->pageIndex:I

    .line 119
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/smartisanos/launcher/view/Page;->setLayerStatus(I)V

    .line 120
    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/Page;->getAllPageCell()Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    .local v0, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/view/Cell;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/smartisanos/launcher/view/Cell;

    goto :goto_0

    .line 124
    :cond_2
    return-object v3
.end method

.method public getPageFactor()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public onClose()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FolderPageView;->mPageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    return-void
.end method

.method public onOpen()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public setScissor(Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "page"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/Page;->setScissorForFolder()V

    .line 177
    return-void
.end method
