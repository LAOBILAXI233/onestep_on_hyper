.class Lcom/smartisanos/launcher/view/Cell$28;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->cellLongPressAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Cell;

.field final synthetic val$touchX:F

.field final synthetic val$touchY:F


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 5762
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$28;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iput p2, p0, Lcom/smartisanos/launcher/view/Cell$28;->val$touchX:F

    iput p3, p0, Lcom/smartisanos/launcher/view/Cell$28;->val$touchY:F

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 6

    .prologue
    .line 5765
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 5766
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$28;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/smartisanos/launcher/view/Cell;->access$500(Lcom/smartisanos/launcher/view/Cell;FZ)V

    .line 5770
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$28;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/smartisanos/launcher/view/Cell;->mCellLongpressAnimationTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 5773
    iget v3, p0, Lcom/smartisanos/launcher/view/Cell$28;->val$touchX:F

    sget v4, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 5774
    .local v0, "dragPointX":F
    sget v3, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/smartisanos/launcher/view/Cell$28;->val$touchY:F

    sub-float v1, v3, v4

    .line 5775
    .local v1, "dragPointY":F
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 5776
    .local v2, "objLocation":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$28;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/Cell;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 5777
    iget v3, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v0, v3

    .line 5778
    iget v3, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v1, v3

    .line 5779
    iget-object v3, p0, Lcom/smartisanos/launcher/view/Cell$28;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v3, v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setDragPoint(FF)V

    .line 5780
    return-void
.end method
