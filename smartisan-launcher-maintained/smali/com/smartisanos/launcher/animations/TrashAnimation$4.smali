.class Lcom/smartisanos/launcher/animations/TrashAnimation$4;
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
    .line 168
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/TrashAnimation$4;->this$0:Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/TrashAnimation$4;->this$0:Lcom/smartisanos/launcher/animations/TrashAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/TrashAnimation;->access$000(Lcom/smartisanos/launcher/animations/TrashAnimation;)Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v0

    sget-object v1, Lcom/smartisanos/launcher/view/TrashView$STATUS;->FLOAT_UP:Lcom/smartisanos/launcher/view/TrashView$STATUS;

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/TrashView;->setStatus(Lcom/smartisanos/launcher/view/TrashView$STATUS;Z)V

    .line 172
    invoke-static {v2}, Lcom/smartisanos/launcher/animations/TrashAnimation;->access$302(Z)Z

    .line 173
    return-void
.end method
