.class Lcom/smartisanos/launcher/view/SwitchPageNode$4;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "SwitchPageNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/SwitchPageNode;->pageLongPressAnimation(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

.field final synthetic val$touchX:F

.field final synthetic val$touchY:F


.method constructor <init>(Lcom/smartisanos/launcher/view/SwitchPageNode;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/SwitchPageNode;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$4;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    iput p2, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$4;->val$touchX:F

    iput p3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$4;->val$touchY:F

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 5

    .prologue
    .line 483
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 484
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$4;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/smartisanos/launcher/view/SwitchPageNode;->access$1702(Lcom/smartisanos/launcher/view/SwitchPageNode;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 487
    iget v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$4;->val$touchX:F

    sget v4, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 488
    .local v0, "dragPointX":F
    sget v3, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$4;->val$touchY:F

    sub-float v1, v3, v4

    .line 489
    .local v1, "dragPointY":F
    new-instance v2, Lcom/smartisanos/smengine/math/Vector3f;

    invoke-direct {v2}, Lcom/smartisanos/smengine/math/Vector3f;-><init>()V

    .line 490
    .local v2, "objLocation":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$4;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v3, v2}, Lcom/smartisanos/launcher/view/SwitchPageNode;->getWorldTranslate(Lcom/smartisanos/smengine/math/Vector3f;)V

    .line 491
    iget v3, v2, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    sub-float/2addr v0, v3

    .line 492
    iget v3, v2, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    sub-float/2addr v1, v3

    .line 493
    iget-object v3, p0, Lcom/smartisanos/launcher/view/SwitchPageNode$4;->this$0:Lcom/smartisanos/launcher/view/SwitchPageNode;

    invoke-virtual {v3, v0, v1}, Lcom/smartisanos/launcher/view/SwitchPageNode;->setDragPoint(FF)V

    .line 494
    return-void
.end method
