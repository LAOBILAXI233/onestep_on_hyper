.class public final Lcom/smartisanos/smengine/InputManager$MyHandler;
.super Landroid/os/Handler;
.source "InputManager.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/smengine/InputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyHandler"
.end annotation


.field final synthetic this$0:Lcom/smartisanos/smengine/InputManager;


.method public constructor <init>(Lcom/smartisanos/smengine/InputManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/smengine/InputManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/smartisanos/smengine/InputManager$MyHandler;->this$0:Lcom/smartisanos/smengine/InputManager;

    .line 102
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 96
    :pswitch_0
    invoke-static {}, Lcom/smartisanos/smengine/World;->getInstance()Lcom/smartisanos/smengine/World;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/World;->updateGLView()V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
