.class public final Lcom/smartisanos/launcher/view/DockView$MyLongPressListener;
.super Ljava/lang/Object;
.source "DockView.java"

.implements Lcom/smartisanos/smengine/SceneNode$LongPressListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/DockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyLongPressListener"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/DockView;


.method public constructor <init>(Lcom/smartisanos/launcher/view/DockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView$MyLongPressListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onLongPressed(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v2, 0x0

    .line 1092
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateX()F

    move-result v7

    .line 1093
    .local v7, "worldx":F
    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateY()F

    move-result v8

    .line 1094
    .local v8, "worldy":F
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$MyLongPressListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {v0, v7, v8}, Lcom/smartisanos/launcher/view/DockView;->getDockCellByTouchPoint(FF)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v6

    .line 1095
    .local v6, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v6, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$MyLongPressListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DockView;->access$800(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$MyLongPressListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DockView;->access$900(Lcom/smartisanos/launcher/view/DockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DockView$MyLongPressListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/DockView;->access$802(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;

    .line 1101
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/TouchEvent;

    const/4 v1, 0x4

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/smengine/TouchEvent;-><init>(IFFFF)V

    invoke-virtual {v6, v0}, Lcom/smartisanos/launcher/view/Cell;->onTouchEvent(Lcom/smartisanos/smengine/TouchEvent;)Z

    .line 1105
    :cond_1
    :goto_0
    return-void

    .line 1103
    :cond_2
    sget-boolean v0, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/DockView;->access$300()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    const-string v2, "Nothing is selected by long press !!!"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
