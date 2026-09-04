.class Lcom/smartisanos/launcher/animations/IconSortAnimation$5$1;
.super Lcom/smartisanos/smengine/Event;
.source "IconSortAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/IconSortAnimation$5;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$5;


.method constructor <init>(Lcom/smartisanos/launcher/animations/IconSortAnimation$5;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/animations/IconSortAnimation$5;
    .param p2, "type"    # I

    .prologue
    .line 423
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$5$1;->this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$5;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/IconSortAnimation$5$1;->this$1:Lcom/smartisanos/launcher/animations/IconSortAnimation$5;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/IconSortAnimation$5;->access$300(Lcom/smartisanos/launcher/animations/IconSortAnimation$5;)V

    .line 427
    return-void
.end method
