.class Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "PageScrollAnimationDefault.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;->unSinkPage(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;

.field final synthetic val$finish:Ljava/lang/Runnable;


.method constructor <init>(Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault$1;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault$1;->val$finish:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 114
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/high16 v1, 0x400000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 115
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault$1;->val$finish:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimationDefault$1;->val$finish:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 118
    :cond_0
    return-void
.end method
