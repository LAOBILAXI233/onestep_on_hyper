.class Lcom/smartisanos/launcher/view/MainView$11;
.super Ljava/lang/Object;
.source "MainView.java"

.implements Laurelienribon/tweenengine/TweenCallback;


.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/launcher/view/MainView;->playCellFlagDismissAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/view/MainView;


.method constructor <init>(Lcom/smartisanos/launcher/view/MainView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/view/MainView;

    .prologue
    .line 2075
    iput-object p1, p0, Lcom/smartisanos/launcher/view/MainView$11;->this$0:Lcom/smartisanos/launcher/view/MainView;

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
    .line 2079
    .local p2, "source":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    packed-switch p1, :pswitch_data_0

    .line 2086
    :goto_0
    return-void

    .line 2081
    :pswitch_0
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView$11;->this$0:Lcom/smartisanos/launcher/view/MainView;

    invoke-static {v0}, Lcom/smartisanos/launcher/view/MainView;->access$700(Lcom/smartisanos/launcher/view/MainView;)V

    .line 2082
    iget-object v0, p0, Lcom/smartisanos/launcher/view/MainView$11;->this$0:Lcom/smartisanos/launcher/view/MainView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/view/MainView;->access$802(Lcom/smartisanos/launcher/view/MainView;Z)Z

    goto :goto_0

    .line 2079
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method
