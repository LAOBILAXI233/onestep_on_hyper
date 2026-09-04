.class Lcom/smartisanos/launcher/view/PageView$7;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "PageView.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/PageView;->cleanEmptyPageForSinglePageMode(F)Lcom/smartisanos/smengine/AnimationTimeLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/PageView;


.method constructor <init>(Lcom/smartisanos/launcher/view/PageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/PageView;

    .prologue
    .line 2410
    iput-object p1, p0, Lcom/smartisanos/launcher/view/PageView$7;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 1

    .prologue
    .line 2413
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$7;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->unsinkPageAndhideDotView()V

    .line 2427
    iget-object v0, p0, Lcom/smartisanos/launcher/view/PageView$7;->this$0:Lcom/smartisanos/launcher/view/PageView;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/PageView;->cleanEmptyPageForSinglePageModeNoAnimation()V

    .line 2428
    return-void
.end method
