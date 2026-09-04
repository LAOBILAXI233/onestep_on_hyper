.class Lcom/smartisanos/launcher/view/AnimationController$3;
.super Lcom/smartisanos/smengine/Animation$AnimationListener;
.source "AnimationController.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/AnimationController;->changeScreenAnimation()V
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
    .line 455
    iput-object p1, p0, Lcom/smartisanos/launcher/view/AnimationController$3;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-direct {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;-><init>()V

    return-void
.end method


.method public onComplete()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 467
    invoke-super {p0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    .line 468
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$3;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/AnimationController;->access$400(Lcom/smartisanos/launcher/view/AnimationController;)V

    .line 470
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$3;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mIsChangeScreen:Z

    .line 471
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$3;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/AnimationController;->access$502(Lcom/smartisanos/launcher/view/AnimationController;Z)Z

    .line 472
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$3;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/AnimationController;->access$602(Lcom/smartisanos/launcher/view/AnimationController;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 475
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$3;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/AnimationController;->access$000(Lcom/smartisanos/launcher/view/AnimationController;)Lcom/smartisanos/launcher/view/PageView;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/launcher/view/AnimationController$3;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v1}, Lcom/smartisanos/launcher/view/AnimationController;->access$700(Lcom/smartisanos/launcher/view/AnimationController;)I

    move-result v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/PageView;->_re_post_changeScreen(IF)V

    .line 478
    return-void
.end method

.method public onKill()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 458
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$3;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/AnimationController;->access$400(Lcom/smartisanos/launcher/view/AnimationController;)V

    .line 460
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$3;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    iput-boolean v1, v0, Lcom/smartisanos/launcher/view/AnimationController;->mIsChangeScreen:Z

    .line 461
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$3;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/AnimationController;->access$502(Lcom/smartisanos/launcher/view/AnimationController;Z)Z

    .line 462
    iget-object v0, p0, Lcom/smartisanos/launcher/view/AnimationController$3;->this$0:Lcom/smartisanos/launcher/view/AnimationController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/AnimationController;->access$602(Lcom/smartisanos/launcher/view/AnimationController;Lcom/smartisanos/smengine/AnimationTimeLine;)Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 464
    return-void
.end method
