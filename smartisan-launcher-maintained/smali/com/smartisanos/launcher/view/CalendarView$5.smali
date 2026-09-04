.class Lcom/smartisanos/launcher/view/CalendarView$5;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "CalendarView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CalendarView;->getChangeDateAnim(Z)Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/CalendarView;


.method constructor <init>(Lcom/smartisanos/launcher/view/CalendarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/CalendarView;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CalendarView$5;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 686
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    if-ne v0, v1, :cond_0

    .line 687
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getFloatPageNode()Lcom/smartisanos/launcher/view/FloatPageNode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$5;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$700(Lcom/smartisanos/launcher/view/CalendarView;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 671
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$5;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$600(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 672
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$5;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$000(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 673
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$5;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$500(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 674
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$5;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$200(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->setVisibility(Z)V

    .line 675
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$5;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$400(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 676
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$5;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$400(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 677
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$5;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$500(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/RectNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/RectNode;->setColor(FFFF)V

    .line 678
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$5;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$200(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 679
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$5;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$200(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/SceneNode;->getChildCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$5;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$200(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CalendarView$5;->this$0:Lcom/smartisanos/launcher/view/CalendarView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/CalendarView;->access$200(Lcom/smartisanos/launcher/view/CalendarView;)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/smartisanos/smengine/SceneNode;->getChildAt(I)Lcom/smartisanos/smengine/SceneNode;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/smartisanos/smengine/SceneNode;->setColor(FFFF)V

    .line 682
    :cond_0
    return-void
.end method
