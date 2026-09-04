.class Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;
.super Lcom/smartisanos/smengine/Event;
.source "ChangeThemeHandler.java"


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;


.method constructor <init>(Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;
    .param p2, "type"    # I

    .prologue
    .line 581
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/Event;-><init>(I)V

    return-void
.end method


.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 583
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    sget v1, Lcom/smartisanos/launcher/data/Constants;->screen_width:I

    sget v2, Lcom/smartisanos/launcher/data/Constants;->screen_height:I

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/view/MainView;->createCamera(II)V

    .line 584
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$300(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Z)V

    .line 585
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iget-object v1, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    iget-object v1, v1, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->val$theme:Lcom/smartisanos/launcher/theme/Theme;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$400(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Lcom/smartisanos/launcher/theme/Theme;)V

    .line 586
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iput-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mGaussianBackAnimShow:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 587
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iput-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mGaussianBackAnimHide:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 588
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iput-object v4, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mThemeCubeAnim:Lcom/smartisanos/smengine/AnimationTimeLine;

    .line 595
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 596
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockTouchEvent()V

    .line 597
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    iput-boolean v3, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->mIsForceFinishThemeAnim:Z

    .line 598
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$502(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Z)Z

    .line 599
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$602(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Z)Z

    .line 600
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$702(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Z)Z

    .line 601
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$802(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Z)Z

    .line 602
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$902(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Z)Z

    .line 603
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0, v3}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$1002(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;Z)Z

    .line 604
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4$1;->this$1:Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;

    iget-object v0, v0, Lcom/smartisanos/launcher/theme/ChangeThemeHandler$4;->this$0:Lcom/smartisanos/launcher/theme/ChangeThemeHandler;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/ChangeThemeHandler;->access$1100(Lcom/smartisanos/launcher/theme/ChangeThemeHandler;)V

    .line 605
    return-void
.end method
