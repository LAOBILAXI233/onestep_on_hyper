.class Lcom/smartisanos/launcher/animations/DockViewAnimation$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "DockViewAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/DockViewAnimation;->runCellBroaded(FLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

.field final synthetic val$cell:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/DockViewAnimation;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 6

    .prologue
    .line 255
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->access$000(Lcom/smartisanos/launcher/animations/DockViewAnimation;)Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/DockView;->getDockCellBoundingRect(I)Lcom/smartisanos/smengine/BoundingRect;

    move-result-object v0

    .line 256
    .local v0, "br":Lcom/smartisanos/smengine/BoundingRect;
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v2

    iget v2, v2, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v0}, Lcom/smartisanos/smengine/BoundingRect;->getMinPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v3

    iget v3, v3, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v0}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v4

    iget v4, v4, Lcom/smartisanos/smengine/math/Vector2f;->x:F

    invoke-virtual {v0}, Lcom/smartisanos/smengine/BoundingRect;->getMaxPoint()Lcom/smartisanos/smengine/math/Vector2f;

    move-result-object v5

    iget v5, v5, Lcom/smartisanos/smengine/math/Vector2f;->y:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/smartisanos/launcher/view/Cell;->setLocalBoundingVolume(FFFF)V

    .line 257
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$1;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/Cell;->updateGeometricState()V

    .line 258
    return-void
.end method
