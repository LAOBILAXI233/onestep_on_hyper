.class Lcom/smartisanos/launcher/view/Cell$10;
.super Lcom/smartisanos/smengine/Event;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->setDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Cell;
    .param p2, "type"    # I

    .prologue
    .line 2093
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$10;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2096
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$10;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mDownStateRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v0, :cond_0

    .line 2097
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$10;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mDownStateRect:Lcom/smartisanos/smengine/RectNode;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 2099
    :cond_0
    return-void
.end method
