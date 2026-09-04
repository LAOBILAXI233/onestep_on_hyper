.class Lcom/smartisanos/launcher/animations/DockViewAnimation$10;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "DockViewAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/DockViewAnimation;->runHideBubbleForSort(FLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/animations/DockViewAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/DockViewAnimation;

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$10;->this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$10;->this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->access$202(Lcom/smartisanos/launcher/animations/DockViewAnimation;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 1069
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/DockViewAnimation$10;->this$0:Lcom/smartisanos/launcher/animations/DockViewAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/DockViewAnimation;->access$000(Lcom/smartisanos/launcher/animations/DockViewAnimation;)Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->clearSortBubble()V

    .line 1070
    return-void
.end method
