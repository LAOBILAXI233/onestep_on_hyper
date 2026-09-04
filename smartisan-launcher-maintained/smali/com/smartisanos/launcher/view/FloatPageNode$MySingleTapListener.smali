.class public Lcom/smartisanos/launcher/view/FloatPageNode$MySingleTapListener;
.super Ljava/lang/Object;
.source "FloatPageNode.java"

.implements Lcom/smartisanos/smengine/SceneNode$SingleTapListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/FloatPageNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySingleTapListener"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/FloatPageNode;


.method public constructor <init>(Lcom/smartisanos/launcher/view/FloatPageNode;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/FloatPageNode;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$MySingleTapListener;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$MySingleTapListener;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    iget-object v1, p0, Lcom/smartisanos/launcher/view/FloatPageNode$MySingleTapListener;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$000(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Page;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/smartisanos/launcher/view/Page;->getCellByTouchPoint(Lcom/smartisanos/smengine/TouchEvent;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$902(Lcom/smartisanos/launcher/view/FloatPageNode;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;

    .line 480
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$MySingleTapListener;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$900(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$MySingleTapListener;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$900(Lcom/smartisanos/launcher/view/FloatPageNode;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smartisanos/launcher/view/Cell;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    .line 482
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$MySingleTapListener;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/FloatPageNode;->access$902(Lcom/smartisanos/launcher/view/FloatPageNode;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;

    .line 486
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FloatPageNode$MySingleTapListener;->this$0:Lcom/smartisanos/launcher/view/FloatPageNode;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/FloatPageNode;->resetPage()V

    goto :goto_0
.end method
