.class Lcom/smartisanos/launcher/view/FlagDismissAnimation$1;
.super Ljava/lang/Object;
.source "FlagDismissAnimation.java"

.implements Laurelienribon/tweenengine/TweenCallback;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/FlagDismissAnimation;->play(Laurelienribon/tweenengine/Timeline;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/FlagDismissAnimation;


.method constructor <init>(Lcom/smartisanos/launcher/view/FlagDismissAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/FlagDismissAnimation;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation$1;->this$0:Lcom/smartisanos/launcher/view/FlagDismissAnimation;

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
    .line 146
    .local p2, "source":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    sparse-switch p1, :sswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 148
    :sswitch_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation$1;->this$0:Lcom/smartisanos/launcher/view/FlagDismissAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->access$000(Lcom/smartisanos/launcher/view/FlagDismissAnimation;)V

    goto :goto_0

    .line 152
    :sswitch_1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation$1;->this$0:Lcom/smartisanos/launcher/view/FlagDismissAnimation;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->access$100(Lcom/smartisanos/launcher/view/FlagDismissAnimation;)V

    .line 153
    iget-object v0, p0, Lcom/smartisanos/launcher/view/FlagDismissAnimation$1;->this$0:Lcom/smartisanos/launcher/view/FlagDismissAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/FlagDismissAnimation;->access$202(Lcom/smartisanos/launcher/view/FlagDismissAnimation;Laurelienribon/tweenengine/Tween;)Laurelienribon/tweenengine/Tween;

    goto :goto_0

    .line 146
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
