.class Lcom/smartisanos/launcher/animations/CellAnimation$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "CellAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/CellAnimation;->handleAnimation(Lcom/smartisanos/launcher/animations/CellAnimation$CELL_ANIMATION;FLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/CellAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/animations/CellAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/CellAnimation;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/CellAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 361
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$200(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Cell;->getItemInfo()Lcom/smartisanos/launcher/data/ItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/data/ItemInfo;->isDockItem()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/CellAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/animations/CellAnimation;->access$200(Lcom/smartisanos/launcher/animations/CellAnimation;)Lcom/smartisanos/launcher/view/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setDrawWithPostEffect(Z)V

    .line 364
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    .line 365
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 366
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 367
    return-void
.end method
