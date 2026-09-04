.class Lcom/smartisanos/launcher/view/Page$17;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Page.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Page;->showLongPressGaussianRect(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Page;


.method constructor <init>(Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 2672
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page$17;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$17;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/Page;->access$300(Lcom/smartisanos/launcher/view/Page;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 2675
    return-void
.end method
