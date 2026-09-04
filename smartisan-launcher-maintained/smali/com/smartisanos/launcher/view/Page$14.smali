.class Lcom/smartisanos/launcher/view/Page$14;
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

.field final synthetic val$handleLockHardKey:Z


.method constructor <init>(Lcom/smartisanos/launcher/view/Page;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page$14;->this$0:Lcom/smartisanos/launcher/view/Page;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/view/Page$14;->val$handleLockHardKey:Z

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 1

    .prologue
    .line 1883
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Page$14;->val$handleLockHardKey:Z

    if-eqz v0, :cond_0

    .line 1884
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->lockHardKey()V

    .line 1886
    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    .prologue
    .line 1890
    iget-boolean v0, p0, Lcom/smartisanos/launcher/view/Page$14;->val$handleLockHardKey:Z

    if-eqz v0, :cond_0

    .line 1891
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 1893
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$14;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Page;->access$100(Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1894
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$14;->this$0:Lcom/smartisanos/launcher/view/Page;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Page;->access$202(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1895
    return-void
.end method
