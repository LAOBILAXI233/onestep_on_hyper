.class public final Lcom/smartisanos/launcher/view/DockView$MyTouchListener;
.super Ljava/lang/Object;
.source "DockView.java"

.implements Lcom/smartisanos/smengine/SceneNode$TouchListener;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/view/DockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyTouchListener"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/DockView;


.method public constructor <init>(Lcom/smartisanos/launcher/view/DockView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/DockView;

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onDown(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    .line 1124
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "luwei"

    const-string v2, "onDown"

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateX()F

    move-result v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/view/DockView;->getDockCellByTouchPoint(FF)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 1126
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$900(Lcom/smartisanos/launcher/view/DockView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1, v0}, Lcom/smartisanos/launcher/view/DockView;->access$802(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;

    .line 1129
    :cond_1
    return-void
.end method

.method public onMove(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v4, 0x0

    .line 1151
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateX()F

    move-result v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/view/DockView;->getDockCellByTouchPoint(FF)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 1152
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$800(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1153
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$800(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$900(Lcom/smartisanos/launcher/view/DockView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1, v4}, Lcom/smartisanos/launcher/view/DockView;->access$802(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1156
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$800(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 1157
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$900(Lcom/smartisanos/launcher/view/DockView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1158
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1, v4}, Lcom/smartisanos/launcher/view/DockView;->access$802(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;

    goto :goto_0

    .line 1160
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$800(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    .line 1162
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$800(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public onUp(Lcom/smartisanos/smengine/TouchEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/smartisanos/smengine/TouchEvent;

    .prologue
    const/4 v4, 0x0

    .line 1132
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateX()F

    move-result v2

    invoke-virtual {p1}, Lcom/smartisanos/smengine/TouchEvent;->getWorldCoordinateY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/smartisanos/launcher/view/DockView;->getDockCellByTouchPoint(FF)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    .line 1133
    .local v0, "cell":Lcom/smartisanos/launcher/view/Cell;
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$800(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1134
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$900(Lcom/smartisanos/launcher/view/DockView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1135
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1, v4}, Lcom/smartisanos/launcher/view/DockView;->access$802(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;

    .line 1146
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/smartisanos/launcher/LOG;->ENABLE_DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "luwei"

    const-string v2, "## dockview touch up ##"

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    :cond_1
    return-void

    .line 1137
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$800(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 1138
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$900(Lcom/smartisanos/launcher/view/DockView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1, v4}, Lcom/smartisanos/launcher/view/DockView;->access$802(Lcom/smartisanos/launcher/view/DockView;Lcom/smartisanos/launcher/view/Cell;)Lcom/smartisanos/launcher/view/Cell;

    goto :goto_0

    .line 1141
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$800(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-nez v1, :cond_4

    if-nez v0, :cond_0

    .line 1143
    :cond_4
    iget-object v1, p0, Lcom/smartisanos/launcher/view/DockView$MyTouchListener;->this$0:Lcom/smartisanos/launcher/view/DockView;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/DockView;->access$800(Lcom/smartisanos/launcher/view/DockView;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    goto :goto_0
.end method
