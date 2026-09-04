.class Lcom/smartisanos/launcher/view/Page$11;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Page.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Page;->updatePageCoverFromEyeIcon(ZZ)Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Page;

.field final synthetic val$cell:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page$11;->this$0:Lcom/smartisanos/launcher/view/Page;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Page$11;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onAfterUpdateOneFrame(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1
    .param p1, "sn"    # Lcom/smartisanos/smengine/SceneNode;

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$11;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->setNeedDisplay()V

    .line 1840
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$11;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->setNeedDisplay()V

    .line 1841
    return-void
.end method
