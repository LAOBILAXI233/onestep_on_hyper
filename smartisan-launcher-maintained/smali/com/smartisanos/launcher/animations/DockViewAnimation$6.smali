.class Lcom/smartisanos/launcher/animations/DockViewAnimation$6;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "DockViewAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/DockViewAnimation;->runShowSortButton(FLjava/util/List;)V
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
    .line 858
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$6;->this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$6;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$6;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 862
    return-void
.end method
