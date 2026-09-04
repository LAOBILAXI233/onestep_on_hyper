.class Lcom/smartisanos/launcher/view/AnimationController$7;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "AnimationController.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/AnimationController;->scrollToLeft()Lcom/smartisanos/smengine/AnimationTimeLine;
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
    .line 1114
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController$7;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 2

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$7;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/AnimationController;->access$000(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/view/PageView;->unsinkPageAndhideDotView(F)V

    .line 1118
    return-void
.end method
