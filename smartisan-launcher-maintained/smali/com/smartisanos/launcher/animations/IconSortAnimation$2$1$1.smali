.class Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "IconSortAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$2:Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1;


.method constructor <init>(Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1$1;->this$2:Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1$1;->this$2:Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$1;->this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$2;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$200(Lcom/smartisanos/launcher/animations/IconSortAnimation;)V

    .line 264
    return-void
.end method
