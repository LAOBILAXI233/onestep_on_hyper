.class Lcom/smartisanos/launcher/view/TitleView$IconAnimation;
.super Lcom/smartisanos/smengine/FrameAnimation;
.source "TitleView.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconAnimation"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/TitleView;


.method constructor <init>(Lcom/smartisanos/launcher/view/TitleView;Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/TitleView;
    .param p2, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    .line 1393
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/smartisanos/smengine/FrameAnimation;-><init>(Lcom/smartisanos/smengine/SceneNode;I)V

    .line 1394
    return-void
.end method


.method public onFrame(F)V
    .locals 6
    .param p1, "deltaT"    # F

    .prologue
    .line 1399
    iget-boolean v3, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->mIsStarted:Z

    if-nez v3, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return-void

    .line 1402
    :cond_1
    iget v3, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->mFrameIndex:I

    iget v4, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->mFrameNum:I

    if-lt v3, v4, :cond_2

    .line 1403
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->mIsFinished:Z

    .line 1404
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-eqz v3, :cond_0

    .line 1405
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v3}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onEnd()V

    goto :goto_0

    .line 1410
    :cond_2
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->mFrameImageList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->mFrameIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1411
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->mNodes:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/smengine/SceneNode;

    .line 1412
    .local v2, "node":Lcom/smartisanos/smengine/SceneNode;
    invoke-virtual {v2}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/Mesh;

    move-result-object v0

    .line 1413
    .local v0, "mesh":Lcom/smartisanos/smengine/Mesh;
    if-eqz v0, :cond_3

    .line 1414
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/TitleView;->access$900(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 1415
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->mFolderName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/TitleView;->updateEyeIcon(Ljava/lang/String;)V

    .line 1420
    :cond_3
    :goto_1
    iget v3, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->mFrameIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->mFrameIndex:I

    goto :goto_0

    .line 1416
    :cond_4
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    invoke-static {v3}, Lcom/smartisanos/launcher/view/TitleView;->access$1200(Lcom/smartisanos/launcher/view/TitleView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 1417
    iget-object v3, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->this$0:Lcom/smartisanos/launcher/view/TitleView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/smartisanos/launcher/view/TitleView$IconAnimation;->mFolderName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/view/TitleView;->updateLockIcon(Ljava/lang/String;)V

    goto :goto_1
.end method
