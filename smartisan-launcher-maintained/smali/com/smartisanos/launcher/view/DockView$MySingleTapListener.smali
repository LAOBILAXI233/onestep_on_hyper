.class public final Lcom/smartisanos/launcher/view/DockView$MySingleTapListener;
.super Ljava/lang/Object;
.source "DockView.java"

.implements Lcom/smartisanos/smengine/SceneNode$SingleTapListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/DockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MySingleTapListener"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/DockView;


.method public constructor <init>(Lcom/smartisanos/launcher/view/DockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView$MySingleTapListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onClick(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 7
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v2, 0x0

    .line 1174
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$MySingleTapListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateX()F

    move-result v1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/launcher/view/DockView;->getDockCellByTouchPoint(FF)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 1175
    .local v6, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v6, :cond_1

    .line 1176
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$MySingleTapListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DockView;->access$800(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$MySingleTapListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DockView;->access$900(Lcom/smartisanos/launcher/view/DockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$MySingleTapListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/DockView;->access$802(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;

    .line 1179
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/TouchEvent;

    const/4 v1, 0x6

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;-><init>(IFFFF)V

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/view/Cell;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    .line 1183
    :cond_1
    return-void
.end method
