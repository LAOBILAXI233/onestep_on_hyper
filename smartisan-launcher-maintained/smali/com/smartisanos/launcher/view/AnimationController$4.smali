.class Lcom/smartisanos/launcher/view/AnimationController$4;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "AnimationController.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/AnimationController;->relayoutPageCell(Ljava/util/ArrayList;FLcom/smartisanos/smengine/AnimationTimeLine;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/AnimationController;


.method constructor <init>(Lcom/smartisanos/launcher/view/AnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/AnimationController;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController$4;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 513
    sget v0, Lcom/smartisanos/launcher/data/Constants;->sPageMode:I

    sget v1, Lcom/smartisanos/launcher/data/Constants;->MULTI_PAGE_MODE:I

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/smartisanos/launcher/theme/ThemeManager;->mNeedResetBackgroundInMultiPageMode:Z

    if-nez v0, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/data/Constants;->sIsGaussianTheme:Z

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$4;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/AnimationController;->access$000(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->resetAllPageBackground()Lcom/smartisanos/smengine/AnimationTimeLine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/AnimationTimeLine;->start()V

    goto :goto_0
.end method
