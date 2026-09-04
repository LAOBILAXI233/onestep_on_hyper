.class final Lcom/smartisanos/launcher/view/CellConvertAnimation$1;
.super Ljava/lang/Object;
.source "CellConvertAnimation.java"

.implements Ljava/lang/Runnable;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CellConvertAnimation;->ConvertAnimSlotToDock(Lcom/smartisanos/smengine/AnimationTimeLine;Lcom/smartisanos/launcher/view/Cell;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$cell:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 251
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getBackgroundRect()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setIsEnableBlend(Z)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setShowBackground(Z)V

    .line 255
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setShowOuterShadow(Z)V

    .line 256
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->hideOuterShadow()V

    .line 257
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->removeBackgroundOverlay()V

    .line 258
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->SHOW_APP_NAME:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v0, v1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->enableShowAppName(Z)V

    .line 260
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getAppNameRect()Lcom/smartisanos/launcher/view/TextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 264
    :cond_1
    return-void
.end method
