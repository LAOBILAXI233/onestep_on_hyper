.class Lcom/smartisanos/launcher/animations/PageViewAnimation$2;
.super Lcom/smartisanos/smengine/Event;
.source "PageViewAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/PageViewAnimation;->switchPageViewByMode(Lcom/smartisanos/launcher/view/Page;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/animations/PageViewAnimation;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/PageViewAnimation;
    .param p2, "type"    # I

    .prologue
    .line 432
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageViewAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/PageViewAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/PageViewAnimation;->access$200(Lcom/smartisanos/launcher/animations/PageViewAnimation;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    .line 435
    return-void
.end method
