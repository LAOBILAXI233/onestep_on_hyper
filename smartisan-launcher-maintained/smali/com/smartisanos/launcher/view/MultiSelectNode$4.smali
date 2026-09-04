.class Lcom/smartisanos/launcher/view/MultiSelectNode$4;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "MultiSelectNode.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MultiSelectNode;->orig_multiSelectUp(Lcom/smartisanos/smengine/AnimationTimeLine;)V
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
    .line 1023
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$4;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MultiSelectNode$4;->this$0:Lcom/smartisanos/launcher/view/MultiSelectNode;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/MultiSelectNode;->mPageView:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyScreenNoAnimation()V

    .line 1027
    return-void
.end method
