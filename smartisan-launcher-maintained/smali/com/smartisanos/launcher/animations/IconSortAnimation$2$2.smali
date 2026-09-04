.class Lcom/smartisanos/launcher/animations/IconSortAnimation$2$2;
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
    .line 272
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$2;->this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$2;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$2$2;->this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$2;

    iget-object v0, v0, Lcom/smartisanos/launcher/animations/IconSortAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/IconSortAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/IconSortAnimation;->access$200(Lcom/smartisanos/launcher/animations/IconSortAnimation;)V

    .line 276
    return-void
.end method
