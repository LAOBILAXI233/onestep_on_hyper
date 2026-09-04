.class public Lcom/smartisanos/launcher/view/PageNoRenderTarget;
.super Lcom/smartisanos/launcher/view/Page;
.source "PageNoRenderTarget.java"


.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
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
    .line 15
    .local p2, "ccList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/smartisanos/launcher/data/ItemInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/launcher/view/Page;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 16
    return-void
.end method


.method protected createCell(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/Cell;
    .locals 9
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "cc"    # Lcom/smartisanos/launcher/data/ItemInfo;
    .param p4, "prop"    # Lcom/smartisanos/launcher/data/LayoutProperty;

    .prologue
    .line 20
    if-nez p3, :cond_1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cell_empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "cellName":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/smartisanos/launcher/view/Cell;

    const/4 v2, 0x1

    iget v5, p0, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->mZ:F

    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    move v3, p1

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/launcher/view/Cell;-><init>(Ljava/lang/String;ZIIFLcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 29
    .local v0, "pc":Lcom/smartisanos/launcher/view/Cell;
    if-eqz p3, :cond_0

    iget-wide v2, p3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 32
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 33
    invoke-virtual {v0, p4}, Lcom/smartisanos/launcher/view/Cell;->setLayoutProperty(Lcom/smartisanos/launcher/data/LayoutProperty;)V

    .line 34
    invoke-static {p1, p2}, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v8

    .line 35
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v0, v8}, Lcom/smartisanos/launcher/view/Cell;->setBackgroundImageName(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->create()V

    .line 37
    return-object v0

    .line 24
    .end local v0    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v1    # "cellName":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cell "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p3, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cellName":Ljava/lang/String;
    goto :goto_0
.end method

.method protected createPage()V
    .locals 10

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->createPageBoundingRect()V

    .line 43
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v5, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 44
    .local v5, "rowNum":I
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 45
    .local v0, "colNum":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 46
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 47
    invoke-virtual {p0, v1, v3}, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->getIndex(II)I

    move-result v2

    .line 48
    .local v2, "index":I
    invoke-virtual {p0, v1, v3}, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->getItemInfo(II)Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    invoke-virtual {p0, v1, v3, v7, v8}, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->createCell(IILcom/smartisanos/launcher/data/ItemInfo;Lcom/smartisanos/launcher/data/LayoutProperty;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v4

    .line 49
    .local v4, "pc":Lcom/smartisanos/launcher/view/Cell;
    sget-object v7, Lcom/smartisanos/launcher/data/Constants;->pageCellCenterPoints:[Lcom/smartisanos/smengine/math/Vector3f;

    aget-object v6, v7, v2

    .line 50
    .local v6, "v":Lcom/smartisanos/smengine/math/Vector3f;
    iget v7, v6, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v8, v6, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v9, p0, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->mZ:F

    invoke-virtual {v4, v7, v8, v9}, Lcom/smartisanos/launcher/view/Cell;->setTranslate(FFF)V

    .line 51
    invoke-virtual {p0, v4}, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->addChild(Lcom/smartisanos/smengine/SceneNode;)I

    .line 52
    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 45
    .end local v2    # "index":I
    .end local v4    # "pc":Lcom/smartisanos/launcher/view/Cell;
    .end local v6    # "v":Lcom/smartisanos/smengine/math/Vector3f;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v3    # "j":I
    :cond_1
    return-void
.end method

.method public doLayout()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public initPageContent()V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->mIsPageContentInited:Z

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->updateCellContent()V

    .line 94
    :cond_0
    invoke-super {p0}, Lcom/smartisanos/launcher/view/Page;->initPageContent()V

    .line 95
    return-void
.end method

.method protected updateCellContent()V
    .locals 8

    .prologue
    .line 71
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v0, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_col_num:I

    .line 72
    .local v0, "colNum":I
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->mLayoutProp:Lcom/smartisanos/launcher/data/LayoutProperty;

    iget v6, v7, Lcom/smartisanos/launcher/data/LayoutProperty;->page_cell_row_num:I

    .line 73
    .local v6, "rowNum":I
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->mItemInfoList:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->mItemInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 75
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 76
    invoke-virtual {p0, v1, v3}, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->getIndex(II)I

    move-result v2

    .line 77
    .local v2, "index":I
    invoke-virtual {p0, v2}, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->getCell(I)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v5

    .line 78
    .local v5, "pc":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v5, :cond_0

    .line 79
    iget-object v7, p0, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->mCellCamera:Lcom/smartisanos/smengine/Camera;

    invoke-virtual {v5, v7}, Lcom/smartisanos/launcher/view/Cell;->setCamera(Lcom/smartisanos/smengine/Camera;)V

    .line 80
    invoke-static {v1, v3}, Lcom/smartisanos/launcher/view/PageNoRenderTarget;->getBackgroundImageName(II)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v5, v4}, Lcom/smartisanos/launcher/view/Cell;->setBackgroundImageName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v5}, Lcom/smartisanos/launcher/view/Cell;->create()V

    .line 75
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 74
    .end local v2    # "index":I
    .end local v5    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_2
    return-void
.end method
