.class final Lcom/smartisanos/launcher/view/CellConvertAnimation$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "CellConvertAnimation.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/CellConvertAnimation;->triggerConvertAnimation(Lcom/smartisanos/launcher/view/Cell;FFFZZLjava/lang/Runnable;)Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


.field final synthetic val$cell:Lcom/smartisanos/launcher/view/Cell;

.field final synthetic val$finisher:Ljava/lang/Runnable;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$3;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$3;->val$finisher:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 452
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 453
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$3;->val$cell:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundConvertAnimTimeLine:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 454
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$3;->val$finisher:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/smartisanos/launcher/view/CellConvertAnimation$3;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 457
    :cond_0
    return-void
.end method
