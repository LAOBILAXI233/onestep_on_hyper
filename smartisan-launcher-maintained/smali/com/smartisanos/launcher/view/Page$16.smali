.class Lcom/smartisanos/launcher/view/Page$16;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "Page.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/Page;->hidePageShadow(Lcom/smartisanos/smengine/AnimationTimeLine;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/Page;


.method constructor <init>(Lcom/smartisanos/launcher/view/Page;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/Page;

    .prologue
    .line 2501
    iput-object p1, p0, Lcom/smartisanos/launcher/view/Page$16;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 1

    .prologue
    .line 2503
    iget-object v0, p0, Lcom/smartisanos/launcher/view/Page$16;->this$0:Lcom/smartisanos/launcher/view/Page;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/Page;->hideLongPressGaussianRect()V

    .line 2504
    return-void
.end method
