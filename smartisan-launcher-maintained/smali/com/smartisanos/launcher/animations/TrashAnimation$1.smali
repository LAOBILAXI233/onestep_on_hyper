.class Lcom/smartisanos/launcher/animations/TrashAnimation$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "TrashAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/TrashAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/TrashAnimation$TRASH_ANIMATION;FLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/TrashAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/animations/TrashAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/TrashAnimation;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/TrashAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/TrashAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/TrashAnimation;->access$000(Lcom/smartisanos/launcher/animations/TrashAnimation;)Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/TrashView$STATUS;->APPEAR:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/TrashView;->setStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V

    .line 67
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/TrashAnimation;->access$102(Z)Z

    .line 68
    return-void
.end method
