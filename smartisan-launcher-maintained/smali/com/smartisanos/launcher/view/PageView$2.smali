.class Lcom/smartisanos/launcher/view/PageView$2;
.super Lcom/smartisanos/smengine/Event;
.source "PageView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/PageView;->updateCells(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/PageView;

.field final synthetic val$list:Ljava/util/List;


.method constructor <init>(Lcom/smartisanos/launcher/view/PageView;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/PageView;
    .param p2, "type"    # I

    .prologue
    .line 561
    iput-object p1, p0, Lcom/smartisanos/launcher/view/PageView$2;->this$0:Lcom/smartisanos/launcher/view/PageView;

    iput-object p3, p0, Lcom/smartisanos/launcher/view/PageView$2;->val$list:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$2;->this$0:Lcom/smartisanos/launcher/view/PageView;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/PageView$2;->val$list:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->updateCells(Ljava/util/List;)V

    .line 565
    return-void
.end method
