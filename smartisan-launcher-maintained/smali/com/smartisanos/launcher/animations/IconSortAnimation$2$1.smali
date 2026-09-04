.class Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1;
.super Lcom/smartisanos/smengine/Event;
.source "IconSortAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/IconSortAnimation$2;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$2;


.method constructor <init>(Lcom/smartisanos/launcher/animations/IconSortAnimation$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/animations/IconSortAnimation$2;
    .param p2, "type"    # I

    .prologue
    .line 257
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1;->this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$2;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    .line 260
    iget-object v1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1;->this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$2;

    iget-object v1, v1, Lcom/smartisanos/launcher/animations/IconSortAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$100(Lcom/smartisanos/launcher/animations/IconSortAnimation;Z)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    .line 261
    .local v0, "backTimeline":Lcom/smartisanos/smengine/AnimationTimeLine;
    new-instance v1, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1$1;-><init>(Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/AnimationTimeLine;->setAnimationListener(Lcom/smartisanos/smengine/Animation$AnimationListener;)V

    .line 266
    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 267
    return-void
.end method
