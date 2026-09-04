.class Lcom/smartisanos/launcher/animations/DockViewAnimation$5;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "DockViewAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/DockViewAnimation;->runAppToBrightness(FLjava/util/List;)V
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
    .line 735
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$5;->this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$5;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$5;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setForegroundRectBlendMode(I)V

    .line 739
    return-void
.end method
