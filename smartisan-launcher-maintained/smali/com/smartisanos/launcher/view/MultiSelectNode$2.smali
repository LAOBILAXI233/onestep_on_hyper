.class Lcom/smartisanos/launcher/view/MultiSelectNode$2;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MultiSelectNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MultiSelectNode;->MultiSelectConcentrateAnimation(Lcom/smartisanos/smengine/AnimationTimeLine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;


.method constructor <init>(Lcom/smartisanos/launcher/view/MultiSelectNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MultiSelectNode;

    .prologue
    .line 637
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$2;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 640
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 641
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$2;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$000(Lcom/smartisanos/launcher/view/MultiSelectNode;)Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/MultiSelectConcentrateAnimation;->mIsPlaying:Z

    .line 642
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$2;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/MultiSelectNode;->access$1302(Lcom/smartisanos/launcher/view/MultiSelectNode;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 643
    return-void
.end method
