.class Lcom/smartisanos/launcher/view/Page$4;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Page.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Page;->createEmptyCell(IIZLcom/smartisanos/smengine/Animation$AnimationListener;)Lcom/smartisanos/launcher/view/Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Page;

.field final synthetic val$pc:Lcom/smartisanos/launcher/view/Cell;


.method constructor <init>(Lcom/smartisanos/launcher/view/Page;Lcom/smartisanos/launcher/view/Cell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 848
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page$4;->this$0:Lcom/smartisanos/launcher/view/Page;

    iput-object p2, p0, Lcom/smartisanos/launcher/view/Page$4;->val$pc:Lcom/smartisanos/launcher/view/Cell;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onBegin()V
    .locals 2

    .prologue
    .line 851
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBegin()V

    .line 852
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$4;->val$pc:Lcom/smartisanos/launcher/view/Cell;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/Cell;->setVisibility(Z)V

    .line 854
    return-void
.end method

.method public onEnd()V
    .locals 0

    .prologue
    .line 857
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onEnd()V

    .line 858
    return-void
.end method
