.class Lcom/smartisanos/launcher/view/MultiSelectNode$9;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MultiSelectNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MultiSelectNode;->multiSelectedCellsBackToOriPage(Ljava/util/List;Lcom/smartisanos/smengine/AnimationTimeLine;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1265
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 1266
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1800(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    move-result-object v2

    iput-boolean v4, v2, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mIsPlaying:Z

    .line 1269
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1000(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1800(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mAnimationCellList:Ljava/util/List;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1000(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1270
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1800(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mAnimationCellList:Ljava/util/List;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1000(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1271
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1800(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mAnimationCellList:Ljava/util/List;

    iget-object v3, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1000(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1273
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1800(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mAnimationCellList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1274
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1800(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    move-result-object v2

    iget-object v2, v2, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mAnimationCellList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    .line 1276
    .local v1, "pc":Lcom/smartisanos/launcher/view/Cell;
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Cell;->setLayerStatus(I)V

    .line 1278
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 1279
    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 1280
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_1

    .line 1282
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1100(Lcom/smartisanos/launcher/view/MultiSelectNode;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1283
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Cell;->setUseBackgroundUVGaussian(Z)V

    .line 1284
    invoke-virtual {v1, v4}, Lcom/smartisanos/launcher/view/Cell;->showGaussianIconRect(Z)V

    .line 1273
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1290
    .end local v1    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_2
    sget-boolean v2, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v2, :cond_3

    .line 1291
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v2}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1100(Lcom/smartisanos/launcher/view/MultiSelectNode;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1293
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/MultiSelectNode;->mSelectedCellList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/Cell;->setDrawWithPostEffect(Z)V

    .line 1294
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/smartisanos/launcher/view/MainView;->setUsePostEffect(Z)V

    .line 1299
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1302(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1302
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 1255
    iget-object v1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$9;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1800(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;

    move-result-object v1

    iget-object v1, v1, Lcom/smartisanos/launcher/view/MultiSelectAllCellBackToPageAnimation;->mAnimationCellList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/launcher/view/Cell;

    .line 1256
    .local v0, "pc":Lcom/smartisanos/launcher/view/Cell;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setShowOuterShadow(Z)V

    .line 1257
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->hideOuterShadow()V

    .line 1258
    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    goto :goto_0

    .line 1261
    .end local v0    # "pc":Lcom/smartisanos/launcher/view/Cell;
    :cond_0
    return-void
.end method
