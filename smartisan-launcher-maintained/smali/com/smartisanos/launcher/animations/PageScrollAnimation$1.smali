.class Lcom/smartisanos/launcher/animations/PageScrollAnimation$1;
.super Ljava/lang/Object;
.source "PageScrollAnimation.java"

.implements Laurelienribon/tweenengine/TweenCallback;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/animations/PageScrollAnimation;->playAnimation([F[FLaurelienribon/tweenengine/TweenEquation;FZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

.field final synthetic val$callBack:Z

.field final synthetic val$finish:Ljava/lang/Runnable;


.method constructor <init>(Lcom/smartisanos/launcher/animations/PageScrollAnimation;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    iput-boolean p2, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$1;->val$callBack:Z

    iput-object p3, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$1;->val$finish:Ljava/lang/Runnable;

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
    .line 151
    .local p2, "source":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    sparse-switch p1, :sswitch_data_0

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 153
    :sswitch_0
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$1;->val$callBack:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onAnimationStart()V

    goto :goto_0

    .line 158
    :sswitch_1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$1;->val$callBack:Z

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    invoke-virtual {v0}, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->onAnimationEnd()V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$1;->this$0:Lcom/smartisanos/launcher/animations/PageScrollAnimation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/smartisanos/launcher/animations/PageScrollAnimation;->mTween:Laurelienribon/tweenengine/Tween;

    .line 162
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$1;->val$finish:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/smartisanos/launcher/animations/PageScrollAnimation$1;->val$finish:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 151
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
