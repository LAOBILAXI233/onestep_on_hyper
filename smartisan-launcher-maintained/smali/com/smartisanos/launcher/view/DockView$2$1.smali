.class Lcom/smartisanos/launcher/view/DockView$2$1;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "DockView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/DockView$2;->onClick(Lcom/smartisanos/smengine/SceneNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/view/DockView$2;


.method constructor <init>(Lcom/smartisanos/launcher/view/DockView$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/view/DockView$2;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/smartisanos/launcher/view/DockView$2$1;->this$1:Lcom/smartisanos/launcher/view/DockView$2;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 1

    .prologue
    .line 357
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getInstance()Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->getInstance()Lcom/smartisanos/launcher/actions/sort/HandleIconSort;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/actions/sort/HandleIconSort;->clear()V

    .line 360
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 361
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 362
    return-void
.end method
