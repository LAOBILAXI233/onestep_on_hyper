.class Lcom/smartisanos/launcher/view/Cell$9;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->cellUpOnPageView(Lcom/smartisanos/launcher/view/Page;FZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Cell;

    .prologue
    .line 2018
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$9;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$9;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mBackgroundAlphaRect:Lcom/smartisanos/smengine/RectNode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/RectNode;->setVisibility(Z)V

    .line 2021
    return-void
.end method
