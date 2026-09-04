.class Lcom/smartisanos/launcher/animations/CellAnimation$2;
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
    .line 223
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/CellAnimation$2;->this$0:Lcom/smartisanos/launcher/animations/CellAnimation;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 232
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v0

    const/4 v1, 0x1

    .line 233
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TrashView;->setRenderQueue(I)V

    .line 234
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 225
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->getDockView()Lcom/smartisanos/launcher/view/DockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/DockView;->getTrashView()Lcom/smartisanos/launcher/view/TrashView;

    move-result-object v0

    const/4 v1, 0x3

    .line 227
    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/TrashView;->setRenderQueue(I)V

    .line 229
    :cond_0
    return-void
.end method
