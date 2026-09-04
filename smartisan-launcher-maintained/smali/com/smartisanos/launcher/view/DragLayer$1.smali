.class Lcom/smartisanos/launcher/view/DragLayer$1;
.super Ljava/lang/Object;
.source "DragLayer.java"

.implements Lcom/smartisanos/smengine/TVelocityAndGestureTracker$GestureListener;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/DragLayer;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/DragLayer;


.method constructor <init>(Lcom/smartisanos/launcher/view/DragLayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/DragLayer;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DragLayer$1;->this$0:Lcom/smartisanos/launcher/view/DragLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onFourFingerHorizontallySlide(Z)V
    .locals 3
    .param p1, "moveRight"    # Z

    .prologue
    .line 96
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->ENABLE_FOUR_FINGER_HORIZONTALLY_SLIDE:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1}, Lcom/smartisanos/launcher/actions/ChangeThemeByFourFingerSlide;->fingerSlide(Z)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/DragLayer;->access$100()Lcom/smartisanos/launcher/LOG;

    move-result-object v0

    const-string v1, "DEBUG"

    const-string v2, "ENABLE_FOUR_FINGER_HORIZONTALLY_SLIDE is false"

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSweep()V
    .locals 4

    .prologue
    .line 87
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v0, v1, :cond_0

    .line 88
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->playCellFlagDismissAnimation()V

    .line 90
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x118

    invoke-virtual {v0, v1, v2, v3}, Lcom/smartisanos/launcher/view/MainView;->requestLockTouch(ZJ)V

    .line 92
    return-void
.end method

.method public onZoomIn()Z
    .locals 2

    .prologue
    .line 79
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer$1;->this$0:Lcom/smartisanos/launcher/view/DragLayer;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DragLayer;->access$000(Lcom/smartisanos/launcher/view/DragLayer;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;)Z

    move-result v0

    .line 82
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onZoomOut()Z
    .locals 2

    .prologue
    .line 70
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->SINGLE_PAGE_MODE:I

    if-ne v0, v1, :cond_0

    .line 71
    const-string v0, "A260007"

    invoke-static {v0}, Lcom/smartisanos/home/tracker/LauncherAgent;->event(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/smartisanos/launcher/view/DragLayer$1;->this$0:Lcom/smartisanos/launcher/view/DragLayer;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/DragLayer;->access$000(Lcom/smartisanos/launcher/view/DragLayer;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->switchPageMode(Lcom/smartisanos/launcher/view/Page;)Z

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
