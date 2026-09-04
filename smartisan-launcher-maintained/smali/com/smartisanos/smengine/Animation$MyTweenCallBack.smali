.class public final Lcom/smartisanos/smengine/Animation$MyTweenCallBack;
.super Ljava/lang/Object;
.source "Animation.java"

.implements Laurelienribon/tweenengine/TweenCallback;


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyTweenCallBack"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/smengine/Animation;


.method public constructor <init>(Lcom/smartisanos/smengine/Animation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/smengine/Animation;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;->this$0:Lcom/smartisanos/smengine/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


.method public onEvent(ILaurelienribon/tweenengine/BaseTween;)V
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Laurelienribon/tweenengine/BaseTween",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p2, "source":Laurelienribon/tweenengine/BaseTween;, "Laurelienribon/tweenengine/BaseTween<*>;"
    iget-object v0, p0, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;->this$0:Lcom/smartisanos/smengine/Animation;

    iget-object v0, v0, Lcom/smartisanos/smengine/Animation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 78
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 91
    :sswitch_0
    iget-object v0, p0, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;->this$0:Lcom/smartisanos/smengine/Animation;

    iget-object v0, v0, Lcom/smartisanos/smengine/Animation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBegin()V

    goto :goto_0

    .line 81
    :sswitch_1
    iget-object v0, p0, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;->this$0:Lcom/smartisanos/smengine/Animation;

    iget-object v0, v0, Lcom/smartisanos/smengine/Animation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onStart()V

    goto :goto_0

    .line 86
    :sswitch_2
    iget-object v0, p0, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;->this$0:Lcom/smartisanos/smengine/Animation;

    iget-object v0, v0, Lcom/smartisanos/smengine/Animation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onEnd()V

    goto :goto_0

    .line 96
    :sswitch_3
    iget-object v0, p0, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;->this$0:Lcom/smartisanos/smengine/Animation;

    iget-object v0, v0, Lcom/smartisanos/smengine/Animation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onComplete()V

    goto :goto_0

    .line 101
    :sswitch_4
    iget-object v0, p0, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;->this$0:Lcom/smartisanos/smengine/Animation;

    iget-object v0, v0, Lcom/smartisanos/smengine/Animation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBackBegin()V

    goto :goto_0

    .line 106
    :sswitch_5
    iget-object v0, p0, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;->this$0:Lcom/smartisanos/smengine/Animation;

    iget-object v0, v0, Lcom/smartisanos/smengine/Animation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBackStart()V

    goto :goto_0

    .line 111
    :sswitch_6
    iget-object v0, p0, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;->this$0:Lcom/smartisanos/smengine/Animation;

    iget-object v0, v0, Lcom/smartisanos/smengine/Animation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBackEnd()V

    goto :goto_0

    .line 116
    :sswitch_7
    iget-object v0, p0, Lcom/smartisanos/smengine/Animation$MyTweenCallBack;->this$0:Lcom/smartisanos/smengine/Animation;

    iget-object v0, v0, Lcom/smartisanos/smengine/Animation;->mAnimListener:Lcom/smartisanos/smengine/Animation$AnimationListener;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Animation$AnimationListener;->onBackComplete()V

    goto :goto_0

    .line 78
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method
