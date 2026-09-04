.class Lcom/smartisanos/launcher/view/Cell$11;
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
    .line 2112
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$11;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2115
    const v0, 0x3f65e5e6

    .line 2116
    .local v0, "colorUnit":F
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$11;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Cell;->mForegroundRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_0

    .line 2117
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$11;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Cell;->mForegroundRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v0, v0, v0, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 2119
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$11;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Cell;->mForegroundOverlapRect:Lcom/smartisanos/smengine/RectNode;

    if-eqz v1, :cond_1

    .line 2120
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$11;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Cell;->mForegroundOverlapRect:Lcom/smartisanos/smengine/RectNode;

    invoke-virtual {v1, v0, v0, v0, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 2122
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$11;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Cell;->mAppNameRect:Lcom/smartisanos/launcher/view/TextView;

    if-eqz v1, :cond_2

    .line 2123
    iget-object v1, p0, Lcom/smartisanos/launcher/view/Cell$11;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/Cell;->mAppNameRect:Lcom/smartisanos/launcher/view/TextView;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/view/TextView;->getTextView()Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-virtual {v1, v0, v0, v0, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 2125
    :cond_2
    return-void
.end method
