.class public Lcom/smartisanos/launcher/view/ActiveIconView;
.super Lcom/smartisanos/smengine/SceneNode;
.source "ActiveIconView.java"


.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;
    }
.end annotation


.field protected mBoundingCell:Lcom/smartisanos/launcher/view/Cell;

.field protected mIconStatus:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

.field private mIsDrawToRenderTarget:Z


.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "boundingCell"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;->RESUME:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/ActiveIconView;->mIconStatus:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    .line 26
    iput-object p2, p0, Lcom/smartisanos/launcher/view/ActiveIconView;->mBoundingCell:Lcom/smartisanos/launcher/view/Cell;

    .line 27
    return-void
.end method


.method public createComposedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteTextureForCell()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public getComposeTextureName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ActiveIconView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_compose"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public isDrawToRenderTarget()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/ActiveIconView;->mIsDrawToRenderTarget:Z

    return v0
.end method

.method public isTransformedTouchPointInView(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;->PAUSE:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/ActiveIconView;->mIconStatus:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;->RESUME:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    iput-object v0, p0, Lcom/smartisanos/launcher/view/ActiveIconView;->mIconStatus:Lcom/smartisanos/launcher/view/ActiveIconView$IconStatus;

    .line 79
    return-void
.end method

.method public setIsDrawToRenderTarget(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/ActiveIconView;->mIsDrawToRenderTarget:Z

    .line 35
    return-void
.end method

.method public setPostLayer(I)V
    .locals 3
    .param p1, "layer"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ActiveIconView;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 104
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ActiveIconView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 105
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/ActiveIconView;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 106
    .local v0, "ch":Lcom/smartisanos/smengine/SceneNode;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getRenderState()Lcom/smartisanos/smengine/RenderState;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/smartisanos/smengine/RenderState;->setPostLayer(I)V

    .line 104
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "ch":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    return-void
.end method

.method public setRenderQueue(I)V
    .locals 3
    .param p1, "queue"    # I

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ActiveIconView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 95
    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/view/ActiveIconView;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 96
    .local v0, "ch":Lcom/smartisanos/smengine/SceneNode;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/SceneNode;->setRenderQueue(I)V

    .line 94
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v0    # "ch":Lcom/smartisanos/smengine/SceneNode;
    :cond_1
    return-void
.end method

.method public setScissor(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 44
    return-void
.end method

.method protected updatePageCell()V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/ActiveIconView;->getParent()Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    .line 56
    .local v0, "parent":Lcom/smartisanos/smengine/SceneNode;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Cell;->sIsInstanceFromCell(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 57
    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 58
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->updateForegroundOverlapRectTexture()V

    .line 61
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-void
.end method
