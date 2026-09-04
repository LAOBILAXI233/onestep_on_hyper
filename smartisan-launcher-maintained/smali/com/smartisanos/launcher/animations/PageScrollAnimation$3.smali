.class Lcom/smartisanos/launcher/animations/PageScrollAnimation$3;
.super Ljava/lang/Object;
.source "PageScrollAnimation.java"

.implements Laurelienribon/tweenengine/TweenCallback;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/PageScrollAnimation;->playTimeLineAnimation([F[F[Laurelienribon/tweenengine/TweenEquation;[FLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

.field final synthetic val$finish:Ljava/lang/Runnable;


.method constructor <init>(Lcom/smartisanos/launcher/animations/PageScrollAnimation;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    iput-object p2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$3;->val$finish:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Laurelienribon/tweenengine/BaseTween",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p2, "source":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    sparse-switch p1, :sswitch_data_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 213
    :sswitch_0
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onAnimationStart()V

    goto :goto_0

    .line 216
    :sswitch_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onAnimationEnd()V

    .line 217
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$3;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTimeLine:Laurelienribon/tweenengine/Timeline;

    .line 218
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$3;->val$finish:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$3;->val$finish:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 211
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
