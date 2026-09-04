.class final Lcom/smartisanos/launcher/view/CellConvertAnimation$2;
.super Ljava/lang/Object;
.source "CellConvertAnimation.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CellConvertAnimation;->ConvertAnimSlotToPage(Lcom/smartisanos/smengine/AnimationTimeLine;Lcom/smartisanos/launcher/view/Cell;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$cell:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 281
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, v6}, Lcom/smartisanos/launcher/view/Cell;->setShowBackground(Z)V

    .line 282
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setShowOuterShadow(Z)V

    .line 283
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->hideOuterShadow()V

    .line 285
    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-static {v1}, Lcom/smartisanos/launcher/data/Constants;->mode(I)Lcom/smartisanos/launcher/data/LayoutProperty;

    move-result-object v0

    .line 286
    .local v0, "currentLP":Lcom/smartisanos/launcher/data/LayoutProperty;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    mul-float/2addr v2, v5

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 287
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 288
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 290
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    iget v2, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_width:F

    mul-float/2addr v2, v5

    iget v3, v0, Lcom/smartisanos/launcher/data/LayoutProperty;->cell_height:F

    mul-float/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/smengine/RectNode;->setScale(FFF)V

    .line 292
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 293
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundGaussianRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/smengine/RectNode;->updateGeometricState()V

    .line 296
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->removeBackgroundOverlay()V

    .line 298
    sget-boolean v1, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v1, v2, :cond_1

    .line 299
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, v6}, Lcom/smartisanos/launcher/view/Cell;->enableShowAppName(Z)V

    .line 300
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$2;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 304
    :cond_1
    return-void
.end method
