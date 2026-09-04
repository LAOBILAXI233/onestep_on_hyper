.class Lcom/smartisanos/launcher/view/Cell$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->getSkewNodeAnimation()Lcom/smartisanos/smengine/AnimationTimeLine;
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
    .line 746
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$3;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onStart()V
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$3;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mSkewNode:Lcom/smartisanos/smengine/SceneNode;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$3;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mSkewNode:Lcom/smartisanos/smengine/SceneNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 752
    :cond_0
    return-void
.end method
