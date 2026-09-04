.class Lcom/smartisanos/launcher/animations/TrashAnimation$2;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "TrashAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/TrashAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/TrashAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/animations/TrashAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/TrashAnimation;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/TrashAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    sget v2, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    invoke-virtual {v1, v2, v5}, Lcom/smartisanos/launcher/view/DockView;->getTrashLocationByMode(IZ)Lcom/smartisanos/smengine/math/Vector3f;

    move-result-object v0

    .line 103
    .local v0, "to":Lcom/smartisanos/smengine/math/Vector3f;
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/TrashAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/TrashAnimation;->access$000(Lcom/smartisanos/launcher/animations/TrashAnimation;)Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v1

    iget v2, v0, Lcom/smartisanos/smengine/math/Vector3f;->x:F

    iget v3, v0, Lcom/smartisanos/smengine/math/Vector3f;->y:F

    iget v4, v0, Lcom/smartisanos/smengine/math/Vector3f;->z:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/smartisanos/launcher/view/TrashView;->setTranslate(FFF)V

    .line 104
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/TrashAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/TrashAnimation;->access$000(Lcom/smartisanos/launcher/animations/TrashAnimation;)Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/launcher/view/TrashView$STATUS;->APPEAR:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v1, v2, v5}, Lcom/smartisanos/launcher/view/TrashView;->setStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V

    .line 105
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/TrashAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/TrashAnimation;->access$000(Lcom/smartisanos/launcher/animations/TrashAnimation;)Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v1

    sget-object v2, Lcom/smartisanos/launcher/view/TrashView$STATUS;->FLOAT_UP:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v1, v2, v5}, Lcom/smartisanos/launcher/view/TrashView;->setStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V

    .line 106
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/TrashAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/TrashAnimation;->access$000(Lcom/smartisanos/launcher/animations/TrashAnimation;)Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TrashView;->updateGeometricState()V

    .line 107
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/TrashAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-static {v1}, Lcom/smartisanos/launcher/animations/TrashAnimation;->access$000(Lcom/smartisanos/launcher/animations/TrashAnimation;)Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TrashView;->setNeedDisplay()V

    .line 108
    invoke-static {v5}, Lcom/smartisanos/launcher/animations/TrashAnimation;->access$202(Z)Z

    .line 109
    return-void
.end method
