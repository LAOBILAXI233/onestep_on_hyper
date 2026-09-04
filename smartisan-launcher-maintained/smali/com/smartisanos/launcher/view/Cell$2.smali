.class Lcom/smartisanos/launcher/view/Cell$2;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Cell.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Cell;->getCubeCellAnimation(F)Lcom/smartisanos/smengine/AnimationTimeLine;
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
    .line 601
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Cell$2;->this$0:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 611
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$2;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mThemesCell:[Lcom/smartisanos/launcher/view/Cell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 612
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$2;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mThemesCell:[Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 613
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 604
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$2;->this$0:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->access$000(Lcom/smartisanos/launcher/view/Cell;Z)V

    .line 605
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$2;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mThemesCell:[Lcom/smartisanos/launcher/view/Cell;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 606
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Cell$2;->this$0:Lcom/smartisanos/launcher/view/Cell;

    iget-object v0, v0, Lcom/smartisanos/launcher/view/Cell;->mThemesCell:[Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 607
    return-void
.end method
