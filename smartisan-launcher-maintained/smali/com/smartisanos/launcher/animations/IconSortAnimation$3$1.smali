.class Lcom/smartisanos/launcher/animations/IconSortAnimation$3$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "IconSortAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/IconSortAnimation$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$3;


.method constructor <init>(Lcom/smartisanos/launcher/animations/IconSortAnimation$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/animations/IconSortAnimation$3;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$3$1;->this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$3;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$3$1;->this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$3;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$200(Lcom/smartisanos/launcher/animations/IconSortAnimation;)V

    .line 294
    return-void
.end method
