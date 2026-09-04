.class Lcom/smartisanos/launcher/view/PageView$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "PageView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/PageView;->resetAllPageBackground()Lcom/smartisanos/smengine/AnimationTimeLine;
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
    .line 652
    iput-object p1, p0, Lcom/smartisanos/launcher/view/PageView$3;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    .line 655
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x200

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 657
    return-void
.end method
