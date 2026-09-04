.class Lcom/smartisanos/launcher/view/PageView$9;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "PageView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/PageView;->slidingDockLeftAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/PageView;


.method constructor <init>(Lcom/smartisanos/launcher/view/PageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/PageView;

    .prologue
    .line 2652
    iput-object p1, p0, Lcom/smartisanos/launcher/view/PageView$9;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    .line 2655
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/high16 v1, 0x200000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 2656
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$9;->this$0:Lcom/smartisanos/launcher/view/PageView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/PageView;->mSlidingDockAnimation:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 2657
    return-void
.end method
