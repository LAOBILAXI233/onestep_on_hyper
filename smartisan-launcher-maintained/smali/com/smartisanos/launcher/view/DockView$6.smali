.class Lcom/smartisanos/launcher/view/DockView$6;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "DockView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/DockView;->getCellChangeThemeAnimation(ZF)Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/DockView;


.method constructor <init>(Lcom/smartisanos/launcher/view/DockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 1684
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView$6;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1703
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$6;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DockView;->access$1200(Lcom/smartisanos/launcher/view/DockView;)[Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/DockView;->setVisibility(Z)V

    .line 1704
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$6;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DockView;->access$1200(Lcom/smartisanos/launcher/view/DockView;)[Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/DockView;->setVisibility(Z)V

    .line 1705
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1687
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$6;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$1000(Lcom/smartisanos/launcher/view/DockView;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1688
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$6;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$1000(Lcom/smartisanos/launcher/view/DockView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1689
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$6;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$1000(Lcom/smartisanos/launcher/view/DockView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/launcher/view/Cell;

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 1688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1692
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$6;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$1100(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1693
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$6;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$1100(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 1695
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$6;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$100(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/DotView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1696
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$6;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$100(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/DotView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/view/DotView;->setVisibility(Z)V

    .line 1698
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$6;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$1200(Lcom/smartisanos/launcher/view/DockView;)[Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/DockView;->setVisibility(Z)V

    .line 1699
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$6;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$1200(Lcom/smartisanos/launcher/view/DockView;)[Lcom/smartisanos/launcher/view/DockView;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/smartisanos/launcher/view/DockView;->setVisibility(Z)V

    .line 1700
    return-void
.end method
