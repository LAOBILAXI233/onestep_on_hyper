.class public Lcom/smartisanos/launcher/view/FloatPageNode$MyTouchListener;
.super Ljava/lang/Object;
.source "FloatPageNode.java"

.implements Lcom/smartisanos/smengine/SceneNode$TouchListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/FloatPageNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyTouchListener"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/FloatPageNode;


.method public constructor <init>(Lcom/smartisanos/launcher/view/FloatPageNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/FloatPageNode;

    .prologue
    .line 609
    iput-object p1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onDown(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 612
    return-void
.end method

.method public onMove(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 645
    return-void
.end method

.method public onUp(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 647
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$902(Lcom/smartisanos/launcher/view/FloatPageNode;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;

    .line 648
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$200(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    if-nez v0, :cond_0

    .line 657
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$100(Lcom/smartisanos/launcher/view/FloatPageNode;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 653
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$400(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->forceFinish()V

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$200(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->getSelectedCell()Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Cell;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    goto :goto_0
.end method
