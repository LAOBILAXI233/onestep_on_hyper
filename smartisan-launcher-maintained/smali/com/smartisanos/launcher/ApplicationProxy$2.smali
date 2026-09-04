.class Lcom/smartisanos/launcher/ApplicationProxy$2;
.super Landroid/os/Handler;
.source "ApplicationProxy.java"


.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/launcher/ApplicationProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


.field final synthetic this$0:Lcom/smartisanos/launcher/ApplicationProxy;


.method constructor <init>(Lcom/smartisanos/launcher/ApplicationProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/smartisanos/launcher/ApplicationProxy;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/smartisanos/launcher/ApplicationProxy$2;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 260
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 266
    :goto_0
    return-void

    .line 262
    :pswitch_0
    iget-object v0, p0, Lcom/smartisanos/launcher/ApplicationProxy$2;->this$0:Lcom/smartisanos/launcher/ApplicationProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/ApplicationProxy;->access$102(Lcom/smartisanos/launcher/ApplicationProxy;Z)Z

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
