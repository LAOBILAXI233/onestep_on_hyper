.class Lcom/smartisanos/launcher/animations/PageScrollAnimation$5;
.super Ljava/lang/Object;
.source "PageScrollAnimation.java"

.implements Laurelienribon/tweenengine/TweenCallback;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/PageScrollAnimation;->pressedHomeKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/animations/PageScrollAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$5;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Laurelienribon/tweenengine/BaseTween",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p2, "source":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    sparse-switch p1, :sswitch_data_0

    .line 481
    :goto_0
    return-void

    .line 473
    :sswitch_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$5;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onAnimationStart()V

    goto :goto_0

    .line 476
    :sswitch_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$5;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onAnimationEnd()V

    .line 477
    invoke-static {}, Lcom/smartisanos/launcher/view/MainView;->getInstance()Lcom/smartisanos/launcher/view/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/view/MainView;->unLockHardKey()V

    .line 478
    invoke-static {}, Lcom/smartisanos/launcher/StatusManager;->getInstance()Lcom/smartisanos/launcher/StatusManager;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/launcher/StatusManager;->setLauncherStatus(IZ)V

    goto :goto_0

    .line 471
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
