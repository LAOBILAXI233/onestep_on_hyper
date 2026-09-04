.class public Lcom/smartisanos/launcher/view/WidgetPage;
.super Lcom/smartisanos/launcher/view/Page;
.source "WidgetPage.java"


.field private mWidget:Landroid/appwidget/AppWidgetHostView;

.field private mWidgetRect:Lcom/smartisanos/smengine/RectNode;

.field private mWidgetScreen:Lcom/smartisanos/smengine/RenderTarget;

.field private mWidgetSnapshotName:Ljava/lang/String;


.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "titleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/smartisanos/launcher/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/Page;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 27
    iput-object v0, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetScreen:Lcom/smartisanos/smengine/RenderTarget;

    .line 28
    iput-object v0, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetSnapshotName:Ljava/lang/String;

    .line 32
    const-string v0, "cgh"

    const-string v1, "create widget page"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method private createPageContent()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 46
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WidgetPage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_bg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v2, v2, Lcom/smartisanos/launcher/data/LayoutProperty;->page_width:F

    iget-object v3, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v3, v3, Lcom/smartisanos/launcher/data/LayoutProperty;->page_height:F

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/smartisanos/smengine/RectNode;->createSimpleTextureRect(Ljava/lang/String;FFFZ)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    .line 51
    const-string v1, "TextureModularColorMaterial"

    invoke-static {v1}, Lcom/smartisanos/smengine/mymaterial/MaterialDef;->createMaterial(Ljava/lang/String;)Lcom/smartisanos/smengine/mymaterial/Material;

    move-result-object v0

    .line 52
    .local v0, "m":Lcom/smartisanos/smengine/mymaterial/Material;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v0}, Lcom/smartisanos/smengine/RectNode;->setMaterial(Lcom/smartisanos/smengine/mymaterial/Material;)V

    .line 53
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RenderState;->setBlendMode(I)V

    .line 55
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v7, v7, v7, v7}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 57
    new-instance v1, Lcom/smartisanos/smengine/Texture$State;

    invoke-direct {v1, v5, v5, v5, v5}, Lcom/smartisanos/smengine/Texture$State;-><init>(IIII)V

    invoke-virtual {v0, v6, v1}, Lcom/smartisanos/smengine/mymaterial/Material;->setTextureState(ILcom/smartisanos/smengine/Texture$State;)V

    .line 60
    invoke-static {v6, v6}, Lcom/smartisanos/launcher/view/WidgetPage;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetSnapshotName:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v2, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetSnapshotName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RenderState;->setIsPolygonOffset(Z)V

    .line 65
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40000000    # -2.0f

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/smengine/RenderState;->setPolygonOffsetFactorUnits(FF)V

    .line 67
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 69
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RectNode;->setRenderQueue(I)V

    .line 70
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v8}, Lcom/smartisanos/smengine/RectNode;->setRenderTarget(Lcom/smartisanos/smengine/RenderTarget;)V

    .line 72
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/smartisanos/smengine/RenderState;->setIsEnableBlend(Z)V

    .line 73
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/smartisanos/smengine/RenderState;->setIsEnableDepthTest(Z)V

    .line 74
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v8}, Lcom/smartisanos/smengine/RectNode;->setViewPort(Lcom/smartisanos/smengine/ViewPort;)V

    .line 76
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/WidgetPage;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 78
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WidgetPage;->updateGeometricState()V

    goto/16 :goto_0
.end method


.method public canDropAllCell(I)Z
    .locals 1
    .param p1, "cellCount"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method protected createCellsInList()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method protected createPage()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/WidgetPage;->createPageContent()V

    .line 42
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WidgetPage;->createPageBoundingRect()V

    .line 43
    return-void
.end method

.method public draw(Lcom/smartisanos/smengine/Camera;)V
    .locals 1
    .param p1, "camera"    # Lcom/smartisanos/smengine/Camera;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/Page;->cull(Lcom/smartisanos/smengine/Camera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/Page;->draw(Lcom/smartisanos/smengine/Camera;)V

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public updateLayer(I)V
    .locals 3
    .param p1, "change"    # I

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/smartisanos/launcher/view/Page;->updateLayer(I)V

    .line 95
    invoke-static {}, Lcom/smartisanos/launcher/view/LayerManager;->getInstance()Lcom/smartisanos/launcher/view/LayerManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/WidgetPage;->getLayStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/LayerManager;->getPageLayer(I)Lcom/smartisanos/launcher/view/LayerManager$PageLayer;

    move-result-object v0

    .line 96
    .local v0, "pageLayer":Lcom/smartisanos/launcher/view/LayerManager$PageLayer;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/WidgetPage;->mWidgetRect:Lcom/smartisanos/smengine/RectNode;

    iget v2, v0, Lcom/smartisanos/launcher/view/LayerManager$PageLayer;->PAGE_BATCH_RENDER_LAYER:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setLayer(I)V

    .line 97
    return-void
.end method

.method public updateWorldBoundingVolume()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Lcom/smartisanos/launcher/view/Page;->updateWorldBoundingVolume()V

    .line 111
    return-void
.end method

.method public updateWorldTransforms()V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0}, Lcom/smartisanos/launcher/view/Page;->updateWorldTransforms()V

    .line 120
    return-void
.end method
