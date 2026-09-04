.class Lcom/smartisanos/launcher/view/Cell$25;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->hideLongPressAppName(Lcom/smartisanos/smengine/AnimationTimeLine;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 4966
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$25;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 4969
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 4970
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$25;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-static {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->access$202(Lcom/smartisanos/launcher/view/Cell;Lcom/smartisanos/smengine/SceneNodeTweenAnimation;)Lcom/smartisanos/smengine/SceneNodeTweenAnimation;

    .line 4971
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$25;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/RectNode;->removeFromParent()Lcom/smartisanos/smengine/SceneNode;

    .line 4972
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$25;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->clear(Z)V

    .line 4973
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$25;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iput-object v2, v0, Lcom/smartisanos/launcher/view/Cell;->mLongPressTextRect:Lcom/smartisanos/smengine/RectNode;

    .line 4975
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->getTextureManager()Lcom/smartisanos/smengine/TextureManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Cell$25;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/Cell;->mAppNameRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v2}, Lcom/smartisanos/launcher/view/TextView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/launcher/view/Cell$25;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v2, v2, Lcom/smartisanos/launcher/view/Cell;->mItemInfo:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-wide v2, v2, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/TextureManager;->deleteTexture(Ljava/lang/String;)V

    .line 4976
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$25;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 4977
    return-void
.end method
