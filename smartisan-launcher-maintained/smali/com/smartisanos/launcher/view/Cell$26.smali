.class Lcom/smartisanos/launcher/view/Cell$26;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->reSetBackground()Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Cell;

.field final synthetic val$newBackgroundImageName:Ljava/lang/String;

.field final synthetic val$oldImageName:Ljava/lang/String;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 5434
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$26;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Cell$26;->val$newBackgroundImageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/Cell$26;->val$oldImageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5451
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$26;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/Cell;->mCellResetBackgroundAlphaAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 5452
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$26;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Cell;->access$400(Lcom/smartisanos/launcher/view/Cell;)V

    .line 5454
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$26;->this$0:Lcom/smartisanos/launcher/view/Cell;

    if-eq v0, v1, :cond_0

    .line 5455
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$26;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget v0, v0, Lcom/smartisanos/launcher/view/Cell;->mLayerStatus:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$26;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget v0, v0, Lcom/smartisanos/launcher/view/Cell;->mLayerStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 5456
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$26;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTarget(Z)V

    .line 5460
    :cond_0
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/Cell;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### onComplete cell newImageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Cell$26;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/Cell;->mBackgroundImageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;)V

    .line 5463
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 5438
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$26;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$26;->val$newBackgroundImageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setBackgroundImageName(Ljava/lang/String;)V

    .line 5440
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$26;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundRect:Lcom/smartisanos/smengine/RectNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$26;->val$newBackgroundImageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setImageName(Ljava/lang/String;)V

    .line 5442
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$26;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 5444
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getPageView()Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$26;->this$0:Lcom/smartisanos/launcher/view/Cell;

    if-eq v0, v1, :cond_0

    .line 5445
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$26;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setRenderBgToRenderTargetAndBatchDraw(ZZ)V

    .line 5447
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$26;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$26;->val$oldImageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->access$300(Lcom/smartisanos/launcher/view/Cell;Ljava/lang/String;)V

    .line 5448
    return-void
.end method
